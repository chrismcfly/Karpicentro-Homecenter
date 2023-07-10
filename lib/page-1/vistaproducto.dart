import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/crearproforma.dart';
import 'package:myapp/page-1/login.dart';
import 'package:myapp/services/firebase_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/main.dart';
import 'proforma.dart';
import 'agregarproducto.dart';
import 'package:url_launcher/url_launcher.dart';

class VistaProducto extends StatelessWidget {
  TextEditingController mensajeWspController = TextEditingController(text: "");
  String imagenMostrar;
  String nombre;
  String categoria;
  int precio;
  String mensaje;

  VistaProducto(this.imagenMostrar, this.nombre, this.categoria, this.mensaje, this.precio);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFFFB445)),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 28 * fem,
                top: 100 * ffem,
              ),
              width: 319 * fem,
              height: 476 * ffem,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18 * fem),
                    topRight: Radius.circular(18 * fem),
                    bottomLeft: Radius.circular(12 * fem),
                    bottomRight: Radius.circular(12 * fem),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4 * fem,
                    offset: Offset(0, 4 * fem),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 40 * fem,
                top: 391 * ffem,
              ),
              width: 295 * fem,
              height: 185 * ffem,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18 * fem),
                    topRight: Radius.circular(18 * fem),
                    bottomLeft: Radius.circular(12 * fem),
                    bottomRight: Radius.circular(12 * fem),
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.only(
                  left: 94 * fem,
                  top: 111 * ffem,
                ),
                width: 185 * fem,
                height: 269 * ffem,
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: NetworkImage(imagenMostrar),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18 * fem),
                      topRight: Radius.circular(18 * fem),
                      bottomLeft: Radius.circular(12 * fem),
                      bottomRight: Radius.circular(12 * fem),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 48 * fem,
                top: 395 * ffem,
              ),
              width: 279 * fem,
              height: 32 * ffem,
              child: Text(
                nombre,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF2A2A),
                  fontSize: 26 * fem,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 48 * fem,
                top: 432 * ffem,
              ),
              width: 279 * fem,
              height: 20 * ffem,
              child: Text(
                categoria,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFB1B1B1),
                  fontSize: 16 * fem,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 48 * fem,
                top: 483 * ffem,
              ),
              width: 279 * fem,
              height: 81 * ffem,
              child: Text(
                mensaje,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16 * fem,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 121 * fem,
                top: 459 * ffem,
              ),
              width: 131 * fem,
              height: 22 * ffem,
              child: Text(
                'S/$precio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18 * fem,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 109 * fem,
                top: 685 * ffem,
              ),
              width: 156 * fem,
              height: 50 * ffem,
              decoration: ShapeDecoration(
                color: Color(0xFFF8A62C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4 * fem,
                    offset: Offset(0, 4 * fem),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: TextButton(
                  onPressed: () async {
                    var phonenumber = '+51910076766';
                    mensaje = "¡Hola!, estoy interesado en $nombre\n" ;
                    mensaje += "Categoria: $categoria, Precio: S/$precio\n" ;
                    mensaje += mensajeWspController.text;
                    var whatsAppUrl = Uri.parse("https://wa.me/$phonenumber?text=$mensaje",);

                    if (await launchUrl(whatsAppUrl, mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch ${whatsAppUrl.path}');
                    }
                  },
                  child: Text(
                    'Enviar mensaje',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 * fem,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.only(
                  left: 28 * fem,
                  top: 603 * ffem,
                ),
                width: 319 * fem,
                height: 55 * ffem,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4 * fem,
                      offset: Offset(0, 4 * fem),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: mensajeWspController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escribe tu consulta',
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 297 * fem,
                top: 30 * ffem,
              ),
              width: 50 * fem,
              height: 50 * ffem,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Image.asset(
                  'assets/page-1/images/karpicentro-logo-2-TJC.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 35 * fem,
                top: 35 * ffem,
              ),
              child: Container(
                width: 17 * fem,
                height: 34 * fem,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                  },
                  child: Image.asset(
                    'assets/page-1/images/vector-1-wba.png',
                    width: 17 * fem,
                    height: 34 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
