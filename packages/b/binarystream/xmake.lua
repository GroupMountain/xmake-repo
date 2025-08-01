package("binarystream")
    set_homepage("https://github.com/GlacieTeam/BinaryStream")
    set_description("BinaryStream Library")
    set_license("LGPLv3")

    add_urls("https://github.com/GlacieTeam/BinaryStream/archive/refs/tags/v$(version).tar.gz")

    add_versions("1.0.0", "cdc1838bf90e7e1dd84870c363015aeb8c233e79b8c0d36576d2a55fe2bc5634")
    add_versions("1.0.1", "2c4d1452619792a26719866f1a184cc7db15ca2b634de975477d9710ed54529a")
    add_versions("1.0.2", "703f3af11c2a99bf41b3fb0b69b212c67a9750ce2ee77d8dea329d3588edbdf4")
    add_versions("1.0.3", "ef0da9e3ce7b64d70a5d13d1246e380513a7209c0cccbc4aae41aa1a112d6e01")
    add_versions("1.0.4", "01dfa8c975a2a4070a4f356793d396a4e1a850dd28a2b70fea6705d7c59a4b97")
    add_versions("1.0.5", "ece8e606bc3e0afda1774e42e97da3ecba021b830d814820f13b1379a2d1b08d")
    add_versions("1.1.0", "7e2aabcd0b32a48d05d957f76f4bee142263124bdddb0d9f0ac3cbd977927700")
    add_versions("1.1.1", "008b2cf7782f9f6346c74bb3182146c44dc12004e115754722c71c47e05e8ec6")
    add_versions("1.1.2", "c04f9960067beb1e10a050c1f97711f81ebc50ebe3c9ed903b361a4f8874f139")
    add_versions("1.1.3", "23022138d2218efc86fbb66e57d00677da0338eeea47c42b064cf6195d8a136c")
    add_versions("1.1.4", "425d78ff91cfbe356c8f1ec8cff3f7e811fe1d80f09e500c27eae555d0f089f4")

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
        local configs = {}
        import("package.tools.xmake").install(package, configs)
    end)
