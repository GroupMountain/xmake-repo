package("gmlib")
    add_urls("https://github.com/GroupMountain/GMLIB-Release/releases/download/v$(version)/SDK.zip", {alias = "A"})
    add_urls("https://github.com/GroupMountain/GMLIB-Release/archive/refs/tags/v$(version).tar.gz", {alias = "B"})
    add_urls("https://github.com/GroupMountain/GMLIB-Release/releases/download/v$(version)/SDK-shared.zip", {alias = "C"})

    add_versions("A:0.12.7", "100128c92da14ab8ba86ed2b260a8c04ef12c7ac25df62d8ef702b4fcf01b80b")
    add_versions("A:0.12.8", "284e8e17523f7c07878bdb9af2cf7170a8306f826beea28f9b7cf87da7296e3d")
    add_versions("A:0.12.9", "a95ebac387c92a3d5eb9a2475bb2297c631fd0966c3285d519384655e56e19cb")
    add_versions("A:0.13.0", "e6c2f482890b711e3ed27e731ee4daca2e95d978ba25442689d280e5e1a05200")
    add_versions("A:0.13.1", "be142536cbc75e22aca021afd2c04d021bac27e728121724d84cf1ddb35a7578")
    add_versions("A:0.13.2", "87a6580072f5133f929ee0556128e0fdd5aa5eacd76d797496b2e647a4bc4d6a")
    add_versions("A:0.13.4", "9dc523d3c5d3f0bef4cf0f67f2429513e24bebaaeb6e96c456a52aaa4746be8a")
    add_versions("A:0.13.5", "10086ccd7c0f599052ebe34c11c2f7c7a14380d50d5a308aeeca3b6236a81e75")
    add_versions("A:0.13.6", "9a746300e8d421790fe7e201c61e37fd325c13a095344974cd0e5dc66bb20fbe")
    add_versions("A:0.13.7", "d368f91b7e93fcbb5202a3837c8205e128f9b8d6d5660977fab9b8a161b0324a")
    add_versions("A:0.13.9", "b2f8cfe53bb092e77e6f76cca7d91574aa571fc28542b3472750ed804ee7100a")
    add_versions("A:0.13.10", "f8bfe63aa04c8f50ded82228ba4b593c38275c7639825953a8687793e59c22c4")
    add_versions("A:1.0.0-rc.1", "a6735b17bf4962fb6d8f05e7ffaae1cde239355685440ae14cc543cfd26fe30a")
    add_versions("A:1.0.0-rc.2", "0659d16270c5ff6a4c32dbc20a1488f99b927a45f463edc2e86305fc408f63ef")
    add_versions("A:1.0.0-rc.3", "6f5bf3955410431bd326f4d56680bdf688ecd9a563ed38117906010442edb102")
    add_versions("A:1.0.0", "cf50706eac9f26e663d63be206e451ed7c155db93cd9bb6f9638da478f3f682b")
    add_versions("A:1.0.1", "6a7ea243f2ff587287965aa7a9ae52fc8d72eb4219da8df32ad0cad806f978a6")
    add_versions("A:1.0.2", "fd599bcb712db23412658ba4cd4c60448cd743a269010ebf3942580136e4e399")
    add_versions("A:1.2.0-rc.1", "8d6997688a6765f9f0f05953442fa067b17138f00ca0df5601d8c525fa177904")
    add_versions("A:1.2.0", "9ea8e6c8ea262e64a63b4d2a2ee08bfd119b64c2dfcd2bcddaf79706b55b10e2")
    add_versions("A:1.3.0-rc.1", "9c87d4a7e02a048df8f9b9d74366293c46c014c840979a2fef033ffea4b899cd")
    add_versions("A:1.2.1", "d1defd5ddcd380c8095620ff8f16ec82d6d251a10bdf77808b3e7a62afeebe55")
    add_versions("A:1.3.0", "6b3bc5c9fcf312a543f88866592bf81c966bc25ab28b4ca25a60603545eecb12")
    add_versions("A:1.3.1", "c2011ca2243fcaf63f582c37023f40668dcae5826b7c82b0527f2a9c2ba958a7")
    add_versions("A:1.4.0", "9ef5a83b6d474032bf9f115fffabcd6a35c3c9816d13c9cbc6eb182395f029e3")
    add_versions("A:1.4.2", "07054a8423026a8c9d8c5c2dea786ced7baffef8fe65d540d1869bca9cbcd467")
    add_versions("A:1.4.3", "6de2f2a29a4c58b07221bf8aef785aa281f7fa8a2b4d129528fd1edeb16ff809")

    add_versions("B:1.0.0-rc.1", "b2814979a79f0a2ea3f9a6692275ddd5e8b9a603f268ceca6c6b7202d226e070")
    add_versions("B:1.0.0-rc.2", "55cc084798b1ea8c693406c523ef63ffa73504857304549a7e5bef97d74047ba")
    add_versions("B:1.0.0-rc.3", "50c500504954049beb4de1faefe83ea681d907ec467ae63a02aa3f5521c4dce0")
    add_versions("B:1.0.0", "10a310591eb5cb209f9380e2c4c8ce8c8d04969db91b9ed4a0ddbb3d55afce42")
    add_versions("B:1.0.1", "0853592504628b097c5bcfcc055700bdace05eca35f27ff99cc69d0e4babf8f8")
    add_versions("B:1.0.2", "6dacb9178824c07b09c399699983876de4b41f774670f0b1db02f9a5eb3d45f7")
    add_versions("B:1.2.0-rc.1", "767ac90f56926cb9115e38c65fd1fc4e50d10e90ee4396cf8ad648eb41da90c6")
    add_versions("B:1.2.0", "93e2cabf1405370583d6d7345811db0f0f955c6e6235a0b4e28cf7bb866505b6")
    add_versions("B:1.3.0-rc.1", "c28fc2728187701c1d81c39b7377d1bd3d8615447039e152dc3e0e8c9916e07c")
    add_versions("B:1.2.1", "7db9fc6b50d3c242af94c92994c66d205db0f5dc1eb8d7e525b3e3ffee5acfc3")
    add_versions("B:1.3.0", "672c8b59b169751213dbbabd414359da691fb31db2c1cb7f45023cd3030a9d4d")
    add_versions("B:1.3.1", "5cd7e7afa5531d14c8cdee3ce61aaf096aaf1d629c55436dfc15efb723592645")
    add_versions("B:1.4.0", "cefb70f8fc2c37ad26f2bf008ae8939c8588f37c53a27579615a9932e55004d5")
    add_versions("B:1.4.2", "3c4db50b9f41b9ec2e67c882cd823dba82045daab0253bf846754fce7f9a97bd")
    add_versions("B:1.4.3", "58cea5b2983310b7639aa4b583ffe569533e85a9a20c5507c7a35dc2e75ef869")

    add_versions("C:1.5.0", "d23bc76cf71bd48e35b047b7f80bb344983287705423eece4355b69cc2e7ea5a")
    add_resources(
        "1.5.0",
        "SDK-static",
        "https://github.com/GroupMountain/GMLIB-Release/releases/download/v1.5.0/SDK-static.zip",
        "0e9d76529da1b3311b55ebfe6cbf6cdf780e7554bcc956f19dcd107a52f0fd31"
    )
    add_versions("C:1.5.1", "fc2ba6fde4ae7b4d451156418f6509e05d6035146f70857e548df782a980cbb1")
    add_resources(
        "1.5.1",
        "SDK-static",
        "https://github.com/GroupMountain/GMLIB-Release/releases/download/v1.5.1/SDK-static.zip",
        "08bca15c8db99b17de88f6ab755f06c294c6501297b1d855e6a82289ffa765d1"
    )
    add_versions("C:1.5.2", "ed7b2ad9cb40eb14b1d00c4d0cff066801b89b52f68ca35c99ab0dfac2641835")
    add_resources(
        "1.5.2",
        "SDK-static",
        "https://github.com/GroupMountain/GMLIB-Release/releases/download/v1.5.2/SDK-static.zip",
        "2b1e846dd50645b5a96d4b043d9fab13de159e5ccd5cf0f39abd4bdb66dbe562"
    )
    add_versions("C:1.6.0", "a5e39647b7b1f8b28a8cca799d1314d3184458ac458025074a36985f8c3c0166")
    add_resources(
        "1.6.0",
        "SDK-static",
        "https://github.com/GroupMountain/GMLIB-Release/releases/download/v1.5.2/SDK-static.zip",
        "4b45939ae35ec58854d574a8b76374c0b262de6bbb95385f522e49ced6bd3567"
    )
    add_includedirs("include-static", "include-shared", "include")

    on_load(function (package)
        if package:version():ge("1.4.9") then
            package:add("deps", "zstr 1.0.8", "minizip-ng 4.0.9")
        end
    end)

    on_install(function (package)
        if os.isdir("include") then
            os.cp("*", package:installdir())
        elseif os.isdir("bin") then
            os.cp("bin/SDK/*", package:installdir())
        else
            assert(false, "no include or bin")
        end
        if package:version():ge("1.4.9") then 
            local static = package:resourcedir("SDK-static")
            os.cp(path.join(static, "lib", "GMLIB.lib"), path.join(package:installdir("lib"), "GMLIB-static.lib"))
            os.cp(path.join(static, "include"), path.join(package:installdir(), "include-static"))
            os.mv(path.join(package:installdir("include"), "*"), package:installdir("include-shared"))
            os.rm(package:installdir("include"))
            os.mv(path.join(package:installdir("lib"), "GMLIB.lib"), path.join(package:installdir("lib"), "GMLIB-shared.lib"))
        end
    end)

