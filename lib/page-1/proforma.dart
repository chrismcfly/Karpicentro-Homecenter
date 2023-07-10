import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'main.dart';
import 'package:flutter/services.dart';

class Proforma extends StatelessWidget {

  String nom;
  String prod;
  int cant;
  int prec;
  String fvenc;

  Proforma(this.nom, this.prod, this.cant, this.prec, this.fvenc);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              // proformaHSk (6:172)
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
                    // autogroupnopgZQG (WkFXAQ93mudNFdEh3XNopG)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                    width: double.infinity,
                    height: 333*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle6gjn (6:190)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 375*fem,
                              height: 215*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xfff8a72c),
                                  borderRadius: BorderRadius.only (
                                    bottomRight: Radius.circular(45*fem),
                                    bottomLeft: Radius.circular(45*fem),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // karpicentrologo29dN (6:191)
                          left: 41*fem,
                          top: 20*fem,
                          child: Align(
                            child: SizedBox(
                              width: 293*fem,
                              height: 291*fem,
                              child: Image.asset(
                                'assets/page-1/images/karpicentro-logo-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // vector2Te4 (8:213)
                          left: 21*fem,
                          top: 26*fem,
                          child: Align(
                            child: SizedBox(
                              width: 17*fem,
                              height: 34*fem,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                                },
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/vector-2.png',
                                  width: 17*fem,
                                  height: 34*fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // proformavlidaxKv (7:192)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                    child: Text(
                      'Proforma válida',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 28*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouph3yw4dr (WkFXR4PHifuWgHc7XHh3yW)
                    width: double.infinity,
                    height: 372*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle10Pg8 (7:199)
                          left: 0*fem,
                          top: 230*fem,
                          child: Align(
                            child: SizedBox(
                              width: 375*fem,
                              height: 180*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(45*fem),
                                  color: Color(0xfff8a72c),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8srC (7:193)
                          left: 30*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 316*fem,
                              height: 273*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  border: Border.all(color: Color(0xffb8b8b8)),
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle9mgg (7:196)
                          left: 30*fem,
                          top: 281*fem,
                          child: Align(
                            child: SizedBox(
                              width: 316*fem,
                              height: 51*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  border: Border.all(color: Color(0xffb8b8b8)),
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line1Ub6 (7:194)
                          left: 30*fem,
                          top: 51*fem,
                          child: Align(
                            child: SizedBox(
                              width: 314*fem,
                              height: 3*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb8b8b8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line2bfi (7:195)
                          left: 30*fem,
                          top: 51*fem,
                          child: Align(
                            child: SizedBox(
                              width: 314*fem,
                              height: 3*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb8b8b8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line5XJU (8:200)
                          left: 30*fem,
                          top: 227*fem,
                          child: Align(
                            child: SizedBox(
                              width: 314*fem,
                              height: 3*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb8b8b8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line4dsJ (7:198)
                          left: 256*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 3*fem,
                              height: 273*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb8b8b8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // cantkh2 (8:202)
                          left: 38*fem,
                          top: 18*fem,
                          child: Align(
                            child: SizedBox(
                              width: 43*fem,
                              height: 20*fem,
                              child: Text(
                                'Cant.',
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
                        Positioned(
                          // productoFdn (8:203)
                          left: 135*fem,
                          top: 18*fem,
                          child: Align(
                            child: SizedBox(
                              width: 72*fem,
                              height: 20*fem,
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
                          ),
                        ),
                        Positioned(
                          // productokaY (8:209)
                          left: 99*fem,
                          top: 65*fem,
                          child: Align(
                            child: SizedBox(
                              width: 200*fem,
                              height: 17*fem,
                              child: Text(
                                prod,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff2939c8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // 4bE (8:210)
                          left: 48*fem,
                          top: 65*fem,
                          child: Align(
                            child: SizedBox(
                              width: 20*fem,
                              height: 17*fem,
                              child: Text(
                                cant.toString(),
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff2939c8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // totalZnt (8:205)
                          left: 122*fem,
                          top: 241*fem,
                          child: Align(
                            child: SizedBox(
                              width: 40*fem,
                              height: 20*fem,
                              child: Text(
                                'Total',
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
                        Positioned(
                          // fvencimientoUQ4 (8:211)
                          left: 48*fem,
                          top: 297*fem,
                          child: Align(
                            child: SizedBox(
                              width: 116*fem,
                              height: 20*fem,
                              child: Text(
                                'F. Vencimiento',
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
                        Positioned(
                          // BZN (8:212)
                          left: 209*fem,
                          top: 297*fem,
                          child: Align(
                            child: SizedBox(
                              width: 100*fem,
                              height: 20*fem,
                              child: Text(
                                fvenc,
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
                        Positioned(
                          // precioVa4 (8:204)
                          left: 275*fem,
                          top: 18*fem,
                          child: Align(
                            child: SizedBox(
                              width: 50*fem,
                              height: 20*fem,
                              child: Text(
                                'P. Unidad',
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
                        Positioned(
                          // sQBE (8:206)
                          left: 266*fem,
                          top: 241*fem,
                          child: Align(
                            child: SizedBox(
                              width: 70*fem,
                              height: 20*fem,
                              child: Text(
                                'S/'+ (cant * prec).toString(),
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
                        Positioned(
                          // sWEG (8:207)
                          left: 266*fem,
                          top: 65*fem,
                          child: Align(
                            child: SizedBox(
                              width: 70*fem,
                              height: 17*fem,
                              child: Text(
                                'S/' + prec.toString(),
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff2939c8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}