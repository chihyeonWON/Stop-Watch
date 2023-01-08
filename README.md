# stopwatch
```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-01-07 ~
개발자 : Won Chi Hyeon
```

### 앱소개
```
앱 이름 : StopWatch
앱 기능 : 타이머를 시작, 일시정지하고 초기화할 수 있습니다.
          타이머 실행 중에 랩타임을 측정하여 표시합니다.
핵심 구성 요소 : Timer : 일정 시간 간격으로 지정한 동작을 수행하게 하는 클래스
```

### 화면 구성
```
스톱워치는 화면이 하나인 앱입니다.
화면에 표시되는 시간은 계속 변화하기 때문에 상태가 있는 StatefulWidget으로 구성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211133203-5ea38b67-57e4-454a-880d-9be4dce7ec9e.png)

#### 화면 하단 AppBar 생성
```
높이 50의 하단 AppBar를 생성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211133368-0566cc82-58da-4601-b662-3ca8b1b72b10.png)

#### 시작 또는 일시정지 클릭 버튼 생성
```
시작 또는 일시정지 클릭 버튼을 floatingActionButton을 생성하였습니다.
클릭했을 때 작동하는 이벤트 메서드는 나중에 작성합니다.
```
![image](https://user-images.githubusercontent.com/58906858/211133428-498bc578-b04b-4e16-af8f-e91e71e62bdc.png)

#### 버튼의 위치를 가운데로 설정
```
시작 또는 일시정지 클릭 버튼을 floatingActionButtonLocation 프로퍼티를 사용해서 위젯의 위치를 가운데로 지정합니다.
```
![image](https://user-images.githubusercontent.com/58906858/211133524-638a18b8-d852-4a23-ac75-7353742c1f7b.png)

#### 스톱워치의 시간 영역 생성
```
스톱워치의 시간이 들어가는 영역을 생성하였습니다.
초 단위의 시간과 1/100 초 단위의 시간을 표시합니다.
```
![image](https://user-images.githubusercontent.com/58906858/211177707-49129dda-329d-4218-b1d9-0519d693f3c1.png)

#### 랩타임을 표시하는 영역 생성
```
시간 영역 바로 밑에 랩타임을 표시하는 영역을 생성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211177798-c3d82304-ded3-4c46-8581-234302ffdf0e.png)

#### 초기화 버튼 생성
```
스톱워치의 시간을 0초 00 으로 초기화하는 버튼을 왼쪽 아래에 생성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211177935-c1991726-fc76-4649-aa9e-42c36286dbb8.png)

#### 랩타임 버튼 생성
```
눌렀을 때 랩타임을 생성하는 버튼을 오른쪽 아래에 생성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211178008-49e3fdbf-9565-4b23-9000-0b5d82813f32.png)
