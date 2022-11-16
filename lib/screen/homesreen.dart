
import 'package:app_jwt/cubit/my_cubit.dart';
import 'package:app_jwt/model/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <Users> usersList = [];
  Users user = Users();

  @override
  void initState() {
    super.initState();
    // BlocProvider.of<MyCubit>(context).emitGetAllUsers();
    //BlocProvider.of<MyCubit>(context).emitGetUsersDetails(2458);

    //  BlocProvider.of<MyCubit>(context).emitCreateNewUser(Users(
    //   name: "khaldoon almashwali",
    //   email: "almashwali@gmail.com",
    //   gender: "male",
    //   status: "active"
    //  ));
                                                  // 2458
    BlocProvider.of<MyCubit>(context).emitDeleteUser('1077');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my app"),),

      body: Column(
        children: [

// get all users
          // BlocBuilder<MyCubit,MyState>(
          //   builder: (context,state){
          //     if(state is GetAllUsers){
          //       usersList = (state).allUsersList;
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         padding: const EdgeInsets.all(8),
          //         itemCount: usersList.length,
          //         itemBuilder: ((context, index) {
          //           return Container(
          //             height: 50,
          //             color: Colors.amber,
          //             child: Center(
          //               child: Text(
          //                 usersList[index].name.toString()
          //                 ),
          //                 ),
          //           );
          //           }),
          //         );}else{
          //           return const Center(
          //             child: CircularProgressIndicator(),
          //           ); }
          //   })


// get user details or by path
            // BlocBuilder<MyCubit,MyState>(
            // builder: (context,state){
            //   if(state is GetUsersDetails){
            //     user = (state).userDetails;
            //     return Container(
            //           height: 50,
            //           color: Colors.amber,
            //           child: Center(
            //             child: Text(
            //               user.name.toString()),
            //               ),
            //               );
            //               }else{
            //                 return const Center(
            //                   child: CircularProgressIndicator(),
            //                   );
            //                 }
            // })


// post -- create new user 
      // BlocBuilder<MyCubit,MyState>(
      //       builder: (context,state){
      //         if(state is CreateNewUser){
      //           user = (state).newUser;
      //           return Container(
      //             height: 50,
      //             color: Colors.amber,
      //             child: Center(
      //               child: Text(
      //                 user.email.toString()),
      //               ),
      //             );
      //          }else{
      //           return const Center(
      //             child: CircularProgressIndicator(),);
      //           }
      //       })

       BlocBuilder<MyCubit,MyState>(
            builder: (context,state){
              if(state is DeleteUser){
                //user = (state).newUser;
                return Container(
                  height: 50,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      (state).data.toString()),
                    ),
                  );
               }else{
                return const Center(
                  child: CircularProgressIndicator(),);
                }
            })
      ]),
    );
  }
}