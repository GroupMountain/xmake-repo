package("nbt")
    set_homepage("https://github.com/GlacieTeam/NBT")
    set_description("Minecraft NBT Library")
    set_license("MPL-2.0")

    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")

    add_deps("binarystream 2.3.2")
    add_deps("zlib-static 1.3.1")

    add_versions("2.0.0", "6fe89a47af94aab5add07b73771ba55faa845ec3f8719c123db8b3ca0431155c")
    add_versions("2.0.1", "d76cee6cf223c9bbcdbd00966f6bc753714b46a31de83f7b16b2b13e67eb89ee")
    add_versions("2.1.0", "4dd9359dbe92a6d2fcc12ff684cbf8dde466fa38ea20d22085fc17ea5b4feea0")
    add_versions("2.1.2", "fbb1dca266652a284b33b41a3a6fe83565edd0c5fdc22a1fa40ae02a59a95aa5")
    add_versions("2.1.3", "8f0849a6fddb995b758d92282cf673a1a4c22f0aae97179e8dffe3cb79e2efd4")
    add_versions("2.1.4", "518ad75764d14311da94d88d506a39b699085e5868f9dd463b9bf326efe79cf7")
    add_versions("2.1.5", "9bee2f6ccd5ef0726b41197f07a81b3397124d86a2118d60acb93e107549d4d9")
    add_versions("2.1.6", "933517b16be6a094a34ac4bdbf747d89b5c56c5fd6fe9e24e03f8836caf1aa12")
    add_versions("2.2.0", "c27b3a9f9a6b7d41ea963e024f9786c8ae5e85ef44fcabe597402abb0a6f5cb0")
    add_versions("2.3.0", "311bd62d46e4401fc411a4c7857dc91b5487d542dd670ad7dc96bb6b0068dc1a")
    add_versions("2.3.1", "6077b62874fb229e96b30576dc738d3a2a5678aff3146c1a2901f6140767197a")
    add_versions("2.3.2", "70225daae077ece03b4eae57264e933c8b1087e0a5aad176abc1ba7a50192864")
    add_versions("2.3.3", "178f1a08a5ff816cdccb679d336bb78f6d71aa0bc72698f293b963c1dda9da9b")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
