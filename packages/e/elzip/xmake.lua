package("elzip")
    add_urls("https://github.com/GroupMountain/elzip/archive/refs/tags/v$(version).tar.gz")

    add_deps("minizip-ng 3.0.8")

    add_versions("2.0.0", "78bd0a40ffccf86b8325e42a95205f2609afc1b116a695adf0ee0bba4e3b1b61")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)