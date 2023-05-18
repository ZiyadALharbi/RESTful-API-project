import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

import '../../Models/Person.dart';

addPerson(Request req) async {
  try{
   File file = File("Person.txt");
    final body = await req.readAsString();
    final personData = json.decode(body);

    final Person person = Person.fromJson(personData);

    await file.writeAsString(
      "${json.encode(person.toMap())}\n",
      mode: FileMode.append,
    );

   return Response.ok("Person information added successfully.");
  } catch (e) {
    print(e);
    
    return Response.internalServerError(body: "failed to add Person information.");
  }
}