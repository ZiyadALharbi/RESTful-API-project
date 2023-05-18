import 'dart:io';

import 'package:http_parser/http_parser.dart';
import 'package:image_compression/image_compression.dart';
import 'package:shelf/shelf.dart';

deleteImage(Request req, String image_name) async {
  try{
  
  final file = File('bin/images/$image_name.png');
  if(file.existsSync()){
    file.delete();
    return Response.ok("Image deleted successfully!");
  }else{
    return Response.notFound("image with $image_name does not exist");
  }

  } catch (e){
    return Response.internalServerError(body: "Sorry couldn't fulfil the request");
  }
}