output "themes_lookup_id" {
  description = "Map of id values across all themes_lookup, keyed the same as var.themes_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_themes.themes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "themes_lookup_brand_id" {
  description = "Map of brand_id values across all themes_lookup, keyed the same as var.themes_lookup except keys with no brand_id are omitted"
  value       = { for k, v in data.okta_themes.themes_lookup : k => v.brand_id if v.brand_id != null && length(v.brand_id) > 0 }
}
output "themes_lookup_themes" {
  description = "Map of themes values across all themes_lookup, keyed the same as var.themes_lookup except keys with no themes are omitted"
  value       = { for k, v in data.okta_themes.themes_lookup : k => v.themes if v.themes != null && length(v.themes) > 0 }
}

