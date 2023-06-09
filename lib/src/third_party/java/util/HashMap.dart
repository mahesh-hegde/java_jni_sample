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

/// from: java.util.HashMap
///
/// Hash table based implementation of the <tt>Map</tt> interface.  This
/// implementation provides all of the optional map operations, and permits
/// <tt>null</tt> values and the <tt>null</tt> key.  (The <tt>HashMap</tt>
/// class is roughly equivalent to <tt>Hashtable</tt>, except that it is
/// unsynchronized and permits nulls.)  This class makes no guarantees as to
/// the order of the map; in particular, it does not guarantee that the order
/// will remain constant over time.
///
/// This implementation provides constant-time performance for the basic
/// operations (<tt>get</tt> and <tt>put</tt>), assuming the hash function
/// disperses the elements properly among the buckets.  Iteration over
/// collection views requires time proportional to the "capacity" of the
/// <tt>HashMap</tt> instance (the number of buckets) plus its size (the number
/// of key-value mappings).  Thus, it's very important not to set the initial
/// capacity too high (or the load factor too low) if iteration performance is
/// important.
///
/// An instance of <tt>HashMap</tt> has two parameters that affect its
/// performance: <i>initial capacity</i> and <i>load factor</i>.  The
/// <i>capacity</i> is the number of buckets in the hash table, and the initial
/// capacity is simply the capacity at the time the hash table is created.  The
/// <i>load factor</i> is a measure of how full the hash table is allowed to
/// get before its capacity is automatically increased.  When the number of
/// entries in the hash table exceeds the product of the load factor and the
/// current capacity, the hash table is <i>rehashed</i> (that is, internal data
/// structures are rebuilt) so that the hash table has approximately twice the
/// number of buckets.
///
/// As a general rule, the default load factor (.75) offers a good
/// tradeoff between time and space costs.  Higher values decrease the
/// space overhead but increase the lookup cost (reflected in most of
/// the operations of the <tt>HashMap</tt> class, including
/// <tt>get</tt> and <tt>put</tt>).  The expected number of entries in
/// the map and its load factor should be taken into account when
/// setting its initial capacity, so as to minimize the number of
/// rehash operations.  If the initial capacity is greater than the
/// maximum number of entries divided by the load factor, no rehash
/// operations will ever occur.
///
/// If many mappings are to be stored in a <tt>HashMap</tt>
/// instance, creating it with a sufficiently large capacity will allow
/// the mappings to be stored more efficiently than letting it perform
/// automatic rehashing as needed to grow the table.  Note that using
/// many keys with the same {@code hashCode()} is a sure way to slow
/// down performance of any hash table. To ameliorate impact, when keys
/// are Comparable, this class may use comparison order among
/// keys to help break ties.
///
/// <strong>Note that this implementation is not synchronized.</strong>
/// If multiple threads access a hash map concurrently, and at least one of
/// the threads modifies the map structurally, it <i>must</i> be
/// synchronized externally.  (A structural modification is any operation
/// that adds or deletes one or more mappings; merely changing the value
/// associated with a key that an instance already contains is not a
/// structural modification.)  This is typically accomplished by
/// synchronizing on some object that naturally encapsulates the map.
///
/// If no such object exists, the map should be "wrapped" using the
/// Collections\#synchronizedMap Collections.synchronizedMap
/// method.  This is best done at creation time, to prevent accidental
/// unsynchronized access to the map:<pre>
///   Map m = Collections.synchronizedMap(new HashMap(...));</pre>
///
/// The iterators returned by all of this class's "collection view methods"
/// are <i>fail-fast</i>: if the map is structurally modified at any time after
/// the iterator is created, in any way except through the iterator's own
/// <tt>remove</tt> method, the iterator will throw a
/// ConcurrentModificationException.  Thus, in the face of concurrent
/// modification, the iterator fails quickly and cleanly, rather than risking
/// arbitrary, non-deterministic behavior at an undetermined time in the
/// future.
///
/// Note that the fail-fast behavior of an iterator cannot be guaranteed
/// as it is, generally speaking, impossible to make any hard guarantees in the
/// presence of unsynchronized concurrent modification.  Fail-fast iterators
/// throw <tt>ConcurrentModificationException</tt> on a best-effort basis.
/// Therefore, it would be wrong to write a program that depended on this
/// exception for its correctness: <i>the fail-fast behavior of iterators
/// should be used only to detect bugs.</i>
///
/// This class is a member of the
/// <a href="{@docRoot}openjdk-redirect.html?v=8&path=/technotes/guides/collections/index.html">
/// Java Collections Framework</a>.
///@param <K> the type of keys maintained by this map
///@param <V> the type of mapped values
///@author Doug Lea
///@author Josh Bloch
///@author Arthur van Hoff
///@author Neal Gafter
///@see Object\#hashCode()
///@see Collection
///@see Map
///@see TreeMap
///@see Hashtable
///@since 1.2
class HashMap<K extends jni.JObject, V extends jni.JObject>
    extends jni.JObject {
  late final jni.JObjType? _$type;
  @override
  jni.JObjType get $type => _$type ??= type($K, $V);

  final jni.JObjType<K> $K;
  final jni.JObjType<V> $V;

  HashMap.fromRef(
    this.$K,
    this.$V,
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _classRef = jniAccessors.getClassOf(r"java/util/HashMap");

  /// The type which includes information such as the signature of this class.
  static $HashMapType<K, V> type<K extends jni.JObject, V extends jni.JObject>(
    jni.JObjType<K> $K,
    jni.JObjType<V> $V,
  ) {
    return $HashMapType(
      $K,
      $V,
    );
  }

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"(IF)V");

  /// from: public void <init>(int initialCapacity, float loadFactor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an empty <tt>HashMap</tt> with the specified initial
  /// capacity and load factor.
  ///@param initialCapacity the initial capacity
  ///@param loadFactor the load factor
  ///@throws IllegalArgumentException if the initial capacity is negative
  ///         or the load factor is nonpositive
  HashMap(this.$K, this.$V, int initialCapacity, double loadFactor)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          jni.JValueInt(initialCapacity),
          jni.JValueFloat(loadFactor)
        ]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"(I)V");

  /// from: public void <init>(int initialCapacity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an empty <tt>HashMap</tt> with the specified initial
  /// capacity and the default load factor (0.75).
  ///@param initialCapacity the initial capacity.
  ///@throws IllegalArgumentException if the initial capacity is negative.
  HashMap.ctor1(this.$K, this.$V, int initialCapacity)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [jni.JValueInt(initialCapacity)]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an empty <tt>HashMap</tt> with the default initial capacity
  /// (16) and the default load factor (0.75).
  HashMap.ctor2(this.$K, this.$V)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, r"<init>", r"(Ljava/util/Map;)V");

  /// from: public void <init>(java.util.Map<? extends K,? extends V> m)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new <tt>HashMap</tt> with the same mappings as the
  /// specified <tt>Map</tt>.  The <tt>HashMap</tt> is created with
  /// default load factor (0.75) and an initial capacity sufficient to
  /// hold the mappings in the specified <tt>Map</tt>.
  ///@param m the map whose mappings are to be placed in this map
  ///@throws NullPointerException if the specified map is null
  HashMap.ctor3(this.$K, this.$V, jni.JObject m)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [m.reference]).object);

  static final _id_size =
      jniAccessors.getMethodIDOf(_classRef, r"size", r"()I");

  /// from: public int size()
  ///
  /// Returns the number of key-value mappings in this map.
  ///@return the number of key-value mappings in this map
  int size() => jniAccessors.callMethodWithArgs(
      reference, _id_size, jni.JniCallType.intType, []).integer;

  static final _id_isEmpty =
      jniAccessors.getMethodIDOf(_classRef, r"isEmpty", r"()Z");

  /// from: public boolean isEmpty()
  ///
  /// Returns <tt>true</tt> if this map contains no key-value mappings.
  ///@return <tt>true</tt> if this map contains no key-value mappings
  bool isEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmpty, jni.JniCallType.booleanType, []).boolean;

  static final _id_get0 = jniAccessors.getMethodIDOf(
      _classRef, r"get", r"(Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V get(java.lang.Object key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the value to which the specified key is mapped,
  /// or {@code null} if this map contains no mapping for the key.
  ///
  /// More formally, if this map contains a mapping from a key
  /// {@code k} to a value {@code v} such that {@code (key==null ? k==null :
  /// key.equals(k))}, then this method returns {@code v}; otherwise
  /// it returns {@code null}.  (There can be at most one such mapping.)
  ///
  /// A return value of {@code null} does not <i>necessarily</i>
  /// indicate that the map contains no mapping for the key; it's also
  /// possible that the map explicitly maps the key to {@code null}.
  /// The \#containsKey containsKey operation may be used to
  /// distinguish these two cases.
  ///@see \#put(Object, Object)
  V get0(jni.JObject key) => $V.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_get0, jni.JniCallType.objectType, [key.reference]).object);

  static final _id_containsKey = jniAccessors.getMethodIDOf(
      _classRef, r"containsKey", r"(Ljava/lang/Object;)Z");

  /// from: public boolean containsKey(java.lang.Object key)
  ///
  /// Returns <tt>true</tt> if this map contains a mapping for the
  /// specified key.
  ///@param key The key whose presence in this map is to be tested
  ///@return <tt>true</tt> if this map contains a mapping for the specified
  /// key.
  bool containsKey(jni.JObject key) => jniAccessors.callMethodWithArgs(
      reference,
      _id_containsKey,
      jni.JniCallType.booleanType,
      [key.reference]).boolean;

  static final _id_put = jniAccessors.getMethodIDOf(_classRef, r"put",
      r"(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V put(K key, V value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Associates the specified value with the specified key in this map.
  /// If the map previously contained a mapping for the key, the old
  /// value is replaced.
  ///@param key key with which the specified value is to be associated
  ///@param value value to be associated with the specified key
  ///@return the previous value associated with <tt>key</tt>, or
  ///         <tt>null</tt> if there was no mapping for <tt>key</tt>.
  ///         (A <tt>null</tt> return can also indicate that the map
  ///         previously associated <tt>null</tt> with <tt>key</tt>.)
  V put(K key, V value) => $V.fromRef(jniAccessors.callMethodWithArgs(
      reference,
      _id_put,
      jni.JniCallType.objectType,
      [key.reference, value.reference]).object);

  static final _id_putAll =
      jniAccessors.getMethodIDOf(_classRef, r"putAll", r"(Ljava/util/Map;)V");

  /// from: public void putAll(java.util.Map<? extends K,? extends V> m)
  ///
  /// Copies all of the mappings from the specified map to this map.
  /// These mappings will replace any mappings that this map had for
  /// any of the keys currently in the specified map.
  ///@param m mappings to be stored in this map
  ///@throws NullPointerException if the specified map is null
  void putAll(jni.JObject m) => jniAccessors.callMethodWithArgs(
      reference, _id_putAll, jni.JniCallType.voidType, [m.reference]).check();

  static final _id_remove = jniAccessors.getMethodIDOf(
      _classRef, r"remove", r"(Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V remove(java.lang.Object key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Removes the mapping for the specified key from this map if present.
  ///@param key key whose mapping is to be removed from the map
  ///@return the previous value associated with <tt>key</tt>, or
  ///         <tt>null</tt> if there was no mapping for <tt>key</tt>.
  ///         (A <tt>null</tt> return can also indicate that the map
  ///         previously associated <tt>null</tt> with <tt>key</tt>.)
  V remove(jni.JObject key) => $V.fromRef(jniAccessors.callMethodWithArgs(
      reference,
      _id_remove,
      jni.JniCallType.objectType,
      [key.reference]).object);

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, r"clear", r"()V");

  /// from: public void clear()
  ///
  /// Removes all of the mappings from this map.
  /// The map will be empty after this call returns.
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniCallType.voidType, []).check();

  static final _id_containsValue = jniAccessors.getMethodIDOf(
      _classRef, r"containsValue", r"(Ljava/lang/Object;)Z");

  /// from: public boolean containsValue(java.lang.Object value)
  ///
  /// Returns <tt>true</tt> if this map maps one or more keys to the
  /// specified value.
  ///@param value value whose presence in this map is to be tested
  ///@return <tt>true</tt> if this map maps one or more keys to the
  ///         specified value
  bool containsValue(jni.JObject value) => jniAccessors.callMethodWithArgs(
      reference,
      _id_containsValue,
      jni.JniCallType.booleanType,
      [value.reference]).boolean;

  static final _id_keySet =
      jniAccessors.getMethodIDOf(_classRef, r"keySet", r"()Ljava/util/Set;");

  /// from: public java.util.Set<K> keySet()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Set view of the keys contained in this map.
  /// The set is backed by the map, so changes to the map are
  /// reflected in the set, and vice-versa.  If the map is modified
  /// while an iteration over the set is in progress (except through
  /// the iterator's own <tt>remove</tt> operation), the results of
  /// the iteration are undefined.  The set supports element removal,
  /// which removes the corresponding mapping from the map, via the
  /// <tt>Iterator.remove</tt>, <tt>Set.remove</tt>,
  /// <tt>removeAll</tt>, <tt>retainAll</tt>, and <tt>clear</tt>
  /// operations.  It does not support the <tt>add</tt> or <tt>addAll</tt>
  /// operations.
  ///@return a set view of the keys contained in this map
  jni.JObject keySet() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_keySet, jni.JniCallType.objectType, []).object);

  static final _id_values = jniAccessors.getMethodIDOf(
      _classRef, r"values", r"()Ljava/util/Collection;");

  /// from: public java.util.Collection<V> values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Collection view of the values contained in this map.
  /// The collection is backed by the map, so changes to the map are
  /// reflected in the collection, and vice-versa.  If the map is
  /// modified while an iteration over the collection is in progress
  /// (except through the iterator's own <tt>remove</tt> operation),
  /// the results of the iteration are undefined.  The collection
  /// supports element removal, which removes the corresponding
  /// mapping from the map, via the <tt>Iterator.remove</tt>,
  /// <tt>Collection.remove</tt>, <tt>removeAll</tt>,
  /// <tt>retainAll</tt> and <tt>clear</tt> operations.  It does not
  /// support the <tt>add</tt> or <tt>addAll</tt> operations.
  ///@return a view of the values contained in this map
  jni.JObject values() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_values, jni.JniCallType.objectType, []).object);

  static final _id_entrySet =
      jniAccessors.getMethodIDOf(_classRef, r"entrySet", r"()Ljava/util/Set;");

  /// from: public java.util.Set<java.util.Map.Entry<K,V>> entrySet()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Set view of the mappings contained in this map.
  /// The set is backed by the map, so changes to the map are
  /// reflected in the set, and vice-versa.  If the map is modified
  /// while an iteration over the set is in progress (except through
  /// the iterator's own <tt>remove</tt> operation, or through the
  /// <tt>setValue</tt> operation on a map entry returned by the
  /// iterator) the results of the iteration are undefined.  The set
  /// supports element removal, which removes the corresponding
  /// mapping from the map, via the <tt>Iterator.remove</tt>,
  /// <tt>Set.remove</tt>, <tt>removeAll</tt>, <tt>retainAll</tt> and
  /// <tt>clear</tt> operations.  It does not support the
  /// <tt>add</tt> or <tt>addAll</tt> operations.
  ///@return a set view of the mappings contained in this map
  jni.JObject entrySet() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_entrySet, jni.JniCallType.objectType, []).object);

  static final _id_getOrDefault = jniAccessors.getMethodIDOf(
      _classRef,
      r"getOrDefault",
      r"(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V getOrDefault(java.lang.Object key, V defaultValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V getOrDefault(jni.JObject key, V defaultValue) =>
      $V.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getOrDefault,
          jni.JniCallType.objectType,
          [key.reference, defaultValue.reference]).object);

  static final _id_putIfAbsent = jniAccessors.getMethodIDOf(
      _classRef,
      r"putIfAbsent",
      r"(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V putIfAbsent(K key, V value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V putIfAbsent(K key, V value) => $V.fromRef(jniAccessors.callMethodWithArgs(
      reference,
      _id_putIfAbsent,
      jni.JniCallType.objectType,
      [key.reference, value.reference]).object);

  static final _id_remove1 = jniAccessors.getMethodIDOf(
      _classRef, r"remove", r"(Ljava/lang/Object;Ljava/lang/Object;)Z");

  /// from: public boolean remove(java.lang.Object key, java.lang.Object value)
  bool remove1(jni.JObject key, jni.JObject value) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_remove1,
          jni.JniCallType.booleanType,
          [key.reference, value.reference]).boolean;

  static final _id_replace = jniAccessors.getMethodIDOf(_classRef, r"replace",
      r"(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z");

  /// from: public boolean replace(K key, V oldValue, V newValue)
  bool replace(K key, V oldValue, V newValue) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_replace,
          jni.JniCallType.booleanType,
          [key.reference, oldValue.reference, newValue.reference]).boolean;

  static final _id_replace1 = jniAccessors.getMethodIDOf(_classRef, r"replace",
      r"(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public V replace(K key, V value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V replace1(K key, V value) => $V.fromRef(jniAccessors.callMethodWithArgs(
      reference,
      _id_replace1,
      jni.JniCallType.objectType,
      [key.reference, value.reference]).object);

  static final _id_computeIfAbsent = jniAccessors.getMethodIDOf(
      _classRef,
      r"computeIfAbsent",
      r"(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;");

  /// from: public V computeIfAbsent(K key, java.util.function.Function<? super K,? extends V> mappingFunction)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V computeIfAbsent(K key, jni.JObject mappingFunction) =>
      $V.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_computeIfAbsent,
          jni.JniCallType.objectType,
          [key.reference, mappingFunction.reference]).object);

  static final _id_computeIfPresent = jniAccessors.getMethodIDOf(
      _classRef,
      r"computeIfPresent",
      r"(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;");

  /// from: public V computeIfPresent(K key, java.util.function.BiFunction<? super K,? super V,? extends V> remappingFunction)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V computeIfPresent(K key, jni.JObject remappingFunction) =>
      $V.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_computeIfPresent,
          jni.JniCallType.objectType,
          [key.reference, remappingFunction.reference]).object);

  static final _id_compute = jniAccessors.getMethodIDOf(_classRef, r"compute",
      r"(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;");

  /// from: public V compute(K key, java.util.function.BiFunction<? super K,? super V,? extends V> remappingFunction)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V compute(K key, jni.JObject remappingFunction) =>
      $V.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_compute,
          jni.JniCallType.objectType,
          [key.reference, remappingFunction.reference]).object);

  static final _id_merge = jniAccessors.getMethodIDOf(_classRef, r"merge",
      r"(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;");

  /// from: public V merge(K key, V value, java.util.function.BiFunction<? super V,? super V,? extends V> remappingFunction)
  /// The returned object must be deleted after use, by calling the `delete` method.
  V merge(K key, V value, jni.JObject remappingFunction) =>
      $V.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_merge, jni.JniCallType.objectType, [
        key.reference,
        value.reference,
        remappingFunction.reference
      ]).object);

  static final _id_forEach = jniAccessors.getMethodIDOf(
      _classRef, r"forEach", r"(Ljava/util/function/BiConsumer;)V");

  /// from: public void forEach(java.util.function.BiConsumer<? super K,? super V> action)
  void forEach(jni.JObject action) => jniAccessors.callMethodWithArgs(reference,
      _id_forEach, jni.JniCallType.voidType, [action.reference]).check();

  static final _id_replaceAll = jniAccessors.getMethodIDOf(
      _classRef, r"replaceAll", r"(Ljava/util/function/BiFunction;)V");

  /// from: public void replaceAll(java.util.function.BiFunction<? super K,? super V,? extends V> function)
  void replaceAll(jni.JObject function) => jniAccessors.callMethodWithArgs(
      reference,
      _id_replaceAll,
      jni.JniCallType.voidType,
      [function.reference]).check();

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, r"clone", r"()Ljava/lang/Object;");

  /// from: public java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a shallow copy of this <tt>HashMap</tt> instance: the keys and
  /// values themselves are not cloned.
  ///@return a shallow copy of this map
  jni.JObject clone() =>
      const jni.JObjectType().fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniCallType.objectType, []).object);
}

class $HashMapType<K extends jni.JObject, V extends jni.JObject>
    extends jni.JObjType<HashMap<K, V>> {
  final jni.JObjType<K> $K;
  final jni.JObjType<V> $V;

  const $HashMapType(
    this.$K,
    this.$V,
  );

  @override
  String get signature => r"Ljava/util/HashMap;";

  @override
  HashMap<K, V> fromRef(jni.JObjectPtr ref) => HashMap.fromRef($K, $V, ref);
}
