data "okta_themes" "themes_lookup" {
  for_each = var.themes_lookup

  brand_id = each.value.brand_id
}

