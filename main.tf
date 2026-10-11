resource "datadog_synthetics_concurrency_cap" "synthetics_concurrency_caps" {
  for_each = var.synthetics_concurrency_caps

  on_demand_concurrency_cap = each.value.on_demand_concurrency_cap
}

