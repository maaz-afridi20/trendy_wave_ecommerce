import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TCoiceChip extends StatelessWidget {
  const TCoiceChip({
    super.key,
    required this.text,
    required this.isSelected,
    this.onSelected,
    this.onTap,
  });

  final String text;
  final bool isSelected;
  final void Function(bool)? onSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: isSelected,
        labelStyle: TextStyle(color: isSelected ? TColors.white : null),
        onSelected: onSelected,
        // avatar is icon... on the left side.
        avatar: isColor
            ? TCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
        selectedColor: isColor ? THelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
