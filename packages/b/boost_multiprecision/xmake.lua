package("boost_multiprecision")
    set_description("Boost.Multiprecision Module")
    set_kind("library", { headeronly = true })
    set_urls("https://github.com/boostorg/multiprecision.git")
    set_license("BSL-1.0")

    add_versions("1.89.0", "d6000cc58594fead142eee4bf3a1aec39bf144dcb6accd8f4b8e6d780d258482")

    on_install(function (package)
        os.cp("include/*", package:installdir("include"))
    end)