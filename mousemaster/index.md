# mousemaster

鍵盤操控滑鼠的工具(keyboard-driven mouse control)。

## 位置與版本
- 安裝位置:`C:\DiskD\software\mousemaster\`(portable:`mousemaster.exe` + `mousemaster.properties`)
- 設定來源:官方 `neo-mousekeys-ijkl` 範本,**GitHub release tag `94`**(設定檔版本要和 exe 版本相符)。2026-09-09 從 v93 升級,舊版備份在 `C:\DiskD\software\mousemaster\backup-v93\`。
- 檔名必須是 `mousemaster.properties`,且與 exe 放在同一資料夾。
- 上游:`github.com/petoncle/mousemaster`。v94 主要新增 UI hint 可從 idle mode 直接用 `leftalt`+`;` 觸發(不用先進 normal mode),`hint.type=ui` 改名 `ui-accessibility`。

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

## 快速開關 / 重啟
`toggle-mousemaster.ps1`(本資料夾與 `C:\DiskD\software\mousemaster\` 各放一份):
- 不帶參數:正在跑就關掉、沒在跑就用 `Mousemaster` 排程工作啟動(維持無視窗、工作目錄正確)。
- `-Restart`:強制關掉再啟動,遇到按鍵卡住/狀態怪怪的時候用這個。
- 直接殺行程再自己開 exe 不行,會冒黑窗、也可能吃不到設定檔(工作目錄不對),所以關掉後一定要靠排程工作重啟。

## 常用操作(ijkl)
- 啟用:`左Alt`+`e` 或 `左Alt`+`CapsLock` / 離開:`q`、`p`
- 移動:`i`/`k`/`j`/`l`(上/下/左/右);`左Shift` 放慢、`v`·`b` 加速
- 點擊:`;` 左、`'` 右、`右Shift` 中
- 跳躍:`f` hint、`g` grid、`r` recursive hint(3×3 逐層縮放)、`c` 螢幕選擇
