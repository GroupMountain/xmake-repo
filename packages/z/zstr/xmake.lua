package("zstr")
    set_kind("library", {headeronly = true})
    add_urls("https://github.com/mateidavid/zstr/archive/refs/tags/v$(version).tar.gz", "https://github.com/mateidavid/zstr.git")
    add_versions("1.0.7", "8d2ddae68ff7bd0a6fce6150a8f52ad9ce1bed2c4056c8846f4dec4f2dc60819")

    on_install("windows", "linux", function (package)
        os.cp("src", package:installdir())
        os.rename(path.join(package:installdir(), "src"), path.join(package:installdir(), "include"))
    end)