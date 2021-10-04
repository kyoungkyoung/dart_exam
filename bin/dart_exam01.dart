import 'dart:math';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(){
    print('공격했다');
  }
}

// const int maxHp = 50;
// const int maxMp = 10;

class Cleric extends Hero{
  // 상수 필드로 선언
  // static final int maxHp = 50;
  // static final int maxMp = 10;
  static const int maxHp = 50;
  static const int maxMp = 10;

  int mp = maxMp;

  Cleric(String name, {int hp = maxHp, this.mp = maxMp}) : super(name, hp);

  selfAid(){
    if(mp >= 5){
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int sec){
    int beforeMp = mp;
    int recoverMp = sec + Random().nextInt(3);

    mp += recoverMp;

    if (mp > maxMp) {
      mp = maxMp;
    }
    //mp = min(mp, maxMp);

    return mp = beforeMp;
  }
}



void main(List<String> arguments){
  final hong = Hero('홍길동', 30);
  final lim = Hero('임꺽정', 100);

  print(hong.hashCode);
  print(lim.hashCode);

  final cleric = Cleric('우서', 300);

}

