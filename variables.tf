variable "bedrockagent_prompts" {
  description = <<EOT
Map of bedrockagent_prompts, attributes below
Required:
    - name
Optional:
    - customer_encryption_key_arn
    - default_variant
    - description
    - region
    - tags
    - variant (block):
        - additional_model_request_fields (optional)
        - gen_ai_resource (optional, block):
            - agent (optional, block):
                - agent_identifier (required)
        - inference_configuration (optional, block):
            - text (optional, block):
                - max_tokens (optional)
                - stop_sequences (optional)
                - temperature (optional)
                - top_p (optional)
        - metadata (optional, block):
            - key (required)
            - value (required)
        - model_id (optional)
        - name (required)
        - template_configuration (optional, block):
            - chat (optional, block):
                - input_variable (optional, block):
                    - name (required)
                - message (optional, block):
                    - content (optional, block):
                        - cache_point (optional, block):
                            - type (required)
                        - text (optional)
                    - role (required)
                - system (optional, block):
                    - cache_point (optional, block):
                        - type (required)
                    - text (optional)
                - tool_configuration (optional, block):
                    - tool (optional, block):
                        - cache_point (optional, block):
                            - type (required)
                        - tool_spec (optional, block):
                            - description (optional)
                            - input_schema (optional, block):
                                - json (optional)
                            - name (required)
                    - tool_choice (optional, block):
                        - any (optional, block):
                        - auto (optional, block):
                        - tool (optional, block):
                            - name (required)
            - text (optional, block):
                - cache_point (optional, block):
                    - type (required)
                - input_variable (optional, block):
                    - name (required)
                - text (required)
        - template_type (required)
EOT

  type = map(object({
    name                        = string
    customer_encryption_key_arn = optional(string)
    default_variant             = optional(string)
    description                 = optional(string)
    region                      = optional(string)
    tags                        = optional(map(string))
    variant = optional(list(object({
      additional_model_request_fields = optional(string)
      gen_ai_resource = optional(list(object({
        agent = optional(list(object({
          agent_identifier = string
        })))
      })))
      inference_configuration = optional(list(object({
        text = optional(list(object({
          max_tokens     = optional(number)
          stop_sequences = optional(list(string))
          temperature    = optional(number)
          top_p          = optional(number)
        })))
      })))
      metadata = optional(list(object({
        key   = string
        value = string
      })))
      model_id = optional(string)
      name     = string
      template_configuration = optional(list(object({
        chat = optional(list(object({
          input_variable = optional(list(object({
            name = string
          })))
          message = optional(list(object({
            content = optional(list(object({
              cache_point = optional(list(object({
                type = string
              })))
              text = optional(string)
            })))
            role = string
          })))
          system = optional(list(object({
            cache_point = optional(list(object({
              type = string
            })))
            text = optional(string)
          })))
          tool_configuration = optional(list(object({
            tool = optional(list(object({
              cache_point = optional(list(object({
                type = string
              })))
              tool_spec = optional(list(object({
                description = optional(string)
                input_schema = optional(list(object({
                  json = optional(string)
                })))
                name = string
              })))
            })))
            tool_choice = optional(list(object({
              any = optional(list(object({
              })))
              auto = optional(list(object({
              })))
              tool = optional(list(object({
                name = string
              })))
            })))
          })))
        })))
        text = optional(list(object({
          cache_point = optional(list(object({
            type = string
          })))
          input_variable = optional(list(object({
            name = string
          })))
          text = string
        })))
      })))
      template_type = string
    })))
  }))
}

