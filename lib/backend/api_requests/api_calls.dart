import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OnesignalNotificacionCall {
  static Future<ApiCallResponse> call({
    String? contentEn = '',
    String? headingEn = '',
    String? appId = '',
    String? externalId = '',
    String? sendAfter = '',
    String? subtitleEn = '',
  }) async {
    final ffApiRequestBody = '''
{
  "target_channel": "push",
  "contents": {
    "en": "${escapeStringForJson(contentEn)}"
  },
  "headings": {
    "en": "${escapeStringForJson(headingEn)}"
  },
  "subtitle": {
    "en": "${escapeStringForJson(subtitleEn)}"
  },
  "app_id": "${escapeStringForJson(appId)}",
  "include_aliases": {
    "external_id": [
      "${escapeStringForJson(externalId)}"
    ]
  },
  "send_after": "${escapeStringForJson(sendAfter)}" -> https://documentation.onesignal.com/reference/create-message#send_after
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OnesignalNotificacion',
      apiUrl: 'https://api.onesignal.com/notifications?c=push',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'Authorization': 'uymjj3mu3eqa5ynzvuuvnufhl',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPushNotificationCall {
  static Future<ApiCallResponse> call({
    String? contentEs = '',
    String? headingEs = '',
    String? contentEn = '',
    String? headingEn = '',
    String? segment = 'All',
  }) async {
    final ffApiRequestBody = '''
{
  "app_id": "bdc547d5-edd6-4224-8748-ba0edfdcdb42",
  "contents": {
    "en": "${escapeStringForJson(contentEn)}",
    "es": "${escapeStringForJson(contentEs)}"
  },
  "headings": {
    "en": "${escapeStringForJson(headingEn)}",
    "es": "${escapeStringForJson(headingEs)}"
  },
  "included_segments": [
    "${escapeStringForJson(segment)}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendPushNotification',
      apiUrl: 'https://api.onesignal.com/notifications?c=push',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Key os_v2_app_xxcupvpn2zbcjb2ixihn7xg3iijgof4uqaxudenqmphqdvlbqurq635fqekp7bf47u7jcszhrjhv762m3tqe3sdhw6s6ieofwsmpp4a',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPushNotificationCopyCall {
  static Future<ApiCallResponse> call({
    String? contentEs = '',
    String? headingEs = '',
    String? contentEn = '',
    String? headingEn = '',
    String? segment = 'All',
  }) async {
    final ffApiRequestBody = '''
{
  "app_id": "bdc547d5-edd6-4224-8748-ba0edfdcdb42",
  "contents": {
    "en": "${escapeStringForJson(contentEn)}",
    "es": "${escapeStringForJson(contentEs)}"
  },
  "headings": {
    "en": "${escapeStringForJson(headingEn)}",
    "es": "${escapeStringForJson(headingEs)}"
  },
  "included_segments": [
    "${escapeStringForJson(segment)}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendPushNotification Copy',
      apiUrl: 'https://api.onesignal.com/notifications?c=push',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Key os_v2_app_xxcupvpn2zbcjb2ixihn7xg3iijgof4uqaxudenqmphqdvlbqurq635fqekp7bf47u7jcszhrjhv762m3tqe3sdhw6s6ieofwsmpp4a',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearUsuarioCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "properties": {
    "tags": "string",
    "language": "en",
    "timezone_id": "America\\\\/Los_Angeles",
    "lat": 90,
    "long": 135,
    "country": "US",
    "first_active": 1678215680,
    "last_active": 1678215682,
    "ip": "string"
  },
  "identity": {
    "external_id": "test_external_id",
    "onesignal_id": "string"
  },
  "subscriptions": [
    {
      "type": "Email",
      "token": "email@example.com",
      "enabled": true,
      "notification_types": 0,
      "session_time": 0,
      "session_count": 0,
      "app_version": "string",
      "device_model": "string",
      "device_os": "string",
      "test_type": 0,
      "sdk": "string",
      "rooted": true,
      "web_auth": "string",
      "web_p256": "string"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearUsuario',
      apiUrl:
          'https://api.onesignal.com/apps/bdc547d5-edd6-4224-8748-ba0edfdcdb42/users',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendEmailOneSignalCall {
  static Future<ApiCallResponse> call({
    String? emailSubject = '',
    String? emailPreheader = '',
    String? emailBody = '',
    String? fromName = '',
    String? fromAddress = '',
    String? name = '',
    String? emailTo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "app_id": "bdc547d5-edd6-4224-8748-ba0edfdcdb42",
  "email_subject": "${escapeStringForJson(emailSubject)}",
  "email_preheader": "${escapeStringForJson(emailPreheader)}",
  "email_body": "${escapeStringForJson(emailBody)}",
  "email_from_name": "HRsolutions",
  "email_from_address": "${escapeStringForJson(fromAddress)}",
  "include_unsubscribed": true,
  "disable_email_click_tracking": true,
  "name": "${escapeStringForJson(name)}",
  "email_to": [
    "${escapeStringForJson(emailTo)}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmailOneSignal',
      apiUrl: 'https://api.onesignal.com/notifications?c=email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Key os_v2_app_xxcupvpn2zbcjb2ixihn7xg3iijgof4uqaxudenqmphqdvlbqurq635fqekp7bf47u7jcszhrjhv762m3tqe3sdhw6s6ieofwsmpp4a',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
