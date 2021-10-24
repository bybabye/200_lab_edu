import 'package:message_ui/ui/app_images.dart';

class Info {
  String? name, lastMessage, image, time;
  bool? isActive;
  String? number;
  Info(this.name, this.lastMessage, this.image, this.time, this.isActive,
      this.number);

  static List<Info> data() {
    return [
      Info('Darius', 'Bổ củi chết cụ mày giờ.', AppImage.darius, '8m ago', true,
          "3"),
      Info('Garen', 'Demaciaaaaaaaaaaa !!!!!!!!!', AppImage.garen, '3m ago',
          false, "0"),
      Info('Senna', 'Em cắm sừng luxi an rồi', AppImage.senna, '1h ago', false,
          "0"),
      Info('Viktor', 'Vẽ không bạn eyyyyyyy', AppImage.viktor, '1m ago', true,
          "0"),
      Info('Yasuo', 'Solo daxua chặt tay không.', AppImage.yasuo, '1m ago',
          true, "0"),
      Info('Zed', 'Thằng daxua solo thua t mà bùng kèo rồi', AppImage.zed,
          '2h ago', false, "0"),
      Info('Twisted Fate', 'Đánh tiến lên không bạn ơi', AppImage.tf, '1m ago',
          true, "2"),
      Info('Yone', 'Biết thằng em t đi đâu rồi không', AppImage.yone, '2h ago',
          false, "1"),
    ];
  }
}
