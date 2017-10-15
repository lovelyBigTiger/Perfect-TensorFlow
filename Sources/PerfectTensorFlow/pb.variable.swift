// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/variable.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Protocol buffer representing a Variable.
public struct Tensorflow_VariableDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".VariableDef"

  /// Name of the variable tensor.
  public var variableName: String {
    get {return _storage._variableName}
    set {_uniqueStorage()._variableName = newValue}
  }

  /// Name of the initializer op.
  public var initializerName: String {
    get {return _storage._initializerName}
    set {_uniqueStorage()._initializerName = newValue}
  }

  /// Name of the snapshot tensor.
  public var snapshotName: String {
    get {return _storage._snapshotName}
    set {_uniqueStorage()._snapshotName = newValue}
  }

  /// Support for saving variables as slices of a larger variable.
  public var saveSliceInfoDef: Tensorflow_SaveSliceInfoDef {
    get {return _storage._saveSliceInfoDef ?? Tensorflow_SaveSliceInfoDef()}
    set {_uniqueStorage()._saveSliceInfoDef = newValue}
  }
  /// Returns true if `saveSliceInfoDef` has been explicitly set.
  public var hasSaveSliceInfoDef: Bool {return _storage._saveSliceInfoDef != nil}
  /// Clears the value of `saveSliceInfoDef`. Subsequent reads from it will return its default value.
  public mutating func clearSaveSliceInfoDef() {_storage._saveSliceInfoDef = nil}

  /// Whether to represent this as a ResourceVariable.
  public var isResource: Bool {
    get {return _storage._isResource}
    set {_uniqueStorage()._isResource = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._variableName)
        case 2: try decoder.decodeSingularStringField(value: &_storage._initializerName)
        case 3: try decoder.decodeSingularStringField(value: &_storage._snapshotName)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._saveSliceInfoDef)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._isResource)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._variableName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._variableName, fieldNumber: 1)
      }
      if !_storage._initializerName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._initializerName, fieldNumber: 2)
      }
      if !_storage._snapshotName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._snapshotName, fieldNumber: 3)
      }
      if let v = _storage._saveSliceInfoDef {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._isResource != false {
        try visitor.visitSingularBoolField(value: _storage._isResource, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_SaveSliceInfoDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SaveSliceInfoDef"

  /// Name of the full variable of which this is a slice.
  public var fullName: String = String()

  /// Shape of the full variable.
  public var fullShape: [Int64] = []

  /// Offset of this variable into the full variable.
  public var varOffset: [Int64] = []

  /// Shape of this variable.
  public var varShape: [Int64] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.fullName)
      case 2: try decoder.decodeRepeatedInt64Field(value: &self.fullShape)
      case 3: try decoder.decodeRepeatedInt64Field(value: &self.varOffset)
      case 4: try decoder.decodeRepeatedInt64Field(value: &self.varShape)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fullName.isEmpty {
      try visitor.visitSingularStringField(value: self.fullName, fieldNumber: 1)
    }
    if !self.fullShape.isEmpty {
      try visitor.visitPackedInt64Field(value: self.fullShape, fieldNumber: 2)
    }
    if !self.varOffset.isEmpty {
      try visitor.visitPackedInt64Field(value: self.varOffset, fieldNumber: 3)
    }
    if !self.varShape.isEmpty {
      try visitor.visitPackedInt64Field(value: self.varShape, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_VariableDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "variable_name"),
    2: .standard(proto: "initializer_name"),
    3: .standard(proto: "snapshot_name"),
    4: .standard(proto: "save_slice_info_def"),
    5: .standard(proto: "is_resource"),
  ]

  fileprivate class _StorageClass {
    var _variableName: String = String()
    var _initializerName: String = String()
    var _snapshotName: String = String()
    var _saveSliceInfoDef: Tensorflow_SaveSliceInfoDef? = nil
    var _isResource: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _variableName = source._variableName
      _initializerName = source._initializerName
      _snapshotName = source._snapshotName
      _saveSliceInfoDef = source._saveSliceInfoDef
      _isResource = source._isResource
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_VariableDef) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._variableName != other_storage._variableName {return false}
        if _storage._initializerName != other_storage._initializerName {return false}
        if _storage._snapshotName != other_storage._snapshotName {return false}
        if _storage._saveSliceInfoDef != other_storage._saveSliceInfoDef {return false}
        if _storage._isResource != other_storage._isResource {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_SaveSliceInfoDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "full_name"),
    2: .standard(proto: "full_shape"),
    3: .standard(proto: "var_offset"),
    4: .standard(proto: "var_shape"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SaveSliceInfoDef) -> Bool {
    if self.fullName != other.fullName {return false}
    if self.fullShape != other.fullShape {return false}
    if self.varOffset != other.varOffset {return false}
    if self.varShape != other.varShape {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
