import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/common/common.dart';

import '../chat_view_model.dart';


class TextComposer extends ConsumerStatefulWidget {
  const TextComposer({
    super.key,
  });

  @override
  ConsumerState<TextComposer> createState() => _TextComposerState();
}

class _TextComposerState extends ConsumerState<TextComposer> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: AppDim.xSmall),
      child: Row(
        children: [
          _buildTextField(context),
          _buildSendButton(),
        ],
      ),
    );
  }

  /// 메시지 입력란
  _buildTextField(
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        height: UIConstants.textFieldHeight50,
        margin: const EdgeInsets.only(left: AppDim.small),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: UIConstants.borderMediumRadius,
          ),
          color: AppColors.textFieldBg,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDim.medium),
              child: MediaQuery(
                data: Etc.getScaleFontSize(context, fontSize: 0.9),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 20,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {},
                  decoration: const InputDecoration.collapsed(
                    hintText: AppStrings.sendMessageHint,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 메시지 전송 버튼
  _buildSendButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDim.xSmall),
      child: IconButton(
        icon: Icon(
          Icons.send,
          size: AppDim.iconMedium,
          color: AppColors.primary,
        ),
        onPressed: () {
          if (_controller.text.isNotEmpty) {
            ref.read(chatViewModelProvider.notifier)
                .sendMessage(_controller.text);
            _controller.clear();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
