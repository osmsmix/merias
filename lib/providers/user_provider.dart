import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName ;
  int playerIndex ;
  List<Map<String, String>> userCards;
  int numberOfCards ;
  bool talking ;
  bool playing ; 
  bool mixing ;
  Map<String, String> playedCard ;
  String whatHeSaid;
  UserProvider({this.userName="", this.playerIndex=0, this.numberOfCards=8, this.talking=false, this.playing=false, this.mixing=false, this.playedCard=const {"suit": "hearts", "value": "10"}, this.whatHeSaid="",this.userCards = const [{"suit":"clubs","value":"ace"},{"suit":"clubs","value":"2"},{"suit":"clubs","value":"3"},{"suit":"clubs","value":"4"},{"suit":"clubs","value":"5"},{"suit":"clubs","value":"6"},{"suit":"clubs","value":"7"},{"suit":"clubs","value":"8"}]});

  
  void setUserName(String name){
    userName = name;
    notifyListeners();
  }
  void setUserCards(List<Map<String, String>> cards){
    userCards = cards;
    notifyListeners();
  }
  void setNumberOfCards(int number){
    numberOfCards = number;
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