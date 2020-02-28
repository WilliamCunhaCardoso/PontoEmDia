import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:ponto_em_dia/app/shared/widgets/custom_bottombar.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key key, this.title = "Perfil"}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: GFCard(
          content: Column(
            children: <Widget>[
              GFImageOverlay(
                height: 100,
                width: 100,
                shape: BoxShape.circle,
                image: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C4E03AQHgDSBFT832lQ/profile-displayphoto-shrink_200_200/0?e=1588204800&v=beta&t=6g3Mbt27TAhyEkxlNwPsPRaK81jjpz2W3rbtlHK123g'),
              ),
              GFListTile(
                title: GFTypography(
                  text: 'Dados',
                  type: GFTypographyType.typo2,
                ),
              ),
              GFListTile(
                titleText: 'Nome',
                subtitleText: 'William Cunha Cardoso',
              ),
              GFListTile(
                titleText: 'Cargo',
                subtitleText: 'Desenvolvedor Mobile Jr',
              ),
              GFListTile(
                titleText: 'Departamento',
                subtitleText: 'Desenvolvimento',
              ),
              GFListTile(
                titleText: 'Supervisor',
                subtitleText: 'Mailliw Osodrac',
              ),
              GFListTile(
                titleText: 'Matrícula',
                subtitleText: 'D3V001',
              ),
              GFListTile(
                title: GFTypography(
                  text: 'Marcações',
                  type: GFTypographyType.typo2,
                ),
              ),
              GFListTile(
                title: Text(
                  'Sincronizados',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: GFColors.SUCCESS),
                ),
                subtitleText: '13',
              ),
              GFListTile(
                title: Text(
                  'Sincronizados',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: GFColors.WARNING),
                ),
                subtitleText: '4',
              ),
              GFListTile(
                title: Text(
                  'Perdidos',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: GFColors.DANGER),
                ),
                subtitleText: '3',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
