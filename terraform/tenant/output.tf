output "output_name" {
  value       = resource.auth0_client.my_client.id # or resource.type.name.attribute
  description = "A description of the output value."
  #sensitive = true
}