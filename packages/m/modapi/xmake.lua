package("modapi")
    add_urls("https://github.com/GroupMountain/ModApi-Release/releases/download/v$(version)/ModApi-SDK.zip", {alias = "A"})
    add_versions("A:0.1.0", "3c26f83a0e578d6b57a61160dce4922324de9a2274141ffdfd194e1efdda0681")

    add_urls("https://github.com/GroupMountain/ModApi-Release/archive/refs/tags/v$(version).tar.gz", {alias = "B"})
    add_versions("B:0.1.0", "32a954590aa74b56245ec0ad44b3046be11df756fc56b7d050eb24770a884ba9")

    on_install(function (package)
        if os.isdir("include") then
            os.cp("*", package:installdir())
        elseif os.isdir("bin") then
            os.cp("bin/sdk/*", package:installdir())
        else
            assert(false, "no include or bin")
        end
    end)
