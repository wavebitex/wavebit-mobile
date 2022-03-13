class ApiResponse {
  late int status;
  late bool success;
  late String message;
  late dynamic data;

  ApiResponse({required this.success, required this.status, required this.message, required this.data});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    success = json['success'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    data['success'] = success;
    data['data'] = data;

    return data;
  }
}
