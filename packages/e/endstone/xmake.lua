package("endstone")
    set_kind("library", {headeronly = true})
    add_urls("https://github.com/EndstoneMC/endstone/archive/refs/tags/v$(version).tar.gz", "https://github.com/EndstoneMC/endstone.git")
    add_versions("0.6.0", "d9d7f865629165230b6dfcb34b359186524f6784a7655f39a7140ca998455a38")
    add_versions("0.6.1", "d77cf3c6cf55c7df5c6e74e87ba6e371c3716778f53f1fa97d3eabe29555f91d")

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
    end)