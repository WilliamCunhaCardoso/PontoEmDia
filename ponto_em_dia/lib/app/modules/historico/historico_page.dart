import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:getflutter/getflutter.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';

class HistoricoPage extends StatefulWidget {
  final String title;
  const HistoricoPage({Key key, this.title = "Historico"}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  var controllerHistorico = Modular.get<HistoricoController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // padding: const EdgeInsets.all(16),
        child: Observer(
          builder: (context) => ListView.builder(
            itemCount: controllerHistorico.historico.length,
            itemBuilder: (context, index) {
              return GFCard(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                elevation: 5,
                content: GFListTile(
                  avatar: Icon(controllerHistorico.historico[index].icone),
                  titleText: controllerHistorico.historico[index].categoria,
                  subtitleText:
                      controllerHistorico.historico[index].horario.toString(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
