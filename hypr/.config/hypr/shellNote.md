Мой Rust-Терминал (Arch + Kitty + Zsh)
Список утилит и настроек для создания быстрого и красивого терминала.

1. Основные инструменты (Rust)
• eza — замена `ls` (иконки, git статус, дерево).

• bat — замена `cat` (подсветка синтаксиса).

• zoxide — умный `cd` (команда `z`).

• starship — быстрый и красивый промпт.

• yazi — асинхронный файловый менеджер с превью картинок.

• bottom (btm) — системный монитор.

• tealdeer (tldr) — быстрые шпаргалки по командам.

• delta — красивый `git diff`.

• helix (hx) — современный модальный редактор.

2. Полезные алиасы для .zshrc
```

alias ls='eza --icons --group-directories-first'

alias ll='eza -lgh --icons --git --group-directories-first'

alias cat='bat --paging=never'

alias cd="z"

alias htop="btm"

alias help="tldr"

alias vi="hx"

```

3. Настройка выхода из Yazi с переходом в директорию
```

function y() {

	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"

	yazi "$@" --cwd-file="$tmp"

	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then

		builtin cd -- "$cwd"

	fi

	rm -f -- "$tmp"

}

```

4. Настройка Git Delta
```

git config --global core.pager "delta"

git config --global delta.side-by-side true

git config --global delta.navigate true

```
