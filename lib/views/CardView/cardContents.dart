import 'package:flutter/material.dart';
import 'package:InformationWebsite/models/cardsContent.dart';

class CardContents extends StatelessWidget {
  const CardContents({ Key key, @required this.content })
    : assert(content != null),
      super(key: key);

  final CardContent content;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle = theme.textTheme.headline5.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subtitle1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Photo and title.
        SizedBox(
          height: 184.0,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                // In order to have the ink splash appear above the image, you
                // must use Ink.image. This allows the image to be painted as part
                // of the Material and display ink effects above it. Using a
                // standard Image will obscure the ink splash.
                child: Ink.image(
                  image: AssetImage(content.assetName),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0,
                right: 16.0,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    content.title,
                    style: titleStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Description and share/explore buttons.
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // three line description
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    content.description,
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
//        if (cardContent.type == CardDemoType.standard)
          // share, explore buttons
//          ButtonBar(
//            alignment: MainAxisAlignment.start,
//            children: <Widget>[
//              FlatButton(
//                child: Text('SHARE', semanticsLabel: 'Share ${destination.title}'),
//                textColor: Colors.amber.shade500,
//                onPressed: () { print('pressed'); },
//              ),
//              FlatButton(
//                child: Text('EXPLORE', semanticsLabel: 'Explore ${destination.title}'),
//                textColor: Colors.amber.shade500,
//                onPressed: () { print('pressed'); },
//              ),
//            ],
 //         ),
      ],
    );
  }
}