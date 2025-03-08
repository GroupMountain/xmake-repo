package("nbt")
    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/NBT.git")
    add_versions("1.0.0", "89cbe59b0304805d6cb9c587dc83b16c84a8ab519adb0f0cb8d4210bc96e1f4b")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)