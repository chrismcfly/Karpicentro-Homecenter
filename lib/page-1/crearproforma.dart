import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/listaproducto.dart';
import 'package:myapp/utils.dart';
import 'main.dart';
import 'proforma.dart';
import 'agregarproducto.dart';

class CrearProforma extends StatelessWidget {
  final nombreCompleto = TextEditingController();
  final producto = TextEditingController();
  final cantidad = TextEditingController();
  final precio = TextEditingController();
  final fechaVencimiento = TextEditingController();

  String nom = '';
  String prod = '';
  int cant = 0;
  int prec = 0;
  String fvenc = '';

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
          // crearproforma2bE (6:152)
          padding: EdgeInsets.fromLTRB(32*fem, 26*fem, 37*fem, 54*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            gradient: LinearGradient (
              begin: Alignment(0.043, -0.538),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xffffecd0), Color(0xfff3b353)],
              stops: <double>[0, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // vector1fu6 (6:162)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 289*fem, 29*fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                  },
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 17*fem,
                    height: 34*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-1.png',
                      width: 17*fem,
                      height: 34*fem,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(6 * fem, 0 * fem, 0 * fem, 27 * fem),
                width: double.infinity,
                height: 39 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame1HMe (6:142)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                      width: 92 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd0d0d0)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarProducto()));
                        },
                        child: Center(
                          child: Text(
                            'Agregar',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // Agregado el nuevo botón "Lista" en segunda posición
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ListaProducto()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 92 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffd0d0d0)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Lista',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 92 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffd0d0d0)),
                          color: Color(0xfff9a72d),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Proforma',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // nombreyapellidokha (6:154)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 4*fem),
                child: Text(
                  'Nombre y Apellido',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  margin:
                  EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 20 * fem),
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
                    controller: nombreCompleto,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa los nombres',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // productoAmJ (6:156)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 194*fem, 4*fem),
                child: Text(
                  'Producto',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  // rectangle2VHn (6:155)
                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 4*fem, 15*fem),
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 2*fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: producto,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa el nombre del producto',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // cantidadzVS (6:158)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 194*fem, 4*fem),
                child: Text(
                  'Cantidad',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  // rectangle3WTn (6:157)
                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 4*fem, 15*fem),
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 2*fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: cantidad,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa la cantidad',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // preciod2c (6:160)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 216*fem, 4*fem),
                child: Text(
                  'Precio',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  // rectangle49Wk (6:159)
                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 4*fem, 15*fem),
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 2*fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: precio,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa el precio',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // fechavencimientorvx (6:171)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 4*fem),
                child: Text(
                  'Fecha Vencimiento',
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Container(
                  // rectangle5BiL (6:170)
                  margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 4*fem, 56*fem),
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 2*fem,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: fechaVencimiento,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa la fecha de vencimiento',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // autogroupponlueL (WkFYUMxUaQhwN9LEykpoNL)
                margin: EdgeInsets.fromLTRB(77*fem, 0*fem, 73*fem, 0*fem),
                width: double.infinity,
                height: 55*fem,
                decoration: BoxDecoration (
                  color: Color(0xfff8a72c),
                  borderRadius: BorderRadius.circular(15*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                child: TextButton(
                  // karpicentrologo2DRN (5:62)
                  onPressed: () {
                    nom = nombreCompleto.text;
                    prod = producto.text;
                    cant = int.parse(cantidad.text);
                    prec = int.parse(precio.text);
                    fvenc = fechaVencimiento.text;

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Proforma(nom, prod, cant, prec, fvenc)),
                    );
                  },
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: Center(
                    child: Text(
                      'Crear',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
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