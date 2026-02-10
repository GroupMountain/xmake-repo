package("jsonc")
    set_description("JSONC for morden C++")
    set_homepage("https://github.com/DivanadiumPentaoxide/JSONC")
    set_kind("library")
    add_urls(
        "https://github.com/DivanadiumPentaoxide/JSONC.git",
        "https://github.com/DivanadiumPentaoxide/JSONC/archive/refs/tags/v$(version).tar.gz"
    )

    add_versions("1.0.0", "b382d277090a27c3b9e63f49368bd55b7e12a6d78abb9e65f9d15ee5d89a275d")
    add_versions("1.1.0", "1464668b13c13b810a3691b1f5b44971d2089c8530d2ed10a3ac6f9a4acc2989")
    add_versions("1.1.1", "8624a4421af0049ebfdcd8c7cccdc2b95fb25e7cb72bc293a4ccee284816d692")
    add_versions("1.2.0", "0a1f833674b252daca5626ba28c2fa53bf37ec222863b862c0ca1f4724af6f46")
    add_versions("1.3.0", "661694385b6706ee01c47defb825971a86d700db7226f8ea7ce906031cfb72c5")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)