# Tips and tricks to remember


## Git 
Add the following lines to show a good looking branch graph of the current git repository in cli. [Src](https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)
[alias]
lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
lg = !"git lg1"

## Code snippet for svd2rust
```json
	"svd2rust modify function": {
		"prefix": ".mod",
		"body": [
			".modify(|r, w| {",
			"\t$1",
			"});"
		],
		"description": "svd2rust modify function"
	},
	"svd2rust modify write function": {
		"prefix": ".modw",
		"body": [
			".modify(|_, w| {",
			"\t$1",
			"});"
		],
		"description": "svd2rust modify write function"
	},
	"svd2rust write function": {
		"prefix": ".wr",
		"body": [
			".write(|w| {",
			"\t$1",
			"});"
		],
		"description": "svd2rust write function"
	}
```