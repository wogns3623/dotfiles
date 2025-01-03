# Dotfiles

## Backup
./backup.sh

## Restore
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/wogns3623/dotfiles/HEAD/init.sh)"

## TODO
- [ ] Add Obsidian vault restore
- [ ] Iterm & other app configuration backup
- [ ] remove history backup
  - .zsh_history를 읽어올 수 없으면 zsh 내에서 몇몇 명령어들이 작동하지 않음
- [ ] oh-my-zsh 설치시 기존 zshrc 파일 유지
- [ ] init.sh에 사용자 입력 자동화
  - [ ] brew bundle 에서 비밀번호 입력 자동화
