import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemCyan,
        brightness: Brightness.light,
      ),
      home: LoginPage(),
    );
  }
}

// Pantalla de Login
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF67E8F9),
              Color(0xFF06B6D4),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle_fill,
                    size: 100,
                    color: CupertinoColors.white,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bienvenido',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Inicia sesión para continuar',
                    style: TextStyle(
                      fontSize: 16,
                      color: CupertinoColors.white,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const CupertinoTextField(
                      placeholder: 'Email',
                      style: TextStyle(color: CupertinoColors.black),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(CupertinoIcons.mail, color: CupertinoColors.systemGrey),
                      ),
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const CupertinoTextField(
                      placeholder: 'Password',
                      obscureText: true,
                      style: TextStyle(color: CupertinoColors.black),
                      prefix: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(CupertinoIcons.lock, color: CupertinoColors.systemGrey),
                      ),
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: CupertinoButton(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(10),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => const MenuPage()),
                        );
                      },
                      child: const Text(
                        'INICIAR SESIÓN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.systemCyan,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Pantalla de Menu
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemCyan,
        middle: Text(
          'MENÚ PRINCIPAL',
          style: TextStyle(
            color: CupertinoColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.square_list,
                  size: 80,
                  color: CupertinoColors.systemCyan,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Selecciona una opción',
                  style: TextStyle(
                    fontSize: 20,
                    color: CupertinoColors.black,
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    color: CupertinoColors.systemCyan,
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const ProductosPage()),
                      );
                    },
                    child: const Text(
                      'Productos',
                      style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    color: CupertinoColors.systemCyan,
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => const RegistrarPage()),
                      );
                    },
                    child: const Text(
                      'Registrar',
                      style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    color: CupertinoColors.systemCyan,
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Text(
                      'Configuración',
                      style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    color: CupertinoColors.systemOrange,
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Pantalla de Productos (Demo)
class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemCyan,
        middle: Text(
          'PRODUCTOS',
          style: TextStyle(
            color: CupertinoColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Lista de Productos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.device_laptop, color: CupertinoColors.systemCyan),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Laptop HP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Text(
                          'Precio: \$899.99',
                          style: TextStyle(color: CupertinoColors.systemGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.device_phone_portrait, color: CupertinoColors.systemCyan),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Smartphone Samsung',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Text(
                          'Precio: \$599.99',
                          style: TextStyle(color: CupertinoColors.systemGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.headphones, color: CupertinoColors.systemCyan),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Audífonos Sony',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Text(
                          'Precio: \$149.99',
                          style: TextStyle(color: CupertinoColors.systemGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Pantalla de Registrar (Demo)
class RegistrarPage extends StatelessWidget {
  const RegistrarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemCyan,
        middle: Text(
          'REGISTRAR PRODUCTO',
          style: TextStyle(
            color: CupertinoColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.cart_badge_plus,
                  size: 80,
                  color: CupertinoColors.systemCyan,
                ),
                const SizedBox(height: 30),
                CupertinoTextField(
                  placeholder: 'Nombre del producto',
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(CupertinoIcons.cube_box, color: CupertinoColors.systemGrey),
                  ),
                  padding: const EdgeInsets.all(15),
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.systemGrey4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: 'Precio',
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(CupertinoIcons.money_dollar, color: CupertinoColors.systemGrey),
                  ),
                  padding: const EdgeInsets.all(15),
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.systemGrey4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: 'Descripción',
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Icon(CupertinoIcons.doc_text, color: CupertinoColors.systemGrey),
                  ),
                  padding: const EdgeInsets.all(15),
                  maxLines: 3,
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(color: CupertinoColors.systemGrey4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton(
                    color: CupertinoColors.systemGreen,
                    borderRadius: BorderRadius.circular(10),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Éxito'),
                          content: const Text('Producto guardado (Demo)'),
                          actions: [
                            CupertinoDialogAction(
                              child: const Text('OK'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text(
                      'GUARDAR',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}