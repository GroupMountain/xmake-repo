package("gmsidebar")
    add_urls("https://github.com/GroupMountain/GMSidebar/releases/download/v$(version)/SDK.zip")
    add_versions("0.13.11", "fde67755b4fae5bbf92002c7b5f4d2be3a23b4e85a6c9b2d152391988d8a3879")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
