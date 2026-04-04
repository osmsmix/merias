import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';
import 'package:provider/provider.dart';

import '../../providers/player1_provider.dart';
import '../../providers/player2_provider.dart';
import '../../providers/player3_provider.dart';
import '../../providers/user_provider.dart';
import '../game_page_functions/cards.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
                                              double width = constraints.maxWidth;
                                              double height = constraints.maxHeight;
                                              double defaultTop0 = height-110;
                                              double defaultRight0 = width/2-40;
                                              double defaultTop1 = height/2-55;
                                              double defaultRight1 = 0;
                                              double defaultTop2 = 0;
                                              double defaultRight2 = width/2-40;
                                              double defaultTop3 = height/2-55;
                                              double defaultRight3 = width-80;
                                              final watchUserProvider = context.watch<UserProvider>();
                                              final watchPlayer1Provider = context.watch<Player1Provider>();
                                              final watchPlayer2Provider = context.watch<Player2Provider>();
                                              final watchPlayer3Provider = context.watch<Player3Provider>();
                                              ShapeBorder shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(color: Colors.black, width: 2));
                                                  return Stack(
                                                    children: [
                                                      /* first layer */
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.green[200],
                                                          border: Border.all(color: Colors.black, width: 2),
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                      ),
                                                      /* second layer */
                                                      Positioned(top: defaultTop0,right: defaultRight0,child: Container(width: 80,  child: PlayingCardView(card: card(watchUserProvider.playedCard["suit"]!, watchUserProvider.playedCard["value"]!),shape: shape,)),),
                                                      Positioned(top: defaultTop1,right: defaultRight1,child: Container(width: 80,  child: PlayingCardView(card: card(watchPlayer1Provider.playedCard["suit"]!, watchPlayer1Provider.playedCard["value"]!),shape: shape,)),),
                                                      Positioned(top: defaultTop2,right: defaultRight2,child: Container(width: 80,  child: PlayingCardView(card: card(watchPlayer2Provider.playedCard["suit"]!, watchPlayer2Provider.playedCard["value"]!),shape: shape,)),),
                                                      Positioned(top: defaultTop3,right: defaultRight3,child: Container(width: 80,  child: PlayingCardView(card: card(watchPlayer3Provider.playedCard["suit"]!, watchPlayer3Provider.playedCard["value"]!),shape: shape,)),),
                                                      /* third layer */
                                                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black, width: 2)),)
                                                    ],
                                                  );
                                                }
                                              );
  }
}