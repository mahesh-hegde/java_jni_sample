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

import "../../_init.dart";

/// from: java.io.OutputStream
///
/// This abstract class is the superclass of all classes representing
/// an output stream of bytes. An output stream accepts output bytes
/// and sends them to some sink.
///
/// Applications that need to define a subclass of
/// <code>OutputStream</code> must always provide at least a method
/// that writes one byte of output.
///@author Arthur van Hoff
///@see java.io.BufferedOutputStream
///@see java.io.ByteArrayOutputStream
///@see java.io.DataOutputStream
///@see java.io.FilterOutputStream
///@see java.io.InputStream
///@see java.io.OutputStream\#write(int)
///@since JDK1.0
class OutputStream extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  OutputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/io/OutputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $OutputStreamType();
  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  OutputStream()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_write =
      jniAccessors.getMethodIDOf(_classRef, r"write", r"(I)V");

  /// from: public abstract void write(int b)
  ///
  /// Writes the specified byte to this output stream. The general
  /// contract for <code>write</code> is that one byte is written
  /// to the output stream. The byte to be written is the eight
  /// low-order bits of the argument <code>b</code>. The 24
  /// high-order bits of <code>b</code> are ignored.
  ///
  /// Subclasses of <code>OutputStream</code> must provide an
  /// implementation for this method.
  ///@param b the <code>byte</code>.
  ///@exception IOException if an I/O error occurs. In particular,
  ///             an <code>IOException</code> may be thrown if the
  ///             output stream has been closed.
  void write(int b) => jniAccessors.callMethodWithArgs(reference, _id_write,
      jni.JniCallType.voidType, [jni.JValueInt(b)]).check();

  static final _id_write1 =
      jniAccessors.getMethodIDOf(_classRef, r"write", r"([B)V");

  /// from: public void write(byte[] b)
  ///
  /// Writes <code>b.length</code> bytes from the specified byte array
  /// to this output stream. The general contract for <code>write(b)</code>
  /// is that it should have exactly the same effect as the call
  /// <code>write(b, 0, b.length)</code>.
  ///@param b the data.
  ///@exception IOException if an I/O error occurs.
  ///@see java.io.OutputStream\#write(byte[], int, int)
  void write1(jni.JArray<jni.JByte> b) => jniAccessors.callMethodWithArgs(
      reference, _id_write1, jni.JniCallType.voidType, [b.reference]).check();

  static final _id_write2 =
      jniAccessors.getMethodIDOf(_classRef, r"write", r"([BII)V");

  /// from: public void write(byte[] b, int off, int len)
  ///
  /// Writes <code>len</code> bytes from the specified byte array
  /// starting at offset <code>off</code> to this output stream.
  /// The general contract for <code>write(b, off, len)</code> is that
  /// some of the bytes in the array <code>b</code> are written to the
  /// output stream in order; element <code>b[off]</code> is the first
  /// byte written and <code>b[off+len-1]</code> is the last byte written
  /// by this operation.
  ///
  /// The <code>write</code> method of <code>OutputStream</code> calls
  /// the write method of one argument on each of the bytes to be
  /// written out. Subclasses are encouraged to override this method and
  /// provide a more efficient implementation.
  ///
  /// If <code>b</code> is <code>null</code>, a
  /// <code>NullPointerException</code> is thrown.
  ///
  /// If <code>off</code> is negative, or <code>len</code> is negative, or
  /// <code>off+len</code> is greater than the length of the array
  /// <code>b</code>, then an <tt>IndexOutOfBoundsException</tt> is thrown.
  ///@param b the data.
  ///@param off the start offset in the data.
  ///@param len the number of bytes to write.
  ///@exception IOException if an I/O error occurs. In particular,
  ///             an <code>IOException</code> is thrown if the output
  ///             stream is closed.
  void write2(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_write2,
          jni.JniCallType.voidType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).check();

  static final _id_flush =
      jniAccessors.getMethodIDOf(_classRef, r"flush", r"()V");

  /// from: public void flush()
  ///
  /// Flushes this output stream and forces any buffered output bytes
  /// to be written out. The general contract of <code>flush</code> is
  /// that calling it is an indication that, if any bytes previously
  /// written have been buffered by the implementation of the output
  /// stream, such bytes should immediately be written to their
  /// intended destination.
  ///
  /// If the intended destination of this stream is an abstraction provided by
  /// the underlying operating system, for example a file, then flushing the
  /// stream guarantees only that bytes previously written to the stream are
  /// passed to the operating system for writing; it does not guarantee that
  /// they are actually written to a physical device such as a disk drive.
  ///
  /// The <code>flush</code> method of <code>OutputStream</code> does nothing.
  ///@exception IOException if an I/O error occurs.
  void flush() => jniAccessors.callMethodWithArgs(
      reference, _id_flush, jni.JniCallType.voidType, []).check();

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, r"close", r"()V");

  /// from: public void close()
  ///
  /// Closes this output stream and releases any system resources
  /// associated with this stream. The general contract of <code>close</code>
  /// is that it closes the output stream. A closed stream cannot perform
  /// output operations and cannot be reopened.
  ///
  /// The <code>close</code> method of <code>OutputStream</code> does nothing.
  ///@exception IOException if an I/O error occurs.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniCallType.voidType, []).check();
}

class $OutputStreamType extends jni.JObjType<OutputStream> {
  const $OutputStreamType();

  @override
  String get signature => r"Ljava/io/OutputStream;";

  @override
  OutputStream fromRef(jni.JObjectPtr ref) => OutputStream.fromRef(ref);
}
