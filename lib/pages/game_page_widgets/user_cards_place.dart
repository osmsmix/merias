import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

import '../game_page_functions/cards.dart';

class UserCardsPlace extends StatefulWidget {
  List<Map<String, String>> userCards = [];
   UserCardsPlace({super.key,required this.userCards});

  @override
  State<UserCardsPlace> createState() => _UserCardsPlaceState();
}

class _UserCardsPlaceState extends State<UserCardsPlace> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        child: FlatCardFan(
              children: [
                for (int i = 0; i < widget.userCards.length; i++)
              Draggable(
                  data: "${widget.userCards[i]["suit"]}-${widget.userCards[i]["value"]}",
                child: Container(
                  width: 80,
                  child: PlayingCardView(
                    card: card(widget.userCards[i]["suit"]!, widget.userCards[i]["value"]!),
                    showBack: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    
                  ),
                ),
                feedback: Container(
                  width: 80,
                  child: PlayingCardView(
                    card: card(widget.userCards[i]["suit"]!, widget.userCards[i]["value"]!),
                    showBack: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    
                  ),
                ),
                childWhenDragging: Container(),
              ),]),
      );
    });
  }
}


