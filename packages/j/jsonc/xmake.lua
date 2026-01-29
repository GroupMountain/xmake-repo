package("jsonc")
    set_homepage("https://github.com/DivanadiumPentaoxide/JSONC")
    set_kind("library", { headeronly = true })
    add_urls(
        "https://github.com/DivanadiumPentaoxide/JSONC.git",
        "https://github.com/DivanadiumPentaoxide/JSONC/archive/refs/tags/v$(version).tar.gz"
    )

    add_versions("1.0.0", "ce2cf7d4f84a019505aaa3e36b12279a2c1aaca28b6f9844c185457c6699a7fd")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)