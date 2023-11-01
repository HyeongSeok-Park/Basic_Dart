/* 1. Class */

/** 추상화 Class - abstract class 변수명 */
abstract class Human {        // 일종의 청사진
  void walk();
}

class Player extends Human {  // 상속받은 Human.walk 함수를 반드시 사용
  void walk() {
    print("I'm walking.");
  }

}

void main () {

/* 2. 변수 선언 */

/** 변수 타입 종류 - String / int / double / bool / num / dynamic / final / const / var */
  String name = 'ps'; // 문자형 변수 선언
  int num1 = 1;       // 정수형 변수 선언
  double num2 = 1.2;  // 실수형 변수 선언
  bool type1 = false; // 불리언 타입 변수 선언
  print('name = $name');  // => ps
  print('num1 = $num1');  // => 1
  print('num2 = $num2');  // => 1.2
  print('type1 = $type1 \n');  // => false
  /* 참고 : 위의 변수 타입들은 보통 전역변수를 지정할떄 사용 */

  num num3;        // 숫자형 선언
  num3 = 100;      // 정수 입력
  print('첫번째 num3 = $num3');  // => 첫번째 num3 = 100
  num3 = 100.123;  // 실수 입력
  print('두번째 num3 = $num3 \n');  // => 두번째 num3 = 100.123

  dynamic name2;   // 모든 타입 사용 가능, 수정 가능
  name2 = '23';    // 문자열 입력
  print('첫번째 name2 = $name2');  // => 첫번째 name2 = 23 (문자형)
  name2 = 23;      // 숫자형 입력
  print('두번째 name2 = $name2');  // => 두번째 name2 = 23 (숫자형)
  name2 = true;    // bool 타입 입력
  print('세번째 name2 = $name2 \n');  // => 세번째 name2 = true (bool)

  final name3 = 'apple';    // 모든 타입 선언 가능, but 변수 선언 후 수정 불가, 런타임시점에 값을 결정
  print('name3 = $name3');  // => name3 = apple
  //name3 = 'apple_phone';  // => 에러발생

  const name4 = 'orange';      // 모든 타입 선언 가능, but 변수 선언 후 수정 불가, 컴파일시점에 값을 결정
  print('name4 = $name4 \n');  // => name4 = orange
  //name4 = 'orange_phone';    // => 에러발생

  var name5 = 'pai';  // 모든 타입 선언 가능, but 한번 선언 후 타입 변경 불가, 일반적으로 많이 사용
  print('첫번째 name5 = $name5');  // => 첫번째 name5 = pai
  name5 = '파이';
  print('두번째 name5 = $name5 \n');  // => 두번째 name5 = 파이
  //name5 = 3.14;  // => 에러발생

  /* 참고 : final, var의 경우 외부에서 정보를 받아오는 변수의 경우 사용 ex) 사용자 입력값, API값...
            const 코드 내에서 정보를 받아오는 변수의 경우 사용 */

  late var name6;  // late + type + 변수명, 나중에 데이터 입력 받음. (tpye 종류 : var, const, final)
  //print('첫번째 name6 = $name6');  // => 변수값이 없어서 에러발생
  name6 = 'API';
  print('name6 = $name6 \n');  // => name6 = 파이
  //name5 = 3.14;  // => 에러발생

/** List <type> 변수명 = [ ... ] / var 변수명 = [ ... ] */
  List<int> list_1 = [1,2,3,4,];  // List <타입> 변수명
  print('첫번째 리스트 : $list_1');

  var list_2 = ['a','b','c','d'];
  print('두번째 리스트 : $list_2');

  list_2.add('e');  // 리스트 요소 추가
  //list_2.add(1);  // 리스트 타입과 같은 타입의 값만 추가 가능
  print('리스트 값 추가 : $list_2 \n');

/** Set <type> 변수명, / var 변수명 = [ ... ] */
  Set<int> set_1 = {1,2,3,4};   // Python 튜플과 같음.
  print('Set1 = $set_1');
  var set_2 = {5,6,7,8};
  print('Set2 = $set_2 \n');

  /* list와 set의 차이점 : Set에 속한 모든 값은 유니크하다. => 중복값X */

/** Map <key(type), value(type)> 변수명 = { } / var 변수명 = { } */
  Map<String, Object> player1 = {  // Python 딕셔너리와 같음.
    '딕셔너리1' : 123,              // Object type은 모든 타입을 의미함.
    '딕셔너리2' : '일이삼',
    '딕셔너리3' : true,
  };
  print('Map1 = $player1');  // => Map = {딕셔너리1: 123, 딕셔너리2: 일이삼, 딕셔너리3: true}
  var player2 = {    // var를 이용하여 선언 가능
    '딕셔너리4' : 123,
    5 : 456,
    'bool' : 789,
  };
  print('Map2 = $player2 \n'); 

/** 변수 타입 변경 - 변수 as type */
  // 다른 타입으로 형변환 불가, 상위 개념으로 변환 가능
  print('타입변경 전 : $num1');  // int 변수
  num n = num1 as num;  // int -> num
  print('타입변경 후 : $n \n');

  print('타입변경 전 : $name5');  // var 변수
  //num m = name5 as String;  // var -> String 변경 불가
  name5 = name5 as dynamic;          // var -> dynamic
                              // as ~ 생략 가능
  print('타입변경 후 : $name5 \n');

/** 문자열 수정 */
  print('print 변수 추가 : $name');
  print('print 숫자 연산 : ${num1 + 100} \n');

/** class 결과 */
var user1 = Player();
user1.walk();
  
}

