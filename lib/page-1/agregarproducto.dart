import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/listaproducto.dart';
import 'package:myapp/services/firebase_service.dart';
import 'package:myapp/utils.dart';
import 'crearproforma.dart';
import 'main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AgregarProducto extends StatefulWidget {
  @override
  _AgregarProductoState createState() => _AgregarProductoState();
}

class _AgregarProductoState extends State<AgregarProducto> {
  late final ImagePicker _imagePicker;
  XFile? _image;

  TextEditingController nombreController = TextEditingController(text: "");
  TextEditingController categoriaController = TextEditingController(text: "");
  TextEditingController precioController = TextEditingController(text: "");
  TextEditingController mensajeController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = XFile(image.path);
      });
    }
  }

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
          // agregarproductoPbi (6:120)
          padding: EdgeInsets.fromLTRB(32 * fem, 26 * fem, 37 * fem, 36 * fem),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // vector1heL (6:128)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 17 * fem,
                    height: 34 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-1-5LG.png',
                      width: 17 * fem,
                      height: 34 * fem,
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
                        color: Color(0xfff9a72d),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
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
                    TextButton(
                      // Agregado el nuevo botón "Lista" en segunda posición
                      onPressed: () {
                        // Acciones al presionar el botón "Lista"
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
                          border: Border.all(color: Color(0xffd0d0d0)),
                          color: Color(0xffffffff),
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
                // nombrenBv (6:122)
                margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 4 * fem),
                child: Text(
                  'Nombre',
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
                  // rectangle1JRA (6:121)
                  width: double.infinity,
                  height: 50 * fem,
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
                    controller: nombreController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa el nombre',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // categorazon (6:126)
                margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 4 * fem),
                child: Text(
                  'Categoría',
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
                  // rectangle2HXz (6:123)
                  width: double.infinity,
                  height: 50 * fem,
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
                    controller: categoriaController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa la Categoría',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // precionje (6:136)
                margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 4 * fem),
                child: Text(
                  'Precio',
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
                  // rectangle3KDn (6:135)
                  width: double.infinity,
                  height: 50 * fem,
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
                    controller: precioController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa el precio',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // mensaje1cQ (6:138)
                margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 4 * fem),
                child: Text(
                  'Mensaje',
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
                  // rectangle4vzG (6:137)
                  width: double.infinity,
                  height: 50 * fem,
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
                    controller: mensajeController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ingresa el Mensaje',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16 * fem, vertical: 16 * fem),
                    ),
                  ),
                ),
              ),
              Container(
                // imagenddn (6:140)
                margin: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 0 * fem, 10 * fem),
                child: Text(
                  'Imagen',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    width: 120 * ffem,
                    height: 120 * ffem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * ffem),
                      color: Color(0xffffffff),
                      border: Border.all(color: Color(0xffd0d0d0)),
                    ),
                    child: _image != null
                        ? ClipRRect(
                      borderRadius: BorderRadius.circular(10 * ffem),
                      child: Image.file(
                        File(_image!.path),
                        fit: BoxFit.cover,
                      ),
                    )
                        : Icon(
                      Icons.add_photo_alternate,
                      size: 40 * ffem,
                      color: Color(0xffd0d0d0),
                    ),
                  ),
                ),
              ),
              Container(
                // autogroupysgtM3z (WkFWTRKLA8wWLWAAqpYSgt)
                margin: EdgeInsets.fromLTRB(77*fem, 15*fem, 73*fem, 0*fem),
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
                  onPressed: () async {
                    if (_image == null) {
                      return;
                    }

                    String imageURL = await uploadImagen(File(_image!.path));
                    await addProducts(nombreController.text, categoriaController.text, int.parse(precioController.text), mensajeController.text, imageURL);

                    nombreController.clear();
                    categoriaController.clear();
                    precioController.clear();
                    mensajeController.clear();
                    _image = null;

                    if(context.mounted){
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Se agrego un nuevo registro"),
                              actions: [
                                TextButton(
                                  onPressed: () async {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Scene()));
                                  },
                                  child: const Text(
                                    'OK',
                                  ),
                                ),
                              ],
                            );
                          }
                      );
                    }

                  },
                  child: Center(
                    child: Text(
                      'Agregar ',
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
