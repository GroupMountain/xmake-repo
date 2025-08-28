package("binarystream")
    set_homepage("https://github.com/GlacieTeam/BinaryStream")
    set_description("Minecraft BinaryStream Library")
    set_license("MPL-2.0")

    add_urls("https://github.com/GlacieTeam/BinaryStream/archive/refs/tags/v$(version).tar.gz")

    add_versions("2.0.0", "babe5d4d9793224f44e75db162f689705b62cbd71622636aa310e31298d5297a")
    add_versions("2.1.0", "7f821330a6580fd024399c63bb4aafa6c9ed0d50cb0d25c22d33a84574929f06")
    add_versions("2.1.1", "6024f7f3b420b18eb8b082451ef7ad590d0857e8a61343d5397b4a85cc4dff6c")
    add_versions("2.1.2", "7c77c1b388155dbfdc86ca59d690b7feddfc0ae15d6da8c3f39a525cf7f79ab6")
    add_versions("2.1.3", "1b4b8ae71eb3c05054fb3c0dbf7633ec7f098b63ac3f8fa9a3d025d8c74f6be3")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
