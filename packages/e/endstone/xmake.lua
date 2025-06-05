package("endstone")
    set_kind("library", {headeronly = true})
    add_urls("https://github.com/EndstoneMC/endstone/archive/refs/tags/v$(version).tar.gz")

    add_deps("expected-lite 0.8.0")
    add_deps("fmt 10.2.1")

    add_versions("0.6.0", "d9d7f865629165230b6dfcb34b359186524f6784a7655f39a7140ca998455a38")
    add_versions("0.6.1", "d77cf3c6cf55c7df5c6e74e87ba6e371c3716778f53f1fa97d3eabe29555f91d")
    add_versions("0.6.2", "5166c6e4bb9992c05eb5c7ea5c5b5c876011652bf48055287a75d6c83d0ab952")
    add_versions("0.7.0", "9d1d9c05520e32e43a284aee1687a747cdcd654da25b180ca8de55581f44a6dd")
    add_versions("0.7.1", "fb1324eae85ba2e73c1bff58c5cabe4a0821fb7b4ca9249fe31aa9c9e74a7aee")
    add_versions("0.7.2", "f957b65015355eb00cecb2e25b0aca084149b0a7316c65943704eb72dde243c4")
    add_versions("0.8.0", "31236a958007d25c74e56cb274a4c236b6aac52b411c49ad3c147b144a931c6d")
    add_versions("0.8.1", "7d867a0d5ff46879f7ca78f852ce9f7b1e02881efb0626fbd76d9629c43472f5")

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
    end)
