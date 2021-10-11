```
#!/usr/bin/env bash

declare -a plugins=(
	"github.com 907th      vim-auto-save"
	"github.com junegunn   fzf.vim"
	"github.com maralla    completor.vim"
	"github.com mboughaba  i3config.vim"
	"github.com tpope      vim-commentary"
	"github.com tpope      vim-eunuch"
	"github.com tpope      vim-fugitive"
)

declare url
declare folder
for line in "${plugins[@]}";do
	read -r dns own name <<< "$line"
	url="https://$dns/$own/$name.git"
	folder="pack/$own/start/$name"
	# mkdir --parents "$folder"
	git submodule add -- "$url" "$folder"
done
```
