import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneInputComponent extends StatefulWidget {
  const PhoneInputComponent({
    Key? key,
    required this.onChanged,
    required this.initialValue,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final String initialValue;

  @override
  State<PhoneInputComponent> createState() => _PhoneInputComponentState();
}

class _PhoneInputComponentState extends State<PhoneInputComponent> {
  late MaskTextInputFormatter phoneMaskFormatter;
  final FocusNode phoneFocusNode = FocusNode();
  final TextEditingController controller = TextEditingController();
  String shadowText = "00 000-00-00";

  String updateShadowText(String currentText) {
    shadowText = "00 000-00-00";
    shadowText = shadowText.substring(currentText.length, shadowText.length);
    return currentText + shadowText;
  }

  @override
  void initState() {
    phoneMaskFormatter = MaskTextInputFormatter(
      mask: '## ###-##-##',
      filter: {
        "#": RegExp(r'[0-9]'),
      },
    );
    controller.text = phoneMaskFormatter.maskText(widget.initialValue);
    updateShadowText(widget.initialValue);
    super.initState();
  }

  @override
  void dispose() {
    phoneFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.amberAccent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            const Text("+998 ", style: TextStyle(fontSize: 16)),
            Expanded(
              child: TextField(
                controller: controller,
                inputFormatters: [phoneMaskFormatter],
                keyboardType: const TextInputType.numberWithOptions(
                    signed: false, decimal: true),
                cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                cursorHeight: 22,
                focusNode: phoneFocusNode,
                onChanged: (String value) {
                  setState(() {
                    if (value.length == 12) {
                      phoneFocusNode.unfocus();
                    }
                    widget.onChanged.call(value);
                    shadowText = updateShadowText(value);
                  });
                },
                style:const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  fillColor: Colors.amber,
                  hintStyle: TextStyle(color: Colors.green),
                  hintText: "00 000-00-00",
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
