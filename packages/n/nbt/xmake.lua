package("nbt")
    set_homepage("https://github.com/GlacieTeam/NBT")
    set_description("Minecraft NBT Library")
    set_license("MPL-2.0")

    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")

    add_configs("stl", {description = "Set the STL library on Linux.", default = "libstdc++", values = {"libstdc++", "libc++"}})

    add_deps("zlib 1.3.1")

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
    add_versions("2.3.4", "9ded1240913bacab4b8593edc52388d8e9d3312797edb05b56795a7314f671b3")
    add_versions("2.3.5", "0959137d7a9d359ded108d1454691604ae4e9b547354942f0da03d30f5500481")
    add_versions("2.3.6", "09ebbe5fa25d38e4f249c85ef368385811a0df341e9ab571ab5b72cc47b1f39b")
    add_versions("2.4.0", "cc04a2923e75fa58079628d4bd219b894f278a7e6f1e1eee8e31cb83652db956")
    add_versions("2.4.1", "b73720ebd17d691689c5a44e2cc193cf2720a3cb3548a6b383dd1fc80166dbf4")
    add_versions("2.4.2", "21b9082eee68aa5ee9e4f4268ec4785b78275e83209a1bc8d951ff4c179e1b14")
    add_versions("2.5.0", "1ab736b4d4aad1c50427e2ef50f78b20264f56de9ab7b0594b9edbcd668bd0be")
    add_versions("2.6.0", "d93733f819e7adc8d509da66c81db65b0715da21b0c52bb01472173c6e72b86a")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
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
        local stdlib = package:config("stl")
        if stdlib == "libc++" and is_plat("linux") then 
            package:add("deps", "binarystream 2.3.2", {configs = {cxflags = "-stdlib=libc++", ldflags = "-stdlib=libc++"}})
        else 
            package:add("deps", "binarystream 2.3.2")
        end
    end)