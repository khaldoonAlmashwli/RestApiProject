
import 'package:app_jwt/model/users.dart';
import 'package:app_jwt/service/web_services.dart';

class MyRepo{

  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<Users>>getAllUsers() async {
    var response = await webServices.getAllUsers();
    return response.map((userData) => Users.fromJson(userData.toJson())).toList();
    //return await webServices.getAllUsers();
  }

  // by id 
  Future<Users>getUserById(int userId) async {
    var response = await webServices.getUserById(userId);
    return Users.fromJson(response.toJson());
    //return await webServices.getUserById(userId);
    }
  
  // create new user 
  Future<Users>createNewUser(Users newUser) async {
    return await webServices.createNewUser(newUser, 'Bearer 31342f1e401f0d2cfff5dd0eb73b9e70737ca3f509020fe18a278ddb2debcb83');
  }

  // delete user by id
  Future<dynamic>deleteUser(String id) async {
    return await webServices.deleteUser(id, 'Bearer 31342f1e401f0d2cfff5dd0eb73b9e70737ca3f509020fe18a278ddb2debcb83');
  }
}

