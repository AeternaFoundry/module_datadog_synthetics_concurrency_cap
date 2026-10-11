output "synthetics_concurrency_caps_id" {
  description = "Map of id values across all synthetics_concurrency_caps, keyed the same as var.synthetics_concurrency_caps except keys with no id are omitted"
  value       = { for k, v in datadog_synthetics_concurrency_cap.synthetics_concurrency_caps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_concurrency_caps_on_demand_concurrency_cap" {
  description = "Map of on_demand_concurrency_cap values across all synthetics_concurrency_caps, keyed the same as var.synthetics_concurrency_caps except keys with no on_demand_concurrency_cap are omitted"
  value       = { for k, v in datadog_synthetics_concurrency_cap.synthetics_concurrency_caps : k => v.on_demand_concurrency_cap if v.on_demand_concurrency_cap != null }
}

