package("levilamina-lib")
    set_homepage("https://github.com/wed150/Levilamina-lib")
    set_description("LeviLamina prebuilt SDK")

    add_defines("ENTT_PACKED_PAGE=128", "ENTT_SPARSE_PAGE=2048", "ENTT_NO_MIXIN")
    add_configs("target_type", {default = "server", values = {"server", "client"}})
    add_configs("mode", {default = "release", values = {"debug", "release"}})

    add_urls("https://github.com/LiteLDev/LeviLamina.git", {
        includes = {"src-server", "src-client", "src"},   -- 同时拉取两个目录
    })

    add_versionfiles("versions/versions.txt")

    on_load(function (package)
        local tt = package:config("target_type")
        package:add("defines", tt == "server" and "LL_PLAT_S" or "LL_PLAT_C")
        local v = package:version_str()
        import("core.base.semver")
        local sem = semver.try_parse(v)
        if sem and sem:le("0.12.4") then v = "old" end
        v = v:gsub("%.", "_")
        local mod = import("versions." .. v, {try = true})
        if mod then
            mod.load(package)
        else
            import("versions.main").load(package)
        end
    end)

    on_install(function (package)
        cprint("${bright green}Start to download Pre-build Levilamina")
        local tt   = package:config("target_type")
        local mode = package:config("mode")
        local ver  = package:version_str() or ""
        local key  = ver .. "-windows-" .. mode .. "-" .. tt
        local f = io.open(package:scriptdir() .. "/versions/prebuilt_versions.txt")
        local sha, is_prebuilt = nil, false
        if f then
            for line in f:lines() do
                local k, s = line:match("^(%S+)%s+(%S+)$")
                if k == key then sha = s; is_prebuilt = true; break end
            end
            f:close()
        end

        if is_prebuilt and sha then
            local file = ("levilamina-lib-v%s-%s-%s-windows-x64.zip"):format(ver, tt, mode)
            local url  = ("https://github.com/wed150/Levilamina-lib/releases/download/v%s/%s"):format(ver, file)
            local zip  = path.join(os.tmpdir(), file)
            import("net.http").download(url, zip, {sha256 = sha})
            import("utils.archive").extract(zip, package:installdir())

            local src_dir = path.join(path.directory(package:builddir()),(tt == "server") and "src-server" or "src-client")

            os.cp(path.join(src_dir, "ll/api/**.h"), package:installdir("include"), {rootdir = src_dir})
            os.cp(path.join(src_dir, "mc/**.h"),    package:installdir("include"), {rootdir = src_dir})
            local common_src_dir = path.join(path.directory(package:builddir()),"src")
            os.cp(path.join(common_src_dir, "mc/**.h"),package:installdir("include"), {rootdir = common_src_dir})
            os.cp(path.join(common_src_dir, "ll/api/**.h"),package:installdir("include"), {rootdir = common_src_dir})

        else

            local git = import("devel.git")
            local sourcedir = path.join(path.directory(package:builddir()), "arepo")
            os.rm(sourcedir)
            git.clone("https://github.com/LiteLDev/LeviLamina.git", {
                depth = 1,
                ref = "v" .. ver,
                outputdir = sourcedir,
                recursive = false,
                longpaths = true,
            })
            local oldir = os.cd(sourcedir)
            if package:config("target_type") == "server" then
                import("package.tools.xmake").install(package)
            else
                import("package.tools.xmake").install(package, {"--target_type=client"})
            end
            os.cd(oldir)
        end
    end)
