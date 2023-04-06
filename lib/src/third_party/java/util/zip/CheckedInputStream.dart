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

import "../../io/InputStream.dart" as inputstream_;

import "Checksum.dart" as checksum_;
import "../../../_init.dart";

/// from: java.util.zip.CheckedInputStream
///
/// An input stream that also maintains a checksum of the data being read.
/// The checksum can then be used to verify the integrity of the input data.
///@see Checksum
///@author David Connelly
class CheckedInputStream extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  CheckedInputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef =
      jniAccessors.getClassOf(r"java/util/zip/CheckedInputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $CheckedInputStreamType();
  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, r"<init>",
      r"(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V");

  /// from: public void <init>(java.io.InputStream in, java.util.zip.Checksum cksum)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an input stream using the specified Checksum.
  ///@param in the input stream
  ///@param cksum the Checksum
  CheckedInputStream(inputstream_.InputStream in0, checksum_.Checksum cksum)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [in0.reference, cksum.reference]).object);

  static final _id_read =
      jniAccessors.getMethodIDOf(_classRef, r"read", r"()I");

  /// from: public int read()
  ///
  /// Reads a byte. Will block if no input is available.
  ///@return the byte read, or -1 if the end of the stream is reached.
  ///@exception IOException if an I/O error has occurred
  int read() => jniAccessors.callMethodWithArgs(
      reference, _id_read, jni.JniCallType.intType, []).integer;

  static final _id_read1 =
      jniAccessors.getMethodIDOf(_classRef, r"read", r"([BII)I");

  /// from: public int read(byte[] buf, int off, int len)
  ///
  /// Reads into an array of bytes. If <code>len</code> is not zero, the method
  /// blocks until some input is available; otherwise, no
  /// bytes are read and <code>0</code> is returned.
  ///@param buf the buffer into which the data is read
  ///@param off the start offset in the destination array <code>b</code>
  ///@param len the maximum number of bytes read
  ///@return the actual number of bytes read, or -1 if the end
  ///            of the stream is reached.
  ///@exception NullPointerException If <code>buf</code> is <code>null</code>.
  ///@exception IndexOutOfBoundsException If <code>off</code> is negative,
  /// <code>len</code> is negative, or <code>len</code> is greater than
  /// <code>buf.length - off</code>
  ///@exception IOException if an I/O error has occurred
  int read1(jni.JArray<jni.JByte> buf, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_read1,
          jni.JniCallType.intType,
          [buf.reference, jni.JValueInt(off), jni.JValueInt(len)]).integer;

  static final _id_skip =
      jniAccessors.getMethodIDOf(_classRef, r"skip", r"(J)J");

  /// from: public long skip(long n)
  ///
  /// Skips specified number of bytes of input.
  ///@param n the number of bytes to skip
  ///@return the actual number of bytes skipped
  ///@exception IOException if an I/O error has occurred
  int skip(int n) => jniAccessors.callMethodWithArgs(
      reference, _id_skip, jni.JniCallType.longType, [n]).long;

  static final _id_getChecksum = jniAccessors.getMethodIDOf(
      _classRef, r"getChecksum", r"()Ljava/util/zip/Checksum;");

  /// from: public java.util.zip.Checksum getChecksum()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Checksum for this input stream.
  ///@return the Checksum value
  checksum_.Checksum getChecksum() =>
      const checksum_.$ChecksumType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getChecksum, jni.JniCallType.objectType, []).object);
}

class $CheckedInputStreamType extends jni.JObjType<CheckedInputStream> {
  const $CheckedInputStreamType();

  @override
  String get signature => r"Ljava/util/zip/CheckedInputStream;";

  @override
  CheckedInputStream fromRef(jni.JObjectPtr ref) =>
      CheckedInputStream.fromRef(ref);
}