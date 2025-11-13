output "output_name" {
  value       = resource.auth0_client.grafana.id # or resource.type.name.attribute
  description = "A description of the output value."
  #sensitive = true
}