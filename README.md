#How to use 

Run *./setup.sh* to install the plugins

**(The CoffeeScript / JavaScript indentation requires Vim 7.4)** 

# Included Plugins

1. Vundle: 플러그인 관리자
2. **auto-pairs** : 자동으로 괄호 짝을 맞춰줌
3. **vim-surround** : 요상한 단축키로 단어에 따옴표 / 괄호 씌우기 - http://www.vim.org/scripts/script.php?script_id=1697
4. **nerdcommenter** : 블럭을 설정한 후 "\ + c + space" 로 주석 처리 - 필수!
5. **vim-snipmate** : inc(tab) => #include <stdio.h>, main(tab) => int main(int argc, const char * argv[])... 등등으로 IDE에서나 볼 수 있던 고급 auto-completion 기능을 vim에서도! (vim-snippets에 auto-completion 리스트가 있음)
6. **syntastic** : 소스를 저장하면 대충 컴파일해봐서 어디에 신택스 에러가 있는지 보여줌. Visual Studio의 IntelliSense같은 기능
7. **restore_view** : 마지막으로 있었던 커서의 위치와 fold 된 코드를 자동으로 저장해줌 

# Syntax Files

1. **html5-vim** : HTML5 - HTML과 JavaScript
2. **vim-haml** : HAML
3. **vim-less** : LESS
4. **vim-scala** : Scala
5. **vim-handlebars** : Handlebars
6. **vim-rails** : has_many 등등의 Rails 예약어 highlighting
7. **grunt.vim** : Grunt의 Gruntfile syntax highlighting 및 각종 이상한 기능들
8. **vim-coffee-script** : CoffeeScript
9. **vim-javascript** : JavaScript
10. **vim-ruby** : Ruby

# Dependencies
1. **tlib_vim** : Snipmate에 필요
2. **vim-addon-mw-utils** : Snipmate에 필요
3. **vim-snippets** : Snipmate에서 사용하는 snippets파일들
4. **tidy5** : Syntastic 에서 HTML5 syntax checking 할 때 필요 - https://github.com/htacg/tidy-html5
