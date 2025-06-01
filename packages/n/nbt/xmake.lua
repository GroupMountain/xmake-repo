package("nbt")
    add_urls("https://github.com/GlacieTeam/NBT/archive/refs/tags/v$(version).tar.gz")

    add_deps("binarystream")

    add_versions("1.0.0", "89cbe59b0304805d6cb9c587dc83b16c84a8ab519adb0f0cb8d4210bc96e1f4b")
    add_versions("1.0.1", "f6ab33d8997edac1c74244d74fe2ec2a3478f13744196229391cf912e92e50d4")
    add_versions("1.0.2", "2f98aa19bfb9aa78087314348647ff798f9b2d508cfeaf70555bf665275db48f")
    add_versions("1.0.3", "511ca259e5a82fa1ca749a80552b6750a1ff6e2024f0bc29f26fb75c174ef6e8")
    add_versions("1.0.4", "d6c2f8f3cca6857b20c7c976ce59bfade5eb31f84ac648adf843ca1609cb91af")
    add_versions("1.0.5", "7ae26fb77b414f302b57174c545b62c425f6ea5e1268744b69bbfe91c5c6ff62")
    add_versions("1.0.6", "2e37e93eb0d9e156c8eed3de54f1e6a46b6425ff5116bbd12ea291072c1de26e")
    add_versions("1.0.7", "2e167f5cbda9650bdb61c798dd8ff24ceaa3fcbe44841af370805a408182c576")

    on_install(function (package)
        os.cp("include", package:installdir())
        local configs = {}
        if package:config("static") then
            configs.kind = "static"
        end
        import("package.tools.xmake").install(package, configs)
    end)
