package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/GlacieHook.git")
    add_versions("0.0.1", "0440b4752745edb920e80fe97ff84c21f54094880c8ee80efdb2f8af1c914da2")

    on_install(function (package)
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)