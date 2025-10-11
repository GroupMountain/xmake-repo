package("raknet")
    set_homepage("https://github.com/EndGateMC/RakNet")
    set_description("RakNet Library")

    add_urls("https://github.com/EndGateMC/RakNet/archive/refs/tags/v$(version).tar.gz")

    add_versions("1.0.0", "5b0496aa3253b1e1c61489f5292c63fbd92130e3b29be528d43cc3fabfa998ab")
    add_versions("1.0.1", "baf637bcceb83ba10ebaa0c560bf24a5a85c47c6ff5669e844c47eee413982d0")
    add_versions("1.1.0", "aa8572e5729a82807698d203d3fb69a436a59c04fbbebe1b49f5799ec62cef40")

    add_configs("ipv6", {description = "Enable IPv6 support", default = true, type = "boolean"})
    add_configs("stl", {description = "Set the STL library on Linux.", default = "libstdc++", values = {"libstdc++", "libc++"}})

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("ipv6") then 
            package:add("defines", "RAKNET_SUPPORT_IPV6")
        end
        if is_plat("linux") then
            local stdlib = package:config("stl")
            if stdlib == "libc++" then 
                configs.cxflags = "-stdlib=libc++"
                configs.ldflags = "-stdlib=libc++"
            end
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_load(function (package)
        if package:is_plat("windows") then
            package:add("syslinks", "ws2_32")
        end
        if package:config("ipv6") then 
            package:add("defines", "RAKNET_SUPPORT_IPV6")
        end
    end)