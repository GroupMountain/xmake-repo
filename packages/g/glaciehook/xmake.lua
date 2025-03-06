package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/GlacieHook.git")
    add_versions("0.0.1", "bf870291a7916755187304de2115c27892dca78f5e12fc0530d54d6fb8e133c9")

    on_install(function (package)
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)