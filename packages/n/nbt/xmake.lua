package("nbt")
    set_homepage("https://github.com/GlacieTeam/NBT")
    set_description("Minecraft NBT Library")
    set_license("MPL-2.0")

    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")

    add_deps("binarystream 2.1.2")

    add_versions("2.0.0", "6fe89a47af94aab5add07b73771ba55faa845ec3f8719c123db8b3ca0431155c")
    add_versions("2.0.1", "d76cee6cf223c9bbcdbd00966f6bc753714b46a31de83f7b16b2b13e67eb89ee")
    add_versions("2.1.0", "4dd9359dbe92a6d2fcc12ff684cbf8dde466fa38ea20d22085fc17ea5b4feea0")
    add_versions("2.1.2", "fbb1dca266652a284b33b41a3a6fe83565edd0c5fdc22a1fa40ae02a59a95aa5")
    add_versions("2.1.3", "8f0849a6fddb995b758d92282cf673a1a4c22f0aae97179e8dffe3cb79e2efd4")
    add_versions("2.1.4", "518ad75764d14311da94d88d506a39b699085e5868f9dd463b9bf326efe79cf7")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
