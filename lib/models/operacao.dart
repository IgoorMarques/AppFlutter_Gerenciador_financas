class Operacao {
  late String nome, resumo, tipo, data;
  late int ? id;
  late int conta;
  late double custo;

  Operacao(
      {this.id, required this.nome, required this.resumo, required this.data,
        required this.tipo, required this.custo, required this.conta}
      );
  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'tipo':tipo,
      'conta':conta,
      'nome':nome,
      'resumo':resumo,
      'data':data,
      'custo':custo
    };
  }
  Operacao.fromMap(Map map){
    id = map['id'];
    tipo = map['tipo'];
    conta = map['conta'];
    nome = map['nome'];
    resumo = map['resumo'];
    data = map['data'];
    custo = map['custo'];
  }
}