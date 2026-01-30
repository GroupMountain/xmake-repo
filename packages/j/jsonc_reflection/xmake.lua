package("jsonc_reflection")
    set_description("JSONC Reflection for morden C++")
    set_homepage("https://github.com/DivanadiumPentaoxide/JSONC-Reflection")
    set_kind("library", { headeronly = true })
    add_urls(
        "https://github.com/DivanadiumPentaoxide/JSONC-Reflection.git",
        "https://github.com/DivanadiumPentaoxide/JSONC-Reflection/archive/refs/tags/v$(version).tar.gz"
    )

    add_deps("jsonc v1.0.0")
    add_deps("boost_pfr 2.2.0")
    add_deps("magic_enum 0.9.7")

    add_versions("1.0.0", "59594388b29b5f6fc23c56e022850473d2e0bdb887ac6de5225d8f4a97f8287b")
    add_versions("1.0.1", "1dea921d410075014447a40f66f27c1c291d0d22a149cacdef043b9c77d463c3")

    on_install(function (package)
        os.cp("include", package:installdir())
    end)