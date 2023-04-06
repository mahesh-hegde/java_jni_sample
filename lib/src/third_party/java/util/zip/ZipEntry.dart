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

/// from: java.util.zip.ZipEntry
///
/// This class is used to represent a ZIP file entry.
///@author David Connelly
class ZipEntry extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  ZipEntry.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/util/zip/ZipEntry");

  /// The type which includes information such as the signature of this class.
  static const type = $ZipEntryType();

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

  /// from: static public final int DEFLATED
  ///
  /// Compression method for compressed (deflated) entries.
  static const DEFLATED = 8;

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

  /// from: static public final int STORED
  ///
  /// Compression method for uncompressed entries.
  static const STORED = 0;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new zip entry with the specified name.
  ///@param name The entry name
  ///@throws NullPointerException if the entry name is null
  ///@throws IllegalArgumentException if the entry name is longer than
  ///         0xFFFF bytes
  ZipEntry(jni.JString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [name.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, r"<init>", r"(Ljava/util/zip/ZipEntry;)V");

  /// from: public void <init>(java.util.zip.ZipEntry e)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new zip entry with fields taken from the specified
  /// zip entry.
  ///@param e A zip Entry object
  ///@throws NullPointerException if the entry object is null
  ZipEntry.ctor1(ZipEntry e)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [e.reference]).object);

  static final _id_getName = jniAccessors.getMethodIDOf(
      _classRef, r"getName", r"()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the name of the entry.
  ///@return the name of the entry
  jni.JString getName() =>
      const jni.JStringType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniCallType.objectType, []).object);

  static final _id_setTime =
      jniAccessors.getMethodIDOf(_classRef, r"setTime", r"(J)V");

  /// from: public void setTime(long time)
  ///
  /// Sets the last modification time of the entry.
  ///
  ///  If the entry is output to a ZIP file or ZIP file formatted
  /// output stream the last modification time set by this method will
  /// be stored into the {@code date and time fields} of the zip file
  /// entry and encoded in standard {@code MS-DOS date and time format}.
  /// The java.util.TimeZone\#getDefault() default TimeZone is
  /// used to convert the epoch time to the MS-DOS data and time.
  ///@param time The last modification time of the entry in milliseconds
  ///         since the epoch
  ///@see \#getTime()
  ///@see \#getLastModifiedTime()
  void setTime(int time) => jniAccessors.callMethodWithArgs(
      reference, _id_setTime, jni.JniCallType.voidType, [time]).check();

  static final _id_getTime =
      jniAccessors.getMethodIDOf(_classRef, r"getTime", r"()J");

  /// from: public long getTime()
  ///
  /// Returns the last modification time of the entry.
  ///
  ///  If the entry is read from a ZIP file or ZIP file formatted
  /// input stream, this is the last modification time from the {@code
  /// date and time fields} of the zip file entry. The
  /// java.util.TimeZone\#getDefault() default TimeZone is used
  /// to convert the standard MS-DOS formatted date and time to the
  /// epoch time.
  ///@return The last modification time of the entry in milliseconds
  ///          since the epoch, or -1 if not specified
  ///@see \#setTime(long)
  ///@see \#setLastModifiedTime(FileTime)
  int getTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getTime, jni.JniCallType.longType, []).long;

  static final _id_setLastModifiedTime = jniAccessors.getMethodIDOf(
      _classRef,
      r"setLastModifiedTime",
      r"(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;");

  /// from: public java.util.zip.ZipEntry setLastModifiedTime(java.nio.file.attribute.FileTime time)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the last modification time of the entry.
  ///
  ///  When output to a ZIP file or ZIP file formatted output stream
  /// the last modification time set by this method will be stored into
  /// zip file entry's {@code date and time fields} in {@code standard
  /// MS-DOS date and time format}), and the extended timestamp fields
  /// in {@code optional extra data} in UTC time.
  ///@param time The last modification time of the entry
  ///@return This zip entry
  ///@throws NullPointerException if the {@code time} is null
  ///@see \#getLastModifiedTime()
  ///@since 1.8
  ZipEntry setLastModifiedTime(jni.JObject time) =>
      const $ZipEntryType().fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLastModifiedTime,
          jni.JniCallType.objectType,
          [time.reference]).object);

  static final _id_getLastModifiedTime = jniAccessors.getMethodIDOf(_classRef,
      r"getLastModifiedTime", r"()Ljava/nio/file/attribute/FileTime;");

  /// from: public java.nio.file.attribute.FileTime getLastModifiedTime()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the last modification time of the entry.
  ///
  ///  If the entry is read from a ZIP file or ZIP file formatted
  /// input stream, this is the last modification time from the zip
  /// file entry's {@code optional extra data} if the extended timestamp
  /// fields are present. Otherwise the last modification time is read
  /// from the entry's {@code date and time fields}, the java.util.TimeZone\#getDefault() default TimeZone is used to convert
  /// the standard MS-DOS formatted date and time to the epoch time.
  ///@return The last modification time of the entry, null if not specified
  ///@see \#setLastModifiedTime(FileTime)
  ///@since 1.8
  jni.JObject getLastModifiedTime() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getLastModifiedTime, jni.JniCallType.objectType, []).object);

  static final _id_setLastAccessTime = jniAccessors.getMethodIDOf(
      _classRef,
      r"setLastAccessTime",
      r"(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;");

  /// from: public java.util.zip.ZipEntry setLastAccessTime(java.nio.file.attribute.FileTime time)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the last access time of the entry.
  ///
  ///  If set, the last access time will be stored into the extended
  /// timestamp fields of entry's {@code optional extra data}, when output
  /// to a ZIP file or ZIP file formatted stream.
  ///@param time The last access time of the entry
  ///@return This zip entry
  ///@throws NullPointerException if the {@code time} is null
  ///@see \#getLastAccessTime()
  ///@since 1.8
  ZipEntry setLastAccessTime(jni.JObject time) =>
      const $ZipEntryType().fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLastAccessTime,
          jni.JniCallType.objectType,
          [time.reference]).object);

  static final _id_getLastAccessTime = jniAccessors.getMethodIDOf(
      _classRef, r"getLastAccessTime", r"()Ljava/nio/file/attribute/FileTime;");

  /// from: public java.nio.file.attribute.FileTime getLastAccessTime()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the last access time of the entry.
  ///
  ///  The last access time is from the extended timestamp fields
  /// of entry's {@code optional extra data} when read from a ZIP file
  /// or ZIP file formatted stream.
  ///@return The last access time of the entry, null if not specified
  ///@see \#setLastAccessTime(FileTime)
  ///@since 1.8
  jni.JObject getLastAccessTime() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getLastAccessTime, jni.JniCallType.objectType, []).object);

  static final _id_setCreationTime = jniAccessors.getMethodIDOf(
      _classRef,
      r"setCreationTime",
      r"(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;");

  /// from: public java.util.zip.ZipEntry setCreationTime(java.nio.file.attribute.FileTime time)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the creation time of the entry.
  ///
  ///  If set, the creation time will be stored into the extended
  /// timestamp fields of entry's {@code optional extra data}, when
  /// output to a ZIP file or ZIP file formatted stream.
  ///@param time The creation time of the entry
  ///@return This zip entry
  ///@throws NullPointerException if the {@code time} is null
  ///@see \#getCreationTime()
  ///@since 1.8
  ZipEntry setCreationTime(jni.JObject time) =>
      const $ZipEntryType().fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setCreationTime,
          jni.JniCallType.objectType,
          [time.reference]).object);

  static final _id_getCreationTime = jniAccessors.getMethodIDOf(
      _classRef, r"getCreationTime", r"()Ljava/nio/file/attribute/FileTime;");

  /// from: public java.nio.file.attribute.FileTime getCreationTime()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the creation time of the entry.
  ///
  ///  The creation time is from the extended timestamp fields of
  /// entry's {@code optional extra data} when read from a ZIP file
  /// or ZIP file formatted stream.
  ///@return the creation time of the entry, null if not specified
  ///@see \#setCreationTime(FileTime)
  ///@since 1.8
  jni.JObject getCreationTime() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getCreationTime, jni.JniCallType.objectType, []).object);

  static final _id_setSize =
      jniAccessors.getMethodIDOf(_classRef, r"setSize", r"(J)V");

  /// from: public void setSize(long size)
  ///
  /// Sets the uncompressed size of the entry data.
  ///@param size the uncompressed size in bytes
  ///@throws IllegalArgumentException if the specified size is less
  ///         than 0, is greater than 0xFFFFFFFF when
  ///         <a href="package-summary.html\#zip64">ZIP64 format</a> is not supported,
  ///         or is less than 0 when ZIP64 is supported
  ///@see \#getSize()
  void setSize(int size) => jniAccessors.callMethodWithArgs(
      reference, _id_setSize, jni.JniCallType.voidType, [size]).check();

  static final _id_getSize =
      jniAccessors.getMethodIDOf(_classRef, r"getSize", r"()J");

  /// from: public long getSize()
  ///
  /// Returns the uncompressed size of the entry data.
  ///@return the uncompressed size of the entry data, or -1 if not known
  ///@see \#setSize(long)
  int getSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getSize, jni.JniCallType.longType, []).long;

  static final _id_getCompressedSize =
      jniAccessors.getMethodIDOf(_classRef, r"getCompressedSize", r"()J");

  /// from: public long getCompressedSize()
  ///
  /// Returns the size of the compressed entry data.
  ///
  ///  In the case of a stored entry, the compressed size will be the same
  /// as the uncompressed size of the entry.
  ///@return the size of the compressed entry data, or -1 if not known
  ///@see \#setCompressedSize(long)
  int getCompressedSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getCompressedSize, jni.JniCallType.longType, []).long;

  static final _id_setCompressedSize =
      jniAccessors.getMethodIDOf(_classRef, r"setCompressedSize", r"(J)V");

  /// from: public void setCompressedSize(long csize)
  ///
  /// Sets the size of the compressed entry data.
  ///@param csize the compressed size to set to
  ///@see \#getCompressedSize()
  void setCompressedSize(int csize) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCompressedSize,
      jni.JniCallType.voidType,
      [csize]).check();

  static final _id_setCrc =
      jniAccessors.getMethodIDOf(_classRef, r"setCrc", r"(J)V");

  /// from: public void setCrc(long crc)
  ///
  /// Sets the CRC-32 checksum of the uncompressed entry data.
  ///@param crc the CRC-32 value
  ///@throws IllegalArgumentException if the specified CRC-32 value is
  ///         less than 0 or greater than 0xFFFFFFFF
  ///@see \#getCrc()
  void setCrc(int crc) => jniAccessors.callMethodWithArgs(
      reference, _id_setCrc, jni.JniCallType.voidType, [crc]).check();

  static final _id_getCrc =
      jniAccessors.getMethodIDOf(_classRef, r"getCrc", r"()J");

  /// from: public long getCrc()
  ///
  /// Returns the CRC-32 checksum of the uncompressed entry data.
  ///@return the CRC-32 checksum of the uncompressed entry data, or -1 if
  /// not known
  ///@see \#setCrc(long)
  int getCrc() => jniAccessors.callMethodWithArgs(
      reference, _id_getCrc, jni.JniCallType.longType, []).long;

  static final _id_setMethod =
      jniAccessors.getMethodIDOf(_classRef, r"setMethod", r"(I)V");

  /// from: public void setMethod(int method)
  ///
  /// Sets the compression method for the entry.
  ///@param method the compression method, either STORED or DEFLATED
  ///@throws IllegalArgumentException if the specified compression
  ///          method is invalid
  ///@see \#getMethod()
  void setMethod(int method) => jniAccessors.callMethodWithArgs(reference,
      _id_setMethod, jni.JniCallType.voidType, [jni.JValueInt(method)]).check();

  static final _id_getMethod =
      jniAccessors.getMethodIDOf(_classRef, r"getMethod", r"()I");

  /// from: public int getMethod()
  ///
  /// Returns the compression method of the entry.
  ///@return the compression method of the entry, or -1 if not specified
  ///@see \#setMethod(int)
  int getMethod() => jniAccessors.callMethodWithArgs(
      reference, _id_getMethod, jni.JniCallType.intType, []).integer;

  static final _id_setExtra =
      jniAccessors.getMethodIDOf(_classRef, r"setExtra", r"([B)V");

  /// from: public void setExtra(byte[] extra)
  ///
  /// Sets the optional extra field data for the entry.
  ///
  ///  Invoking this method may change this entry's last modification
  /// time, last access time and creation time, if the {@code extra} field
  /// data includes the extensible timestamp fields, such as {@code NTFS tag
  /// 0x0001} or {@code Info-ZIP Extended Timestamp}, as specified in
  /// <a href="http://www.info-zip.org/doc/appnote-19970311-iz.zip">Info-ZIP
  /// Application Note 970311</a>.
  ///@param extra The extra field data bytes
  ///@throws IllegalArgumentException if the length of the specified
  ///         extra field data is greater than 0xFFFF bytes
  ///@see \#getExtra()
  void setExtra(jni.JArray<jni.JByte> extra) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setExtra,
      jni.JniCallType.voidType,
      [extra.reference]).check();

  static final _id_getExtra =
      jniAccessors.getMethodIDOf(_classRef, r"getExtra", r"()[B");

  /// from: public byte[] getExtra()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the extra field data for the entry.
  ///@return the extra field data for the entry, or null if none
  ///@see \#setExtra(byte[])
  jni.JArray<jni.JByte> getExtra() => const jni.JArrayType(jni.JByteType())
      .fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtra, jni.JniCallType.objectType, []).object);

  static final _id_setComment = jniAccessors.getMethodIDOf(
      _classRef, r"setComment", r"(Ljava/lang/String;)V");

  /// from: public void setComment(java.lang.String comment)
  ///
  /// Sets the optional comment string for the entry.
  ///
  /// ZIP entry comments have maximum length of 0xffff. If the length of the
  /// specified comment string is greater than 0xFFFF bytes after encoding, only
  /// the first 0xFFFF bytes are output to the ZIP file entry.
  ///@param comment the comment string
  ///@see \#getComment()
  void setComment(jni.JString comment) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setComment,
      jni.JniCallType.voidType,
      [comment.reference]).check();

  static final _id_getComment = jniAccessors.getMethodIDOf(
      _classRef, r"getComment", r"()Ljava/lang/String;");

  /// from: public java.lang.String getComment()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the comment string for the entry.
  ///@return the comment string for the entry, or null if none
  ///@see \#setComment(String)
  jni.JString getComment() =>
      const jni.JStringType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getComment, jni.JniCallType.objectType, []).object);

  static final _id_isDirectory =
      jniAccessors.getMethodIDOf(_classRef, r"isDirectory", r"()Z");

  /// from: public boolean isDirectory()
  ///
  /// Returns true if this is a directory entry. A directory entry is
  /// defined to be one whose name ends with a '/'.
  ///@return true if this is a directory entry
  bool isDirectory() => jniAccessors.callMethodWithArgs(
      reference, _id_isDirectory, jni.JniCallType.booleanType, []).boolean;

  static final _id_toString1 = jniAccessors.getMethodIDOf(
      _classRef, r"toString", r"()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string representation of the ZIP entry.
  jni.JString toString1() =>
      const jni.JStringType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniCallType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, r"hashCode", r"()I");

  /// from: public int hashCode()
  ///
  /// Returns the hash code value for this entry.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniCallType.intType, []).integer;

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, r"clone", r"()Ljava/lang/Object;");

  /// from: public java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a copy of this entry.
  jni.JObject clone() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniCallType.objectType, []).object);
}

class $ZipEntryType extends jni.JObjType<ZipEntry> {
  const $ZipEntryType();

  @override
  String get signature => r"Ljava/util/zip/ZipEntry;";

  @override
  ZipEntry fromRef(jni.JObjectPtr ref) => ZipEntry.fromRef(ref);
}