import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage storage = FirebaseStorage.instance;
FirebaseFirestore db = FirebaseFirestore.instance;

Future<String> uploadImagen(File image) async {

  print(image.path);
  final String namefile = image.path.split("/").last;
  Reference ref = storage.ref().child("puertas").child(namefile);
  final UploadTask uploadTask = ref.putFile(image);
  final TaskSnapshot snapshot = await uploadTask.whenComplete(() => true);
  final String downloadUrl = await snapshot.ref.getDownloadURL();

  return downloadUrl;
}

//Funcion para leer los documentos

Future<List> getProducts() async {


  List products = [];
  CollectionReference collectionReferenceProducts = db.collection('products');

  QuerySnapshot queryProducts = await collectionReferenceProducts.get();

  queryProducts.docs.forEach((doc) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final product = {
      "nombre": data['nombre'],
      "categoria": data['categoria'],
      "precio": data['precio'],
      "mensaje": data['mensaje'],
      "imagen": data['imagen'],
      "uid": doc.id,
    };
    products.add(product);
  });

  return products;
}


//Funcion para leer los documentos segun la categoria

Future<List> getProductsCategory(String category) async {


  List products = [];
  CollectionReference collectionReferenceProducts = db.collection('products');

  QuerySnapshot queryProducts = await collectionReferenceProducts
      .where('categoria', isEqualTo: category)
      .get();

  queryProducts.docs.forEach((doc) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final product = {
      "nombre": data['nombre'],
      "categoria": data['categoria'],
      "precio": data['precio'],
      "mensaje": data['mensaje'],
      "imagen": data['imagen'],
      "uid": doc.id,
    };
    products.add(product);
  });

  return products;
}



//Funcion para guardar datos

Future<void> addProducts(String nombre, String categoria, int precio, String mensaje, String imagen) async {
  await db.collection('products').add({"nombre": nombre, "categoria": categoria, "precio": precio, "mensaje": mensaje, "imagen": imagen});
}




//Funcion Borrar datos de Firebase

Future<void> deleteProducts(String uid) async {
  await db.collection('products').doc(uid).delete();
}

Future<void> deleteImage(String imageUrl) async {
  Reference ref = storage.refFromURL(imageUrl);
  await ref.delete();
}