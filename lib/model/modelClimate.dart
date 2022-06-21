class Climate {
   String? cidade; 
   String? descricao;
   double? temperatura; 

  Climate({
    this.cidade,
    this.descricao,
    this.temperatura,
  });

  Climate.formateJson(Map<String, dynamic> json){
    temperatura = json["Temperature"];
    descricao = json["IconPhrase"];
  }

} 