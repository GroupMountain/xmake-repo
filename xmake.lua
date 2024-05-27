package("gmlib")
    add_urls("https://github.com/GroupMountain/GMLIB/releases/download/v$(version)/SDK.zip")
    add_versions("0.12.7", "100128c92da14ab8ba86ed2b260a8c04ef12c7ac25df62d8ef702b4fcf01b80b")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)