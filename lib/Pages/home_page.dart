import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  void _login() {
    print(controllerLogin.text);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha AppBar'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        leading: Icon(Icons.menu),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // ação do botão de busca
            },
          ),

          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // ação do botão de mais opções
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.person, size: 20),
                  Text("  nome", style: TextStyle(fontWeight: FontWeight.w900)),
                  Text("  Renato"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.email, size: 20),
                  Text(
                    "  e-mail",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text("  renato@gmail.com"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.phone, size: 20),
                  Text(
                    " Telefone",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text("  11999999"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_city, size: 20),
                  Text(
                    "  Endereço",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text("  rua numero 0 "),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("testando container"),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 151, 0, 131),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Lorem Ipsum is simply \ndummy text of the printing and typesetting \nindustry. Lorem Ipsum has been the industry's \n\n standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of\n type and scrambled it to make a type specimen \nbook. It has survived not only five\n centuries, but also the leap into electronic \ntypesetting, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite seu Login",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite sua senha",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                ),
                onPressed: _login,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    SizedBox(width: 10),
                    Text("Login"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
