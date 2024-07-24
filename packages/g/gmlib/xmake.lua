package("gmlib")
    add_urls("https://github.com/GroupMountain/GMLIB/releases/download/v$(version)/SDK.zip")
    add_versions("0.12.7", "100128c92da14ab8ba86ed2b260a8c04ef12c7ac25df62d8ef702b4fcf01b80b")
    add_versions("0.12.8", "284e8e17523f7c07878bdb9af2cf7170a8306f826beea28f9b7cf87da7296e3d")
    add_versions("0.12.9", "a95ebac387c92a3d5eb9a2475bb2297c631fd0966c3285d519384655e56e19cb")
    add_versions("0.13.0", "e6c2f482890b711e3ed27e731ee4daca2e95d978ba25442689d280e5e1a05200")
    add_versions("0.13.1", "be142536cbc75e22aca021afd2c04d021bac27e728121724d84cf1ddb35a7578")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
