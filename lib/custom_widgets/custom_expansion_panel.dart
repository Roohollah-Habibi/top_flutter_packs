import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mypackages_use/stylesDecoration/stylesAndDecorations.dart';

class HeaderExpansion extends StatefulWidget {
  final Widget newPage;
  final String headerName;
  const HeaderExpansion({super.key,required this.newPage,required this.headerName});

  @override
  State<HeaderExpansion> createState() => _HeaderBodyState();
}

class _HeaderBodyState extends State<HeaderExpansion> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.only(right: 5, left: 15),
        trailing: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.newPage,)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('See More',
                  style: seeMoreStyle),
              const SizedBox(width: 10,),
              const FaIcon(FontAwesomeIcons.rightLong,size: 20,)
            ],
          ),
        ),
        iconColor: Colors.cyan.shade900,
        title: Text(widget.headerName,style: detailsTextButtonStyle,),
      ),
    );
  }
}
