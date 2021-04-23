output "bastion_id" {
  value       = ibm_is_instance.bastion.id
  description = "ID of the bastion virtual server instance"
}

output "bastion_private_ip" {
  value       = ibm_is_instance.bastion.primary_network_interface[0].primary_ipv4_address
  description = "Private IP address of the bastion virtual server instance"
}

output "bastion_public_ip" {
  value       = var.create_public_ip ? ibm_is_floating_ip.bastion[0].address : null
  description = "Public IP address of the bastion virtual server instance, null if none was allocated."
}

output "bastion_security_group_id" {
  value       = ibm_is_security_group.bastion.id
  description = "ID of the security group assigned to the bastion interface"
}

output "bastion_maintenance_group_id" {
  value       = ibm_is_security_group.maintenance.id
  description = "ID of the security group used to allow connection from the bastion to your instances"
}

output "bastion_network_interface_ids" {
  value       = ibm_is_instance.bastion.primary_network_interface[*].id
  description = "ID(s) of the primary_network_interface for the bastion instance"
}
