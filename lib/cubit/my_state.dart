
//import 'package:app_jwt/users.dart';
part of 'my_cubit.dart';

@immutable
abstract class MyState{}

//1
class MyIntitial extends MyState{}

//2
class GetAllUsers extends MyState{
  final List<Users> allUsersList;

  GetAllUsers(this.allUsersList);
}

//3
class GetUsersDetails extends MyState{
  final Users userDetails;

  GetUsersDetails(this.userDetails);
}

// new user
class CreateNewUser extends MyState{
  final Users newUser;

  CreateNewUser(this.newUser);
}

// delete
class DeleteUser extends MyState{
  final dynamic data;

  DeleteUser(this.data);
}