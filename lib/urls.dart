bool isFacebookUrlValid(String url) {
  return RegExp(
    r'^((https?):\/\/)((www\.)?(facebook)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
  ).hasMatch(url);
}

bool isInstgramUrlValid(String url) => RegExp(
      r'^((https?):\/\/)((www\.)?(instagram)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    ).hasMatch(url);

bool isUrlValid(String url) {
  return RegExp(
    r'^((https?):\/\/)((www\.)?([a-zA-Z0-9!_$]+)\.([a-zA-Z]{2,5}))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
  ).hasMatch(url);
}

bool isYoutubeUrLValid(String url) => RegExp(
      r'^((https?):\/\/)((www\.)?(youtube)\.(com))\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)',
    ).hasMatch(url);
