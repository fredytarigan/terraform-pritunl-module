# pritunl organization
resource "pritunl_organization" "this" {
  name = var.organization
}

# pritunl server
resource "pritunl_server" "this" {
  name = var.server_name

  organization_ids = compact(
    concat(
      [pritunl_organization.this.id],
      var.additional_organization,
    )
  )

  allowed_devices    = var.allowed_devices
  bind_address       = var.bind_address
  block_outside_dns  = var.block_outside_dns
  cipher             = var.cipher
  debug              = var.debug
  dh_param_bits      = var.dh_param_bits
  dns_mapping        = var.dns_mapping
  dns_servers        = var.dns_servers
  groups             = var.groups
  hash               = var.hash
  host_ids           = var.host_ids
  inactive_timeout   = var.inactive_timeout
  inter_client       = var.inter_client
  ipv6               = var.ipv6
  link_ping_interval = var.link_ping_interval
  link_ping_timeout  = var.link_ping_timeout
  max_clients        = var.max_clients
  max_devices        = var.max_devices
  mss_fix            = var.mss_fix
  multi_device       = var.multi_device
  network            = var.network
  network_end        = var.network_end
  network_mode       = var.network_mode
  network_start      = var.network_start
  network_wg         = var.network_wg
  otp_auth           = var.otp_auth
  ping_interval      = var.ping_interval
  ping_timeout       = var.ping_timeout
  port               = var.port
  port_wg            = var.port_wg
  pre_connect_msg    = var.pre_connect_msg
  protocol           = var.protocol
  replica_count      = var.replica_count
  restrict_routes    = var.restrict_routes
  search_domain      = var.search_domain
  status             = var.status
  vxlan              = var.vxlan

  dynamic "route" {
    for_each = var.route

    content {
      network = route.value["network"]
      comment = lookup(route.value, "comment", "")
      nat     = lookup(route.value, "nat", false)
    }
  }
}
