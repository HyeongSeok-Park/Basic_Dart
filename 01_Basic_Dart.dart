/* 1. 함수 */

/** 함수 선언 - 함수 변수명 ( Parameter ) { retuen ' ' } / 함수 변수명 ( Parameter ) => ' '; */
String sayHello1(String name) {
  // String 반환 함수, 함수선언형태 1
  return "Hello $name nice to meet you!";
}

num plus(num a, num b) => a + b; // num 반환 함수, 함수선언형태 2

/** Named Parameters - 함수 변수명 ( { Parameter1, ... } ) */
String sayHello2({
  // null safty 기능으로 사용자 null값에 대해 아래 두 방법 실행 必
  String name = 'N/A', // default value 설정
  required int age, // 반드시 입력이 필요한 변수 설정
  String country = 'N/A',
}) {
  // Named Parameters - 함수 변수명 ( { Parameter1, ... } )
  return "Hello $name, you are $age, and you come from $country";
}

/** Positional Parmeters - 함수 변수명 ( [ Parameter ] ) */
String sayHello3(String name, [int age = 12, String? country]) =>
    "Hello $name, you are $age, and you come from $country";
// age 기본값 12 지정, country null값 허용

/** ? Operator - 조건절 ? True결과값 : False결과값 */
String sayHello4(String? name) => name != null ? name.toUpperCase() : 'NA';

/** ?? Operator - True결과값 ?? False결과값 */
String sayHello5(String? name) => name?.toUpperCase() ?? 'NA';

/** ??= Operator - 변수 ??= value; */
String sayHello6(String? name) => name ??= '??= 결과값';

/** Alias - tpyedef 변수명 = type선언 */
typedef UserInfo = Map<String, String>; // Map<1,2> => var a = { 1:2 } ?
String sayHi(UserInfo userinfo) {
  return 'Hi ${userinfo['name']}';
}

/* 2. enum */

/** enum 생성 - enum 변수명 { 요소1, 요소2, ... } */
enum Team { red, blue } // 임의의 type 생성, 따옴표 사용 X
// 오타, 오기입에 대해 실수 예방

/* 3. Class */

/** Class 선언 - Class 변수명 { type 타입명 ; } */
class Player {
  String name = 'Mino'; // 함수와 다르게 Class 생성 시 type 반드시 명시
  int age = 12;
  final String address = 'Korea'; // 수정 불가능한 변수 생성

  void sayHello() {
    print(
        'Hello, $name. your age is $age and you are from $address'); // this.name과 의미 동일. 되도록 this 사용 X
  }
}

/** 생성자 함수 - Class명 ( Parameter1, ... ) */
class Player_con {
  String name, address; // 동일한 타입의 변수는 함께 선언 가능
  int age;
  Team team; // enum 활용

  /*Player(String name, int age) {   // 생성자 함수1
    this.name = name;
    this.age = age;
  }*/
  /*Player_con(this.name,            // 생성자 함수2 - Positional Constructor Parameters
               this.age, 
               this.address, 
               this.team);*/
  Player_con({
    // 생성자 함수3 - Named Constructor Parameters
    required this.name,
    required this.age,
    required this.address,
    required this.team,
  });

/** 생성자 함수 추가 - Class명.함수명 ( { Parameter1, ... } ) : Parameter1 ... */
  Player_con.blueTeam({
    required String name,
    required int age,
    required String address,
  })  : this.name = name, // 콜론 (:) : Player_con 객체 초기화
        this.age = age,
        this.team = Team.blue, // enum 사용시 enum 형태 불러온다.
        this.address = address;

/** Api 생성자 함수 추가 - Class명.함수명 ( Map < 'key' types: 'value' types > ) : Parameter1 ... */
  Player_con.redTeam(Map<String, dynamic> player_api)
      : this.name = player_api['name'],
        this.age = player_api['age'],
        this.team = Team.red,
        this.address = player_api['address'];

  String sayHello() {
    return 'Hello, $name. your age is $age and you are from $address';
  }
}

/* 4. 상속 */

/** class "자식class" extends "부모class" { ... } */
class Pliot1 extends Player_con {
  int playTime;
  Pliot1({
    required this.playTime,
    required String name, // 상속받는 변수들은 "this.변수명"이 아닌 "type 변수명"으로 한다.
    required int age,
    required String address,
    required Team team,
  }) : super(
          // 입력받는 값을 부모class와 연동
          address: address,
          name: name,
          team: team,
          age: age,
        );

/** override - 부모class.함수명 ( ) { super.함수명 ( ); } */
  @override
  String sayHello() {
    var new_sayHello = super.sayHello();
    return '${new_sayHello}, and I play for $playTime hours by $team';
  }
}

/** Mixin - class 변수명 with 변수명 */
mixin class run {        // mixin (class) 생성
  String ruuuun () {     // minxin class -> 생성자가 없는 class
    return 'ruuuuun!';
  }
}
class Pliot2 with run {  // mixin (class) 가져오기
  String name = 'Jake';
  Pliot2();
  void say_yo () {
    print('ddd');
  }
}

void main() {
  // void 메인함수 : return 하지 않는 함수

/* 함수 실행 결과 */
  print("함수1 = " + sayHello1('ps'));
  var function_2 = plus(100, 2);
  print('함수2 = $function_2');
  var function_3 = sayHello2(
    age: 12,
    name: 'jogi',
    country: 'USA',
  );
  print('함수3 = $function_3');
  var function_4 = sayHello2(age: 12); // age는 반드시 입력해야 함수 실행됨.
  print('함수4 = $function_4');
  var function_5 = sayHello3('Mark'); // age 기본값 12 지정, country null값 허용
  print('함수5 = $function_5');
  var function_6 = sayHello4(null);
  print('함수6 = $function_6');
  var function_7 = sayHello5(null);
  print('함수7 = $function_7');
  var function_8 = sayHello6(null);
  print('함수8 = $function_8');
  var function_9 = sayHi({'name': 'jogi'});
  print('함수9 = $function_9 \n');

/* Class 실행 결과 */
  var player1 = Player(); // 선언한 class 인스턴스 생성
  print('클래스1 : $player1');
  print('클래스1 name = ${player1.name}');
  print('클래스1 age = ${player1.age}');
  player1.name = 'jogi'; // 변수 수정 가능
  print('클래스1 name 변경 = ${player1.name}');
  player1.sayHello(); // void 함수 출력
  var player2 =
      Player_con(name: 'Sol', age: 300, address: 'USA', team: Team.blue);
  print('클래스2 : ${player2.sayHello()}');
  var player3 = Player_con.blueTeam(name: 'marry', age: 12, address: 'Jappen');
  print('클래스3 : ${player3.sayHello()}');
  var player4 = Pliot1(
    playTime: 30,
    name: 'Jenny',
    age: 15,
    address: 'Australia',
    team: Team.red,
  );
  print('클래스4 : ${player4.sayHello()}');
  var player5 = Pliot2();
  print('클래스5 : ${player5.ruuuun()} \n');

/** collection if - List [ 요소1, ... , if ( bool ) 요소n ] */
  var collection_if = true; // 'collection if'를 사용하기 위한 변수 생성
  var list_1 = [
    // ALT + Shift + F ; 리스트 정렬
    1,
    2,
    3,
    4,
    if (collection_if) 5, // 변수값이 참일 경우 요소 추가
  ];
  print(list_1);

/** collection for - List [ 요소1, ... , for ( 변수 ) 요소n ] */
  var SpecialGuests = ['nick', 'lynn'];
  var Guests = [
    'marcus',
    'jenny',
    'joy',
    for (var Guest in SpecialGuests) '★ $Guest ★',
  ];
  print('$Guests \n');

/** forEach - 변수명.forEach( ( a ) {  } ) */
  var apiData = [
    // map값을 리스트 형태로 가지는 api를 다룰때 주로 이용
    {
      'name': 'nick',
      'age': 12,
      'address': 'Korea',
    },
    {
      'name': 'Jean',
      'age': 13,
      'address': 'Japen',
    },
    {
      'name': 'Anna',
      'age': 12,
      'address': 'Korea',
    },
  ];
  apiData.forEach((n) {
    // n은 apiData가 가지는 요소, 리스트 1번째 값 (tpye: map)
    var player_api = Player_con.redTeam(n);
    print(player_api.sayHello());
  });

  /** 생성자 함수 자동완성 - var 변수명 = Class명 */
  var User1 =
      Player_con(name: 'user1', age: 00, address: 'N/A', team: Team.red);
  print('\n${User1.sayHello()}\n');

  /** Cascade Operator - ..함수명 */
  var User2 = User1
    ..name = 'user2'
    ..age = 99;
  print('${User2.sayHello()}\n'); // 세미콜론(;) 주의!
}
