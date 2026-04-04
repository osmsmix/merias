import 'package:flutter/material.dart';

class Player3Provider extends ChangeNotifier{
  String userName ;
  int playerIndex ;
  int numberOfCards ;
  bool talking ;
  bool playing ;
  bool mixing ;
  Map<String, String> playedCard ;
  String whatHeSaid;
  Player3Provider({this.userName="", this.playerIndex=0, this.numberOfCards=3, this.talking=false, this.playing=false, this.mixing=false, this.playedCard=const {"suit": "hearts", "value": "10"}, this.whatHeSaid=""});

  void setNumberOfCards(int number){
    numberOfCards = number;
    notifyListeners();
  }
  
  void setUserName(String name){
    userName = name;
    notifyListeners();
  }
  void setTalking(bool isTalking){
    talking = isTalking;
    notifyListeners();
  }
  void setPlaying(bool isPlaying){
    playing = isPlaying;
    notifyListeners();
  }
  void setMixing(bool isMixing){
    mixing = isMixing;
    notifyListeners();
  }
  void setPlayedCard(Map<String, String> card){
    playedCard = card;
    notifyListeners(); 
  }
  void setWhatHeSaid(String what){
    whatHeSaid = what;
    notifyListeners();
  }
  
}