import 'dart:ui' as ui show TextHeightBehavior;

import 'package:flutter/widgets.dart';

import '../utils/screen.dart';

class FlexText extends Text with Screen {
  /// Creates a Text widget, which adapts text style according to screen size
  const FlexText(
    String this.text, {
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScale,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    this.styleXs,
    this.styleSm,
    this.styleMd,
    this.styleLg,
  }) : super(
          text,
          key: key,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaler: textScale,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
        );

  const FlexText.rich(
    super.textSpan, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
    this.styleXs,
    this.styleSm,
    this.styleMd,
    this.styleLg,
  })  : text = null,
        super.rich();

  final String? text;
  final TextStyle? styleXs;
  final TextStyle? styleSm;
  final TextStyle? styleMd;
  final TextStyle? styleLg;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
      TextStyle effectiveTextStyle = style ?? defaultTextStyle.style;
      TextStyle? effectiveXsTextStyle = styleXs;
      TextStyle? effectiveSmTextStyle = styleSm;
      TextStyle? effectiveMdTextStyle = styleMd;
      TextStyle? effectiveLgTextStyle = styleLg;

      if (styleXs?.inherit ?? false) {
        effectiveXsTextStyle = effectiveTextStyle.merge(styleXs);
      }

      if (styleSm?.inherit ?? false) {
        effectiveSmTextStyle = effectiveXsTextStyle?.merge(styleSm);
      }

      if (styleMd?.inherit ?? false) {
        effectiveMdTextStyle = effectiveSmTextStyle?.merge(styleMd);
      }

      if (styleLg?.inherit ?? false) {
        effectiveLgTextStyle = effectiveMdTextStyle?.merge(styleLg);
      }

      TextStyle? currentStyle = Screen.valueByScreen(context,
          main: effectiveTextStyle,
          xs: effectiveXsTextStyle,
          sm: effectiveSmTextStyle,
          md: effectiveMdTextStyle,
          lg: effectiveLgTextStyle);

      if (MediaQuery.boldTextOf(context)) {
        currentStyle =
            currentStyle?.merge(const TextStyle(fontWeight: FontWeight.bold));
      }

      return RichText(
        textAlign: textAlign ?? defaultTextStyle.textAlign ?? TextAlign.start,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap ?? defaultTextStyle.softWrap,
        overflow: overflow ?? defaultTextStyle.overflow,
        textScaler: textScaler ?? MediaQuery.textScalerOf(context),
        maxLines: maxLines ?? defaultTextStyle.maxLines,
        strutStyle: strutStyle,
        textWidthBasis: textWidthBasis ?? defaultTextStyle.textWidthBasis,
        text: TextSpan(
          style: currentStyle,
          semanticsLabel: semanticsLabel,
          text: text,
          children: (textSpan != null ? <InlineSpan?>[textSpan] : null)
              as List<InlineSpan>?,
        ),
      );
    });
  }
}
