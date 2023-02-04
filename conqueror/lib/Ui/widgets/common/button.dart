import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double outerPadding;
  final double? interWidth;
  final double? interHeight;
  final Function? onTap;
  final Color? color;
  final bool isDisabled;
  final bool isLoading;
  final Color? textColor;
  final String? buttonType;
  const Button({Key? key, this.text, this.icon, this.outerPadding = 0, this.interWidth, this.interHeight, this.onTap, this.color, this.isDisabled = false, this.isLoading = false, this.textColor, this.buttonType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Commonly used button
    // with text and icon
    return Padding(
      padding: EdgeInsets.all(outerPadding),
      child: InkWell(
        onTap: () {
          if (onTap != null) {
            if (isDisabled == false) {
              onTap!();
            }
          }
        },
        child: Container(
          height: interHeight,
          width: interWidth,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: !isDisabled
                    ? color != null
                        ? color!.withOpacity(0.5)
                        : Colors.grey.withOpacity(0.5)
                    : isDisabled
                        ? Colors.grey.withOpacity(0.5)
                        : Theme.of(context).colorScheme.primary.withOpacity(0.7),
                blurRadius: 10, // soften the shadow
                spreadRadius: 2, //extend the shadow
                offset: const Offset(
                  0, // Move to right 10  horizontally
                  0, // Move to bottom 10 Vertically
                ),
              )
            ],
            borderRadius: BorderRadius.circular(10),
            color: isDisabled
                ? Colors.grey
                : onTap != null
                    ? color ?? Theme.of(context).colorScheme.primary
                    : Colors.white,
          ),
          padding: const EdgeInsets.all(12),
          child: isLoading
              ? const Center(child: CupertinoActivityIndicator(color: Colors.white))
              : text != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(icon, color: textColor ?? Colors.white),
                          ),
                        Center(
                          child: Text(
                            text!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                  color: textColor ?? Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    )
                  : Icon(
                      icon,
                      size: 20,
                      color: Colors.white,
                    ),
        ),
      ),
    );
  }
}

class ButtonType {
  static const String positive = "Positive";
  static const String negative = "Negative";
  static const String neutral = "Neutral";
  static const String cancel = "Cancel";
  static const String ok = "OK";
  static const String yes = "Yes";
  static const String no = "No";
  static const String close = "Close";
  static const String dismiss = "Dismiss";
  static const String retry = "Retry";
  static const String tryAgain = "Try Again";
  static const String continueText = "Continue";
  static const String submit = "Submit";
  static const String save = "Save";
  static const String delete = "Delete";
  static const String edit = "Edit";
  static const String update = "Update";
  static const String add = "Add";
  static const String create = "Create";
  static const String share = "Share";
  static const String copy = "Copy";
  static const String cut = "Cut";
  static const String paste = "Paste";
  static const String selectAll = "Select All";
  static const String select = "Select";

  static colorFromButtonType({required String type, required BuildContext context}) {
    if (type == ButtonType.positive) {
      return CupertinoColors.activeGreen;
    }
    if (type == ButtonType.negative) {
      return CupertinoColors.systemRed;
    }
    if (type == ButtonType.neutral) {
      return CupertinoColors.systemGrey;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }
}
