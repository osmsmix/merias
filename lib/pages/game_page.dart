import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';
import 'package:provider/provider.dart';
import 'package:testmerias/pages/game_page_functions/cards.dart';
import 'package:testmerias/pages/game_page_widgets/table_widget.dart';
import 'package:testmerias/providers/user_provider.dart';

import '../backend/functions/auth.dart';
import '../providers/player1_provider.dart';
import '../providers/player2_provider.dart';
import '../providers/player3_provider.dart';
import 'game_page_widgets/players_cards_place.dart';
import 'game_page_widgets/user_cards_place.dart';


class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenwidth > 900;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 62, 53),
      appBar: isDesktop ? null : AppBar(title: Text("Game Page")),
      drawer: isDesktop ? null : Drawer(child: Center(child: Text("Menu")),width: 50,),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Row(
                  spacing: 5,
                  children: [
                    if (isDesktop) 
                    Container(
                      width: 50,
                      color: Colors.blueGrey[50],
                      child: Center(child: Text("Sidebar Menu")),
                    ),
                     Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Container(
                    // color: Colors.green[50],
                    decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2),borderRadius: BorderRadius.circular(8),color: Colors.green[50],),
                    width: constraints.maxWidth,
                    height: constraints.maxWidth,
                    child: Row(
                                    spacing: 5,
                                    children: [
                                    SizedBox(
                                     width: 60,
                                      child: PlayersCardsPlace(playerIndex: 3,numberOfCards: context.watch<Player3Provider>().numberOfCards,),
                                    ),
                                    Expanded(
                                        child: Column(
                                          spacing: 5,
                                          children: [
                                            SizedBox(
                                              height: 60,
                                              child: PlayersCardsPlace(playerIndex: 2,numberOfCards: context.watch<Player2Provider>().numberOfCards,),
                                            ),
                                            Expanded(
                                              child: DragTarget(
                                                onAccept: (data) => print("Card Played: $data"),
                                                builder: (context, candidateData, rejectedData) {
                                                  return TableWidget();
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 100,
                                              child: UserCardsPlace(userCards: context.watch<UserProvider>().userCards,),
                                            ),
                                          ],
                                        ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      child: PlayersCardsPlace(playerIndex: 1,numberOfCards: context.watch<Player1Provider>().numberOfCards,),
                                    ),
                                  ],),
                                  
                                  
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () async => await loggin(), child: Text("start game"))
                ],
              );
                        }
                      ))
                  ]
                  ),
             
          
        )
      ),
    );
  }
}