
import 'package:app_jwt/data/my_repo.dart';
import 'package:app_jwt/model/users.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
//import 'package:';

part 'my_state.dart';

class MyCubit extends Cubit<MyState>{
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super (MyIntitial());

  void emitGetAllUsers(){
    myRepo.getAllUsers().then((userList){
      emit(GetAllUsers(userList));
    });
  }

  
  void emitGetUsersDetails(int userId){
    myRepo.getUserById(userId).then((userDetails){
      emit(GetUsersDetails(userDetails));
    });
  }

  void emitCreateNewUser(Users newUser){
    myRepo.createNewUser(newUser).then((newUser){
      emit(CreateNewUser(newUser));
    });
  }

   void emitDeleteUser(String id){
    myRepo.deleteUser(id).then((data){
      emit(DeleteUser(data));
    });
  }
}
