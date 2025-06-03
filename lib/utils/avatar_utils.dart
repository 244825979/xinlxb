import 'dart:math';

class AvatarUtils {
  static final Random _random = Random();
  static const int totalAvatars = 31;  // 总头像数量
  static const String _basePath = 'assets/images/head_image';
  
  // 助手头像路径
  static const String assistantAvatar = 'assets/images/zhushou_image/zhushou.jpeg';
  
  // 用户固定头像
  static const String _userAvatar = '$_basePath/head_12.jpeg';  // 选择一个固定的可爱风格头像
  
  // 获取用户头像路径（固定头像）
  static String getUserAvatar() {
    return _userAvatar;
  }
  
  // 用户头像getter（保持向后兼容）
  static String get userAvatar => _userAvatar;
  
  // 获取随机用户头像路径（用于其他用户）
  static String getRandomUserAvatar() {
    final index = _random.nextInt(totalAvatars) + 1;
    return '$_basePath/head_$index.jpeg';
  }
} 