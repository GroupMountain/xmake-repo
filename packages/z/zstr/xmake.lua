package("zstr")
    set_kind("library", { headeronly = true })
    add_urls("https://github.com/mateidavid/zstr/archive/refs/tags/v$(version).tar.gz")

    add_deps("zlib 1.3.1")

    add_versions("1.0.7", "8d2ddae68ff7bd0a6fce6150a8f52ad9ce1bed2c4056c8846f4dec4f2dc60819")

    on_install("windows", "linux", function (package)
        os.cp("src/*.hpp", package:installdir("include"))
    end)