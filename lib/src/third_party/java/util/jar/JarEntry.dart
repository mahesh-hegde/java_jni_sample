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

import "Attributes.dart" as attributes_;
import "../../../_init.dart";

/// from: java.util.jar.JarEntry
///
/// This class is used to represent a JAR file entry.
class JarEntry extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  JarEntry.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/util/jar/JarEntry");

  /// The type which includes information such as the signature of this class.
  static const type = $JarEntryType();

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

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>JarEntry</code> for the specified JAR file
  /// entry name.
  ///@param name the JAR file entry name
  ///@exception NullPointerException if the entry name is <code>null</code>
  ///@exception IllegalArgumentException if the entry name is longer than
  ///            0xFFFF bytes.
  JarEntry(jni.JString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [name.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/util/zip/ZipEntry;)V");

  /// from: public void <init>(java.util.zip.ZipEntry ze)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>JarEntry</code> with fields taken from the
  /// specified <code>ZipEntry</code> object.
  ///@param ze the <code>ZipEntry</code> object to create the
  ///           <code>JarEntry</code> from
  JarEntry.ctor1(jni.JObject ze)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [ze.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/util/jar/JarEntry;)V");

  /// from: public void <init>(java.util.jar.JarEntry je)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>JarEntry</code> with fields taken from the
  /// specified <code>JarEntry</code> object.
  ///@param je the <code>JarEntry</code> to copy
  JarEntry.ctor2(JarEntry je)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [je.reference]).object);

  static final _id_getAttributes = jniAccessors.getMethodIDOf(
      _classRef, r"getAttributes", r"()Ljava/util/jar/Attributes;");

  /// from: public java.util.jar.Attributes getAttributes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the <code>Manifest</code> <code>Attributes</code> for this
  /// entry, or <code>null</code> if none.
  ///@return the <code>Manifest</code> <code>Attributes</code> for this
  /// entry, or <code>null</code> if none
  ///@throws IOException if an I/O error has occurred
  attributes_.Attributes getAttributes() => const attributes_.$AttributesType()
      .fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAttributes, jni.JniCallType.objectType, []).object);

  static final _id_getCertificates = jniAccessors.getMethodIDOf(
      _classRef, r"getCertificates", r"()[Ljava/security/cert/Certificate;");

  /// from: public java.security.cert.Certificate[] getCertificates()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the <code>Certificate</code> objects for this entry, or
  /// <code>null</code> if none. This method can only be called once
  /// the <code>JarEntry</code> has been completely verified by reading
  /// from the entry input stream until the end of the stream has been
  /// reached. Otherwise, this method will return <code>null</code>.
  ///
  /// The returned certificate array comprises all the signer certificates
  /// that were used to verify this entry. Each signer certificate is
  /// followed by its supporting certificate chain (which may be empty).
  /// Each signer certificate and its supporting certificate chain are ordered
  /// bottom-to-top (i.e., with the signer certificate first and the (root)
  /// certificate authority last).
  ///@return the <code>Certificate</code> objects for this entry, or
  /// <code>null</code> if none.
  jni.JArray<jni.JObject> getCertificates() =>
      const jni.JArrayType(jni.JObjectType()).fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getCertificates,
              jni.JniCallType.objectType, []).object);

  static final _id_getCodeSigners = jniAccessors.getMethodIDOf(
      _classRef, r"getCodeSigners", r"()[Ljava/security/CodeSigner;");

  /// from: public java.security.CodeSigner[] getCodeSigners()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the <code>CodeSigner</code> objects for this entry, or
  /// <code>null</code> if none. This method can only be called once
  /// the <code>JarEntry</code> has been completely verified by reading
  /// from the entry input stream until the end of the stream has been
  /// reached. Otherwise, this method will return <code>null</code>.
  ///
  /// The returned array comprises all the code signers that have signed
  /// this entry.
  ///@return the <code>CodeSigner</code> objects for this entry, or
  /// <code>null</code> if none.
  ///@since 1.5
  jni.JArray<jni.JObject> getCodeSigners() =>
      const jni.JArrayType(jni.JObjectType()).fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getCodeSigners,
              jni.JniCallType.objectType, []).object);
}

class $JarEntryType extends jni.JObjType<JarEntry> {
  const $JarEntryType();

  @override
  String get signature => r"Ljava/util/jar/JarEntry;";

  @override
  JarEntry fromRef(jni.JObjectPtr ref) => JarEntry.fromRef(ref);
}