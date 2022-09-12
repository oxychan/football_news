import 'package:flutter/material.dart';

import './news_page.dart';
import './news.dart';
import './schedule.dart';
import './schedule_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final TabBar tabbar = const TabBar(
    indicatorColor: Colors.black,
    labelColor: Colors.black,
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.newspaper),
        text: "News",
      ),
      Tab(
        icon: Icon(Icons.schedule),
        text: "Schedule",
      ),
    ],
  );

  static List<News> newsDatas = [
    const News(
      'assets/picture1.jpg',
      'Haaland: Sistem Bermain Man City Sungguh Rumit',
      'Senin, 12 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture2.jpg',
      'Lewandoski ke Puncak Usai Bikin Sejarah',
      'Senin, 12 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture3.jpg',
      'Timnas Malaysia Resmi Naturalisasi Sergio Aguero',
      'Selasa, 13 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture4.jpg',
      'Chelsea Bakal Nyesel Pecat Tommy Shelby',
      'Rabu, 14 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture5.jpg',
      'Zonk! 6 Transfer Real Madrid yang Mengecewakan',
      'Rabu, 14 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture2.jpg',
      'Liverpool Menang Dramatis, Manchester United Nangis',
      'Kamis, 15 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
    const News(
      'assets/picture4.jpg',
      'MU Bakal Kental Aroma Juventus',
      'Rabu, 14 September 2022',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in quam iaculis mi finibus pharetra sed quis quam. Integer nec imperdiet nibh, vel posuere nibh. Ut faucibus scelerisque magna eu venenatis. Curabitur tincidunt ante malesuada tortor tincidunt ornare. Proin ac rutrum velit. Mauris maximus mattis gravida. Integer sit amet turpis ac metus dapibus tempus sit amet non orci. Aenean aliquet felis quis diam aliquet posuere. Etiam sed nisi vitae sem bibendum venenatis. Suspendisse fringilla tellus vitae erat dictum euismod. Cras a est vitae neque mollis suscipit. Nulla convallis augue eu turpis cursus euismod.\n\nPhasellus mollis tincidunt sapien. Nunc a sodales lacus. Fusce gravida lectus non convallis fringilla. Nulla et sem erat. Nunc vitae blandit velit. Suspendisse elit nunc, pellentesque eu rhoncus a, volutpat at magna. Vivamus nisl nunc, rutrum quis ex quis, consequat elementum sapien. Maecenas eget augue rutrum, vehicula nisi venenatis, viverra ligula. Proin egestas lorem ipsum, et consectetur erat laoreet eget. Donec vitae finibus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas ornare mi eget nulla convallis, in ornare ante vestibulum. Phasellus vel urna porttitor, consectetur nunc ut, ultrices sem.\n\nPellentesque pellentesque dapibus euismod. Phasellus finibus, dolor quis sodales congue, leo quam porttitor justo, sed sodales est libero ac ipsum. Donec id lobortis orci. Proin sit amet gravida dolor, et sagittis orci. Praesent ante ipsum, congue at velit sed, sollicitudin facilisis lorem. Nam volutpat dolor nec mi pretium sollicitudin. Donec vel sollicitudin erat, id aliquet lacus. Pellentesque molestie, lacus eu maximus vulputate, justo mi varius mi, sed mattis ante magna accumsan nunc. Integer condimentum ullamcorper lacinia. Nullam odio mauris, cursus vitae vehicula et, malesuada vel lorem. Vestibulum efficitur augue ut nisl commodo consequat. Quisque auctor sed augue in ultrices. Fusce nec tellus diam. Morbi vitae tellus at magna fringilla viverra et ut massa. Curabitur eu nisl vehicula, lacinia nisl sed, ultricies augue.',
    ),
  ];

  static List<Schedule> schedules = [
    Schedule(
      "Manchester United",
      "Arema FC",
      "assets/club1.png",
      "assets/club2.png",
      "19.30 WIB",
      "Sab, 17/07/22",
    ),
    Schedule(
      "Arsenal",
      "Bayern Munchen",
      "assets/club3.png",
      "assets/club4.png",
      "10.30 WIB",
      "Min, 18/07/22",
    ),
    Schedule(
      "Liverpool",
      "Man City",
      "assets/club5.png",
      "assets/club6.png",
      "19.30 WIB",
      "Sen, 19/07/22",
    ),
    Schedule(
      "Lichester City",
      "Ac Milan",
      "assets/club7.png",
      "assets/club8.png",
      "01.00 WIB",
      "Sen, 19/07/22",
    ),
    Schedule(
      "Persebaya FC",
      "Bali United",
      "assets/club1.png",
      "assets/club2.png",
      "19.30 WIB",
      "Sel, 20/07/22",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Football News"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(tabbar.preferredSize.height),
              child: Container(
                color: Colors.grey[200],
                child: tabbar,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: TabBarView(
            children: [
              NewsPage(
                newsDatas: newsDatas,
              ),
              SchedulePage(
                schedules: schedules,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
