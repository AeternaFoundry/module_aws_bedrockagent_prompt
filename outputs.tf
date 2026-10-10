output "bedrockagent_prompts_id" {
  description = "Map of id values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bedrockagent_prompts_arn" {
  description = "Map of arn values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "bedrockagent_prompts_created_at" {
  description = "Map of created_at values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "bedrockagent_prompts_customer_encryption_key_arn" {
  description = "Map of customer_encryption_key_arn values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.customer_encryption_key_arn if v.customer_encryption_key_arn != null && length(v.customer_encryption_key_arn) > 0 }
}
output "bedrockagent_prompts_default_variant" {
  description = "Map of default_variant values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.default_variant if v.default_variant != null && length(v.default_variant) > 0 }
}
output "bedrockagent_prompts_description" {
  description = "Map of description values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagent_prompts_name" {
  description = "Map of name values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagent_prompts_region" {
  description = "Map of region values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagent_prompts_tags" {
  description = "Map of tags values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagent_prompts_tags_all" {
  description = "Map of tags_all values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrockagent_prompts_updated_at" {
  description = "Map of updated_at values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}
output "bedrockagent_prompts_variant" {
  description = "Map of variant values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.variant if v.variant != null && length(v.variant) > 0 }
}
output "bedrockagent_prompts_version" {
  description = "Map of version values across all bedrockagent_prompts, keyed the same as var.bedrockagent_prompts"
  value       = { for k, v in aws_bedrockagent_prompt.bedrockagent_prompts : k => v.version if v.version != null && length(v.version) > 0 }
}

