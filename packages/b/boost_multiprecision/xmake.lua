package("boost_multiprecision")
    set_description("Boost.Multiprecision Module")
    set_kind("library", { headeronly = true })
    set_urls("https://github.com/boostorg/multiprecision.git")
    set_license("BSL-1.0")

    add_versions("1.89.0", "c48ae180f5b22fca8479ac7e0c5f0d527d442072")

    on_install(function (package)
        os.cp("include/*", package:installdir("include"))
    end)