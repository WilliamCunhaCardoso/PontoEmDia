import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';
import 'package:ponto_em_dia/app/shared/widgets/custom_bottombar.dart';

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
        child: Observer(
          builder: (context) => ListView.builder(
            itemCount: controllerHistorico.historico.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  controllerHistorico.historico[index].categoria,
                ),
                subtitle: Text(
                  controllerHistorico.historico[index].horario.toString(),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
