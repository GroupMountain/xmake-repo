package("glaciehook")
    add_urls("https://github.com/GlacieTeam/GlacieHook/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/GlacieHook.git")
    add_versions("0.1.0", "cbb4cd7a3d26c988fcb5f6a404dfcc9b2fa1ed4e5f8f202160faec2d5605ad91")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)