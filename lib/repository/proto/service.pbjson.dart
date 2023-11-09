//
//  Generated code. Do not modify.
//  source: proto/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userAddressDescriptor instead')
const UserAddress$json = {
  '1': 'UserAddress',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    {'1': 'city', '3': 2, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 3, '4': 1, '5': 9, '10': 'state'},
    {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    {'1': 'postalCode', '3': 5, '4': 1, '5': 9, '10': 'postalCode'},
  ],
};

/// Descriptor for `UserAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAddressDescriptor = $convert.base64Decode(
    'CgtVc2VyQWRkcmVzcxIYCgdjb3VudHJ5GAEgASgJUgdjb3VudHJ5EhIKBGNpdHkYAiABKAlSBG'
    'NpdHkSFAoFc3RhdGUYAyABKAlSBXN0YXRlEhgKB2FkZHJlc3MYBCABKAlSB2FkZHJlc3MSHgoK'
    'cG9zdGFsQ29kZRgFIAEoCVIKcG9zdGFsQ29kZQ==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'birthDate', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthDate'},
    {'1': 'address', '3': 7, '4': 1, '5': 11, '6': '.com.drathveloper.grpc.UserAddress', '10': 'address'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIcCglmaXJzdE5hbWUYAiABKAlSCW'
    'ZpcnN0TmFtZRIaCghsYXN0TmFtZRgDIAEoCVIIbGFzdE5hbWUSFAoFZW1haWwYBCABKAlSBWVt'
    'YWlsEhQKBXBob25lGAUgASgJUgVwaG9uZRI4CgliaXJ0aERhdGUYBiABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgliaXJ0aERhdGUSPAoHYWRkcmVzcxgHIAEoCzIiLmNvbS5kcmF0'
    'aHZlbG9wZXIuZ3JwYy5Vc2VyQWRkcmVzc1IHYWRkcmVzcw==');

@$core.Deprecated('Use createdUserDescriptor instead')
const CreatedUser$json = {
  '1': 'CreatedUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'firstName', '3': 3, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 6, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'birthDate', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthDate'},
    {'1': 'country', '3': 8, '4': 1, '5': 9, '10': 'country'},
    {'1': 'city', '3': 9, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 10, '4': 1, '5': 9, '10': 'state'},
    {'1': 'address', '3': 11, '4': 1, '5': 9, '10': 'address'},
    {'1': 'postalCode', '3': 12, '4': 1, '5': 9, '10': 'postalCode'},
  ],
};

/// Descriptor for `CreatedUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createdUserDescriptor = $convert.base64Decode(
    'CgtDcmVhdGVkVXNlchIOCgJpZBgBIAEoA1ICaWQSGgoIdXNlcm5hbWUYAiABKAlSCHVzZXJuYW'
    '1lEhwKCWZpcnN0TmFtZRgDIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW1lGAQgASgJUghsYXN0'
    'TmFtZRIUCgVlbWFpbBgFIAEoCVIFZW1haWwSFAoFcGhvbmUYBiABKAlSBXBob25lEjgKCWJpcn'
    'RoRGF0ZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWJpcnRoRGF0ZRIYCgdj'
    'b3VudHJ5GAggASgJUgdjb3VudHJ5EhIKBGNpdHkYCSABKAlSBGNpdHkSFAoFc3RhdGUYCiABKA'
    'lSBXN0YXRlEhgKB2FkZHJlc3MYCyABKAlSB2FkZHJlc3MSHgoKcG9zdGFsQ29kZRgMIAEoCVIK'
    'cG9zdGFsQ29kZQ==');

@$core.Deprecated('Use userBulkLoadRequestDescriptor instead')
const UserBulkLoadRequest$json = {
  '1': 'UserBulkLoadRequest',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.com.drathveloper.grpc.User', '10': 'users'},
  ],
};

/// Descriptor for `UserBulkLoadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBulkLoadRequestDescriptor = $convert.base64Decode(
    'ChNVc2VyQnVsa0xvYWRSZXF1ZXN0EjEKBXVzZXJzGAEgAygLMhsuY29tLmRyYXRodmVsb3Blci'
    '5ncnBjLlVzZXJSBXVzZXJz');

@$core.Deprecated('Use userBulkLoadResponseDescriptor instead')
const UserBulkLoadResponse$json = {
  '1': 'UserBulkLoadResponse',
  '2': [
    {'1': 'createdUsers', '3': 1, '4': 3, '5': 11, '6': '.com.drathveloper.grpc.CreatedUser', '10': 'createdUsers'},
  ],
};

/// Descriptor for `UserBulkLoadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBulkLoadResponseDescriptor = $convert.base64Decode(
    'ChRVc2VyQnVsa0xvYWRSZXNwb25zZRJGCgxjcmVhdGVkVXNlcnMYASADKAsyIi5jb20uZHJhdG'
    'h2ZWxvcGVyLmdycGMuQ3JlYXRlZFVzZXJSDGNyZWF0ZWRVc2Vycw==');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

