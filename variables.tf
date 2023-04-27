variable "s3_origin_id" {
  description = "O ID da origem do S3 que você deseja usar como origem do CloudFront."
  type        = string
}

variable "origin_access_identity_comment" {
  description = "O comentário que você deseja adicionar à identidade de acesso de origem que o CloudFront cria para você."
  type        = string
}

variable "cloudfront_distribution_domain_name" {
  description = "O nome de domínio personalizado que você deseja usar para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_origin_id" {
  description = "O ID da origem que você deseja usar para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_comment" {
  description = "O comentário que você deseja adicionar à distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_default_root_object" {
  description = "O objeto raiz padrão que você deseja definir para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_allow_methods" {
  description = "Os métodos HTTP que você deseja permitir para a distribuição do CloudFront."
  type        = list(string)
}

variable "cloudfront_distribution_cached_methods" {
  description = "Os métodos HTTP que você deseja armazenar em cache para a distribuição do CloudFront."
  type        = list(string)
}

variable "cloudfront_distribution_cookies_forward" {
  description = "A opção de como você deseja lidar com os cookies ao servir conteúdo da distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_viewer_protocol_policy" {
  description = "A política que você deseja usar para o protocolo do visualizador para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_min_ttl" {
  description = "O valor mínimo de tempo de vida em cache (TTL) que você deseja definir para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_default_ttl" {
  description = "O valor padrão de tempo de vida em cache (TTL) que você deseja definir para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_max_ttl" {
  description = "O valor máximo de tempo de vida em cache (TTL) que você deseja definir para a distribuição do CloudFront."
  type        = string
}

variable "cloudfront_distribution_geo_restriction_type" {
  description = "O tipo de restrição geográfica que você deseja aplicar à distribuição do CloudFront."
  type        = string
}
