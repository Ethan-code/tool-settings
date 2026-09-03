# mousemaster

鍵盤操控滑鼠的工具(keyboard-driven mouse control)。

## 位置與版本
- 安裝位置:`C:\DiskD\software\mousemaster\`(portable:`mousemaster.exe` + `mousemaster.properties`)
- 設定來源:官方 `neo-mousekeys-ijkl` 範本,**GitHub release tag `93`**(設定檔版本要和 exe 版本相符;`main` 分支的範本會用到 v93 不支援的鍵,如 `ishintmeshempty`)。
- 檔名必須是 `mousemaster.properties`,且與 exe 放在同一資料夾。

## 開機自啟(背景、無視窗)
Windows 工作排程器 task 名為 `Mousemaster`:登入時觸發、一般權限、用 `conhost.exe --headless` 無視窗背景執行。
完整原理與設定步驟見:`C:\DiskD\docs\windows-背景執行-portable-console-exe.md`

## 客製(與原版 ijkl 範本的差異)
- **Shift+click 開通**:`normal-mode.press.left/.right` 與 clickthendisable 的條件改用 `_{none | leftshift*leftctrl}`(作者 author.properties 的寫法,`*` = 任意組合)。
  - `左Shift` + `;` = Shift+click(範圍選取)
  - `左Ctrl` + `;` = Ctrl+click
  - 兩者一起 + `;` = Ctrl+Shift+click
- **移除視窗模式**:用來釋放 `leftShift`。原版把 leftShift 同時當 `slow`/`windowmod`/`hint2mod`,並透過 `eatwindowmod` 把它吃掉,導致 Shift 傳不到系統、Shift+click 失效。已刪除 windowmod 別名、視窗模式區塊與 eatwindowmod,grid 進入改成單純 `+grid`。leftShift 仍保有 slow 與 hint2mod 功能。

## 還原方式
把本資料夾的 `mousemaster.properties` 複製回 `C:\DiskD\software\mousemaster\mousemaster.properties` 即可。

## 常用操作(ijkl)
- 啟用:`左Alt`+`e` 或 `左Alt`+`CapsLock` / 離開:`q`、`p`
- 移動:`i`/`k`/`j`/`l`(上/下/左/右);`左Shift` 放慢、`v`·`b` 加速
- 點擊:`;` 左、`'` 右、`右Shift` 中
- 跳躍:`f` hint、`g` grid、`r` recursive hint(3×3 逐層縮放)、`c` 螢幕選擇
