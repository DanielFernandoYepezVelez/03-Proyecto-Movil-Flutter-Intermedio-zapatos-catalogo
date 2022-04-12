import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

//* Para Este Helper Hay Que Buscar Información Más Actualizada Que La Del Videl Del Profesor */
void changeStatusLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
    const services.SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  // services.SystemUiOverlayStyle.light,
}

void changeStatusDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
    const services.SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}
