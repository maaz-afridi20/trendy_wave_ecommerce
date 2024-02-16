import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    this.onPressed,
    this.textColor,
    this.buttonTitle = 'View All',
    required this.title,
    this.showActionButton = true,
    super.key,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
