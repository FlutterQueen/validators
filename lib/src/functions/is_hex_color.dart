// bool isHexColor(String str) => RegExp(r'/^#?([0-9A-F]{3}|[0-9A-F]{4}|[0-9A-F]{6}|[0-9A-F]{8})$/').hasMatch(str);
// TODO :: Support opacity
bool isHexColor(String str) =>
    RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(str);
