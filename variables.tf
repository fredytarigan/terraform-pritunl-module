variable "organization" {
  description = "pritunl organization name"
  type        = string
}

variable "additional_organization" {
  description = "additional organization attached to the server"
  type        = list(string)
  default     = []
}

variable "allowed_devices" {
  description = "device types permitted to connect to server"
  type        = string
  default     = "Any"
}

variable "bind_address" {
  description = "network address for the private network that will be created for clients"
  type        = string
}

variable "block_outside_dns" {
  description = "block outside dns on windows clients"
  type        = bool
  default     = false
}

variable "cipher" {
  description = "the cipher used for the server"
  type        = string
  default     = "aes256"
}

variable "debug" {
  description = "show server debugging information in output"
  type        = bool
  default     = false
}

variable "dh_param_bits" {
  description = "size of dh parameters"
  type        = number
  default     = 4096
}

variable "dns_mapping" {
  description = "map the vpn clients ip address to the .vpn domain such as example_user.example_org.vpn"
  type        = bool
  default     = false
}

variable "dns_servers" {
  description = "list of dns servers to be used in client"
  type        = list(string)
  default     = []
}

variable "groups" {
  description = "list of groups to allow connection from"
  type        = list(string)
  default     = []
}

variable "hash" {
  description = "The hash for the server"
  type        = string
  default     = "sha512"
}

variable "host_ids" {
  description = "list of attached hosts to the server"
  type        = list(string)
  default     = []
}

variable "inactive_timeout" {
  description = "disconnects users after the specified number of seconds of inactivity"
  type        = number
  default     = null
}

variable "inter_client" {
  description = "enable inter-client routing across hosts"
  type        = bool
  default     = false
}

variable "ipv6" {
  description = "enable ipv6 on server but requires ipv6 network interface"
  type        = bool
  default     = false
}

variable "link_ping_interval" {
  description = "multiple users have the same network link to failover"
  type        = number
  default     = 1
}

variable "link_ping_timeout" {
  description = "ping timeout used when multiple users have the same network link to failover to another user when one network link fails"
  type        = number
  default     = 5
}

variable "max_clients" {
  description = "maximum number of client connected to server"
  type        = number
  default     = 2000
}

variable "max_devices" {
  description = "maximum number of devices per client connected to a server"
  type        = number
  default     = 0
}

variable "mss_fix" {
  description = "mss fix value"
  type        = number
  default     = null
}

variable "multi_device" {
  description = "allow users to connect with multiple devices concurrently"
  type        = bool
  default     = false
}

variable "network" {
  description = "network address for the private network that will be created for clients"
  type        = string
}

variable "network_end" {
  description = "ending network address for the bridged VPN client IP addresses. Must be in the subnet of the server network"
  type        = string
  default     = null
}

variable "network_mode" {
  description = "sets network mode. Bridged mode is not recommended using it will impact performance and client support will be limited"
  type        = string
  default     = "tunnel"
}

variable "network_start" {
  description = "starting network address for the bridged VPN client IP addresses. must be in the subnet of the server network"
  type        = string
  default     = null
}

variable "network_wg" {
  description = "network address for the private network that will be created for clients"
  type        = string
  default     = null
}

variable "otp_auth" {
  description = "enables two-step authentication using Google Authenticator"
  type        = bool
  default     = true
}

variable "ping_interval" {
  description = "inteval to ping the client"
  type        = number
  default     = 10
}

variable "ping_timeout" {
  description = "timeout for client ping and must be greater than ping interval"
  type        = number
  default     = 60
}

variable "port" {
  description = "The port for the server"
  type        = number
}

variable "port_wg" {
  description = "network address for the private network that will be created for clients"
  type        = number
  default     = null
}

variable "pre_connect_msg" {
  description = "messages that will be shown after connect to the server"
  type        = string
  default     = "'"
}

variable "protocol" {
  description = "protocol for the server"
  type        = string
  default     = "udp"
}

variable "replica_count" {
  description = "replicate server across multiple hosts"
  type        = number
  default     = null
}

variable "restrict_routes" {
  description = "prevent traffic from networks not specified in the servers routes from being tunneled over the vpn"
  type        = bool
  default     = true
}

variable "route" {
  description = "the list of attached routes to the server"
  type        = any
  default     = null
}

variable "search_domain" {
  description = "DNS search domain for clients. Separate multiple search domains by a comma"
  type        = string
  default     = null
}

variable "status" {
  description = "status of the server"
  type        = string
  default     = "online"
}

variable "vxlan" {
  description = "Use VXLan for routing client-to-client traffic with replicated servers"
  type        = string
  default     = null
}
