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

import "Deflater.dart" as deflater_;

import "../../io/InputStream.dart" as inputstream_;
import "../../../_init.dart";

/// from: java.util.zip.DeflaterInputStream
///
/// Implements an input stream filter for compressing data in the "deflate"
/// compression format.
///@since 1.6
///@author David R Tribble (david@tribble.com)
///@see DeflaterOutputStream
///@see InflaterOutputStream
///@see InflaterInputStream
class DeflaterInputStream extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  DeflaterInputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef =
      jniAccessors.getClassOf(r"java/util/zip/DeflaterInputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $DeflaterInputStreamType();
  static final _id_buf = jniAccessors.getFieldIDOf(
    _classRef,
    r"buf",
    r"[B",
  );

  /// from: protected final byte[] buf
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Input buffer for reading compressed data.
  jni.JArray<jni.JByte> get buf =>
      const jni.JArrayType(jni.JByteType()).fromRef(jniAccessors
          .getField(reference, _id_buf, jni.JniCallType.objectType)
          .object);

  static final _id_def = jniAccessors.getFieldIDOf(
    _classRef,
    r"def",
    r"Ljava/util/zip/Deflater;",
  );

  /// from: protected final java.util.zip.Deflater def
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Compressor for this stream.
  deflater_.Deflater get def =>
      const deflater_.$DeflaterType().fromRef(jniAccessors
          .getField(reference, _id_def, jni.JniCallType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/io/InputStream;)V");

  /// from: public void <init>(java.io.InputStream in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new input stream with a default compressor and buffer
  /// size.
  ///@param in input stream to read the uncompressed data to
  ///@throws NullPointerException if {@code in} is null
  DeflaterInputStream(inputstream_.InputStream in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, r"<init>",
      r"(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V");

  /// from: public void <init>(java.io.InputStream in, java.util.zip.Deflater defl)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new input stream with the specified compressor and a
  /// default buffer size.
  ///@param in input stream to read the uncompressed data to
  ///@param defl compressor ("deflater") for this stream
  ///@throws NullPointerException if {@code in} or {@code defl} is null
  DeflaterInputStream.ctor1(
      inputstream_.InputStream in0, deflater_.Deflater defl)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [in0.reference, defl.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, r"<init>",
      r"(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V");

  /// from: public void <init>(java.io.InputStream in, java.util.zip.Deflater defl, int bufLen)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new input stream with the specified compressor and buffer
  /// size.
  ///@param in input stream to read the uncompressed data to
  ///@param defl compressor ("deflater") for this stream
  ///@param bufLen compression buffer size
  ///@throws IllegalArgumentException if {@code bufLen <= 0}
  ///@throws NullPointerException if {@code in} or {@code defl} is null
  DeflaterInputStream.ctor2(
      inputstream_.InputStream in0, deflater_.Deflater defl, int bufLen)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [in0.reference, defl.reference, jni.JValueInt(bufLen)]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, r"close", r"()V");

  /// from: public void close()
  ///
  /// Closes this input stream and its underlying input stream, discarding
  /// any pending uncompressed data.
  ///@throws IOException if an I/O error occurs
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniCallType.voidType, []).check();

  static final _id_read =
      jniAccessors.getMethodIDOf(_classRef, r"read", r"()I");

  /// from: public int read()
  ///
  /// Reads a single byte of compressed data from the input stream.
  /// This method will block until some input can be read and compressed.
  ///@return a single byte of compressed data, or -1 if the end of the
  /// uncompressed input stream is reached
  ///@throws IOException if an I/O error occurs or if this stream is
  /// already closed
  int read() => jniAccessors.callMethodWithArgs(
      reference, _id_read, jni.JniCallType.intType, []).integer;

  static final _id_read1 =
      jniAccessors.getMethodIDOf(_classRef, r"read", r"([BII)I");

  /// from: public int read(byte[] b, int off, int len)
  ///
  /// Reads compressed data into a byte array.
  /// This method will block until some input can be read and compressed.
  ///@param b buffer into which the data is read
  ///@param off starting offset of the data within {@code b}
  ///@param len maximum number of compressed bytes to read into {@code b}
  ///@return the actual number of bytes read, or -1 if the end of the
  /// uncompressed input stream is reached
  ///@throws IndexOutOfBoundsException if {@code len > b.length - off}
  ///@throws IOException if an I/O error occurs or if this input stream is
  /// already closed
  int read1(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_read1,
          jni.JniCallType.intType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).integer;

  static final _id_skip =
      jniAccessors.getMethodIDOf(_classRef, r"skip", r"(J)J");

  /// from: public long skip(long n)
  ///
  /// Skips over and discards data from the input stream.
  /// This method may block until the specified number of bytes are read and
  /// skipped. _Note:_ While {@code n} is given as a {@code long},
  /// the maximum number of bytes which can be skipped is
  /// {@code Integer.MAX_VALUE}.
  ///@param n number of bytes to be skipped
  ///@return the actual number of bytes skipped
  ///@throws IOException if an I/O error occurs or if this stream is
  /// already closed
  int skip(int n) => jniAccessors.callMethodWithArgs(
      reference, _id_skip, jni.JniCallType.longType, [n]).long;

  static final _id_available =
      jniAccessors.getMethodIDOf(_classRef, r"available", r"()I");

  /// from: public int available()
  ///
  /// Returns 0 after EOF has been reached, otherwise always return 1.
  ///
  /// Programs should not count on this method to return the actual number
  /// of bytes that could be read without blocking
  ///@return zero after the end of the underlying input stream has been
  /// reached, otherwise always returns 1
  ///@throws IOException if an I/O error occurs or if this stream is
  /// already closed
  int available() => jniAccessors.callMethodWithArgs(
      reference, _id_available, jni.JniCallType.intType, []).integer;

  static final _id_markSupported =
      jniAccessors.getMethodIDOf(_classRef, r"markSupported", r"()Z");

  /// from: public boolean markSupported()
  ///
  /// Always returns {@code false} because this input stream does not support
  /// the \#mark mark() and \#reset reset() methods.
  ///@return false, always
  bool markSupported() => jniAccessors.callMethodWithArgs(
      reference, _id_markSupported, jni.JniCallType.booleanType, []).boolean;

  static final _id_mark =
      jniAccessors.getMethodIDOf(_classRef, r"mark", r"(I)V");

  /// from: public void mark(int limit)
  ///
  /// <i>This operation is not supported</i>.
  ///@param limit maximum bytes that can be read before invalidating the position marker
  void mark(int limit) => jniAccessors.callMethodWithArgs(reference, _id_mark,
      jni.JniCallType.voidType, [jni.JValueInt(limit)]).check();

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, r"reset", r"()V");

  /// from: public void reset()
  ///
  /// <i>This operation is not supported</i>.
  ///@throws IOException always thrown
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniCallType.voidType, []).check();
}

class $DeflaterInputStreamType extends jni.JObjType<DeflaterInputStream> {
  const $DeflaterInputStreamType();

  @override
  String get signature => r"Ljava/util/zip/DeflaterInputStream;";

  @override
  DeflaterInputStream fromRef(jni.JObjectPtr ref) =>
      DeflaterInputStream.fromRef(ref);
}
