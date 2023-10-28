/* 함수 */
String sayHello1(String name) {  // 함수 변수명 ( Parameter ) { retuen ' ' } / String 변수명 ( Parameter ) => ' ';
                                 // String을 반환하는 함수
  return "Hello $name nice to meet you!";
}
num plus (num a, num b) => a + b;

String sayHello2({      // Named Parameters - 함수 변수명 ( { Parameter1, ... } )
                        // null safty 기능으로 사용자 null값에 대해 아래 두 방법 실행 必
  String name = 'N/A',  // default value 설정
  required int age,     // 반드시 입력이 필요한 변수 설정
  String country = 'N/A',}) {  // Named Parameters - 함수 변수명 ( { Parameter1, ... } )
  return "Hello $name, you are $age, and you come from $country";
}

String sayHello3(     // Optional Positional Parmeters - 함수 변수명 ( [ Parameter ] )
  String name, [int age = 12, String? country]) => "Hello $name, you are $age, and you come from $country";
              // age 기본값 12 지정, country null값 허용
void main() {  // void : return 하지 않는 함수
/* 메인함수 */
  print("함수1 = " + sayHello1('ps'));
  
  var function_2 = plus(100,2);
  print('함수2 = $function_2');

  var function_3 = sayHello2(
    age: 12, 
    name: 'jogi',
    country: 'USA',
  );
  print('함수3 = $function_3');

  var function_4 = sayHello2(age: 12);  // age는 반드시 입력해야 함수 실행됨.
  print('함수4 = $function_4');

  var function_5 = sayHello3('Mark');  // age 기본값 12 지정, country null값 허용
  print('함수5 = $function_5 \n');

/* collection if */
  var collection_if = true;  // 'collection if'를 사용하기 위한 변수 생성
  var list_1 = [  // ALT + Shift + F ; 리스트 정렬
    1,
    2,
    3,
    4,
    if (collection_if) 5,  // 변수값이 참일 경우 요소 추가
  ];
  print(list_1);

/* collection for */
  var SpecialGuests = ['nick', 'lynn'];
  var Guests = [
    'marcus',
    'jenny',
    'joy',
    for (var Guest in SpecialGuests) '★ $Guest ★',
  ];
   print(Guests);


}
