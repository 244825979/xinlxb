class AppAssets {
  // 头像资源
  static const String defaultAvatar = 'assets/images/avatars/default_avatar.png';
  static const String aiAvatar = 'assets/images/zhushou_image/zhushou.jpeg';
  
  // 背景图片
  static const String moodBackground = 'assets/images/backgrounds/mood_bg.png';
  static const String homeBackground = 'assets/images/backgrounds/home_bg.png';
  
  // 广场图片
  static const List<String> guangchangImages = [
    'assets/images/guangchang/guangchang_1.jpeg',
    'assets/images/guangchang/guangchang_2.jpeg',
    'assets/images/guangchang/guangchang_3.jpeg',
    'assets/images/guangchang/guangchang_4.jpeg',
    'assets/images/guangchang/guangchang_5.jpeg',
    'assets/images/guangchang/guangchang_6.jpeg',
    'assets/images/guangchang/guangchang_7.jpeg',
    'assets/images/guangchang/guangchang_8.jpeg',
  ];
  
  // 音频文件
  static const String sampleVoice = 'assets/audio/sample_voice.m4a';
  static const String peacefulVoice = 'assets/audio/peaceful_voice.m4a';
  static const String dreamVoice = 'assets/audio/dream_voice.m4a';
  static const String joyVoice = 'assets/audio/joy_voice.m4a';
  
  // 图标资源
  static const String playIcon = 'assets/images/icons/play.png';
  static const String pauseIcon = 'assets/images/icons/pause.png';
  static const String micIcon = 'assets/images/icons/mic.png';
  static const String heartIcon = 'assets/images/icons/heart.png';
  
  // 获取用户头像列表
  static List<String> get userAvatars {
    List<String> avatars = [];
    for (int i = 1; i <= 31; i++) {
      avatars.add('assets/images/head_image/head_$i.jpeg');
    }
    return avatars;
  }
  
  // 获取示例音频列表
  static List<String> get sampleAudios => [
    sampleVoice,
    peacefulVoice,
    dreamVoice,
    joyVoice,
  ];
} 