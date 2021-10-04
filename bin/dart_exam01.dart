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
  static final int maxHp = 50;
  static final int maxMp = 10;

  int mp = maxMp;

  Cleric(String name, int hp) : super(name, hp);

}



void main(List<String> arguments){
  final hong = Hero('홍길동', 30);
  final lim = Hero('임꺽정', 100);

  print(hong.hashCode);
  print(lim.hashCode);

  final cleric = Cleric('우서', 300);

}

