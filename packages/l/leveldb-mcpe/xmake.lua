package("leveldb-mcpe")
    add_urls("https://github.com/vhebert-gh/build-mojang-leveldb/releases/download/mojang-leveldb/mojang-leveldb.zip")
    add_versions("2024.3.14", "73bc5faefa82255164898579626e9e7ad76f393f36966fa83e402f0662874654")
    on_load(function(package)
        for _, dep in ipairs(deps) do
            package:add("deps", dep)
        end
    end)

    on_install(function (package)
        os.cp("include", path.join(package:installdir(),"include/leveldb-mcpe"))
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
