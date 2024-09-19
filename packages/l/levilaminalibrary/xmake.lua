package("levilaminalibrary")
    add_urls("https://github.com/GroupMountain/levilaminalibrary/releases/download/v$(version)/SDK.zip")
    add_versions("0.13.5", "14061368c62b69e9223a271f2db0588de062fd39433e717e6b7afd116882c843")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)