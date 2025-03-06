package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/GlacieHook.git")
    add_versions("1.0.0", "dc5259e6214e8cb8c1fd1c0d3abfd5b96b19c709a26d0e7edf155b0910a27a5d")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)