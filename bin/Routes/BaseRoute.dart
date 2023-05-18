import 'package:shelf_router/shelf_router.dart';

import 'PersonRoute.dart';
import 'UserRoute.dart';

class BaseRoute {
  Router get handler {
    Router router = Router()
    ..mount("/user", UserRoute().handler)
    ..mount("/person", PersonRoute().handler);

    return router;
  }
}