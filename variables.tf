variable "synthetics_concurrency_caps" {
  description = <<EOT
Map of synthetics_concurrency_caps, attributes below
Required:
    - on_demand_concurrency_cap
EOT

  type = map(object({
    on_demand_concurrency_cap = number
  }))
}

