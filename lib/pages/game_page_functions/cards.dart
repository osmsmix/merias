import 'package:playing_cards/playing_cards.dart';

card (String suit, String value) {
  Suit cardSuit= Suit.joker;
  CardValue cardValue=CardValue.two;
  if(suit == "clubs"){
    cardSuit = Suit.clubs;
  } else if(suit == "diamonds"){
    cardSuit = Suit.diamonds;
  } else if(suit == "hearts"){
    cardSuit = Suit.hearts;
  } else if(suit == "spades"){
    cardSuit = Suit.spades;
  }

  if(value == "ace"){
    cardValue = CardValue.ace;
  } else if(value == "2"){
    cardValue = CardValue.two;
  } else if(value == "3"){
    cardValue = CardValue.three;
  } else if(value == "4"){
    cardValue = CardValue.four;
  } else if(value == "5"){
    cardValue = CardValue.five;
  } else if(value == "6"){
    cardValue = CardValue.six;
  } else if(value == "7"){
    cardValue = CardValue.seven;
  } else if(value == "8"){
    cardValue = CardValue.eight;
  } else if(value == "9"){
    cardValue = CardValue.nine;
  } else if(value == "10"){
    cardValue = CardValue.ten;
  } else if(value == "jack"){
    cardValue = CardValue.jack;
  } else if(value == "queen"){
    cardValue = CardValue.queen;
  } else if(value == "king"){
    cardValue = CardValue.king;
  }
  return PlayingCard(cardSuit, cardValue);
}