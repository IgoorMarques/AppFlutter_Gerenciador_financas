import 'package:gerenciamentofinancas/utils/util_db.dart';
import '../models/conta.dart';

class ContaService{

  List<Conta> _contaList = [];

  void adicionarConta(Conta conta){
    DbUtil.insereDados('conta', conta.toMap());
  }
  
  Future<List> listaTodasContas() async{
    final dataList = await DbUtil.pegaDados('conta');
    _contaList = dataList.map((contas) => Conta.fromMap(contas)).toList();
    return _contaList;
  }
}