local deps = {
    "entt 41aab920b083aa424ac1d27666ce287eeaff6ceb",
    "expected-lite v0.7.0",
    "fmt 10.2.1",
    "gsl v4.0.0",
    "leveldb 1.23",
    "magic_enum v0.9.5",
    "nlohmann_json v3.11.3",
    "rapidjson v1.1.0",
    "ctre 3.8.1",
    "pcg_cpp v1.0.0",
    "pfr 2.1.1",
    "symbolprovider v1.1.0",
    "bdslibrary 1.21.3.01"
}

package("levilaminalibrary")
    add_urls("https://github.com/GroupMountain/levilaminalibrary/releases/download/v$(version)/SDK.zip")
    add_versions("0.13.5", "ea41733bac86132fdacf51d050648bfc65ab8688e71ceae3f069aef18b6a2981")
    add_versions("0.13.5-fix", "3a38bdbf7600eb34f349a87a10a6af5f406098306472e4deca32c059d048da9d")
    add_versions("1.0.0", "6bec59d1049d04b0033b0ade692c633e408e1e9291d2b6f9a2faaa181c85d4c6")

    on_load(function(package)
        for _, dep in ipairs(deps) do
            package:add("deps", dep)
        end
    end)

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
