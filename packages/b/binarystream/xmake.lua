package("binarystream")
    add_urls("https://github.com/GlacieTeam/BinaryStream/archive/refs/tags/v$(version).tar.gz", "https://github.com/GlacieTeam/BinaryStream.git")
    add_versions("1.0.0", "cdc1838bf90e7e1dd84870c363015aeb8c233e79b8c0d36576d2a55fe2bc5634")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)