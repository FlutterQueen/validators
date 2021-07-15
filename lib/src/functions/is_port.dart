bool isPort(String port) {
  final _port = int.tryParse(port);
  return _port != null && _port >= 0 && _port < 65535;
}
