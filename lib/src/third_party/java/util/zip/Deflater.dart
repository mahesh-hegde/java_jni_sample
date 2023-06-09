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

/// from: java.util.zip.Deflater
///
/// This class provides support for general purpose compression using the
/// popular ZLIB compression library. The ZLIB compression library was
/// initially developed as part of the PNG graphics standard and is not
/// protected by patents. It is fully described in the specifications at
/// the <a href="package-summary.html\#package_description">java.util.zip
/// package description</a>.
///
/// The following code fragment demonstrates a trivial compression
/// and decompression of a string using <tt>Deflater</tt> and
/// <tt>Inflater</tt>.
///
/// <blockquote><pre>
/// try {
///     // Encode a String into bytes
///     String inputString = "blahblahblah";
///     byte[] input = inputString.getBytes("UTF-8");
///
///     // Compress the bytes
///     byte[] output = new byte[100];
///     Deflater compresser = new Deflater();
///     compresser.setInput(input);
///     compresser.finish();
///     int compressedDataLength = compresser.deflate(output);
///     compresser.end();
///
///     // Decompress the bytes
///     Inflater decompresser = new Inflater();
///     decompresser.setInput(output, 0, compressedDataLength);
///     byte[] result = new byte[100];
///     int resultLength = decompresser.inflate(result);
///     decompresser.end();
///
///     // Decode the bytes into a String
///     String outputString = new String(result, 0, resultLength, "UTF-8");
/// } catch(java.io.UnsupportedEncodingException ex) {
///     // handle
/// } catch (java.util.zip.DataFormatException ex) {
///     // handle
/// }
/// </pre></blockquote>
///@see Inflater
///@author David Connelly
class Deflater extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type;

  Deflater.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/util/zip/Deflater");

  /// The type which includes information such as the signature of this class.
  static const type = $DeflaterType();

  /// from: static public final int BEST_COMPRESSION
  ///
  /// Compression level for best compression.
  static const BEST_COMPRESSION = 9;

  /// from: static public final int BEST_SPEED
  ///
  /// Compression level for fastest compression.
  static const BEST_SPEED = 1;

  /// from: static public final int DEFAULT_COMPRESSION
  ///
  /// Default compression level.
  static const DEFAULT_COMPRESSION = -1;

  /// from: static public final int DEFAULT_STRATEGY
  ///
  /// Default compression strategy.
  static const DEFAULT_STRATEGY = 0;

  /// from: static public final int DEFLATED
  ///
  /// Compression method for the deflate algorithm (the only one currently
  /// supported).
  static const DEFLATED = 8;

  /// from: static public final int FILTERED
  ///
  /// Compression strategy best used for data consisting mostly of small
  /// values with a somewhat random distribution. Forces more Huffman coding
  /// and less string matching.
  static const FILTERED = 1;

  /// from: static public final int FULL_FLUSH
  ///
  /// Compression flush mode used to flush out all pending output and
  /// reset the deflater. Using this mode too often can seriously degrade
  /// compression.
  ///@see Deflater\#deflate(byte[], int, int, int)
  ///@since 1.7
  static const FULL_FLUSH = 3;

  /// from: static public final int HUFFMAN_ONLY
  ///
  /// Compression strategy for Huffman coding only.
  static const HUFFMAN_ONLY = 2;

  /// from: static public final int NO_COMPRESSION
  ///
  /// Compression level for no compression.
  static const NO_COMPRESSION = 0;

  /// from: static public final int NO_FLUSH
  ///
  /// Compression flush mode used to achieve best compression result.
  ///@see Deflater\#deflate(byte[], int, int, int)
  ///@since 1.7
  static const NO_FLUSH = 0;

  /// from: static public final int SYNC_FLUSH
  ///
  /// Compression flush mode used to flush out all pending output; may
  /// degrade compression for some compression algorithms.
  ///@see Deflater\#deflate(byte[], int, int, int)
  ///@since 1.7
  static const SYNC_FLUSH = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"(IZ)V");

  /// from: public void <init>(int level, boolean nowrap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new compressor using the specified compression level.
  /// If 'nowrap' is true then the ZLIB header and checksum fields will
  /// not be used in order to support the compression format used in
  /// both GZIP and PKZIP.
  ///@param level the compression level (0-9)
  ///@param nowrap if true then use GZIP compatible compression
  Deflater(int level, bool nowrap)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [jni.JValueInt(level), nowrap ? 1 : 0]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"(I)V");

  /// from: public void <init>(int level)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new compressor using the specified compression level.
  /// Compressed data will be generated in ZLIB format.
  ///@param level the compression level (0-9)
  Deflater.ctor1(int level)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [jni.JValueInt(level)]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new compressor with the default compression level.
  /// Compressed data will be generated in ZLIB format.
  Deflater.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_setInput =
      jniAccessors.getMethodIDOf(_classRef, r"setInput", r"([BII)V");

  /// from: public void setInput(byte[] b, int off, int len)
  ///
  /// Sets input data for compression. This should be called whenever
  /// needsInput() returns true indicating that more input data is required.
  ///@param b the input data bytes
  ///@param off the start offset of the data
  ///@param len the length of the data
  ///@see Deflater\#needsInput
  void setInput(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setInput,
          jni.JniCallType.voidType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).check();

  static final _id_setInput1 =
      jniAccessors.getMethodIDOf(_classRef, r"setInput", r"([B)V");

  /// from: public void setInput(byte[] b)
  ///
  /// Sets input data for compression. This should be called whenever
  /// needsInput() returns true indicating that more input data is required.
  ///@param b the input data bytes
  ///@see Deflater\#needsInput
  void setInput1(jni.JArray<jni.JByte> b) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setInput1,
      jni.JniCallType.voidType,
      [b.reference]).check();

  static final _id_setDictionary =
      jniAccessors.getMethodIDOf(_classRef, r"setDictionary", r"([BII)V");

  /// from: public void setDictionary(byte[] b, int off, int len)
  ///
  /// Sets preset dictionary for compression. A preset dictionary is used
  /// when the history buffer can be predetermined. When the data is later
  /// uncompressed with Inflater.inflate(), Inflater.getAdler() can be called
  /// in order to get the Adler-32 value of the dictionary required for
  /// decompression.
  ///@param b the dictionary data bytes
  ///@param off the start offset of the data
  ///@param len the length of the data
  ///@see Inflater\#inflate
  ///@see Inflater\#getAdler
  void setDictionary(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setDictionary,
          jni.JniCallType.voidType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).check();

  static final _id_setDictionary1 =
      jniAccessors.getMethodIDOf(_classRef, r"setDictionary", r"([B)V");

  /// from: public void setDictionary(byte[] b)
  ///
  /// Sets preset dictionary for compression. A preset dictionary is used
  /// when the history buffer can be predetermined. When the data is later
  /// uncompressed with Inflater.inflate(), Inflater.getAdler() can be called
  /// in order to get the Adler-32 value of the dictionary required for
  /// decompression.
  ///@param b the dictionary data bytes
  ///@see Inflater\#inflate
  ///@see Inflater\#getAdler
  void setDictionary1(jni.JArray<jni.JByte> b) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDictionary1,
          jni.JniCallType.voidType, [b.reference]).check();

  static final _id_setStrategy =
      jniAccessors.getMethodIDOf(_classRef, r"setStrategy", r"(I)V");

  /// from: public void setStrategy(int strategy)
  ///
  /// Sets the compression strategy to the specified value.
  ///
  ///  If the compression strategy is changed, the next invocation
  /// of {@code deflate} will compress the input available so far with
  /// the old strategy (and may be flushed); the new strategy will take
  /// effect only after that invocation.
  ///@param strategy the new compression strategy
  ///@exception IllegalArgumentException if the compression strategy is
  ///                                     invalid
  void setStrategy(int strategy) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setStrategy,
      jni.JniCallType.voidType,
      [jni.JValueInt(strategy)]).check();

  static final _id_setLevel =
      jniAccessors.getMethodIDOf(_classRef, r"setLevel", r"(I)V");

  /// from: public void setLevel(int level)
  ///
  /// Sets the compression level to the specified value.
  ///
  ///  If the compression level is changed, the next invocation
  /// of {@code deflate} will compress the input available so far
  /// with the old level (and may be flushed); the new level will
  /// take effect only after that invocation.
  ///@param level the new compression level (0-9)
  ///@exception IllegalArgumentException if the compression level is invalid
  void setLevel(int level) => jniAccessors.callMethodWithArgs(reference,
      _id_setLevel, jni.JniCallType.voidType, [jni.JValueInt(level)]).check();

  static final _id_needsInput =
      jniAccessors.getMethodIDOf(_classRef, r"needsInput", r"()Z");

  /// from: public boolean needsInput()
  ///
  /// Returns true if the input data buffer is empty and setInput()
  /// should be called in order to provide more input.
  ///@return true if the input data buffer is empty and setInput()
  /// should be called in order to provide more input
  bool needsInput() => jniAccessors.callMethodWithArgs(
      reference, _id_needsInput, jni.JniCallType.booleanType, []).boolean;

  static final _id_finish =
      jniAccessors.getMethodIDOf(_classRef, r"finish", r"()V");

  /// from: public void finish()
  ///
  /// When called, indicates that compression should end with the current
  /// contents of the input buffer.
  void finish() => jniAccessors.callMethodWithArgs(
      reference, _id_finish, jni.JniCallType.voidType, []).check();

  static final _id_finished =
      jniAccessors.getMethodIDOf(_classRef, r"finished", r"()Z");

  /// from: public boolean finished()
  ///
  /// Returns true if the end of the compressed data output stream has
  /// been reached.
  ///@return true if the end of the compressed data output stream has
  /// been reached
  bool finished() => jniAccessors.callMethodWithArgs(
      reference, _id_finished, jni.JniCallType.booleanType, []).boolean;

  static final _id_deflate =
      jniAccessors.getMethodIDOf(_classRef, r"deflate", r"([BII)I");

  /// from: public int deflate(byte[] b, int off, int len)
  ///
  /// Compresses the input data and fills specified buffer with compressed
  /// data. Returns actual number of bytes of compressed data. A return value
  /// of 0 indicates that \#needsInput() needsInput should be called
  /// in order to determine if more input data is required.
  ///
  /// This method uses \#NO_FLUSH as its compression flush mode.
  /// An invocation of this method of the form {@code deflater.deflate(b, off, len)}
  /// yields the same result as the invocation of
  /// {@code deflater.deflate(b, off, len, Deflater.NO_FLUSH)}.
  ///@param b the buffer for the compressed data
  ///@param off the start offset of the data
  ///@param len the maximum number of bytes of compressed data
  ///@return the actual number of bytes of compressed data written to the
  ///         output buffer
  int deflate(jni.JArray<jni.JByte> b, int off, int len) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_deflate,
          jni.JniCallType.intType,
          [b.reference, jni.JValueInt(off), jni.JValueInt(len)]).integer;

  static final _id_deflate1 =
      jniAccessors.getMethodIDOf(_classRef, r"deflate", r"([B)I");

  /// from: public int deflate(byte[] b)
  ///
  /// Compresses the input data and fills specified buffer with compressed
  /// data. Returns actual number of bytes of compressed data. A return value
  /// of 0 indicates that \#needsInput() needsInput should be called
  /// in order to determine if more input data is required.
  ///
  /// This method uses \#NO_FLUSH as its compression flush mode.
  /// An invocation of this method of the form {@code deflater.deflate(b)}
  /// yields the same result as the invocation of
  /// {@code deflater.deflate(b, 0, b.length, Deflater.NO_FLUSH)}.
  ///@param b the buffer for the compressed data
  ///@return the actual number of bytes of compressed data written to the
  ///         output buffer
  int deflate1(jni.JArray<jni.JByte> b) => jniAccessors.callMethodWithArgs(
      reference, _id_deflate1, jni.JniCallType.intType, [b.reference]).integer;

  static final _id_deflate2 =
      jniAccessors.getMethodIDOf(_classRef, r"deflate", r"([BIII)I");

  /// from: public int deflate(byte[] b, int off, int len, int flush)
  ///
  /// Compresses the input data and fills the specified buffer with compressed
  /// data. Returns actual number of bytes of data compressed.
  ///
  /// Compression flush mode is one of the following three modes:
  ///
  /// <ul>
  /// <li>\#NO_FLUSH: allows the deflater to decide how much data
  /// to accumulate, before producing output, in order to achieve the best
  /// compression (should be used in normal use scenario). A return value
  /// of 0 in this flush mode indicates that \#needsInput() should
  /// be called in order to determine if more input data is required.
  ///
  /// <li>\#SYNC_FLUSH: all pending output in the deflater is flushed,
  /// to the specified output buffer, so that an inflater that works on
  /// compressed data can get all input data available so far (In particular
  /// the \#needsInput() returns {@code true} after this invocation
  /// if enough output space is provided). Flushing with \#SYNC_FLUSH
  /// may degrade compression for some compression algorithms and so it
  /// should be used only when necessary.
  ///
  /// <li>\#FULL_FLUSH: all pending output is flushed out as with
  /// \#SYNC_FLUSH. The compression state is reset so that the inflater
  /// that works on the compressed output data can restart from this point
  /// if previous compressed data has been damaged or if random access is
  /// desired. Using \#FULL_FLUSH too often can seriously degrade
  /// compression.
  /// </ul>
  ///
  /// In the case of \#FULL_FLUSH or \#SYNC_FLUSH, if
  /// the return value is {@code len}, the space available in output
  /// buffer {@code b}, this method should be invoked again with the same
  /// {@code flush} parameter and more output space.
  ///@param b the buffer for the compressed data
  ///@param off the start offset of the data
  ///@param len the maximum number of bytes of compressed data
  ///@param flush the compression flush mode
  ///@return the actual number of bytes of compressed data written to
  ///         the output buffer
  ///@throws IllegalArgumentException if the flush mode is invalid
  ///@since 1.7
  int deflate2(jni.JArray<jni.JByte> b, int off, int len, int flush) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_deflate2, jni.JniCallType.intType, [
        b.reference,
        jni.JValueInt(off),
        jni.JValueInt(len),
        jni.JValueInt(flush)
      ]).integer;

  static final _id_getAdler =
      jniAccessors.getMethodIDOf(_classRef, r"getAdler", r"()I");

  /// from: public int getAdler()
  ///
  /// Returns the ADLER-32 value of the uncompressed data.
  ///@return the ADLER-32 value of the uncompressed data
  int getAdler() => jniAccessors.callMethodWithArgs(
      reference, _id_getAdler, jni.JniCallType.intType, []).integer;

  static final _id_getTotalIn =
      jniAccessors.getMethodIDOf(_classRef, r"getTotalIn", r"()I");

  /// from: public int getTotalIn()
  ///
  /// Returns the total number of uncompressed bytes input so far.
  ///
  /// Since the number of bytes may be greater than
  /// Integer.MAX_VALUE, the \#getBytesRead() method is now
  /// the preferred means of obtaining this information.
  ///
  ///@return the total number of uncompressed bytes input so far
  int getTotalIn() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalIn, jni.JniCallType.intType, []).integer;

  static final _id_getBytesRead =
      jniAccessors.getMethodIDOf(_classRef, r"getBytesRead", r"()J");

  /// from: public long getBytesRead()
  ///
  /// Returns the total number of uncompressed bytes input so far.
  ///@return the total (non-negative) number of uncompressed bytes input so far
  ///@since 1.5
  int getBytesRead() => jniAccessors.callMethodWithArgs(
      reference, _id_getBytesRead, jni.JniCallType.longType, []).long;

  static final _id_getTotalOut =
      jniAccessors.getMethodIDOf(_classRef, r"getTotalOut", r"()I");

  /// from: public int getTotalOut()
  ///
  /// Returns the total number of compressed bytes output so far.
  ///
  /// Since the number of bytes may be greater than
  /// Integer.MAX_VALUE, the \#getBytesWritten() method is now
  /// the preferred means of obtaining this information.
  ///
  ///@return the total number of compressed bytes output so far
  int getTotalOut() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalOut, jni.JniCallType.intType, []).integer;

  static final _id_getBytesWritten =
      jniAccessors.getMethodIDOf(_classRef, r"getBytesWritten", r"()J");

  /// from: public long getBytesWritten()
  ///
  /// Returns the total number of compressed bytes output so far.
  ///@return the total (non-negative) number of compressed bytes output so far
  ///@since 1.5
  int getBytesWritten() => jniAccessors.callMethodWithArgs(
      reference, _id_getBytesWritten, jni.JniCallType.longType, []).long;

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, r"reset", r"()V");

  /// from: public void reset()
  ///
  /// Resets deflater so that a new set of input data can be processed.
  /// Keeps current compression level and strategy settings.
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniCallType.voidType, []).check();

  static final _id_end = jniAccessors.getMethodIDOf(_classRef, r"end", r"()V");

  /// from: public void end()
  ///
  /// Closes the compressor and discards any unprocessed input.
  /// This method should be called when the compressor is no longer
  /// being used, but will also be called automatically by the
  /// finalize() method. Once this method is called, the behavior
  /// of the Deflater object is undefined.
  void end() => jniAccessors.callMethodWithArgs(
      reference, _id_end, jni.JniCallType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, r"finalize", r"()V");

  /// from: protected void finalize()
  ///
  /// Closes the compressor when garbage is collected.
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniCallType.voidType, []).check();
}

class $DeflaterType extends jni.JObjType<Deflater> {
  const $DeflaterType();

  @override
  String get signature => r"Ljava/util/zip/Deflater;";

  @override
  Deflater fromRef(jni.JObjectPtr ref) => Deflater.fromRef(ref);
}
