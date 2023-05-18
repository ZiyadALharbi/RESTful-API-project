import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

displayData(Request req) async {
  try{
  File file = File("Person.txt");
  final content = json.decode(await file.readAsString());

  return Response.ok(json.encode(content),headers: {
      'Content-Type': 'Application/json',
    });
  } catch(error){
    return Response.internalServerError(body: "Sorry couldn't retrieve the requested data");
  }
}
