# ForPet
1. Git 단기습득
2. 코드 단일화<br>
2.1 코드리뷰<br>
2.2 주간 팀 회의<br>
2.3 코드 규칙
3. ETC..<br>
3.1 사용 프로그램
---
Git의 가벼운 부분만 이해하면 좋겠다는 생각에 정리해 봅니다.

# 1. Git 단기습득

### 리모트 저장소

리모트 저장소는 인터넷이나 네트워크 어딘가에 있는 저장소를 말합니다. 간단히 말해서 다른 사람들과 함께 일한다는 것은 리모트 저장소를 관리하면서 데이터를 거기에 Push하고 Pull하는 것이지욥!

- git init - **현재 디렉터리에 Git 저장소를 만듭니다.**

- git clone - **다른 프로젝트를 가져오거나 복사하고 싶을 때 사용합니다.**

- git status - **파일의 상태 확인하기** Git 저장소를 만들었거나 clone 한 후에 이 명령어를 실행하면 아래와 같은 문장을 볼 수 있습니다.

  >$ git status
  On branch master
  nothing to commit, working directory clean

- git status - **README 라는 파일의 코드를 수정했거나 파일을 만들었을 경우** 실행하면 아래와 같은 문장을 볼 수 있습니다.

  >$ git status
  On branch master
  Untracked files:
  (use "git add <file>..." to include in what will be committed)

      README

- git add (파일명) - **파일 추적하기 및 Staged 상태 만들기**

  >$ git add README

- git status - **파일을 추적 및 Staged 상태로 만들었을 경우** 실행하면 아래와 같은 문장을 볼 수 있습니다.

  >$ git status
  On branch master
  Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

      new file:   README

- git commit **-m** "간략한 커밋에 대한 메시지" - **변경사항 커밋하기** Unstaged 상태의 파일은 **커밋되지 않는다는 것**을 기억해야 하며
**커밋하기 전에 git status 명령으로 모든 파일이 Staged 상태인지 확인 후** git commit으로 커밋합니다.

  >$ git commit -m "Test"

- git push origin master - 팀원들에게 파일을 공유하고 싶을 때 위 와 같이 실행하면 **리모트 저장소에 Push 할 수 있습니다.** 이 명령은 git push [리모트 저장소 이름] [브랜치 이름]으로 **git push origin master의 경우 특정 리모트 저장소로 푸시하고 있음을 나타내고 있습니다.**
(Clone 하면 보통 자동으로 origin 이름이 생성됩니다.)

  >$ git push origin master

- git push - 위 에 쓰였던 git push origin master와 비슷하지만 차이는 분명합니다. git push는 해당 브랜치에 정의 된 리모트 저장소 가 이미 있다고 가정을 하고 **기본 리모트 저장소 즉 origin이 사용이 됩니다.** (Clone 하면 보통 자동으로 origin 이름이 생성됩니다.)

  >$ git push

**i.e. - 여러 개의 리모트 저장소를 만든 경우에만 유의미합니다. 단지 하나의 저장소에 커밋하는 경우 그 둘 사이에는 어떠한 차이도 없습니다.**

- git-pull - **다른 저장소 또는 로컬 브랜치에서 데이터를 가져 와서 통합합니다.** 
---

# 2. 코드 단일화
- 먼저 개개인의 코드 짜는 성향은 다를 것입니다. 제 생각엔 잘 짜인 코드를 만든다는건 <br>
팀원들이 코드를 단일화 시켜 한 사람이 짠듯한 코드로 만드는 것이 잘 짜인 코드가 아닐까 합니다.
단일화를 시킬 수 있는 몇 가지 방법을 설명드리겠습니다. (제 주관적인 생각입니다.)

## 코드리뷰
- 코드 리뷰라는 건 사실 어려운 개념이 아닙니다. 
쉽게 말해 자신의 코드를 다른 사람에게 보여주어
더 나은 방향이 있는지 더 좋은 코드가 있는지 같이 도출해내는 것입니다.<br>
예를 들어<br>
**OO보다는 XX 가 더 나은 것 같아요.**<br>
**XX는 OO 부분을 참고해서 이용하면 돼요.**<br>
**OO는 XX에 의해서 문제 되지 않을까요?**<br>
이런 식으로 상대방을 공격하지 않는 느낌을 주도록 이야기하는 것이 포인트라 생각합니다.

## 주간 팀 회의

- 팀 회의는 중요한 문화입니다.<br>
한 주 동안 우리가 무엇을 했는지<br>
다음 주에는 어떤 것을 하면 될지<br>
이번 주 동안 끝 맞히지 못한 작업은 무엇인지를
팀 회의를 통해 정리해야 할 것 같습니다.

## 코드 규칙

- 제 생각에는 간단한 코드규칙만 가지고 개발을 하며 개발이 다 끝났을경우 <br>
Git에 Pull Request를 날려 다 같이 보고 모두의 LGTM을 받으면<br>
master branch에 merge하는게 좋을것 같습니다.

# 3. ETC..

## 사용프로그램
- 메신저 - 슬랙
- 파일 관리 - Git
- IDE - eclipse, vscode
