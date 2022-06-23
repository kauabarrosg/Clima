class Climate {
  String? descricao;
  double? tempDia;
  double? tempNoite;
  double? temperatura;

  Climate({
    this.tempDia,
    this.tempNoite,
    this.descricao,
    this.temperatura,
  });

  Climate.formateJson(Map<String, dynamic> json) {
    temperatura = json["Temperature"];
    descricao = json["IconPhrase"];
  }
}
