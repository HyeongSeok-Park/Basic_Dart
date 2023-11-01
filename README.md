개인적으로 공부하며 느낀 자주 사용되는 명령어 정리

# 01_Basic_Dart

## 1. 함수

- 함수 선언 - 함수 변수명 ( Parameter ) { retuen ' ' } / 함수 변수명 ( Parameter ) => ' ';
- Named Parameters - 함수 변수명 ( { Parameter1, ... } )
- Positional Parmeters - 함수 변수명 ( [ Parameter ] )
- Q Operator - 조건절 ? True결과값 : False결과값
- QQ Operator - True결과값 ?? False결과값
- ??= Operator - 변수 ??= value;
- Alias - tpyedef 변수명 = type선언

## 2. enum
- enum 생성 - enum 변수명 { 요소1, 요소2, ... }

## 3. Class
- Class 선언 - Class 변수명 { type 타입명 ; }
- 생성자 함수 - Class명 ( Parameter1, ... )
- 생성자 함수 추가 - Class명.함수명 ( { Parameter1, ... } ) : Parameter1 ...
- Api 생성자 함수 추가 - Class명.함수명 ( Map < 'key' types: 'value' types > ) : Parameter1 ...

## 4. 상속
- class "자식class" extends "부모class" { ... }
- override - 부모class.함수명 ( ) { super.함수명 ( ); }
- Mixin - class 변수명 with 변수명

- collection if - List [ 요소1, ... , if ( bool ) 요소n ]
- collection for - List [ 요소1, ... , for ( 변수 ) 요소n ]
- forEach - 변수명.forEach( ( a ) {  } )
- 생성자 함수 자동완성 - var 변수명 = Class명
- Cascade Operator - ..함수명

# 02_Basic_Dart


## 1. Class
- 추상화 Class - abstract class 변수명

## 2. 변수 선언

(변수 타입 종류)
- String a - 문자열 변수
- int - 정수형 변수
- double - 실수형 변수
- bool - 불리언 타입 변수
- num - 숫자형 변수
- dynamic - 모든 타입 변수 (수정 가능)
- final - 모든 타입 변수 (수정 불가능)
- const - 모든 타입 변수 (수정 불가능, 런타임 성능↑)
- var - 모든 타입 변수 (수정 불가능, 전역 변수)
- late 타입 변수명 - 나중에 변수 선언
(List)
- List <type> 변수명 = [ ... ] / var 변수명 = [ ... ]
- 변수명.add ( ... ) - 리스트 요소 추가
(Set)
- Set <type> 변수명, / var 변수명 = [ ... ]
(Map)
- Map <key(type), value(type)> 변수명 = { } / var 변수명 = { }

(타입 변경)
- 변수 타입 변경 - a as "type" ; (type: num, dynamic...)

(리스트)
- List <타입> 변수명 = [ ... ] / var 변수명 = [ ... ]
- 변수명.add ( ... ) - 리스트 요소 추가

(문자열 수정)
- print 변수 추가 : $ + 변수명
- print 숫자 연산 : $ { 변수명 + 숫자 }


# 사용환경
VSCode
