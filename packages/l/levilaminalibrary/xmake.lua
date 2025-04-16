package("levilaminalibrary")
    add_urls("https://github.com/GroupMountain/levilaminalibrary/releases/download/v$(version)/SDK.zip")
    add_versions("0.13.5", "ea41733bac86132fdacf51d050648bfc65ab8688e71ceae3f069aef18b6a2981")
    add_versions("0.13.5-fix", "3a38bdbf7600eb34f349a87a10a6af5f406098306472e4deca32c059d048da9d")
    add_versions("1.0.0", "6bec59d1049d04b0033b0ade692c633e408e1e9291d2b6f9a2faaa181c85d4c6")
    add_versions("1.0.1", "ae83983ad0e5b7a099c11e76c852f7233f5a719498c4dfaf1a2fe049211ddaed")
    add_versions("1.1.0", "b748043afe30c810d412cb1090a290bd71f285131549c0afa7a55a519f663190")
    on_load(function(package)
        import("net.http")
        local deps_url = "https://github.com/GroupMountain/levilaminalibrary/releases/download/v" .. package:version():rawstr() .. "/deps.list" -- 实测这里使用v$(version)无法生效
        local deps_path = path.join(os.tmpdir(),package:version():rawstr(), "deps.list")
        local max_retries = 3   -- 最大重连次数：3
        local retry_count = 0
        while retry_count < max_retries do
            try
            {
                function()
                    http.download(deps_url,deps_path)
                    retry_count = max_retries   -- 下载成功就跳出循环
                end,
                catch
                {
                    function(errors)
                        retry_count =retry_count + 1
                        if retry_count < max_retries then
                            print("Dependency list download failed,attempting to download again,frequency " .. retry_count .. "/" .. max_retries .. ".")
                        else
                            print("Dependency list download failed:" .. errors)
                            raise("Click the link to test network connectivity:" .. deps_url)   -- 强制退出程序
                        end
                    end
                }
            }
        end
        local data = io.readfile(deps_path)
        local deps = data:split('\n')
        for _, dep in ipairs(deps) do
            if dep ~= "" then
                package:add("deps", dep)
            end
        end
    end)

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)

