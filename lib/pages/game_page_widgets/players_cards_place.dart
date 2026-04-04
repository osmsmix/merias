import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

class PlayersCardsPlace extends StatefulWidget {
  final int playerIndex;
  final int numberOfCards;
  const PlayersCardsPlace({super.key,required this.playerIndex,required this.numberOfCards});

  @override
  State<PlayersCardsPlace> createState() => _PlayersCardsPlaceState();
}

class _PlayersCardsPlaceState extends State<PlayersCardsPlace> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Transform.rotate(
        angle:widget.playerIndex%2==0?0: math.pi / 2,
          child: Container(
            height:widget.playerIndex%2==0?null: constraints.maxWidth,
            width: widget.playerIndex%2==0?constraints.maxHeight: null,
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1),borderRadius: BorderRadius.circular(8)),
            child: FlatCardFan(
              children: [
                for (int i = 0; i < widget.numberOfCards; i++)
              PlayingCardView(
                card: PlayingCard(Suit.clubs, CardValue.ace),
                showBack: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.black, width: 2),
                ),
                
              ),]),
          ),
      );
  });
}
}