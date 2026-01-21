local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Liquid snippets
ls.add_snippets("liquid", {
  -- Variable interpolation: {{ variable }}
  s("lv", {
    t("{{ "),
    i(1, "variable"),
    t(" }}"),
  }),

  -- Render include: {% render 'template' %}
  s("lr", {
    t("{% render '"),
    i(1, "template"),
    t("' %}"),
  }),

  -- Render include with variable: {% render 'template', variable: value %}
  s("lrv", {
    t("{% render '"),
    i(1, "template"),
    t("', "),
    i(2, "variable"),
    t(": "),
    i(3, "value"),
    t(" %}"),
  }),

  -- For loop: {% for item in collection %}...{% endfor %}
  s("lfor", {
    t("{% for "),
    i(1, "item"),
    t(" in "),
    i(2, "collection"),
    t(" %}"),
    t({ "", "  " }),
    i(0),
    t({ "", "{% endfor %}" })
  }),

  -- If statement: {% if condition %}...{% endif %}
  s("lif", {
    t("{% if "),
    i(1, "condition"),
    t(" %}"),
    t({ "", "  " }),
    i(0),
    t({ "", "{% endif %}" })
  }),

  -- Capture: {% capture variable %}...{% endcapture %}
  s("lcap", {
    t("{% capture "),
    i(1, "variable"),
    t(" %}"),
    t({ "", "  " }),
    i(0),
    t({ "", "{% endcapture %}" })
  }),
})
