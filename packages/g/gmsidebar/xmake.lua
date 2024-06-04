package("gmsidebar")
    add_urls("https://github.com/GroupMountain/GMSidebar/releases/download/v$(version)/SDK.zip")
    add_versions("0.12.4", "bf5e79d1034c3dd793845cfc0b423134c5a6bd13bc8f202a48b81ecf83596228")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)