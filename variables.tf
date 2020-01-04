variable "name" {
  type        = string
  description = "Name of the resource"
}

variable "timeout_sec" {
  type        = number
  description = "How long (in seconds) to wait before claiming failure."
  default     = 5
}

variable "check_interval_sec" {
  type        = number
  description = "How often (in seconds) to send a health check."
  default     = 5
}

variable "description" {
  type        = string
  description = "Description of this resource"
  default     = "health check"
}

variable "healthy_threshold" {
  type        = number
  description = "A so-far unhealthy instance will be marked healthy after this many consecutive successes."
  default     = 2
}

variable "unhealthy_threshold" {
  type        = number
  description = "A so-far healthy instance will be marked unhealthy after this many consecutive failures."
  default     = 2
}

variable "region" {
  type        = string
  description = "The Region in which the created health check should reside."
  default     = "us-central"
}

variable "http_health_check" {
  default     = []
  description = "A nested object http health check"
  type        = list(any)
}

variable "https_health_check" {
  default     = []
  description = "A nested object https health check"
  type        = list(any)
}

variable "tcp_health_check" {
  default     = []
  description = "A nested object tcp health check"
  type        = list(any)
}

variable "ssl_health_check" {
  default     = []
  description = "A nested object ssl health check"
  type        = list(any)
}

variable "http2_health_check" {
  default     = []
  description = "A nested object http2 health check"
  type        = list(any)
}

