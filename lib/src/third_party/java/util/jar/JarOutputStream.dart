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

import "../zip/ZipOutputStream.dart" as zipoutputstream_;

import "../../io/OutputStream.dart" as outputstream_;

import "Manifest.dart" as manifest_;

import "../zip/ZipEntry.dart" as zipentry_;
import "../../../_init.dart";

/// from: java.util.jar.JarOutputStream
///
/// The <code>JarOutputStream</code> class is used to write the contents
/// of a JAR file to any output stream. It extends the class
/// <code>java.util.zip.ZipOutputStream</code> with support
/// for writing an optional <code>Manifest</code> entry. The
/// <code>Manifest</code> can be used to specify meta-information about
/// the JAR file and its entries.
///@author David Connelly
///@see Manifest
///@see java.util.zip.ZipOutputStream
///@since 1.2
class JarOutputStream extends zipoutputstream_.ZipOutputStream {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  JarOutputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef =
      jniAccessors.getClassOf(r"java/util/jar/JarOutputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $JarOutputStreamType();

  /// from: static public final int CENATT
  static const CENATT1 = 36;

  /// from: static public final int CENATX
  static const CENATX1 = 38;

  /// from: static public final int CENCOM
  static const CENCOM1 = 32;

  /// from: static public final int CENCRC
  static const CENCRC1 = 16;

  /// from: static public final int CENDSK
  static const CENDSK1 = 34;

  /// from: static public final int CENEXT
  static const CENEXT1 = 30;

  /// from: static public final int CENFLG
  static const CENFLG1 = 8;

  /// from: static public final int CENHDR
  static const CENHDR1 = 46;

  /// from: static public final int CENHOW
  static const CENHOW1 = 10;

  /// from: static public final int CENLEN
  static const CENLEN1 = 24;

  /// from: static public final int CENNAM
  static const CENNAM1 = 28;

  /// from: static public final int CENOFF
  static const CENOFF1 = 42;

  /// from: static public final long CENSIG
  static const CENSIG1 = 33639248;

  /// from: static public final int CENSIZ
  static const CENSIZ1 = 20;

  /// from: static public final int CENTIM
  static const CENTIM1 = 12;

  /// from: static public final int CENVEM
  static const CENVEM1 = 4;

  /// from: static public final int CENVER
  static const CENVER1 = 6;

  /// from: static public final int ENDCOM
  static const ENDCOM1 = 20;

  /// from: static public final int ENDHDR
  static const ENDHDR1 = 22;

  /// from: static public final int ENDOFF
  static const ENDOFF1 = 16;

  /// from: static public final long ENDSIG
  static const ENDSIG1 = 101010256;

  /// from: static public final int ENDSIZ
  static const ENDSIZ1 = 12;

  /// from: static public final int ENDSUB
  static const ENDSUB1 = 8;

  /// from: static public final int ENDTOT
  static const ENDTOT1 = 10;

  /// from: static public final int EXTCRC
  static const EXTCRC1 = 4;

  /// from: static public final int EXTHDR
  static const EXTHDR1 = 16;

  /// from: static public final int EXTLEN
  static const EXTLEN1 = 12;

  /// from: static public final long EXTSIG
  static const EXTSIG1 = 134695760;

  /// from: static public final int EXTSIZ
  static const EXTSIZ1 = 8;

  /// from: static public final int LOCCRC
  static const LOCCRC1 = 14;

  /// from: static public final int LOCEXT
  static const LOCEXT1 = 28;

  /// from: static public final int LOCFLG
  static const LOCFLG1 = 6;

  /// from: static public final int LOCHDR
  static const LOCHDR1 = 30;

  /// from: static public final int LOCHOW
  static const LOCHOW1 = 8;

  /// from: static public final int LOCLEN
  static const LOCLEN1 = 22;

  /// from: static public final int LOCNAM
  static const LOCNAM1 = 26;

  /// from: static public final long LOCSIG
  static const LOCSIG1 = 67324752;

  /// from: static public final int LOCSIZ
  static const LOCSIZ1 = 18;

  /// from: static public final int LOCTIM
  static const LOCTIM1 = 10;

  /// from: static public final int LOCVER
  static const LOCVER1 = 4;

  static final _id_ctor7 = jniAccessors.getMethodIDOf(_classRef, r"<init>",
      r"(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V");

  /// from: public void <init>(java.io.OutputStream out, java.util.jar.Manifest man)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>JarOutputStream</code> with the specified
  /// <code>Manifest</code>. The manifest is written as the first
  /// entry to the output stream.
  ///@param out the actual output stream
  ///@param man the optional <code>Manifest</code>
  ///@exception IOException if an I/O error has occurred
  JarOutputStream.ctor7(outputstream_.OutputStream out, manifest_.Manifest man)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor7, [out.reference, man.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/io/OutputStream;)V");

  /// from: public void <init>(java.io.OutputStream out)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>JarOutputStream</code> with no manifest.
  ///@param out the actual output stream
  ///@exception IOException if an I/O error has occurred
  JarOutputStream.ctor5(outputstream_.OutputStream out)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor5, [out.reference]).object);

  static final _id_putNextEntry = jniAccessors.getMethodIDOf(
      _classRef, r"putNextEntry", r"(Ljava/util/zip/ZipEntry;)V");

  /// from: public void putNextEntry(java.util.zip.ZipEntry ze)
  ///
  /// Begins writing a new JAR file entry and positions the stream
  /// to the start of the entry data. This method will also close
  /// any previous entry. The default compression method will be
  /// used if no compression method was specified for the entry.
  /// The current time will be used if the entry has no set modification
  /// time.
  ///@param ze the ZIP/JAR entry to be written
  ///@exception ZipException if a ZIP error has occurred
  ///@exception IOException if an I/O error has occurred
  void putNextEntry(zipentry_.ZipEntry ze) => jniAccessors.callMethodWithArgs(
      reference,
      _id_putNextEntry,
      jni.JniCallType.voidType,
      [ze.reference]).check();
}

class $JarOutputStreamType extends jni.JObjType<JarOutputStream> {
  const $JarOutputStreamType();

  @override
  String get signature => r"Ljava/util/jar/JarOutputStream;";

  @override
  JarOutputStream fromRef(jni.JObjectPtr ref) => JarOutputStream.fromRef(ref);
}
