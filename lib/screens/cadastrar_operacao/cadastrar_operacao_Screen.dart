import 'package:flutter/material.dart';
import 'package:gerenciamentofinancas/models/conta.dart';


class CadastrarOperacao extends StatefulWidget {

  @override
  State<CadastrarOperacao> createState() => _CadastrarOperacaoState();
}

class _CadastrarOperacaoState extends State<CadastrarOperacao> {
  final _nomeController = TextEditingController();
  final _resumoController = TextEditingController();
  final _custoController = TextEditingController();
  final _tipoController = TextEditingController();
  final _dataController = TextEditingController();
  Conta ? contaSelecionada;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
