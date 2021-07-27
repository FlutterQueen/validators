// TODO :: Support opacity
bool isHexColor(String str) => RegExp(r'^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$').hasMatch(str);
