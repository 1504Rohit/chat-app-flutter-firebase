class ChatUser {
  ChatUser({
    required this.about,
    required this.createdAt,
    required this.email,
    required this.id,
    required this.image,
    required this.isOnline,
    required this.lastActive,
    required this.name,
    required this.pushToken,
  });
  late String about;
  late String createdAt;
  late String email;
  late String id;
  late String image;
  late String isOnline;
  late String lastActive;
  late String name;
  late String pushToken;

  ChatUser.fromJson(Map<String, dynamic> json) {
    about = json['about'] ?? '';
    createdAt = json['created_at'] ?? '';
    email = json['email'] ?? '';
    id = json['id'] ?? '';
    image = json['image'] ?? '';
    isOnline = json['isOnline'] ?? '';
    lastActive = json['last_active'] ?? '';
    name = json['name'] ?? '';
    pushToken = json['push_token'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['about'] = about;
    data['created_at'] = createdAt;
    data['email'] = email;
    data['id'] = id;
    data['image'] = image;
    data['isOnline'] = isOnline;
    data['last_active'] = lastActive;
    data['name'] = name;
    data['push_token'] = pushToken;
    return data;
  }
}
