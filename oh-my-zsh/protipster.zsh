function protipster-tunnels {
  # protipster - mysql
  ssh-tunnel 3307 3306 bb.locke

  # protipster - rabbitmq
  ssh-tunnel 7673 7673 bb.locke
  ssh-tunnel 7674 7674 bb.locke
}
