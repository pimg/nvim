local cfg = require("yaml-companion").setup({
    schemas = {
        result = {
            {
                name = "kubernetes v1.24.9",
                uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.24.9-standalone-strict/all.json",
            },
        },
    },
})
require("lspconfig")["yamlls"].setup(cfg)


function GetYamlSchema()
  local schema = require("yaml-companion").get_buf_schema(0)
  if schema.result[1].name == "none" then
    return ""
  end
  return schema.result[1].name

end
