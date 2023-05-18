import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Response/Person/addPerson.dart';
import '../Response/Person/displayData.dart';
import '../Response/Person/editPerson.dart';
import '../Response/User/login.dart';
import '../Response/User/uploadImage.dart';

class PersonRoute {
  Handler get handler {
    Router router = Router()
    ..post("/add-person", addPerson)
    ..get("/display-data", displayData)
    ..put("/edit-person", editPerson);

    return router;
  }
}