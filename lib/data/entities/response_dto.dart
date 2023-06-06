class ResponseDto {
  final bool isSuccess;
  final List<String> messages;
  final dynamic result;

  ResponseDto({
    required this.isSuccess,
    required this.messages,
    required this.result,
  });
}
