package("jsonc_reflection")
    set_description("JSONC Reflection for morden C++")
    set_homepage("https://github.com/DivanadiumPentaoxide/JSONC-Reflection")
    set_kind("library", { headeronly = true })
    add_urls(
        "https://github.com/DivanadiumPentaoxide/JSONC-Reflection.git",
        "https://github.com/DivanadiumPentaoxide/JSONC-Reflection/archive/refs/tags/v$(version).tar.gz"
    )

    add_deps("jsonc v1.3.0")
    add_deps("boost_pfr 2.2.0")
    add_deps("magic_enum 0.9.7")

    add_versions("1.0.0", "59594388b29b5f6fc23c56e022850473d2e0bdb887ac6de5225d8f4a97f8287b")
    add_versions("1.0.1", "1dea921d410075014447a40f66f27c1c291d0d22a149cacdef043b9c77d463c3")
    add_versions("1.1.0", "587b85efc11fa10130f90fa9b01345e67305dcd4c0edf964a598bb692e021f89")
    add_versions("1.1.1", "6d7d233f1746ce4aa46e3d9fbfbe0cb6b54c9bb92f4aa6e74e78a2b2fd14abfb")
    add_versions("1.2.0", "25916b3500452ca6b3394c7e66c7e0c422cbc2d3089f48c870c095b978b56939")
    add_versions("1.3.0", "17dd685df6b965de6f64d6ce5930514b515088e979e1cf2c6d2178acb002a871")

    on_install(function (package)
        os.cp("include", package:installdir())
    end)