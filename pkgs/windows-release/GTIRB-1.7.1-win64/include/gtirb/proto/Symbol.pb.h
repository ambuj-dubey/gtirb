// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Symbol.proto

#ifndef PROTOBUF_INCLUDED_Symbol_2eproto
#define PROTOBUF_INCLUDED_Symbol_2eproto

#include <limits>
#include <string>

#include <google/protobuf/port_def.inc>
#if PROTOBUF_VERSION < 3007000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers. Please update
#error your headers.
#endif
#if 3007000 < PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers. Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/port_undef.inc>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/inlined_string_field.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
#define PROTOBUF_INTERNAL_EXPORT_Symbol_2eproto

// Internal implementation detail -- do not use these members.
struct TableStruct_Symbol_2eproto {
  static const ::google::protobuf::internal::ParseTableField entries[]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::ParseTable schema[1]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors_Symbol_2eproto();
namespace gtirb {
namespace proto {
class Symbol;
class SymbolDefaultTypeInternal;
extern SymbolDefaultTypeInternal _Symbol_default_instance_;
}  // namespace proto
}  // namespace gtirb
namespace google {
namespace protobuf {
template<> ::gtirb::proto::Symbol* Arena::CreateMaybeMessage<::gtirb::proto::Symbol>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace gtirb {
namespace proto {

// ===================================================================

class Symbol final :
    public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:gtirb.proto.Symbol) */ {
 public:
  Symbol();
  virtual ~Symbol();

  Symbol(const Symbol& from);

  inline Symbol& operator=(const Symbol& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  Symbol(Symbol&& from) noexcept
    : Symbol() {
    *this = ::std::move(from);
  }

  inline Symbol& operator=(Symbol&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor() {
    return default_instance().GetDescriptor();
  }
  static const Symbol& default_instance();

  enum OptionalPayloadCase {
    kValue = 2,
    kReferentUuid = 5,
    OPTIONAL_PAYLOAD_NOT_SET = 0,
  };

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const Symbol* internal_default_instance() {
    return reinterpret_cast<const Symbol*>(
               &_Symbol_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(Symbol* other);
  friend void swap(Symbol& a, Symbol& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline Symbol* New() const final {
    return CreateMaybeMessage<Symbol>(nullptr);
  }

  Symbol* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<Symbol>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const Symbol& from);
  void MergeFrom(const Symbol& from);
  PROTOBUF_ATTRIBUTE_REINITIALIZES void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  #if GOOGLE_PROTOBUF_ENABLE_EXPERIMENTAL_PARSER
  static const char* _InternalParse(const char* begin, const char* end, void* object, ::google::protobuf::internal::ParseContext* ctx);
  ::google::protobuf::internal::ParseFunc _ParseFunc() const final { return _InternalParse; }
  #else
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) final;
  #endif  // GOOGLE_PROTOBUF_ENABLE_EXPERIMENTAL_PARSER
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const final;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      ::google::protobuf::uint8* target) const final;
  int GetCachedSize() const final { return _cached_size_.Get(); }

  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(Symbol* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return nullptr;
  }
  inline void* MaybeArenaPtr() const {
    return nullptr;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // bytes uuid = 1;
  void clear_uuid();
  static const int kUuidFieldNumber = 1;
  const ::std::string& uuid() const;
  void set_uuid(const ::std::string& value);
  #if LANG_CXX11
  void set_uuid(::std::string&& value);
  #endif
  void set_uuid(const char* value);
  void set_uuid(const void* value, size_t size);
  ::std::string* mutable_uuid();
  ::std::string* release_uuid();
  void set_allocated_uuid(::std::string* uuid);

  // string name = 3;
  void clear_name();
  static const int kNameFieldNumber = 3;
  const ::std::string& name() const;
  void set_name(const ::std::string& value);
  #if LANG_CXX11
  void set_name(::std::string&& value);
  #endif
  void set_name(const char* value);
  void set_name(const char* value, size_t size);
  ::std::string* mutable_name();
  ::std::string* release_name();
  void set_allocated_name(::std::string* name);

  // bool at_end = 6;
  void clear_at_end();
  static const int kAtEndFieldNumber = 6;
  bool at_end() const;
  void set_at_end(bool value);

  // uint64 value = 2;
  private:
  bool has_value() const;
  public:
  void clear_value();
  static const int kValueFieldNumber = 2;
  ::google::protobuf::uint64 value() const;
  void set_value(::google::protobuf::uint64 value);

  // bytes referent_uuid = 5;
  private:
  bool has_referent_uuid() const;
  public:
  void clear_referent_uuid();
  static const int kReferentUuidFieldNumber = 5;
  const ::std::string& referent_uuid() const;
  void set_referent_uuid(const ::std::string& value);
  #if LANG_CXX11
  void set_referent_uuid(::std::string&& value);
  #endif
  void set_referent_uuid(const char* value);
  void set_referent_uuid(const void* value, size_t size);
  ::std::string* mutable_referent_uuid();
  ::std::string* release_referent_uuid();
  void set_allocated_referent_uuid(::std::string* referent_uuid);

  void clear_optional_payload();
  OptionalPayloadCase optional_payload_case() const;
  // @@protoc_insertion_point(class_scope:gtirb.proto.Symbol)
 private:
  class HasBitSetters;
  void set_has_value();
  void set_has_referent_uuid();

  inline bool has_optional_payload() const;
  inline void clear_has_optional_payload();

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr uuid_;
  ::google::protobuf::internal::ArenaStringPtr name_;
  bool at_end_;
  union OptionalPayloadUnion {
    OptionalPayloadUnion() {}
    ::google::protobuf::uint64 value_;
    ::google::protobuf::internal::ArenaStringPtr referent_uuid_;
  } optional_payload_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  ::google::protobuf::uint32 _oneof_case_[1];

  friend struct ::TableStruct_Symbol_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// Symbol

// bytes uuid = 1;
inline void Symbol::clear_uuid() {
  uuid_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& Symbol::uuid() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Symbol.uuid)
  return uuid_.GetNoArena();
}
inline void Symbol::set_uuid(const ::std::string& value) {
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.uuid)
}
#if LANG_CXX11
inline void Symbol::set_uuid(::std::string&& value) {
  
  uuid_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:gtirb.proto.Symbol.uuid)
}
#endif
inline void Symbol::set_uuid(const char* value) {
  GOOGLE_DCHECK(value != nullptr);
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:gtirb.proto.Symbol.uuid)
}
inline void Symbol::set_uuid(const void* value, size_t size) {
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:gtirb.proto.Symbol.uuid)
}
inline ::std::string* Symbol::mutable_uuid() {
  
  // @@protoc_insertion_point(field_mutable:gtirb.proto.Symbol.uuid)
  return uuid_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* Symbol::release_uuid() {
  // @@protoc_insertion_point(field_release:gtirb.proto.Symbol.uuid)
  
  return uuid_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void Symbol::set_allocated_uuid(::std::string* uuid) {
  if (uuid != nullptr) {
    
  } else {
    
  }
  uuid_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), uuid);
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.Symbol.uuid)
}

// uint64 value = 2;
inline bool Symbol::has_value() const {
  return optional_payload_case() == kValue;
}
inline void Symbol::set_has_value() {
  _oneof_case_[0] = kValue;
}
inline void Symbol::clear_value() {
  if (has_value()) {
    optional_payload_.value_ = PROTOBUF_ULONGLONG(0);
    clear_has_optional_payload();
  }
}
inline ::google::protobuf::uint64 Symbol::value() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Symbol.value)
  if (has_value()) {
    return optional_payload_.value_;
  }
  return PROTOBUF_ULONGLONG(0);
}
inline void Symbol::set_value(::google::protobuf::uint64 value) {
  if (!has_value()) {
    clear_optional_payload();
    set_has_value();
  }
  optional_payload_.value_ = value;
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.value)
}

// bytes referent_uuid = 5;
inline bool Symbol::has_referent_uuid() const {
  return optional_payload_case() == kReferentUuid;
}
inline void Symbol::set_has_referent_uuid() {
  _oneof_case_[0] = kReferentUuid;
}
inline void Symbol::clear_referent_uuid() {
  if (has_referent_uuid()) {
    optional_payload_.referent_uuid_.DestroyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    clear_has_optional_payload();
  }
}
inline const ::std::string& Symbol::referent_uuid() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Symbol.referent_uuid)
  if (has_referent_uuid()) {
    return optional_payload_.referent_uuid_.GetNoArena();
  }
  return *&::google::protobuf::internal::GetEmptyStringAlreadyInited();
}
inline void Symbol::set_referent_uuid(const ::std::string& value) {
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.referent_uuid)
  if (!has_referent_uuid()) {
    clear_optional_payload();
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  optional_payload_.referent_uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.referent_uuid)
}
#if LANG_CXX11
inline void Symbol::set_referent_uuid(::std::string&& value) {
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.referent_uuid)
  if (!has_referent_uuid()) {
    clear_optional_payload();
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  optional_payload_.referent_uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:gtirb.proto.Symbol.referent_uuid)
}
#endif
inline void Symbol::set_referent_uuid(const char* value) {
  GOOGLE_DCHECK(value != nullptr);
  if (!has_referent_uuid()) {
    clear_optional_payload();
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  optional_payload_.referent_uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(value));
  // @@protoc_insertion_point(field_set_char:gtirb.proto.Symbol.referent_uuid)
}
inline void Symbol::set_referent_uuid(const void* value, size_t size) {
  if (!has_referent_uuid()) {
    clear_optional_payload();
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  optional_payload_.referent_uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(
      reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:gtirb.proto.Symbol.referent_uuid)
}
inline ::std::string* Symbol::mutable_referent_uuid() {
  if (!has_referent_uuid()) {
    clear_optional_payload();
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_mutable:gtirb.proto.Symbol.referent_uuid)
  return optional_payload_.referent_uuid_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* Symbol::release_referent_uuid() {
  // @@protoc_insertion_point(field_release:gtirb.proto.Symbol.referent_uuid)
  if (has_referent_uuid()) {
    clear_has_optional_payload();
    return optional_payload_.referent_uuid_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  } else {
    return nullptr;
  }
}
inline void Symbol::set_allocated_referent_uuid(::std::string* referent_uuid) {
  if (has_optional_payload()) {
    clear_optional_payload();
  }
  if (referent_uuid != nullptr) {
    set_has_referent_uuid();
    optional_payload_.referent_uuid_.UnsafeSetDefault(referent_uuid);
  }
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.Symbol.referent_uuid)
}

// string name = 3;
inline void Symbol::clear_name() {
  name_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& Symbol::name() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Symbol.name)
  return name_.GetNoArena();
}
inline void Symbol::set_name(const ::std::string& value) {
  
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.name)
}
#if LANG_CXX11
inline void Symbol::set_name(::std::string&& value) {
  
  name_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:gtirb.proto.Symbol.name)
}
#endif
inline void Symbol::set_name(const char* value) {
  GOOGLE_DCHECK(value != nullptr);
  
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:gtirb.proto.Symbol.name)
}
inline void Symbol::set_name(const char* value, size_t size) {
  
  name_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:gtirb.proto.Symbol.name)
}
inline ::std::string* Symbol::mutable_name() {
  
  // @@protoc_insertion_point(field_mutable:gtirb.proto.Symbol.name)
  return name_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* Symbol::release_name() {
  // @@protoc_insertion_point(field_release:gtirb.proto.Symbol.name)
  
  return name_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void Symbol::set_allocated_name(::std::string* name) {
  if (name != nullptr) {
    
  } else {
    
  }
  name_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), name);
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.Symbol.name)
}

// bool at_end = 6;
inline void Symbol::clear_at_end() {
  at_end_ = false;
}
inline bool Symbol::at_end() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Symbol.at_end)
  return at_end_;
}
inline void Symbol::set_at_end(bool value) {
  
  at_end_ = value;
  // @@protoc_insertion_point(field_set:gtirb.proto.Symbol.at_end)
}

inline bool Symbol::has_optional_payload() const {
  return optional_payload_case() != OPTIONAL_PAYLOAD_NOT_SET;
}
inline void Symbol::clear_has_optional_payload() {
  _oneof_case_[0] = OPTIONAL_PAYLOAD_NOT_SET;
}
inline Symbol::OptionalPayloadCase Symbol::optional_payload_case() const {
  return Symbol::OptionalPayloadCase(_oneof_case_[0]);
}
#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace gtirb

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // PROTOBUF_INCLUDED_Symbol_2eproto
