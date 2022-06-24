class Climate {
  int? humidade;
  double? velocidade;
  double? temperatura;

  Climate({
    this.velocidade,
    this.humidade,
    this.temperatura,
  });

  Climate.formateJson(Map<String, dynamic> json) {
    humidade = json["main"]["humidity"];
    velocidade = json["wind"]["speed"];
    temperatura = json["main"]["temp"];
  }
}
