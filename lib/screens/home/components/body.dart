import 'package:flutter/material.dart';
import 'package:gerenciamentofinancas/screens/home/components/card.dart';
import 'package:gerenciamentofinancas/services/conta_service.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ContaService cs = ContaService();
  late Future<List> _carregaContas;
  late List _contas;

  @override
  void initState() {
    _carregaContas = _getContas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 175,
              child: FutureBuilder(
                future: _carregaContas,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    _contas = snapshot.data;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: _contas.length,
                      padding: EdgeInsets.only(left: 16, right: 8),
                      itemBuilder: (context, index) {
                        return cardConta(context, _contas[index]);
                      },
                    );
                  } else{
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            )
          ],
        )
    );
  }

  Future<List> _getContas() async {
    return await cs.listaTodasContas();
  }
}
