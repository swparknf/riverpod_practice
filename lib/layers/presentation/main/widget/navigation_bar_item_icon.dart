import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/layers/presentation/main/main_frame_notifier.dart';


import '../../../../common/constant/app_colors.dart';
import '../../../../common/constant/app_dimensions.dart';
import '../../../domain/domain.dart';
import '../../widgets/style_text.dart';

/// BottomNavigationBar 아이템 아이콘
class NavigationBarItemIcon extends ConsumerWidget {
  final TabItemType type;

  const NavigationBarItemIcon({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainFrameNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ColorFiltered(
          colorFilter: state.selectedIndex == type.itemIndex
              ? ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
              : ColorFilter.mode(AppColors.textGrey, BlendMode.srcIn),
          child: Icon(type.icon, size: AppDim.iconMedium),
        ),
        StyleText(
          text: type.label,
          align: TextAlign.center,
          color: state.selectedIndex == type.itemIndex
              ? AppColors.primary
              : AppColors.textGrey,
          size: AppDim.fontSizeSmall,
          maxLinesCount: 2,
        )
      ],
    );
  }
}
