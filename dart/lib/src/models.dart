/// Response models for the Cloud Counter API.

/// API Response wrapper.
class CounterResponse {
  final String status;
  final dynamic error;
  final CounterData? data;

  CounterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CounterResponse.fromJson(Map<String, dynamic> json) => CounterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CounterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Cloud Counter API.

class CounterData {
  String? created;
  String? id;
  String? lastAction;
  String? lastRead;
  String? lastUpdated;
  int? numberOfDigits;
  String? ordinal;
  int? value;
  String? words;

  CounterData({
    this.created,
    this.id,
    this.lastAction,
    this.lastRead,
    this.lastUpdated,
    this.numberOfDigits,
    this.ordinal,
    this.value,
    this.words,
  });

  factory CounterData.fromJson(Map<String, dynamic> json) => CounterData(
      created: json['created'],
      id: json['id'],
      lastAction: json['lastAction'],
      lastRead: json['lastRead'],
      lastUpdated: json['lastUpdated'],
      numberOfDigits: json['numberOfDigits'],
      ordinal: json['ordinal'],
      value: json['value'],
      words: json['words'],
    );
}

class CounterRequest {
  String id;

  CounterRequest({
    required this.id,
  });

  Map<String, dynamic> toJson() => {
      'id': id,
    };
}
