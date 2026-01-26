local M = {}

function M:setup()
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
  local workspace_dir = "/opt/jdtls/development/jdtls_java/" .. project_name
  local config = {
    cmd = {
      "/usr/lib/jvm/java-21-openjdk-amd64/bin/java",

      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      "-Dosgi.bundles.defaultStartLevel=4",
      "-Declipse.product=org.eclipse.jdt.ls.core.product",
      "-Dlog.protocol=true",
      "-Dlog.level=ALL",
      "-Xmx1g",
      "--add-modules=ALL-SYSTEM",
      "--add-opens",
      "java.base/java.util=ALL-UNNAMED",
      "--add-opens",
      "java.base/java.lang=ALL-UNNAMED",

      "-jar",
      "/opt/jdtls/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",

      "-configuration",
      "/opt/jdtls/config_linux",

      "-data",
      workspace_dir,
    },
    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
    settings = {
      java = {},
    },
    init_options = {
      bundles = {},
    },
  }

  require("jdtls").start_or_attach(config)
end

return M
