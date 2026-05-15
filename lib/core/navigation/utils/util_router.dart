import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

extension ExtendedGo on BuildContext {
  void goExtra(
    String path, {
    Map<String, dynamic> params = const {},
    Map<String, dynamic> queryParams = const {},
    Object? extra,
  }) {
    go(
      path.setPathParams(params: params, queryParams: queryParams),
      extra: extra,
    );
  }

  Future<T?> pushExtra<T>(
    String path, {
    Map<String, dynamic> params = const {},
    Map<String, dynamic> queryParams = const {},
    Object? extra,
  }) {
    final fullPath = path.setPathParams(
      params: params,
      queryParams: queryParams,
    );
    return push<T>(fullPath, extra: extra);
  }

  void pushReplacementExtra<T>(
    String path, {
    Map<String, dynamic> params = const {},
    Map<String, dynamic> queryParams = const {},
    Object? extra,
  }) => pushReplacement(
    path.setPathParams(params: params, queryParams: queryParams),
    extra: extra,
  );
}

extension PathFormatter on String {
  String setPathParams({
    Map<String, dynamic> params = const {},
    Map<String, dynamic> queryParams = const {},
  }) {
    var result = this;

    params.forEach((key, value) {
      result = result.replaceAll(':$key', value.toString());
    });

    if (queryParams.isNotEmpty) {
      final qp = queryParams.entries
          .map((e) {
            final val = e.value is String ? e.value : jsonEncode(e.value);
            return '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(val.toString())}';
          })
          .join('&');

      result = '$result?$qp';
    }

    return result;
  }
}

class RootRoute extends GoRoute {
  RootRoute({
    required super.path,
    super.name,
    Widget Function(BuildContext, GoRouterState)? builder,
    Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
    super.redirect,
    super.routes = const <RouteBase>[],
  }) : super(
         parentNavigatorKey: rootNavigatorKey,
         pageBuilder:
             pageBuilder ??
             (context, state) => MaterialPage(child: builder!(context, state)),
       );
}
