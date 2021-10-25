import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:teste/user_controlle.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {

  final router = Router();

  router.get('/', (Request request) {
    return Response.ok('Olá, nundo!!');
  });

  router.mount('/user/', UserController().router);

  return router(request);
}
