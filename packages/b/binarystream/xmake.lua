package("binarystream")
    set_homepage("https://github.com/GlacieTeam/BinaryStream")
    set_description("BinaryStream Library")
    set_license("MPL 2.0")

    add_urls("https://github.com/GlacieTeam/BinaryStream/archive/refs/tags/v$(version).tar.gz")

    add_versions("2.0.0", "babe5d4d9793224f44e75db162f689705b62cbd71622636aa310e31298d5297a")

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
