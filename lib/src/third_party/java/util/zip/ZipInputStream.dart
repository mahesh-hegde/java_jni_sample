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

import "InflaterInputStream.dart" as inflaterinputstream_;

import "../../io/InputStream.dart" as inputstream_;

import "ZipEntry.dart" as zipentry_;
import "../../../_init.dart";

/// from: java.util.zip.ZipInputStream
///
/// This class implements an input stream filter for reading files in the
/// ZIP file format. Includes support for both compressed and uncompressed
/// entries.
///@author David Connelly
class ZipInputStream extends inflaterinputstream_.InflaterInputStream {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  ZipInputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef =
      jniAccessors.getClassOf(r"java/util/zip/ZipInputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $ZipInputStreamType();

  /// from: static public final int CENATT
  static const CENATT = 36;

  /// from: static public final int CENATX
  static const CENATX = 38;

  /// from: static public final int CENCOM
  static const CENCOM = 32;

  /// from: static public final int CENCRC
  static const CENCRC = 16;

  /// from: static public final int CENDSK
  static const CENDSK = 34;

  /// from: static public final int CENEXT
  static const CENEXT = 30;

  /// from: static public final int CENFLG
  static const CENFLG = 8;

  /// from: static public final int CENHDR
  static const CENHDR = 46;

  /// from: static public final int CENHOW
  static const CENHOW = 10;

  /// from: static public final int CENLEN
  static const CENLEN = 24;

  /// from: static public final int CENNAM
  static const CENNAM = 28;

  /// from: static public final int CENOFF
  static const CENOFF = 42;

  /// from: static public final long CENSIG
  static const CENSIG = 33639248;

  /// from: static public final int CENSIZ
  static const CENSIZ = 20;

  /// from: static public final int CENTIM
  static const CENTIM = 12;

  /// from: static public final int CENVEM
  static const CENVEM = 4;

  /// from: static public final int CENVER
  static const CENVER = 6;

  /// from: static public final int ENDCOM
  static const ENDCOM = 20;

  /// from: static public final int ENDHDR
  static const ENDHDR = 22;

  /// from: static public final int ENDOFF
  static const ENDOFF = 16;

  /// from: static public final long ENDSIG
  static const ENDSIG = 101010256;

  /// from: static public final int ENDSIZ
  static const ENDSIZ = 12;

  /// from: static public final int ENDSUB
  static const ENDSUB = 8;

  /// from: static public final int ENDTOT
  static const ENDTOT = 10;

  /// from: static public final int EXTCRC
  static const EXTCRC = 4;

  /// from: static public final int EXTHDR
  static const EXTHDR = 16;

  /// from: static public final int EXTLEN
  static const EXTLEN = 12;

  /// from: static public final long EXTSIG
  static const EXTSIG = 134695760;

  /// from: static public final int EXTSIZ
  static const EXTSIZ = 8;

  /// from: static public final int LOCCRC
  static const LOCCRC = 14;

  /// from: static public final int LOCEXT
  static const LOCEXT = 28;

  /// from: static public final int LOCFLG
  static const LOCFLG = 6;

  /// from: static public final int LOCHDR
  static const LOCHDR = 30;

  /// from: static public final int LOCHOW
  static const LOCHOW = 8;

  /// from: static public final int LOCLEN
  static const LOCLEN = 22;

  /// from: static public final int LOCNAM
  static const LOCNAM = 26;

  /// from: static public final long LOCSIG
  static const LOCSIG = 67324752;

  /// from: static public final int LOCSIZ
  static const LOCSIZ = 18;

  /// from: static public final int LOCTIM
  static const LOCTIM = 10;

  /// from: static public final int LOCVER
  static const LOCVER = 4;

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/io/InputStream;)V");

  /// from: public void <init>(java.io.InputStream in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new ZIP input stream.
  ///
  /// The UTF-8 java.nio.charset.Charset charset is used to
  /// decode the entry names.
  ///@param in the actual input stream
  ZipInputStream.ctor2(inputstream_.InputStream in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [in0.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, r"<init>",
      r"(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V");

  /// from: public void <init>(java.io.InputStream in, java.nio.charset.Charset charset)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new ZIP input stream.
  ///@param in the actual input stream
  ///@param charset The {@linkplain java.nio.charset.Charset charset} to be
  ///        used to decode the ZIP entry name (ignored if the
  ///        <a href="package-summary.html\#lang_encoding"> language
  ///        encoding bit</a> of the ZIP entry's general purpose bit
  ///        flag is set).
  ///@since 1.7
  ZipInputStream.ctor3(inputstream_.InputStream in0, jni.JObject charset)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [in0.reference, charset.reference]).object);

  static final _id_getNextEntry = jniAccessors.getMethodIDOf(
      _classRef, r"getNextEntry", r"()Ljava/util/zip/ZipEntry;");

  /// from: public java.util.zip.ZipEntry getNextEntry()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Reads the next ZIP file entry and positions the stream at the
  /// beginning of the entry data.
  ///@return the next ZIP file entry, or null if there are no more entries
  ///@exception ZipException if a ZIP file error has occurred
  ///@exception IOException if an I/O error has occurred
  zipentry_.ZipEntry getNextEntry() =>
      const zipentry_.$ZipEntryType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNextEntry, jni.JniCallType.objectType, []).object);

  static final _id_closeEntry =
      jniAccessors.getMethodIDOf(_classRef, r"closeEntry", r"()V");

  /// from: public void closeEntry()
  ///
  /// Closes the current ZIP entry and positions the stream for reading the
  /// next entry.
  ///@exception ZipException if a ZIP file error has occurred
  ///@exception IOException if an I/O error has occurred
  void closeEntry() => jniAccessors.callMethodWithArgs(
      reference, _id_closeEntry, jni.JniCallType.voidType, []).check();

  static final _id_available =
      jniAccessors.getMethodIDOf(_classRef, r"available", r"()I");

  /// from: public int available()
  ///
  /// Returns 0 after EOF has reached for the current entry data,
  /// otherwise always return 1.
  ///
  /// Programs should not count on this method to return the actual number
  /// of bytes that could be read without blocking.
  ///@return 1 before EOF and 0 after EOF has reached for current entry.
  ///@exception IOException if an I/O error occurs.
  int available() => jniAccessors.callMethodWithArgs(
      reference, _id_available, jni.JniCallType.intType, []).integer;

  static final _id_read1 =
      jniAccessors.getMethodIDOf(_classRef, r"read", r"([BII)I");

  /// from: public int read(byte[] b, int off, int len)
  ///
  /// Reads from the current ZIP entry into an array of bytes.
  /// If <code>len</code> is not zero, the method
  /// blocks until some input is available; otherwise, no
  /// bytes are read and <code>0</code> is returned.
  ///@param b the buffer into which the data is read
  ///@param off the start offset in the destination array <code>b</code>
  ///@param len the maximum number of bytes read
  ///@return the actual number of bytes read, or -1 if the end of the
  ///         entry is reached
  ///@exception NullPointerException if <code>b</code> is <code>null</code>.
  ///@exception IndexOutOfBoundsException if <code>off</code> is negative,
  /// <code>len</code> is negative, or <code>len</code> is greater than
  /// <code>b.length - off</code>
  ///@exception ZipException if a ZIP file error has occurred
  ///@exception IOException if an I/O error has occurred
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
  /// Skips specified number of bytes in the current ZIP entry.
  ///@param n the number of bytes to skip
  ///@return the actual number of bytes skipped
  ///@exception ZipException if a ZIP file error has occurred
  ///@exception IOException if an I/O error has occurred
  ///@exception IllegalArgumentException if {@code n < 0}
  int skip(int n) => jniAccessors.callMethodWithArgs(
      reference, _id_skip, jni.JniCallType.longType, [n]).long;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, r"close", r"()V");

  /// from: public void close()
  ///
  /// Closes this input stream and releases any system resources associated
  /// with the stream.
  ///@exception IOException if an I/O error has occurred
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniCallType.voidType, []).check();

  static final _id_createZipEntry = jniAccessors.getMethodIDOf(_classRef,
      r"createZipEntry", r"(Ljava/lang/String;)Ljava/util/zip/ZipEntry;");

  /// from: protected java.util.zip.ZipEntry createZipEntry(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>ZipEntry</code> object for the specified
  /// entry name.
  ///@param name the ZIP file entry name
  ///@return the ZipEntry just created
  zipentry_.ZipEntry createZipEntry(jni.JString name) =>
      const zipentry_.$ZipEntryType().fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createZipEntry,
          jni.JniCallType.objectType,
          [name.reference]).object);
}

class $ZipInputStreamType extends jni.JObjType<ZipInputStream> {
  const $ZipInputStreamType();

  @override
  String get signature => r"Ljava/util/zip/ZipInputStream;";

  @override
  ZipInputStream fromRef(jni.JObjectPtr ref) => ZipInputStream.fromRef(ref);
}
