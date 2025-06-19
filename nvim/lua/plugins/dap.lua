return {
  "mfussenegger/nvim-dap",
  optional = true,
  opts = function()
    local dap = require("dap")
    local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
    dap.adapters.php = {
      type = "executable",
      command = "node",
      args = { path .. "/extension/out/phpDebug.js" },
    }
    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "PHP Listen for Xdebug",
        port = 9000,
        pathMappings = {
          ["/sailthru/api-php"] = "${workspaceFolder}/api",
          ["/sailthru/backend-php"] = "${workspaceFolder}/backend",
          ["/sailthru/commons"] = "${workspaceFolder}/commons",
          ["/sailthru/horizon-php"] = "${workspaceFolder}/horizon",
          ["/sailthru/link-php"] = "${workspaceFolder}/link",
          ["/sailthru/su"] = "${workspaceFolder}/su",
          ["/sailthru/ui"] = "${workspaceFolder}/ui",
        },
      },
    }
  end,
}
