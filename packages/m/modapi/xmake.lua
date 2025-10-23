package("modapi")
    add_urls("https://github.com/GroupMountain/ModAPI-Release/releases/download/v$(version)/ModAPI-SDK.zip", {alias = "A"})
    add_versions("A:0.1.0", "62c8fe459ab9712d1e1d882716f829a9a95118361769b95428f8cc0ff34b4221")
    add_versions("A:0.1.1", "70a2a7d6c4e0475bb0f2daada9ddcef51825fcb65834ce99c76681c3daef0b6e")
    add_versions("A:0.2.0", "87f839c234519fa4c44bc436e6134ba46ba5c37840dc6f4c69edc4c023de8578")
    add_versions("A:0.2.1", "4ce3eea37465aaca3233dabc9366928a6fbf568dd714d1220154092fa9a32f91")

    add_urls("https://github.com/GroupMountain/ModAPI-Release/archive/refs/tags/v$(version).tar.gz", {alias = "B"})
    add_versions("B:0.1.0", "f5d7bae5ab8d34ce934ba57c3f60c9efb9a54381aae6d962c1e893ec76671976")
    add_versions("B:0.1.1", "72fddd3b4df0305894968288c6187a3fc2b0f6c567c255e2c53d7acb9e3e37e1")
    add_versions("B:0.2.0", "46cb2a5763cb0be476dd42e9076708e25de61e8326218289c3996c2690cc62ae")
    add_versions("B:0.2.1", "da4b8b34c87ff73579f57c23cedd120cff5646058627788ddf5166bfbb979967")

    on_install(function (package)
        if os.isdir("include") then
            os.cp("*", package:installdir())
        elseif os.isdir("bin") then
            os.cp("bin/sdk/*", package:installdir())
        else
            assert(false, "no include or bin")
        end
    end)
