import 'dart:io';

import 'package:jni/jni.dart';
import 'package:java_jni/java_jni.dart';

void printContents(String path) {
  var jar = JarFile(path.toJString());
  var entries = jar.entries();
  while (entries.hasMoreElements()) {
    var entry = entries.nextElement();
    var name = entry.getName().toDartString(deleteOriginal: true);
    stdout.writeln(name);
  }
}

void main(List<String> arguments) {
  Jni.spawn(dylibDir: 'build/jni_libs');
  arguments.forEach(printContents);
}
