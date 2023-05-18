import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../Models/Person.dart';

editPerson(Request req) async {
  try {
    File file = File("Person.txt");
    final body = json.decode(await req.readAsString());
    final lines = await file.readAsLines();

    final persons =
        lines.map(((line) => Person.fromJson(json.decode(line)))).toList();
    
    final person = persons.firstWhere((person) => person.id == body["id"]);

    if (person != null) {
      person.name = body["name"];
      person.age = body["age"];
      person.address = body["address"];
    } else {
      return Response.notFound("Person not Found");
    }

  
    await file.writeAsString(
      "${json.encode(person.toMap())}\n",
      mode: FileMode.append,
    );


    return Response.ok("Person data is updated successfully!");
  } catch (error) {
    print("error: $error");

    return Response.notFound("Person not Found");
  }
}



// editPerson(Request req) async {
//   try {
//     File file = File("Person.txt");
//     final body = json.decode(await req.readAsString());
//     final lines = await file.readAsLines();

//     final persons =
//         lines.map(((line) => Person.fromJson(json.decode(line)))).toList();
//     print("------here i am");
//     final person = persons.firstWhere((person) => person.id == body["id"]);
//     print(person);

//     if (person != null) {
//       person.name = body["name"];
//       person.age = body["age"];
//       person.address = body["address"];
//     } else {
//       return Response.notFound("Person not Found");
//     }

//     await file.writeAsString(
//       "${json.encode(person.toMap())}\n",
//       mode: FileMode.append,
//     );

//     return Response.ok("Person data is updated successfully!");
//   } catch (error) {
//     print("error: $error");

//     return Response.notFound("Person not Found");
//   }
// }
