# Riverpod Practice
이 프로젝트는 Riverpod을 사용하여 상태 관리를 연습하는 예제 프로젝트입니다.

## 주요 기능
- 채팅 메시지 가져오기: 원격 서버에서 채팅 메시지를 가져옵니다.
- 로컬 채팅 메시지 저장: 로컬 데이터베이스에 채팅 메시지를 저장합니다.
- 로컬 채팅 메시지 불러오기: 로컬 데이터베이스에서 모든 채팅 메시지를 불러옵니다.

## 사용된 기술 스택
- 언어: Dart
- 상태 관리: Riverpod
- 데이터베이스: Isar
- 의존성 주입: Riverpod

## 프로젝트 구조
lib/layers/data/entity/chat_message_dao.dart: 채팅 메시지 데이터 모델 정의
lib/layers/domain/usecase/chat/chat_usecase.dart: 채팅 관련 유스케이스 정의
lib/layers/domain/repository/chat_repository.dart: 채팅 관련 리포지토리 인터페이스 정의
