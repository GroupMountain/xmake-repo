package("gmlib")
    add_urls("https://github.com/GroupMountain/GMLIB/releases/download/v$(version)/SDK.zip")
    add_versions("0.12.7", "100128c92da14ab8ba86ed2b260a8c04ef12c7ac25df62d8ef702b4fcf01b80b")
    add_versions("0.12.8", "284e8e17523f7c07878bdb9af2cf7170a8306f826beea28f9b7cf87da7296e3d")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
