# obsidian

跨機器要一致的 Obsidian 設定，這裡放會不見的檔案 + 還原方式。

## hotkeys.json

自訂快捷鍵。Obsidian 存在每個 vault 的 `.obsidian/hotkeys.json`；所有在用的 vault 保持同一份。

| 功能 | 鍵 | command id |
|---|---|---|
| 開關左側邊欄 | `Ctrl`+`\` | `app:toggle-left-sidebar` |
| 開關右側邊欄 | `Ctrl`+`Shift`+`\` | `app:toggle-right-sidebar` |
| 上移該行 / 表格列 | `Alt`+`↑` | `editor:swap-line-up` |
| 下移該行 / 表格列 | `Alt`+`↓` | `editor:swap-line-down` |
| 前一頁 | `Alt`+`←` | `app:go-back` |
| 後一頁 | `Alt`+`→` | `app:go-forward` |

前後頁在 Windows/mac 有內建預設（`Ctrl`+`Alt`+`←/→`、`Cmd`+`[`/`]`），Linux 那組會被桌面環境攔掉，所以統一改綁 `Alt`+`←/→`。

## 還原方式

把 `hotkeys.json` 複製回每個 vault 的 `.obsidian/`，重開 Obsidian（或指令面板 → Reload app without saving）。

## 改動流程

改 hotkey 後：更新此檔的表 → 複製到各 vault 的 `.obsidian/` → commit。
