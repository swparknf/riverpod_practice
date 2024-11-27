import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'common/common.dart';

import 'layers/domain/model/authorization.dart';
import 'layers/presentation/main/main_frame_view.dart';




void main() async {
  /// 앱을 개발할 떄 비동기 작업을 수행 하고 그 결과를 기반 으로 앱을 초기화 해야 하는 경우
  /// Sharedpreferences 나 Firebase 와 같은 외부 소스 에서 데이터를 비동적 으로 로드 해야되는경우
  ///  플랫폼 채널과 통신(네이티브 코드와 플러간 통신을 위해 플랫폼 채널을 설정 하는 경우)
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize the locator
  await initLocator();

  /// Initialize
  await initializeDateFormatting();

  /// Initialize Authorization
  Authorization();

  /// 루트 위젯을 providerScope로 감싸서 하위 위젯트리에서
  /// Provider 객체에 접근할 수 있도록 한다.
  runApp(const ProviderScope(child: App(),));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      ),
      home: const MainFrameView(),
    );
  }
}
