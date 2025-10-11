package("xmake-scripts")
    add_urls("https://github.com/GlacieTeam/XmakeScripts.git")
    set_kind("binary")

    add_versions("1.0.0", "f78b001d49bb764297630f4b0e2c356189c3cecd")
    add_versions("1.1.0", "b5e20093b6a8eb3ddde4acf8b5bbcc052cecb5d7")

    on_install(function (package)
        os.cp("rules/*", package:installdir("rules"))
    end)