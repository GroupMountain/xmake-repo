package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/GlacieHook.git")
    add_versions("0.0.1", "ee47f6d86c424b475905619a45788e69c4ab3951317e81362bccbcafecf519f0")

    on_install(function (package)
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)