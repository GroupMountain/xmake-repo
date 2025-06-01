package("binarystream")
    add_urls("https://github.com/GlacieTeam/BinaryStream/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/BinaryStream.git")
    add_versions("1.0.0", "cdc1838bf90e7e1dd84870c363015aeb8c233e79b8c0d36576d2a55fe2bc5634")
    add_versions("1.0.1", "2c4d1452619792a26719866f1a184cc7db15ca2b634de975477d9710ed54529a")
    add_versions("1.0.2", "703f3af11c2a99bf41b3fb0b69b212c67a9750ce2ee77d8dea329d3588edbdf4")
    add_versions("1.0.3", "ef0da9e3ce7b64d70a5d13d1246e380513a7209c0cccbc4aae41aa1a112d6e01")
    add_versions("1.0.4", "01dfa8c975a2a4070a4f356793d396a4e1a850dd28a2b70fea6705d7c59a4b97")
    add_versions("1.0.5", "ece8e606bc3e0afda1774e42e97da3ecba021b830d814820f13b1379a2d1b08d")

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)
