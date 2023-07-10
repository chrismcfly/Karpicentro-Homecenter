import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/vistaproducto.dart';
import 'package:myapp/services/firebase_service.dart';
import 'package:myapp/utils.dart';
import 'login.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _urlFacebook = Uri.parse('https://www.facebook.com/karpicentro');
final Uri _urlInstagram = Uri.parse('https://www.instagram.com/karpicentroperu/');
String selectedCategory = ''; // Variable para almacenar la categoría seleccionada



class Scene extends StatefulWidget {
  @override
  _SceneState createState() => _SceneState();
}

class _SceneState extends State<Scene> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        width: double.infinity,
        height: MediaQuery
            .of(context)
            .size
            .height, // Ocupa toda la altura de la pantalla
        child: Container(
          // mainX9E (1:3)
          padding: EdgeInsets.fromLTRB(16 * fem, 28 * fem, 17 * fem, 33 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
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
                // autogroupvmacBDn (WkFZWzt7AUauJhVm3sVMaC)
                margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 17 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // karpicentrohomecenter7NL (5:61)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 42 * fem, 0 * fem),
                      child: Text(
                        'Karpicentro Homecenter',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    TextButton(
                      // karpicentrologo2DRN (5:62)
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 50 * fem,
                        height: 50 * fem,
                        child: Image.asset(
                          'assets/page-1/images/karpicentro-logo-2-TJC.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame29K2 (3:29)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
                width: double.infinity,
                height: 39 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame1foA (3:26)
                      width: 69 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd0d0d0)),
                        color: selectedCategory == '' ? Color(0xfff9a72d) : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = ''; // Mostrar todos los productos
                          });
                        },
                        child: Center(
                          child: Text(
                            'Todos',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10 * fem,
                    ),
                    Container(
                      // frame2kJp (3:30)
                      width: 81 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd0d0d0)),
                        color: selectedCategory == 'Entrada' ? Color(0xfff9a72d) : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = 'Entrada'; // Mostrar productos de la categoría 'Entrada'
                          });
                        },
                        child: Center(
                          child: Text(
                            'Entrada',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10 * fem,
                    ),
                    Container(
                      // frame3SSY (3:32)
                      width: 78 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd0d0d0)),
                        color: selectedCategory == 'Interior' ? Color(0xfff9a72d) : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = 'Interior'; // Mostrar productos de la categoría 'Entrada'
                          });
                        },
                        child: Center(
                          child: Text(
                            'Interior',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10 * fem,
                    ),
                    Container(
                      // frame4snk (3:34)
                      width: 84 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffd0d0d0)),
                        color: selectedCategory == 'Armario' ? Color(0xfff9a72d) : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = 'Armario'; // Mostrar productos de la categoría 'Armario'
                          });
                        },
                        child: Center(
                          child: Text(
                            'Armario',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
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
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 113 * fem, 10 * fem),
                child: Text(
                  'Productos Destacados',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),

              FutureBuilder(
                future: (() {
                  if (selectedCategory.isEmpty) {
                    return getProducts();
                  } else {
                    return getProductsCategory(selectedCategory);
                  }
                })(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: 470 * fem,
                      child: ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            final nextIndex = index + 1;
                            final hasNextItem = nextIndex < snapshot.data!.length;
                            String category = snapshot.data?[index]['categoria'];
                            if ((index % 2 == 0 ) && (selectedCategory.isEmpty || category == selectedCategory)) {
                              final nextIndex = index + 1;
                              //Generar 2 nuevos containers para los indices pares
                                return Container(
                                  height: 202 * fem,
                                  // autogroupsdmwfic (WkFZkKqEZu28EkjxkvsDMW)
                                  margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 15 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupwrynzkt (WkFa3V1K2RkkToUAw1wRyN)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 13 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(
                                            11 * fem, 8 * fem, 13 * fem, 8 * fem),
                                        width: 163 * fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(12 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0 * fem, 4 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // imagen202306281935430481f6L (5:90)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem, 0 * fem, 0 * fem, 7 * fem),
                                              width: 94 * fem,
                                              height: 122 * fem,
                                              child: Image.network(
                                                snapshot.data?[index]['imagen'],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                // puertavictoriaBD6 (6:98)
                                                child: Text(
                                                  snapshot.data?[index]['nombre'],
                                                  style: SafeGoogleFont(
                                                    'Inter',
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2125 * ffem / fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // autogrouppwb25ZN (WkFaCZaWxSpA8oWEZKpwB2)
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    // autogrouplt6gdKz (WkFaHZSByyj7jaDowyLt6G)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem, 0 * fem, 36 * fem, 5 * fem),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // entradaZjS (6:99)
                                                          margin: EdgeInsets.fromLTRB(
                                                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                                          child: Text(
                                                            snapshot.data?[index]['categoria'],
                                                            style: SafeGoogleFont(
                                                              'Inter',
                                                              fontSize: 11 * ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.2125 * ffem / fem,
                                                              color: const Color(0xffb1b1b1),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'S/${snapshot.data![index]['precio']}',
                                                          style: SafeGoogleFont(
                                                            'Inter',
                                                            fontSize: 14 * ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.2125 * ffem / fem,
                                                            color: const Color(0xff000000),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      // frame5S2Y (6:113)
                                                      width: 61 * fem,
                                                      height: 26 * fem,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xfff9a72d),
                                                        borderRadius: BorderRadius.circular(8 * fem),
                                                      ),
                                                      child: TextButton(
                                                        onPressed: () async {
                                                          var imagenMostrar = snapshot.data?[index]['imagen'];
                                                          var nombre = snapshot.data?[index]['nombre'];
                                                          var categoria = snapshot.data?[index]['categoria'];
                                                          var mensaje = snapshot.data?[index]['mensaje'];
                                                          var precio = snapshot.data?[index]['precio'];

                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) => VistaProducto(imagenMostrar, nombre, categoria, mensaje, precio)),
                                                          );

                                                        },
                                                        child: Center(
                                                          child: Text(
                                                            'Comprar',
                                                            style: SafeGoogleFont(
                                                              'Inter',
                                                              fontSize: 10 * ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.2125 * ffem / fem,
                                                              color: Color(0xff000000),
                                                            ),
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
                                      if (hasNextItem && (selectedCategory.isEmpty || snapshot.data![nextIndex]['categoria'] == selectedCategory))
                                        Container(
                                          // autogroupd6y2vTW (WkFaaJTJ2DPKzZDtWLd6y2)
                                          padding: EdgeInsets.fromLTRB(
                                              11 * fem, 13 * fem, 13 * fem, 8 * fem),
                                          width: 163 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffffffff),
                                            borderRadius: BorderRadius.circular(12 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset: Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // image1Cfv (9:229)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem, 0 * fem, 2 * fem, 5 * fem),
                                                width: 51 * fem,
                                                height: 119 * fem,
                                                child: Image.network(
                                                  snapshot.data?[index + 1]['imagen'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  child: Text(
                                                    snapshot.data?[index + 1]['nombre'],
                                                    style: SafeGoogleFont(
                                                      'Inter',
                                                      fontSize: 15 * ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2125 * ffem / fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // autogroupdpu2TLx (WkFahYkDi8uicUTmpgDpu2)
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // autogrouppnvycDr (WkFan3cj2v8aemWPg4PNvY)
                                                      margin: EdgeInsets.fromLTRB(
                                                          0 * fem, 0 * fem, 36 * fem, 5 * fem),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // entradaYNQ (6:103)
                                                            margin: EdgeInsets.fromLTRB(
                                                                0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                                            child: Text(
                                                              snapshot.data?[index + 1]['categoria'],
                                                              style: SafeGoogleFont(
                                                                'Inter',
                                                                fontSize: 11 * ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.2125 * ffem / fem,
                                                                color: Color(0xffb1b1b1),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // s95fC8 (6:104)
                                                            'S/${snapshot.data![index + 1]['precio']}',
                                                            style: SafeGoogleFont(
                                                              'Inter',
                                                              fontSize: 14 * ffem,
                                                              fontWeight: FontWeight.w700,
                                                              height: 1.2125 * ffem / fem,
                                                              color: Color(0xff000000),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        // frame6CC4 (6:114)
                                                        width: 61 * fem,
                                                        height: 26 * fem,
                                                        decoration: BoxDecoration(
                                                          color: Color(0xfff9a72d),
                                                          borderRadius: BorderRadius.circular(8 * fem),
                                                        ),
                                                        child: TextButton(
                                                          onPressed: () async {
                                                            var imagenMostrar = snapshot.data?[index + 1]['imagen'];
                                                            var nombre = snapshot.data?[index + 1]['nombre'];
                                                            var categoria = snapshot.data?[index + 1]['categoria'];
                                                            var mensaje = snapshot.data?[index + 1]['mensaje'];
                                                            var precio = snapshot.data?[index + 1]['precio'];

                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => VistaProducto(imagenMostrar, nombre, categoria, mensaje, precio)),
                                                            );

                                                          },

                                                          child: Center(
                                                            child: Text(
                                                              'Comprar',
                                                              style: SafeGoogleFont(
                                                                'Inter',
                                                                fontSize: 10 * ffem,
                                                                fontWeight: FontWeight.w700,
                                                                height: 1.2125 * ffem / fem,
                                                                color: const Color(0xff000000),
                                                              ),
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
                                    ],
                                  ),
                                );
                            } else {
                              return SizedBox.shrink();
                            }
                          }
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
                ),
              ),
              Container(
                // autogroupsjuzwPr (WkFcqQMWgVjotP6RamsJuz)
                margin: EdgeInsets.fromLTRB(3 * fem, 10 * fem, 0 * fem, 0 * fem),
                padding: EdgeInsets.fromLTRB(
                    62.51 * fem, 8 * fem, 61 * fem, 6 * fem),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // deviconfacebookx44 (5:78)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 49.51 * fem, 1 * fem),
                      width: 36.98 * fem,
                      height: 36.98 * fem,
                      child: GestureDetector(
                        onTap: () async {
                          //Boton
                          if (await launchUrl(_urlFacebook, mode: LaunchMode.externalApplication)) {
                            throw Exception('Could not launch ${_urlFacebook.path}');
                          }
                        },

                        child: Image.asset(
                          'assets/page-1/images/devicon-facebook.png',
                          width: 40 * fem,
                          height: 40 * fem,
                        ),
                      ),
                    ),
                    Container(
                      // logoswhatsappiconFor (5:81)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 49 * fem, 1.13 * fem),
                      width: 40 * fem,
                      height: 39.87 * fem,
                      child: GestureDetector(
                        onTap: () async {
                          var phonenumber = '+51910076766';
                          var whatsAppUrl = Uri.parse("https://wa.me/$phonenumber?text=Hola, solicito ayuda para la compra de un modelo de puerta",);
                          //Boton
                          if (await launchUrl(whatsAppUrl, mode: LaunchMode.externalApplication)) {
                            throw Exception('Could not launch ${whatsAppUrl.path}');
                          }
                        },
                        child: Image.asset(
                          'assets/page-1/images/logos-whatsapp-icon.png',
                          width: 40 * fem,
                          height: 40 * fem,
                        ),
                      ),
                    ),
                    Container(
                      // skilliconsinstagramkkc (5:85)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                      width: 40 * fem,
                      height: 40 * fem,

                      child: GestureDetector(
                        onTap: () async {
                          //Boton
                          if (await launchUrl(_urlInstagram, mode: LaunchMode.externalApplication)) {
                            throw Exception('Could not launch ${_urlInstagram.path}');
                          }
                        },
                        child: Image.asset(
                          'assets/page-1/images/skill-icons-instagram.png',
                          width: 40 * fem,
                          height: 40 * fem,
                        ),
                      ),
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


