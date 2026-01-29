package("minecraft-leveldb")
    add_urls("https://github.com/Mojang/leveldb.git")
    add_versions("2025.3.6", "3791effb6692e0c83da782210aa336a3dd436f30")
    on_load(function(package)
        for _, dep in ipairs(deps) do
            package:add("deps", dep)
        end
    end)

    on_install(function (package)
        os.cp("include", path.join(package:installdir(),"include/leveldb-mcpe"))
        os.cp("lib/*.lib", package:installdir("lib"))
    end)



