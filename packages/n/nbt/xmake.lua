package("nbt")
    set_homepage("https://github.com/GlacieTeam/NBT")
    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")
    set_license("MPL-2.0")

    add_deps("binarystream 2.0.0")

    add_versions("2.0.0", "6fe89a47af94aab5add07b73771ba55faa845ec3f8719c123db8b3ca0431155c")
    add_versions("2.0.1", "eb3825ddb5145b1475ded1b3b443bf4760347b2d0fd4e6af6ca008b856430a56")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
