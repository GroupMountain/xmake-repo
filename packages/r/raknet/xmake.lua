package("raknet")
    set_homepage("https://github.com/EndGateMC/RakNet")
    set_description("RakNet Library")
    set_license("LGPLv3")

    add_urls("https://github.com/EndGateMC/RakNet/archive/refs/tags/v$(version).tar.gz")

    add_versions("1.0.0", "5b0496aa3253b1e1c61489f5292c63fbd92130e3b29be528d43cc3fabfa998ab")
    add_versions("1.0.1", "baf637bcceb83ba10ebaa0c560bf24a5a85c47c6ff5669e844c47eee413982d0")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)