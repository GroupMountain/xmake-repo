package("motdpe")
    set_homepage("https://github.com/GlacieTeam/MotdPE")
    add_urls("https://github.com/GlacieTeam/MotdPE/archive/refs/tags/v$(version).tar.gz")
    set_license("MPL-2.0")

    add_versions("1.0.0", "b9af8fcbac2d5abad4a2fbaafa507727dd9e58f3a46a97bf5b8a8314893bb408")

    if is_plat("windows") then
        add_syslinks("ws2_32")
    end

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
