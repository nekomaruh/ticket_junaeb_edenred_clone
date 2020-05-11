import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class WelcomePage extends StatefulWidget {

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageIndicatorContainer(
            length: 6,
            padding: EdgeInsets.only(bottom: 100),
            indicatorColor: Colors.grey,
            indicatorSelectorColor: Theme.of(context).secondaryHeaderColor,
            child: PageView(
              controller: PageController(initialPage: _index),
              onPageChanged: (index){
                setState(() {
                  _index = index;
                });
              },
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                showFirstScreen(context),
                showSecondScreen(context),
                showThirdScreen(context),
                showFourthScreen(context),
                showFifthScreen(context),
                showSixthScreen(context),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(child: SizedBox(),),
              showBottom(context,_index)
            ],
          )
        ],
      )
    );
  }

  showThirdScreen(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image(
                  image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                  height: 50,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Image(
          image: AssetImage('assets/3rd_welcome.jpg'),
          width: double.infinity,
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text('Tu tarjeta Edenred se asociará automáticamente a la aplicación para que puedas usar su saldo.',
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18), textAlign: TextAlign.justify,),
          ),
        )
      ],
    );
  }

  showFourthScreen(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image(
                  image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                  height: 50,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Image(
          image: AssetImage('assets/4th_welcome.jpg'),
          width: double.infinity,
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text('Para realizar el pago de forma segura deberás crear una Clave de Pago Móvil, que será solicitada antes de realizar cada compra.',
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18), textAlign: TextAlign.justify,),
          ),
        )
      ],
    );
  }

  showFifthScreen(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image(
                  image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                  height: 50,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Image(
          image: AssetImage('assets/5th_welcome.jpg'),
          width: double.infinity,
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Entrega tu tarjeta Ticket Junaeb o dicta tu RUT en caja', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Genera tu código dinámico', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Díctalo, y', style: TextStyle(fontSize: 18)),
                        TextSpan(text: ' ¡listo!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  showSixthScreen(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image(
                  image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                  height: 50,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Image(
          image: AssetImage('assets/6th_welcome.jpg'),
          width: double.infinity,
        ),
        SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Indica que pagarás usando la App', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Genera tu código', style: TextStyle(fontSize: 18)),
                        TextSpan(text: ' QR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.subhead.apply(color: Theme.of(context).primaryColor),
                      children: <TextSpan>[
                        TextSpan(text: '3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        TextSpan(text: '   Muéstralo, y', style: TextStyle(fontSize: 18)),
                        TextSpan(text: ' ¡listo!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

showBottom(BuildContext context, int index) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(CupertinoIcons.left_chevron, color: index == 0 ? Colors.white: Theme.of(context).primaryColor,),
            CupertinoButton(
              child: Text('Volver', style: TextStyle(color: index == 0 ? Colors.white: Theme.of(context).primaryColor),),
              onPressed: (){},
            ),
          ],
        ),
        CupertinoButton(
          child: Text('Omitir', style: TextStyle(color: index == 0 ? Colors.white: Theme.of(context).primaryColor),),
          onPressed: (){},
        ),
      ],
    ),
  );
}

showFirstScreen(BuildContext context){
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image(
                image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                height: 50,
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 5,),
      Expanded(
        child: Stack(
          children: <Widget>[
            Container(
              //color: Theme.of(context).primaryColor.withOpacity(0.8),
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(
                'assets/tio_juna.png'),
                fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor.withOpacity(0.8),
            ),

            ListView(
              children: <Widget>[
                SizedBox(height: 100,),
                Center(child: Text('¡Bienvenido!', style: Theme.of(context).textTheme.title.apply(color: Colors.white, fontSizeDelta: 18))),
                SizedBox(height: 100,),
                Center(child: Text('A nuestra nueva\naplicación\nde Pago Ticket\nJunaeb', style: Theme.of(context).textTheme.title.apply(color: Colors.white, fontSizeDelta: 10, fontWeightDelta: -2), textAlign: TextAlign.center), ),
                SizedBox(height: 100,),
                Center(
                  child: Wrap(
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('Siguiente'),
                        color: Theme.of(context).secondaryHeaderColor,
                        onPressed: (){
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      )
    ],
  );
}

showSecondScreen(BuildContext context){
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image(
                image: AssetImage('assets/ticket_junaeb_logo_white.png'),
                height: 50,
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 5,),
      Image(
        image: AssetImage('assets/2nd_welcome.jpg'),
        width: double.infinity,
      ),
      SizedBox(height: 100,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Text('Con la Nueva App de pago Edenred podrás realizar pagos en todos los comercios habilitados en nuestra Red.',
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18), textAlign: TextAlign.justify,),
        ),
      )
    ],
  );
}
