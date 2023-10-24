// 메인 함수 호출 - void main ( ) { }
void main () {

  // 변수 타입 선언 - String / int / double / bool / num / dynamic / final / const / var
  String name = 'ps'; // 문자형 변수 선언
  int num1 = 1;       // 정수형 변수 선언
  double num2 = 1.2;  // 실수형 변수 선언
  bool type1 = false; // 불리언 타입 변수 선언
  print('name = $name');  // => ps
  print('num1 = $num1');  // => 1
  print('num2 = $num2');  // => 1.2
  print('type1 = $type1 \n');  // => false

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

  final name3 = 'apple';    // 모든 타입 선언 가능, but 변수 선언 후 수정 불가, 실행시점에 값을 결정
  print('name3 = $name3');  // => name3 = apple
  //name3 = 'apple_phone';  // => 에러발생
  const name4 = 'orange';      // 모든 타입 선언 가능, but 변수 선언 후 수정 불가, 컴파일시점에 값을 결정 -> 런타임 성능이 더 좋다.
  print('name4 = $name4 \n');  // => name4 = orange
  //name4 = 'orange_phone';    // => 에러발생

  var name5 = 'pai';  // 모든 타입 선언 가능, but 한번 선언 후 타입 변경 불가, 보통 전역변수로 사용할때 사용
  print('첫번째 name5 = $name5');  // => 첫번째 name5 = pai
  name5 = '파이';
  print('두번째 name5 = $name5 \n');  // => 두번째 name5 = 파이
  //name5 = 3.14;  // => 에러발생

  // 변수 타입 변경 - 변수 as type
  // 다른 타입으로 형변환 불가, 상위 개념으로 변환 가능
  print('타입변경 전 : $num1');  // int 변수
  num n = num1 as num;  // int -> num
  print('타입변경 후 : $n \n');

  print('타입변경 전 : $name5');  // var 변수
  //num m = name5 as String;  // var -> String 변경 불가
  name5 = name5 as dynamic;          // var -> dynamic
                              // as ~ 생략 가능
  print('타입변경 후 : $name5');

}