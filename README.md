# 0. 커넥트코드(connectCode):<br> SpringBoot 를 활용한 개발자 컨설팅 매칭 사이트
'커넥트코드'는 개발자 컨설팅을 위한 페이지 입니다.<br>
이 프로젝트의 목표는 취준생 개발자들이나 개발자로서의 공부를 하고싶은 사람들이 멘티로, 현업 개발자들이 멘토로 연결되며, 주된 기능으 멘토링,컨설팅이 이뤄지는 비즈니스 플랫폼을 구축하는 것입니다.<br>
멘토/멘티 로 구분하여 작업하였습니다.
<br><br>

# 1. 사용한 기술/툴
![image](https://github.com/dydruddl/Codename404/assets/132230909/7d551a3b-c5b5-4a03-834a-4f647b325956)
<br><br>

# 2. DB
![image](https://github.com/dydruddl/Codename404/assets/132230909/6e812b3e-4b66-4708-a2cd-5b5a9252f5fc)
<br><br>

# 3. 함용경 구현부분
1. 약관동의 페이지 제작 - 유효성검사를 통해 모든항목에 동의를 해야 회원가입양식으로 이동가능하게 구현.
2. 문자인증 API - 쿨SMS API를 이용. 문자인증 기능 구현.
3. 멘티 회원가입<br>
   3-1. 멘티 회원가입 폼 제작(HTML,CSS)<br>
   3-2. 유효성검사 및 중복검사 구현.<br>
4. 멘토 회원가입<br>
   4-1. 멘토 회원가입 폼 제작(HTML,CSS)<br>
   4-2. 유효성검사 및 중복검사 구현.<br>
5. 아이디 찾기 - 입력받은 회원정보와 일치하는 회원이 DB에 있을때, 해당 아이디 출력 구현 
6. 비밀번호 찾기 - 휴대폰 인증을 통해 비밀번호 재설정
7. 학원정보 게시판 - HRD-NET API를 이용.
   JSON형식의 데이터를 가져와, ajax로 게시판구현.
   자바스크립트로 페이징처리와 검색기능구현.
   카드 클릭시 해당 과정의 HRD-NET 주소로 이동됨.
<br><br>

# 4. AWS 배포
http://13.124.169.213/
<br><br>

# 5. 구동 화면<br><br>

# 5-1. 메인화면<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/086443ca-209c-465b-846b-554871a0a66f)
<br><br>

# 5-2. 회원가입/로그인/회원가입 화면창 구분<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/0699a71e-8538-427e-afa3-09b969461afb)
<br><br>

# 5-3. 이용약관 및 멘티 회원가입 폼<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/e7343856-0bf7-4133-bf73-ddf61495d68c)
<br><br>

# 5-4. 멘토 회원가입<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/00add532-2266-46c2-9c79-7ee023d19566)
<br><br>

# 5-5. ID/PW 찾기<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/055343e6-316b-420f-bdf3-fb0f974e6c75)
<br><br>

# 5-6. 학원정보 게시판<br><br>
![image](https://github.com/dydruddl/Codename404/assets/132230909/96fb28c4-14ef-481f-935d-6091cc6f5f2b)
<br><br>
