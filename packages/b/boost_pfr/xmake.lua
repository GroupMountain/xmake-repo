package("boost_pfr")
    set_description("std::tuple like methods for user defined types without any macro or boilerplate code")
    set_kind("library", { headeronly = true })
    set_urls("https://github.com/boostorg/pfr.git")
    set_license("BSL-1.0")

    add_versions("20260104", "228922fdb521224f0fcab969595cba6ae816d3ac")

    on_install(function (package)
        os.cp("include/*", package:installdir("include"))
    end)
