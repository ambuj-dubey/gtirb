// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Offset.proto

#ifndef PROTOBUF_INCLUDED_Offset_2eproto
#define PROTOBUF_INCLUDED_Offset_2eproto

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
#define PROTOBUF_INTERNAL_EXPORT_Offset_2eproto

// Internal implementation detail -- do not use these members.
struct TableStruct_Offset_2eproto {
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
void AddDescriptors_Offset_2eproto();
namespace gtirb {
namespace proto {
class Offset;
class OffsetDefaultTypeInternal;
extern OffsetDefaultTypeInternal _Offset_default_instance_;
}  // namespace proto
}  // namespace gtirb
namespace google {
namespace protobuf {
template<> ::gtirb::proto::Offset* Arena::CreateMaybeMessage<::gtirb::proto::Offset>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace gtirb {
namespace proto {

// ===================================================================

class Offset final :
    public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:gtirb.proto.Offset) */ {
 public:
  Offset();
  virtual ~Offset();

  Offset(const Offset& from);

  inline Offset& operator=(const Offset& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  Offset(Offset&& from) noexcept
    : Offset() {
    *this = ::std::move(from);
  }

  inline Offset& operator=(Offset&& from) noexcept {
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
  static const Offset& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const Offset* internal_default_instance() {
    return reinterpret_cast<const Offset*>(
               &_Offset_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(Offset* other);
  friend void swap(Offset& a, Offset& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline Offset* New() const final {
    return CreateMaybeMessage<Offset>(nullptr);
  }

  Offset* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<Offset>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const Offset& from);
  void MergeFrom(const Offset& from);
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
  void InternalSwap(Offset* other);
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

  // bytes element_id = 1;
  void clear_element_id();
  static const int kElementIdFieldNumber = 1;
  const ::std::string& element_id() const;
  void set_element_id(const ::std::string& value);
  #if LANG_CXX11
  void set_element_id(::std::string&& value);
  #endif
  void set_element_id(const char* value);
  void set_element_id(const void* value, size_t size);
  ::std::string* mutable_element_id();
  ::std::string* release_element_id();
  void set_allocated_element_id(::std::string* element_id);

  // uint64 displacement = 2;
  void clear_displacement();
  static const int kDisplacementFieldNumber = 2;
  ::google::protobuf::uint64 displacement() const;
  void set_displacement(::google::protobuf::uint64 value);

  // @@protoc_insertion_point(class_scope:gtirb.proto.Offset)
 private:
  class HasBitSetters;

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr element_id_;
  ::google::protobuf::uint64 displacement_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::TableStruct_Offset_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// Offset

// bytes element_id = 1;
inline void Offset::clear_element_id() {
  element_id_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& Offset::element_id() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Offset.element_id)
  return element_id_.GetNoArena();
}
inline void Offset::set_element_id(const ::std::string& value) {
  
  element_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:gtirb.proto.Offset.element_id)
}
#if LANG_CXX11
inline void Offset::set_element_id(::std::string&& value) {
  
  element_id_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:gtirb.proto.Offset.element_id)
}
#endif
inline void Offset::set_element_id(const char* value) {
  GOOGLE_DCHECK(value != nullptr);
  
  element_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:gtirb.proto.Offset.element_id)
}
inline void Offset::set_element_id(const void* value, size_t size) {
  
  element_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:gtirb.proto.Offset.element_id)
}
inline ::std::string* Offset::mutable_element_id() {
  
  // @@protoc_insertion_point(field_mutable:gtirb.proto.Offset.element_id)
  return element_id_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* Offset::release_element_id() {
  // @@protoc_insertion_point(field_release:gtirb.proto.Offset.element_id)
  
  return element_id_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void Offset::set_allocated_element_id(::std::string* element_id) {
  if (element_id != nullptr) {
    
  } else {
    
  }
  element_id_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), element_id);
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.Offset.element_id)
}

// uint64 displacement = 2;
inline void Offset::clear_displacement() {
  displacement_ = PROTOBUF_ULONGLONG(0);
}
inline ::google::protobuf::uint64 Offset::displacement() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.Offset.displacement)
  return displacement_;
}
inline void Offset::set_displacement(::google::protobuf::uint64 value) {
  
  displacement_ = value;
  // @@protoc_insertion_point(field_set:gtirb.proto.Offset.displacement)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace gtirb

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // PROTOBUF_INCLUDED_Offset_2eproto
