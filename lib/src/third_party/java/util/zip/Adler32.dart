// ANDROID LICENSE GOES HERE

// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

import "../../../_init.dart";

/// from: java.util.zip.Adler32
///
/// A class that can be used to compute the Adler-32 checksum of a data
/// stream. An Adler-32 checksum is almost as reliable as a CRC-32 but
/// can be computed much faster.
///
///  Passing a {@code null} argument to a method in this class will cause
/// a NullPointerException to be thrown.
///@see Checksum
///@author David Connelly
class Adler32 extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  Adler32.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/util/zip/Adler32");

  /// The type which includes information such as the signature of this class.
  static const type = $Adler32Type();
  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new Adler32 object.
  Adler32()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_update =
      jniAccessors.getMethodIDOf(_classRef, r"update", r"(I)V");

  /// from: public void update(int b)
  ///
  /// Updates the checksum with the specified byte (the low eight
  /// bits of the argument b).
  ///@param b the byte to update the checksum with
  void update(int b) => jniAccessors.callMethodWithArgs(reference, _id_update,
      jni.JniCallType.voidType, [jni.JValueInt(b)]).check();

  static final _id_update1 =
      jniAccessors.getMethodIDOf(_classRef, r"update", r"([BII)V");

  /// from: public void update(byte[] b, int off, int len)
  ///
  /// Updates the checksum with the specified array of bytes.
  ///@throws ArrayIndexOutOfBoundsException if {@code off} is negative, or {@code len} is negative,
  ///          or {@code off+len} is greater than the length of the
  ///          array {@code b}
  void update1(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_update1,
          jni.JniCallType.voidType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).check();

  static final _id_update2 =
      jniAccessors.getMethodIDOf(_classRef, r"update", r"([B)V");

  /// from: public void update(byte[] b)
  ///
  /// Updates the checksum with the specified array of bytes.
  ///@param b the byte array to update the checksum with
  void update2(jni.JArray<jni.JByte> b) => jniAccessors.callMethodWithArgs(
      reference, _id_update2, jni.JniCallType.voidType, [b.reference]).check();

  static final _id_update3 = jniAccessors.getMethodIDOf(
      _classRef, r"update", r"(Ljava/nio/ByteBuffer;)V");

  /// from: public void update(java.nio.ByteBuffer buffer)
  ///
  /// Updates the checksum with the bytes from the specified buffer.
  ///
  /// The checksum is updated using
  /// buffer.java.nio.Buffer\#remaining() remaining()
  /// bytes starting at
  /// buffer.java.nio.Buffer\#position() position()
  /// Upon return, the buffer's position will be updated to its
  /// limit; its limit will not have been changed.
  ///@param buffer the ByteBuffer to update the checksum with
  ///@since 1.8
  void update3(jni.JObject buffer) => jniAccessors.callMethodWithArgs(reference,
      _id_update3, jni.JniCallType.voidType, [buffer.reference]).check();

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, r"reset", r"()V");

  /// from: public void reset()
  ///
  /// Resets the checksum to initial value.
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniCallType.voidType, []).check();

  static final _id_getValue =
      jniAccessors.getMethodIDOf(_classRef, r"getValue", r"()J");

  /// from: public long getValue()
  ///
  /// Returns the checksum value.
  int getValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getValue, jni.JniCallType.longType, []).long;
}

class $Adler32Type extends jni.JObjType<Adler32> {
  const $Adler32Type();

  @override
  String get signature => r"Ljava/util/zip/Adler32;";

  @override
  Adler32 fromRef(jni.JObjectPtr ref) => Adler32.fromRef(ref);
}
