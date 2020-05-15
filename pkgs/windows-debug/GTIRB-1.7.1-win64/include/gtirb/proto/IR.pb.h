// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: IR.proto

#ifndef PROTOBUF_INCLUDED_IR_2eproto
#define PROTOBUF_INCLUDED_IR_2eproto

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
#include <google/protobuf/map.h>  // IWYU pragma: export
#include <google/protobuf/map_entry.h>
#include <google/protobuf/map_field_inl.h>
#include <google/protobuf/unknown_field_set.h>
#include "AuxData.pb.h"
#include "CFG.pb.h"
#include "Module.pb.h"
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>
#define PROTOBUF_INTERNAL_EXPORT_IR_2eproto

// Internal implementation detail -- do not use these members.
struct TableStruct_IR_2eproto {
  static const ::google::protobuf::internal::ParseTableField entries[]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::ParseTable schema[2]
    PROTOBUF_SECTION_VARIABLE(protodesc_cold);
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors_IR_2eproto();
namespace gtirb {
namespace proto {
class IR;
class IRDefaultTypeInternal;
extern IRDefaultTypeInternal _IR_default_instance_;
class IR_AuxDataEntry_DoNotUse;
class IR_AuxDataEntry_DoNotUseDefaultTypeInternal;
extern IR_AuxDataEntry_DoNotUseDefaultTypeInternal _IR_AuxDataEntry_DoNotUse_default_instance_;
}  // namespace proto
}  // namespace gtirb
namespace google {
namespace protobuf {
template<> ::gtirb::proto::IR* Arena::CreateMaybeMessage<::gtirb::proto::IR>(Arena*);
template<> ::gtirb::proto::IR_AuxDataEntry_DoNotUse* Arena::CreateMaybeMessage<::gtirb::proto::IR_AuxDataEntry_DoNotUse>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace gtirb {
namespace proto {

// ===================================================================

class IR_AuxDataEntry_DoNotUse : public ::google::protobuf::internal::MapEntry<IR_AuxDataEntry_DoNotUse, 
    ::std::string, ::gtirb::proto::AuxData,
    ::google::protobuf::internal::WireFormatLite::TYPE_STRING,
    ::google::protobuf::internal::WireFormatLite::TYPE_MESSAGE,
    0 > {
public:
#if GOOGLE_PROTOBUF_ENABLE_EXPERIMENTAL_PARSER
static bool _ParseMap(const char* begin, const char* end, void* object, ::google::protobuf::internal::ParseContext* ctx);
#endif  // GOOGLE_PROTOBUF_ENABLE_EXPERIMENTAL_PARSER
  typedef ::google::protobuf::internal::MapEntry<IR_AuxDataEntry_DoNotUse, 
    ::std::string, ::gtirb::proto::AuxData,
    ::google::protobuf::internal::WireFormatLite::TYPE_STRING,
    ::google::protobuf::internal::WireFormatLite::TYPE_MESSAGE,
    0 > SuperType;
  IR_AuxDataEntry_DoNotUse();
  IR_AuxDataEntry_DoNotUse(::google::protobuf::Arena* arena);
  void MergeFrom(const IR_AuxDataEntry_DoNotUse& other);
  static const IR_AuxDataEntry_DoNotUse* internal_default_instance() { return reinterpret_cast<const IR_AuxDataEntry_DoNotUse*>(&_IR_AuxDataEntry_DoNotUse_default_instance_); }
  void MergeFrom(const ::google::protobuf::Message& other) final;
  ::google::protobuf::Metadata GetMetadata() const;
};

// -------------------------------------------------------------------

class IR final :
    public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:gtirb.proto.IR) */ {
 public:
  IR();
  virtual ~IR();

  IR(const IR& from);

  inline IR& operator=(const IR& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  IR(IR&& from) noexcept
    : IR() {
    *this = ::std::move(from);
  }

  inline IR& operator=(IR&& from) noexcept {
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
  static const IR& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const IR* internal_default_instance() {
    return reinterpret_cast<const IR*>(
               &_IR_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    1;

  void Swap(IR* other);
  friend void swap(IR& a, IR& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline IR* New() const final {
    return CreateMaybeMessage<IR>(nullptr);
  }

  IR* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<IR>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const IR& from);
  void MergeFrom(const IR& from);
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
  void InternalSwap(IR* other);
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

  // repeated .gtirb.proto.Module modules = 3;
  int modules_size() const;
  void clear_modules();
  static const int kModulesFieldNumber = 3;
  ::gtirb::proto::Module* mutable_modules(int index);
  ::google::protobuf::RepeatedPtrField< ::gtirb::proto::Module >*
      mutable_modules();
  const ::gtirb::proto::Module& modules(int index) const;
  ::gtirb::proto::Module* add_modules();
  const ::google::protobuf::RepeatedPtrField< ::gtirb::proto::Module >&
      modules() const;

  // map<string, .gtirb.proto.AuxData> aux_data = 5;
  int aux_data_size() const;
  void clear_aux_data();
  static const int kAuxDataFieldNumber = 5;
  const ::google::protobuf::Map< ::std::string, ::gtirb::proto::AuxData >&
      aux_data() const;
  ::google::protobuf::Map< ::std::string, ::gtirb::proto::AuxData >*
      mutable_aux_data();

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

  // .gtirb.proto.CFG cfg = 7;
  bool has_cfg() const;
  void clear_cfg();
  static const int kCfgFieldNumber = 7;
  const ::gtirb::proto::CFG& cfg() const;
  ::gtirb::proto::CFG* release_cfg();
  ::gtirb::proto::CFG* mutable_cfg();
  void set_allocated_cfg(::gtirb::proto::CFG* cfg);

  // uint32 version = 6;
  void clear_version();
  static const int kVersionFieldNumber = 6;
  ::google::protobuf::uint32 version() const;
  void set_version(::google::protobuf::uint32 value);

  // @@protoc_insertion_point(class_scope:gtirb.proto.IR)
 private:
  class HasBitSetters;

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::RepeatedPtrField< ::gtirb::proto::Module > modules_;
  ::google::protobuf::internal::MapField<
      IR_AuxDataEntry_DoNotUse,
      ::std::string, ::gtirb::proto::AuxData,
      ::google::protobuf::internal::WireFormatLite::TYPE_STRING,
      ::google::protobuf::internal::WireFormatLite::TYPE_MESSAGE,
      0 > aux_data_;
  ::google::protobuf::internal::ArenaStringPtr uuid_;
  ::gtirb::proto::CFG* cfg_;
  ::google::protobuf::uint32 version_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  friend struct ::TableStruct_IR_2eproto;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// -------------------------------------------------------------------

// IR

// bytes uuid = 1;
inline void IR::clear_uuid() {
  uuid_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& IR::uuid() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.IR.uuid)
  return uuid_.GetNoArena();
}
inline void IR::set_uuid(const ::std::string& value) {
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:gtirb.proto.IR.uuid)
}
#if LANG_CXX11
inline void IR::set_uuid(::std::string&& value) {
  
  uuid_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:gtirb.proto.IR.uuid)
}
#endif
inline void IR::set_uuid(const char* value) {
  GOOGLE_DCHECK(value != nullptr);
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:gtirb.proto.IR.uuid)
}
inline void IR::set_uuid(const void* value, size_t size) {
  
  uuid_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:gtirb.proto.IR.uuid)
}
inline ::std::string* IR::mutable_uuid() {
  
  // @@protoc_insertion_point(field_mutable:gtirb.proto.IR.uuid)
  return uuid_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* IR::release_uuid() {
  // @@protoc_insertion_point(field_release:gtirb.proto.IR.uuid)
  
  return uuid_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void IR::set_allocated_uuid(::std::string* uuid) {
  if (uuid != nullptr) {
    
  } else {
    
  }
  uuid_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), uuid);
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.IR.uuid)
}

// repeated .gtirb.proto.Module modules = 3;
inline int IR::modules_size() const {
  return modules_.size();
}
inline ::gtirb::proto::Module* IR::mutable_modules(int index) {
  // @@protoc_insertion_point(field_mutable:gtirb.proto.IR.modules)
  return modules_.Mutable(index);
}
inline ::google::protobuf::RepeatedPtrField< ::gtirb::proto::Module >*
IR::mutable_modules() {
  // @@protoc_insertion_point(field_mutable_list:gtirb.proto.IR.modules)
  return &modules_;
}
inline const ::gtirb::proto::Module& IR::modules(int index) const {
  // @@protoc_insertion_point(field_get:gtirb.proto.IR.modules)
  return modules_.Get(index);
}
inline ::gtirb::proto::Module* IR::add_modules() {
  // @@protoc_insertion_point(field_add:gtirb.proto.IR.modules)
  return modules_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::gtirb::proto::Module >&
IR::modules() const {
  // @@protoc_insertion_point(field_list:gtirb.proto.IR.modules)
  return modules_;
}

// map<string, .gtirb.proto.AuxData> aux_data = 5;
inline int IR::aux_data_size() const {
  return aux_data_.size();
}
inline const ::google::protobuf::Map< ::std::string, ::gtirb::proto::AuxData >&
IR::aux_data() const {
  // @@protoc_insertion_point(field_map:gtirb.proto.IR.aux_data)
  return aux_data_.GetMap();
}
inline ::google::protobuf::Map< ::std::string, ::gtirb::proto::AuxData >*
IR::mutable_aux_data() {
  // @@protoc_insertion_point(field_mutable_map:gtirb.proto.IR.aux_data)
  return aux_data_.MutableMap();
}

// uint32 version = 6;
inline void IR::clear_version() {
  version_ = 0u;
}
inline ::google::protobuf::uint32 IR::version() const {
  // @@protoc_insertion_point(field_get:gtirb.proto.IR.version)
  return version_;
}
inline void IR::set_version(::google::protobuf::uint32 value) {
  
  version_ = value;
  // @@protoc_insertion_point(field_set:gtirb.proto.IR.version)
}

// .gtirb.proto.CFG cfg = 7;
inline bool IR::has_cfg() const {
  return this != internal_default_instance() && cfg_ != nullptr;
}
inline const ::gtirb::proto::CFG& IR::cfg() const {
  const ::gtirb::proto::CFG* p = cfg_;
  // @@protoc_insertion_point(field_get:gtirb.proto.IR.cfg)
  return p != nullptr ? *p : *reinterpret_cast<const ::gtirb::proto::CFG*>(
      &::gtirb::proto::_CFG_default_instance_);
}
inline ::gtirb::proto::CFG* IR::release_cfg() {
  // @@protoc_insertion_point(field_release:gtirb.proto.IR.cfg)
  
  ::gtirb::proto::CFG* temp = cfg_;
  cfg_ = nullptr;
  return temp;
}
inline ::gtirb::proto::CFG* IR::mutable_cfg() {
  
  if (cfg_ == nullptr) {
    auto* p = CreateMaybeMessage<::gtirb::proto::CFG>(GetArenaNoVirtual());
    cfg_ = p;
  }
  // @@protoc_insertion_point(field_mutable:gtirb.proto.IR.cfg)
  return cfg_;
}
inline void IR::set_allocated_cfg(::gtirb::proto::CFG* cfg) {
  ::google::protobuf::Arena* message_arena = GetArenaNoVirtual();
  if (message_arena == nullptr) {
    delete reinterpret_cast< ::google::protobuf::MessageLite*>(cfg_);
  }
  if (cfg) {
    ::google::protobuf::Arena* submessage_arena = nullptr;
    if (message_arena != submessage_arena) {
      cfg = ::google::protobuf::internal::GetOwnedMessage(
          message_arena, cfg, submessage_arena);
    }
    
  } else {
    
  }
  cfg_ = cfg;
  // @@protoc_insertion_point(field_set_allocated:gtirb.proto.IR.cfg)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)

}  // namespace proto
}  // namespace gtirb

// @@protoc_insertion_point(global_scope)

#include <google/protobuf/port_undef.inc>
#endif  // PROTOBUF_INCLUDED_IR_2eproto
