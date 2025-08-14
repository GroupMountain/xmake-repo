package("nbt")
    set_homepage("https://github.com/GlacieTeam/NBT")
    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")
    set_license("MPL-2.0")

    add_deps("binarystream 2.1.1")

    add_versions("2.0.0", "6fe89a47af94aab5add07b73771ba55faa845ec3f8719c123db8b3ca0431155c")
    add_versions("2.0.1", "d76cee6cf223c9bbcdbd00966f6bc753714b46a31de83f7b16b2b13e67eb89ee")
    add_versions("2.1.0", "4dd9359dbe92a6d2fcc12ff684cbf8dde466fa38ea20d22085fc17ea5b4feea0")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
