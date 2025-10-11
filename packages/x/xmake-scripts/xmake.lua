package("xmake-scripts")
    add_urls("https://github.com/GlacieTeam/XmakeScripts.git")
    set_kind("binary")

    add_versions("1.0.0", "f78b001d49bb764297630f4b0e2c356189c3cecd")
    add_versions("1.1.0", "f8b5ff6f9f64ebe978c4c0ffef3a4d0bfe5e107e")

    on_install(function (package)
        os.cp("rules/*", package:installdir("rules"))
    end)