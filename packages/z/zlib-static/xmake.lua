package("zlib-static")
    set_homepage("http://www.zlib.net")
    set_description("A Massively Spiffy Yet Delicately Unobtrusive Compression Library")
    set_license("zlib")
    add_urls("https://github.com/madler/zlib/archive/refs/tags/$(version).tar.gz")

    add_versions("v1.2.10", "42cd7b2bdaf1c4570e0877e61f2fdc0bce8019492431d054d3d86925e5058dc5")
    add_versions("v1.2.11", "629380c90a77b964d896ed37163f5c3a34f6e6d897311f1df2a7016355c45eff")
    add_versions("v1.2.12", "d8688496ea40fb61787500e863cc63c9afcbc524468cedeb478068924eb54932")
    add_versions("v1.2.13", "1525952a0a567581792613a9723333d7f8cc20b87a81f920fb8bc7e3f2251428")
    add_versions("v1.3", "b5b06d60ce49c8ba700e0ba517fa07de80b5d4628a037f4be8ad16955be7a7c0")
    add_versions("v1.3.1", "17e88863f3600672ab49182f217281b6fc4d3c762bde361935e436a95214d05c")

    if is_plat("mingw") and is_subhost("msys") then
        add_extsources("pacman::zlib")
    elseif is_plat("linux") then
        add_extsources("pacman::zlib", "apt::zlib1g-dev")
    elseif is_plat("macosx") then
        add_extsources("brew::zlib")
    end

    on_fetch(function (package, opt)
        if xmake.version():lt("2.8.7") then return end -- disable system find if the bug is present
        if opt.system then
            if not package:is_plat("windows", "mingw") then
                return package:find_package("system::z", {includes = "zlib.h"})
            end
        end
    end)

    on_install(function (package)
        io.writefile("xmake.lua", [[
            includes("@builtin/check")
            add_rules("mode.debug", "mode.release")
            target("zlib")
                set_kind("$(kind)")
                if not is_plat("windows") then
                    set_basename("z")
                end
                add_files("adler32.c")
                add_files("compress.c")
                add_files("crc32.c")
                add_files("deflate.c")
                add_files("gzclose.c")
                add_files("gzlib.c")
                add_files("gzread.c")
                add_files("gzwrite.c")
                add_files("inflate.c")
                add_files("infback.c")
                add_files("inftrees.c")
                add_files("inffast.c")
                add_files("trees.c")
                add_files("uncompr.c")
                add_files("zutil.c")
                add_headerfiles("zlib.h", "zconf.h")
                check_cincludes("Z_HAVE_UNISTD_H", "unistd.h")
                check_cincludes("HAVE_SYS_TYPES_H", "sys/types.h")
                check_cincludes("HAVE_STDINT_H", "stdint.h")
                check_cincludes("HAVE_STDDEF_H", "stddef.h")
                if is_plat("windows") then
                    add_defines("_CRT_SECURE_NO_DEPRECATE")
                    add_defines("_CRT_NONSTDC_NO_DEPRECATE")
                else
                    add_defines("_LARGEFILE64_SOURCE=1")
                end
        ]])
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        assert(package:has_cfuncs("inflate", {includes = "zlib.h"}))
    end)