// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/decision_trees/proto/generic_tree_model_extensions.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Messages in this file are not part of the basic standard established by
// generic_tree_model.proto (see the toplevel comment in that file).

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

/// Used in generic_tree_model.BinaryNode.left_child_test.
/// Tests whether the feature's value belongs to the specified list,
/// (or does not belong if inverse=True).
public struct Tensorflow_DecisionTrees_MatchingValuesTest: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".MatchingValuesTest"

  /// When the feature is missing, the test's outcome is undefined.
  public var featureID: Tensorflow_DecisionTrees_FeatureId {
    get {return _storage._featureID ?? Tensorflow_DecisionTrees_FeatureId()}
    set {_uniqueStorage()._featureID = newValue}
  }
  /// Returns true if `featureID` has been explicitly set.
  public var hasFeatureID: Bool {return _storage._featureID != nil}
  /// Clears the value of `featureID`. Subsequent reads from it will return its default value.
  public mutating func clearFeatureID() {_storage._featureID = nil}

  public var value: [Tensorflow_DecisionTrees_Value] {
    get {return _storage._value}
    set {_uniqueStorage()._value = newValue}
  }

  public var inverse: Bool {
    get {return _storage._inverse}
    set {_uniqueStorage()._inverse = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._featureID)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._value)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._inverse)
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
      if let v = _storage._featureID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._value.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._value, fieldNumber: 2)
      }
      if _storage._inverse != false {
        try visitor.visitSingularBoolField(value: _storage._inverse, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.decision_trees"

extension Tensorflow_DecisionTrees_MatchingValuesTest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "feature_id"),
    2: .same(proto: "value"),
    3: .same(proto: "inverse"),
  ]

  fileprivate class _StorageClass {
    var _featureID: Tensorflow_DecisionTrees_FeatureId? = nil
    var _value: [Tensorflow_DecisionTrees_Value] = []
    var _inverse: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _featureID = source._featureID
      _value = source._value
      _inverse = source._inverse
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_DecisionTrees_MatchingValuesTest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._featureID != other_storage._featureID {return false}
        if _storage._value != other_storage._value {return false}
        if _storage._inverse != other_storage._inverse {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
