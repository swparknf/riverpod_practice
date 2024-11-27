import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../common/common.dart';
import '../../domain/domain.dart';
import '../widgets/frame_scaffold.dart';
import 'main_frame_notifier.dart';
import 'widget/navigation_bar_item_icon.dart';

/// 메인 프레임 화면
class MainFrameView extends ConsumerWidget {
  const MainFrameView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =  ref.watch(mainFrameNotifierProvider);

    return FrameScaffold(
      appBarTitle: '',
      body: IndexedStack(
        index: state.selectedIndex,
        children: state.widgetOptions,
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.grey,
                blurRadius: 0.1,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.background,
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              _barItem(TabItemType.user),
              _barItem(TabItemType.meeting),
            ],
            currentIndex:  state.selectedIndex,
            selectedItemColor: AppColors.primary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: AppColors.darkGrey,
            onTap: (index) => ref.read(mainFrameNotifierProvider.notifier).onItemTapped(index),
          )),
    );
  }

  BottomNavigationBarItem _barItem(TabItemType type) {
    return BottomNavigationBarItem(
        icon: NavigationBarItemIcon(type: type), label: '',
    );
  }
}
