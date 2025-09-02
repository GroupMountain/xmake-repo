package("zstr")
    set_kind("library", { headeronly = true })
    add_urls("https://github.com/GlacieTeam/zstr/archive/refs/tags/v$(version).tar.gz")

    add_deps("zlib-static 1.3.1")

    add_versions("1.0.8", "ed8f211375333e13b78e814d110b712d40435cc9407786be81336e399c552937")

    on_install(function (package)
        os.cp("src/*.hpp", package:installdir("include/zstr"))
    end)