package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz")

    add_deps("libhat 2024.9.22")
    add_deps("detours v4.0.1-xmake.1")

    add_versions("1.0.0", "dc5259e6214e8cb8c1fd1c0d3abfd5b96b19c709a26d0e7edf155b0910a27a5d")
    add_versions("1.0.1", "d0f22a3b152af5763bef171dbf3e3b1d1ae63d5deb609a0ca93a8d2e27881760")
    add_versions("1.0.2", "ae9186a044ff42b074f14e69018a8e6932f24e5502c69535a288e4b7fb491178")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)
