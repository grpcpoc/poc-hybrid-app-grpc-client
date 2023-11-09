//
//  Generated code. Do not modify.
//  source: proto/service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('com.drathveloper.grpc.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$bulkLoad = $grpc.ClientMethod<$0.UserBulkLoadRequest, $0.UserBulkLoadResponse>(
      '/com.drathveloper.grpc.UserService/bulkLoad',
      ($0.UserBulkLoadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserBulkLoadResponse.fromBuffer(value));
  static final _$bulkLoadServerStream = $grpc.ClientMethod<$0.UserBulkLoadRequest, $0.CreatedUser>(
      '/com.drathveloper.grpc.UserService/bulkLoadServerStream',
      ($0.UserBulkLoadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreatedUser.fromBuffer(value));
  static final _$bulkLoadClientStream = $grpc.ClientMethod<$0.User, $0.UserBulkLoadResponse>(
      '/com.drathveloper.grpc.UserService/bulkLoadClientStream',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserBulkLoadResponse.fromBuffer(value));
  static final _$bulkLoadBidirectionalStream = $grpc.ClientMethod<$0.User, $0.CreatedUser>(
      '/com.drathveloper.grpc.UserService/bulkLoadBidirectionalStream',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreatedUser.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserBulkLoadResponse> bulkLoad($0.UserBulkLoadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkLoad, request, options: options);
  }

  $grpc.ResponseStream<$0.CreatedUser> bulkLoadServerStream($0.UserBulkLoadRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$bulkLoadServerStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.UserBulkLoadResponse> bulkLoadClientStream($async.Stream<$0.User> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$bulkLoadClientStream, request, options: options).single;
  }

  $grpc.ResponseStream<$0.CreatedUser> bulkLoadBidirectionalStream($async.Stream<$0.User> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$bulkLoadBidirectionalStream, request, options: options);
  }
}

@$pb.GrpcServiceName('com.drathveloper.grpc.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'com.drathveloper.grpc.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserBulkLoadRequest, $0.UserBulkLoadResponse>(
        'bulkLoad',
        bulkLoad_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserBulkLoadRequest.fromBuffer(value),
        ($0.UserBulkLoadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserBulkLoadRequest, $0.CreatedUser>(
        'bulkLoadServerStream',
        bulkLoadServerStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.UserBulkLoadRequest.fromBuffer(value),
        ($0.CreatedUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.UserBulkLoadResponse>(
        'bulkLoadClientStream',
        bulkLoadClientStream,
        true,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.UserBulkLoadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.CreatedUser>(
        'bulkLoadBidirectionalStream',
        bulkLoadBidirectionalStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.CreatedUser value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserBulkLoadResponse> bulkLoad_Pre($grpc.ServiceCall call, $async.Future<$0.UserBulkLoadRequest> request) async {
    return bulkLoad(call, await request);
  }

  $async.Stream<$0.CreatedUser> bulkLoadServerStream_Pre($grpc.ServiceCall call, $async.Future<$0.UserBulkLoadRequest> request) async* {
    yield* bulkLoadServerStream(call, await request);
  }

  $async.Future<$0.UserBulkLoadResponse> bulkLoad($grpc.ServiceCall call, $0.UserBulkLoadRequest request);
  $async.Stream<$0.CreatedUser> bulkLoadServerStream($grpc.ServiceCall call, $0.UserBulkLoadRequest request);
  $async.Future<$0.UserBulkLoadResponse> bulkLoadClientStream($grpc.ServiceCall call, $async.Stream<$0.User> request);
  $async.Stream<$0.CreatedUser> bulkLoadBidirectionalStream($grpc.ServiceCall call, $async.Stream<$0.User> request);
}
