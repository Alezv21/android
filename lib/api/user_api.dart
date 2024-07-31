import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
//aqui realizamos la peticion api para obtener los usuarios
class UserApi {
  Future<User> fetchUser(int id) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error al cargar usuarios');
    }
  }
}
