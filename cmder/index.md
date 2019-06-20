### 安裝
- 使用 choco 安裝
	- choco install cmder -y
- 第一次開啟 Cmder 顯示文字
	```cmd
		Generating clink initial settings in "C:\tools\Cmder\config\settings"
		Additional *.lua files in "C:\tools\Cmder\config" are loaded on startup. 
		Creating initial user_aliases store in "C:\tools\Cmder\config\user_aliases.cmd"... 
		複製了 1 個檔案。 
		Creating user startup file: "C:\tools\Cmder\config\user_profile.cmd"
		複製了 1 個檔案。
	```

### Settings
- General
	- Fonts
		- Main console font: `Microsoft YaHei Mono`
		- Size: `20`
	- Size & Pos
		- Console size and Window position
			- Window size
				- `Normal`
					- Width: `120`
					- Height: `30`
- 更改 λ 文字
	- 開啟 vendor 底下的 clink.lua
	- 找到 `local lambda = "λ"`
	- 修改成 `local lambda = "$"`