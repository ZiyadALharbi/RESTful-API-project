import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../Models/UserModels.dart';

login(Request req) async {
  try{
  final File myFile = File("Users.json");
  final content = json.decode(await myFile.readAsString());
  final body = json.decode(await req.readAsString());

  List<User> myUsers = [];
  for (var user in content) {
    myUsers.add(User.fromJson(user));
  }

  User exitingUser = myUsers.firstWhere((user) => user.email == body["email"]);

  if (exitingUser == null) {
    return Response.forbidden("Invalid email or password");
  } else {
    if (exitingUser.password != body["password"]) {
      return Response.forbidden("Invalid email or password");
    } else {
      return Response.ok("authentication is successful");
    }
  }
  }
  catch (error){
    return Response.internalServerError(body: error);
  }
}
