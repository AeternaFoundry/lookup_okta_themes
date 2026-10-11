variable "themes_lookup" {
  description = <<EOT
Map of themes_lookup, attributes below
Required:
    - brand_id
EOT

  type = map(object({
    brand_id = string
  }))
}

