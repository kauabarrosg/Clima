class Climate {
  int? umidade;
  double? velocidade;
  double? temperatura;

  Climate({
    this.velocidade,
    this.umidade,
    this.temperatura,
  });

  Climate.formateJson(Map<String, dynamic> json) {
    umidade = json["main"]["humidity"];
    velocidade = json["wind"]["speed"];
    temperatura = json["main"]["temp"];
  }
}
