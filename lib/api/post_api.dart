import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/post_model.dart';
//aqui realizamos la peticion api para obtener los posts
class PostApi {
  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Ocurrio un error al cargar los posts');
    }
  }
}
