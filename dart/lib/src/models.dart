/// Response models for the Cloud Counter API.

/// API Response wrapper.
class CounterResponse {
  final String status;
  final dynamic error;
  final CounterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CounterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CounterResponse.fromJson(Map<String, dynamic> json) => CounterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CounterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Cloud Counter API.

class CounterData {
  String? created;
  String? id;
  String? lastAction;
  String? lastRead;
  String? lastUpdated;
  num? numberOfDigits;
  String? ordinal;
  num? value;
  String? words;
  bool? isEven;
  bool? isNegative;
  bool? isZero;
  bool? isPrime;

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
    this.isEven,
    this.isNegative,
    this.isZero,
    this.isPrime,
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
      isEven: json['isEven'],
      isNegative: json['isNegative'],
      isZero: json['isZero'],
      isPrime: json['isPrime'],
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
