import 'package:hive/hive.dart';
import 'package:wavebitex/data/auth/model/user.dart';

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0;

  @override
  User read(BinaryReader reader) {
    return User(
      id: reader.read(),
      fullName: reader.read(),
      email: reader.read(),
      password: reader.read(),
      phone: reader.read(),
      otp: reader.read(),
      token: reader.read(),
      referralCode: reader.read(),
      createdAt: reader.read(),
      updatedAt: reader.read(),
      status: reader.read(),
      pin: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.write(obj.id);
    writer.write(obj.fullName);
    writer.write(obj.email);
    writer.write(obj.password);
    writer.write(obj.phone);
    writer.write(obj.otp);
    writer.write(obj.token);
    writer.write(obj.referralCode);
    writer.write(obj.createdAt);
    writer.write(obj.updatedAt);
    writer.write(obj.status);
    writer.write(obj.pin);
  }
}
