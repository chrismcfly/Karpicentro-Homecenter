import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/agregarproducto.dart';
import 'package:myapp/utils.dart';
import 'main.dart';

class Login extends StatelessWidget {

  final user = TextEditingController();
  final password = TextEditingController();

  String usu = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(32 * fem, 26 * fem, 41 * fem, 73 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xffffecd0), Color(0xfff3b353)],
              stops: <double>[0, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 285 * fem, 6 * fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    width: 17 * fem,
                    height: 34 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-1-wba.png',
                      width: 17 * fem,
                      height: 34 * fem,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 42 * fem),
                width: 293 * fem,
                height: 291 * fem,
                child: Image.asset(
                  'assets/page-1/images/karpicentro-logo-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                child: Text(
                  'Usuario',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  width: 294 * fem,
                  height: 55 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: user,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingrese su usuario',
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 15 * fem, 0 * fem, 10 * fem),
                child: Text(
                  'Contraseña',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  width: 294 * fem,
                  height: 55 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa tu contraseña',
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30 * fem),
                width: double.infinity,
                height: 55 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xfff8a72c),
                  borderRadius: BorderRadius.circular(15 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    usu = user.text;
                    pass = password.text;

                    if ( usu == 'Administrador' && pass == 'karpipassword') {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarProducto()));
                    }
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Center(
                    child: Text(
                      'Iniciar Sesión',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
