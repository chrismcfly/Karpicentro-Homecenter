import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/crearproforma.dart';
import 'package:myapp/services/firebase_service.dart';
import 'package:myapp/utils.dart';
import 'main.dart';
import 'proforma.dart';
import 'agregarproducto.dart';

class ListaProducto extends StatelessWidget {
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

                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 92 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffd0d0d0)),
                          color: const Color(0xfff9a72d),
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
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CrearProforma()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: 92 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffd0d0d0)),
                          color: const Color(0xffffffff),
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
                // listadeproductos5hZ (16:4)
                margin:  EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 19*fem),
                child:
                Text(
                  'Lista de Productos',
                  style:  SafeGoogleFont (
                    'Inter',
                    fontSize:  24*ffem,
                    fontWeight:  FontWeight.w700,
                    height:  1.2125*ffem/fem,
                    color:  const Color(0xff000000),
                  ),
                ),
              ),
              FutureBuilder(
                future: getProducts(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: 470 * fem,
                      child: ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Dismissible(
                              onDismissed: (direction) async {
                                await deleteImage(snapshot.data?[index]['imagen']);
                                await deleteProducts(snapshot.data?[index]['uid']);
                                snapshot.data?.removeAt(index);
                              },
                              confirmDismiss: (direction) async {
                                bool result = false;

                                var nombrePuerta = snapshot.data?[index]['nombre'];
                                result = await showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Estas seguro que deseas eliminar la $nombrePuerta"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              return Navigator.pop(context, false);
                                            },
                                            child: const Text(
                                              'Cancelar',
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              return Navigator.pop(context, true);
                                            },
                                            child: const Text(
                                              'Si, estoy seguro',
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                );

                                return result;
                              },
                              direction: DismissDirection.endToStart,
                              key: Key(snapshot.data?[index]['nombre']),
                              child: Container(
                                // frame10zJj (16:25)
                                margin:  EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 10*fem),
                                padding:  EdgeInsets.fromLTRB(12*fem, 10*fem, 9*fem, 10*fem),
                                decoration:  BoxDecoration (
                                  color:  Color(0xffffffff),
                                  borderRadius:  BorderRadius.circular(15*fem),
                                  boxShadow:  [
                                    BoxShadow(
                                      color:  Color(0x3f000000),
                                      offset:  Offset(0*fem, 4*fem),
                                      blurRadius:  2*fem,
                                    ),
                                  ],
                                ),
                                child:
                                Row(
                                  crossAxisAlignment:  CrossAxisAlignment.center,
                                  children:  [
                                    Expanded(
                                      child: Container(
                                        // puertadeabedl4ZV (16:24)
                                        margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                        child:
                                        Text(
                                          snapshot.data?[index]['nombre'],
                                          style:  SafeGoogleFont (
                                            'Inter',
                                            fontSize:  15*ffem,
                                            fontWeight:  FontWeight.w700,
                                            height:  1.2125*ffem/fem,
                                            color:  Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // trashcanu4K (16:21)
                                      margin:  EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                                      width:  30*fem,
                                      height:  30*fem,
                                      child:
                                      GestureDetector(
                                        onTap: () async {
                                          var nombrePuerta = snapshot.data?[index]['nombre'];
                                          var result = await showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text("Estas seguro que deseas eliminar la $nombrePuerta"),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        return Navigator.pop(context, false);
                                                      },
                                                      child: const Text(
                                                        'Cancelar',
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: () async {
                                                        await deleteImage(snapshot.data?[index]['imagen']);
                                                        await deleteProducts(snapshot.data?[index]['uid']);
                                                        snapshot.data?.removeAt(index);
                                                        if (context.mounted) {
                                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Scene()));
                                                        }
                                                      },
                                                      child: const Text(
                                                        'Si, estoy seguro',
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }
                                          );

                                          return result;
                                        },
                                        child: Image.asset(
                                          'assets/page-1/images/trash-can.png',
                                          width: 30 * fem,
                                          height: 30 * fem,
                                          fit:  BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}