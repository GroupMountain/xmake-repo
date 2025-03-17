package("gmlib")
    add_urls("https://github.com/GroupMountain/GMLIB-Release/releases/download/v$(version)/SDK.zip", {alias = "A"})
    add_urls("https://github.com/GroupMountain/GMLIB-Release/archive/refs/tags/v$(version).tar.gz", {alias = "B"})

    add_versions("A:0.12.7", "100128c92da14ab8ba86ed2b260a8c04ef12c7ac25df62d8ef702b4fcf01b80b")
    add_versions("A:0.12.8", "284e8e17523f7c07878bdb9af2cf7170a8306f826beea28f9b7cf87da7296e3d")
    add_versions("A:0.12.9", "a95ebac387c92a3d5eb9a2475bb2297c631fd0966c3285d519384655e56e19cb")
    add_versions("A:0.13.0", "e6c2f482890b711e3ed27e731ee4daca2e95d978ba25442689d280e5e1a05200")
    add_versions("A:0.13.1", "be142536cbc75e22aca021afd2c04d021bac27e728121724d84cf1ddb35a7578")
    add_versions("A:0.13.2", "87a6580072f5133f929ee0556128e0fdd5aa5eacd76d797496b2e647a4bc4d6a")
    add_versions("A:0.13.4", "9dc523d3c5d3f0bef4cf0f67f2429513e24bebaaeb6e96c456a52aaa4746be8a")
    add_versions("A:0.13.5", "10086ccd7c0f599052ebe34c11c2f7c7a14380d50d5a308aeeca3b6236a81e75")
    add_versions("A:0.13.6", "9a746300e8d421790fe7e201c61e37fd325c13a095344974cd0e5dc66bb20fbe")
    add_versions("A:0.13.7", "d368f91b7e93fcbb5202a3837c8205e128f9b8d6d5660977fab9b8a161b0324a")
    add_versions("A:0.13.9", "b2f8cfe53bb092e77e6f76cca7d91574aa571fc28542b3472750ed804ee7100a")
    add_versions("A:0.13.10", "f8bfe63aa04c8f50ded82228ba4b593c38275c7639825953a8687793e59c22c4")
    add_versions("A:1.0.0-rc.1", "a6735b17bf4962fb6d8f05e7ffaae1cde239355685440ae14cc543cfd26fe30a")

    add_versions("B:1.0.0-rc.1", "b2814979a79f0a2ea3f9a6692275ddd5e8b9a603f268ceca6c6b7202d226e070")

    on_install(function (package)
        if os.isdir("include") then
            os.cp("*", package:installdir())
        elseif os.isdir("bin") then
            os.cp("bin/SDK/*", package:installdir())
        else
            assert(false, "no include or bin")
        end
    end)
