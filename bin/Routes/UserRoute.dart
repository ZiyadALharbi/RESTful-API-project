import 'package:shelf_router/shelf_router.dart';

import '../Response/User/deleteImage.dart';
import '../Response/User/login.dart';
import '../Response/User/uploadImage.dart';

class UserRoute {
  Router get handler {
    Router router = Router()
    ..post("/login", login)
    ..post("/upload-image/<image_name>", uploadImage)
    ..delete("/delete-image/<image_name>", deleteImage);

    return router;
  }
}