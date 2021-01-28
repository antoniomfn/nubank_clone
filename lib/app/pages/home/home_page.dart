import 'package:flutter/material.dart';
import 'package:nubank_clone/app/pages/home/components/account_card.dart';
import 'package:nubank_clone/app/pages/home/components/bottom_card.dart';
import 'package:nubank_clone/app/pages/home/components/credit_card.dart';
import 'package:nubank_clone/app/pages/home/components/others_card.dart';
import 'package:nubank_clone/app/pages/home/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/';

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: SafeArea(
            child: Column(
              children: [
                // Nome, visualizão do limite e configurações
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Text(
                          'Olá, Fulano',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.purple[400],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            controller.visibility
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () => controller.changeVisibility(),
                      ),
                      GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container principal
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CreditCard(
                          visibility: controller.visibility,
                        ),
                        SizedBox(height: 20),
                        AccountCard(
                          visibility: controller.visibility,
                        ),
                        SizedBox(height: 20),
                        OthersCard(
                          icon: Icons.card_giftcard_outlined,
                          title: 'Rewards',
                          description:
                              'Apague compras com pontos que nunca expiram.',
                        ),
                        SizedBox(height: 20),
                        OthersCard(
                          icon: Icons.umbrella_outlined,
                          title: 'Seguro de vida',
                          description:
                              'Conheça Nubank Vida: um seguro simples e que cabe no bolso.',
                        )
                      ],
                    ),
                  ),
                ),
                // Bottom navigation
                Container(
                  height: 150,
                  child: ListView(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                    scrollDirection: Axis.horizontal,
                    children: [
                      BottomCard(
                        name: 'Pix',
                        icon: Icons.ac_unit,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Pagar',
                        icon: Icons.payments,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Indicar amigos',
                        icon: Icons.person_add_alt_1_rounded,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Transferir',
                        icon: Icons.local_atm,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Depositar',
                        icon: Icons.request_page,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Empréstimos',
                        icon: Icons.request_quote,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Cartão virtual',
                        icon: Icons.credit_card,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Recarga de celular',
                        icon: Icons.system_update,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Ajustar limite',
                        icon: Icons.wrap_text,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Bloquear cartão',
                        icon: Icons.lock_outline,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Cobrar',
                        icon: Icons.ac_unit,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Dividir valor',
                        icon: Icons.ac_unit,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Doação',
                        icon: Icons.ac_unit,
                        onTap: () {},
                      ),
                      BottomCard(
                        name: 'Me ajuda',
                        icon: Icons.help_outline,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
