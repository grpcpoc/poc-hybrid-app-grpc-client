//
//  Generated code. Do not modify.
//  source: proto/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $1;

class UserAddress extends $pb.GeneratedMessage {
  factory UserAddress({
    $core.String? country,
    $core.String? city,
    $core.String? state,
    $core.String? address,
    $core.String? postalCode,
  }) {
    final $result = create();
    if (country != null) {
      $result.country = country;
    }
    if (city != null) {
      $result.city = city;
    }
    if (state != null) {
      $result.state = state;
    }
    if (address != null) {
      $result.address = address;
    }
    if (postalCode != null) {
      $result.postalCode = postalCode;
    }
    return $result;
  }
  UserAddress._() : super();
  factory UserAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'country')
    ..aOS(2, _omitFieldNames ? '' : 'city')
    ..aOS(3, _omitFieldNames ? '' : 'state')
    ..aOS(4, _omitFieldNames ? '' : 'address')
    ..aOS(5, _omitFieldNames ? '' : 'postalCode', protoName: 'postalCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAddress clone() => UserAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAddress copyWith(void Function(UserAddress) updates) => super.copyWith((message) => updates(message as UserAddress)) as UserAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAddress create() => UserAddress._();
  UserAddress createEmptyInstance() => create();
  static $pb.PbList<UserAddress> createRepeated() => $pb.PbList<UserAddress>();
  @$core.pragma('dart2js:noInline')
  static UserAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAddress>(create);
  static UserAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get postalCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set postalCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPostalCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostalCode() => clearField(5);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? username,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? phone,
    $1.Timestamp? birthDate,
    UserAddress? address,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (birthDate != null) {
      $result.birthDate = birthDate;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(5, _omitFieldNames ? '' : 'phone')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'birthDate', protoName: 'birthDate', subBuilder: $1.Timestamp.create)
    ..aOM<UserAddress>(7, _omitFieldNames ? '' : 'address', subBuilder: UserAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get birthDate => $_getN(5);
  @$pb.TagNumber(6)
  set birthDate($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBirthDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearBirthDate() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureBirthDate() => $_ensure(5);

  @$pb.TagNumber(7)
  UserAddress get address => $_getN(6);
  @$pb.TagNumber(7)
  set address(UserAddress v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddress() => clearField(7);
  @$pb.TagNumber(7)
  UserAddress ensureAddress() => $_ensure(6);
}

class CreatedUser extends $pb.GeneratedMessage {
  factory CreatedUser({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? phone,
    $1.Timestamp? birthDate,
    $core.String? country,
    $core.String? city,
    $core.String? state,
    $core.String? address,
    $core.String? postalCode,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (birthDate != null) {
      $result.birthDate = birthDate;
    }
    if (country != null) {
      $result.country = country;
    }
    if (city != null) {
      $result.city = city;
    }
    if (state != null) {
      $result.state = state;
    }
    if (address != null) {
      $result.address = address;
    }
    if (postalCode != null) {
      $result.postalCode = postalCode;
    }
    return $result;
  }
  CreatedUser._() : super();
  factory CreatedUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatedUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatedUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(4, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..aOS(6, _omitFieldNames ? '' : 'phone')
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'birthDate', protoName: 'birthDate', subBuilder: $1.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'country')
    ..aOS(9, _omitFieldNames ? '' : 'city')
    ..aOS(10, _omitFieldNames ? '' : 'state')
    ..aOS(11, _omitFieldNames ? '' : 'address')
    ..aOS(12, _omitFieldNames ? '' : 'postalCode', protoName: 'postalCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatedUser clone() => CreatedUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatedUser copyWith(void Function(CreatedUser) updates) => super.copyWith((message) => updates(message as CreatedUser)) as CreatedUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatedUser create() => CreatedUser._();
  CreatedUser createEmptyInstance() => create();
  static $pb.PbList<CreatedUser> createRepeated() => $pb.PbList<CreatedUser>();
  @$core.pragma('dart2js:noInline')
  static CreatedUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatedUser>(create);
  static CreatedUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get phone => $_getSZ(5);
  @$pb.TagNumber(6)
  set phone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhone() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhone() => clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get birthDate => $_getN(6);
  @$pb.TagNumber(7)
  set birthDate($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBirthDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearBirthDate() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureBirthDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get country => $_getSZ(7);
  @$pb.TagNumber(8)
  set country($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCountry() => $_has(7);
  @$pb.TagNumber(8)
  void clearCountry() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get city => $_getSZ(8);
  @$pb.TagNumber(9)
  set city($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCity() => $_has(8);
  @$pb.TagNumber(9)
  void clearCity() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get state => $_getSZ(9);
  @$pb.TagNumber(10)
  set state($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasState() => $_has(9);
  @$pb.TagNumber(10)
  void clearState() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get address => $_getSZ(10);
  @$pb.TagNumber(11)
  set address($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddress() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get postalCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set postalCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPostalCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearPostalCode() => clearField(12);
}

class UserBulkLoadRequest extends $pb.GeneratedMessage {
  factory UserBulkLoadRequest({
    $core.Iterable<User>? users,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    return $result;
  }
  UserBulkLoadRequest._() : super();
  factory UserBulkLoadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBulkLoadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserBulkLoadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..pc<User>(1, _omitFieldNames ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBulkLoadRequest clone() => UserBulkLoadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBulkLoadRequest copyWith(void Function(UserBulkLoadRequest) updates) => super.copyWith((message) => updates(message as UserBulkLoadRequest)) as UserBulkLoadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserBulkLoadRequest create() => UserBulkLoadRequest._();
  UserBulkLoadRequest createEmptyInstance() => create();
  static $pb.PbList<UserBulkLoadRequest> createRepeated() => $pb.PbList<UserBulkLoadRequest>();
  @$core.pragma('dart2js:noInline')
  static UserBulkLoadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBulkLoadRequest>(create);
  static UserBulkLoadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);
}

class UserBulkLoadResponse extends $pb.GeneratedMessage {
  factory UserBulkLoadResponse({
    $core.Iterable<CreatedUser>? createdUsers,
  }) {
    final $result = create();
    if (createdUsers != null) {
      $result.createdUsers.addAll(createdUsers);
    }
    return $result;
  }
  UserBulkLoadResponse._() : super();
  factory UserBulkLoadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBulkLoadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserBulkLoadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..pc<CreatedUser>(1, _omitFieldNames ? '' : 'createdUsers', $pb.PbFieldType.PM, protoName: 'createdUsers', subBuilder: CreatedUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBulkLoadResponse clone() => UserBulkLoadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBulkLoadResponse copyWith(void Function(UserBulkLoadResponse) updates) => super.copyWith((message) => updates(message as UserBulkLoadResponse)) as UserBulkLoadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserBulkLoadResponse create() => UserBulkLoadResponse._();
  UserBulkLoadResponse createEmptyInstance() => create();
  static $pb.PbList<UserBulkLoadResponse> createRepeated() => $pb.PbList<UserBulkLoadResponse>();
  @$core.pragma('dart2js:noInline')
  static UserBulkLoadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBulkLoadResponse>(create);
  static UserBulkLoadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CreatedUser> get createdUsers => $_getList(0);
}

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();
  EmptyRequest._() : super();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.drathveloper.grpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
