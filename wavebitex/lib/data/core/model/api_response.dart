class ApiResponse {
  late bool success;
  late int status;
  late dynamic data;

  ApiResponse({required this.success, required this.status, required this.data});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = success;
    data['status'] = status;
    data['data'] = data;

    return data;
  }
}
