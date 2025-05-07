import 'package:flutter/material.dart';

void main() {
  runApp(const HGAApp());
}

class HGAApp extends StatelessWidget {
  const HGAApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HGA会員アプリ',

titeli'HGA会員証アプリ';
      theme: ThemeData(
        primarySwatch: Colors.blue,
      printf('個人名と番号を入力してください');

printf('個人事も番号なので外部に漏らさないで下さい'),
    home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': '会員証表示',
        'content': 'assets/HGAHPQR.png',
        'isImage': true,
         'content': '個人事に発行される番号/QRなので外部に教えてないで下さい。',
      },
      {
        'title': '募集中のツアーバイト年間スケジュール',
        'content': 'ここにツアーバイトのスケジュールが表示されます、表示されない場合更新までお待ち下さい。',
        'isImage': false,
      },
      {
        'title': '年間スケジュール',
        'content': '1月:\n'
            '  - 特になし\n\n'
            '2月:\n'
            '  - 秋季リーグ戦\n'
            '  - HGAコンペ\n\n'
            '3月:\n'
            '  - ゴルフツアーアルバイト\n\n'
            '4月:\n'
            '  - ゴルフツアーアルバイト\n\n'
            '5月:\n'
            '  - プロゴルファーレッスン会\n\n'
            '6月:\n'
            '  - 新入生歓迎BBQ\n'
            '  - プロゴルファーレッスン会\n\n'
            '7月:\n'
            '  - ゴルフツアーアルバイト\n\n'
            '8月:\n'
            '  - ゴルフツアーアルバイト\n\n'
            '9月:\n'
            '  - HGAコンペ\n'
            '  - 春季リーグ戦\n'
            '  - ゴルフツアーアルバイト\n\n'
            '10月:\n'
            '  - 女子コンペ\n'
            '  - ゴルフツアーアルバイト\n\n'
            '11月:\n'
            '  - リクルートコンペ\n\n'
            '12月:\n'
            '  - HGAクリスマスパーティー',
        'isImage': false,
      },
      {
        'title': 'HGA特典情報',
        'content': 'クラブレンタル\n練習場の学割利用\nHGAコンペにて
            '  - クラブレンタルは、事前に予約が必要です。',
        'isImage': false,
      },
      {
        'title': '割引クラブ購入方法',
        'content': 'ここに割引クラブの購入方法が表示されます',
        'isImage': false,
      },
      {
        'title': '学割使用可能練習場一覧',
        'content': 'ここに学割使用可能な練習場一覧が表示されます',
        'isImage': false,
      },
      {
        'title': 'よくある質問',
        'content': 'ここに「よくある質問」の回答が表示されます。例えば:\n\n'
            'Q: 紙の会員証はありますか？\n'
            'A: アプリに以降しています\n\n'
            'Q: 年間スケジュールはどこで確認できますか？\n'
            'A: メニューの「年間スケジュール」から確認できます。\n\n'
            'Q: 特典情報はどのように利用できますか？\n'
            'A: 特典情報の詳細は「HGA特典情報」セクションをご覧ください。',
        'isImage': false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('HGA会員アプリ'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(item['title'] as String),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      title: item['title'] as String,
                      content: item['content'] as String,
                      isImage: item['isImage'] as bool,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final bool isImage;

  const DetailScreen({
    super.key,
    required this.title,
    required this.content,
    required this.isImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isImage
            ? Image.asset(content)
            : SingleChildScrollView(
                child: Text(content),
              ),
      ),
    );
  }
}