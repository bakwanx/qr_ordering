sealed class Failure {
  final String message;

  const Failure({required this.message});
}

final class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}

final class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure({required super.message, this.statusCode});
}

final class UnknownFailure extends Failure {
  const UnknownFailure({required super.message});
}
