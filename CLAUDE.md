# ScenePilgrim — 專案筆記

## Supabase Schema 重要細節

### works 資料表

| 欄位 | 說明 | 注意事項 |
|------|------|----------|
| `slug` | 作品唯一識別碼 | 格式：`title-year`，例如 `someday-or-oneday-2019` |
| `media_type` | 媒體類型 | **check constraint** 只允許以下四個值：`'movie'` / `'tv_series'` / `'mini_series'` / `'anime'` |
| `theme_color` | 主題色 | hex 格式，例如 `'#5B7FA7'` |
| `status` | 狀態 | 使用 `'published'` |

**media_type 對照：**
- 台灣電影、日本電影 → `'movie'`
- 台劇（長篇）→ `'tv_series'`
- 台劇（短篇/限定）→ `'mini_series'`
- 日本動畫 → `'anime'`

---

### scene_groups 資料表

| 欄位 | 說明 |
|------|------|
| `work_id` | FK → `works.id`，用 `(SELECT id FROM works WHERE slug='...')` |
| `fictional_name` | 劇中場景描述 |
| `real_name` | 真實地點名稱（locations 的子查詢也靠這個欄位） |
| `scene_type` | 場景類型，例如：`'商店'`、`'學校'`、`'餐飲'`、`'公園'`、`'自然景觀'`、`'歷史街區'`、`'社區街道'`、`'田園道路'`、`'表演場館'` |
| `importance` | `'主要場景'` 或 `'次要場景'` |
| `characters` | PostgreSQL array，格式：`ARRAY['角色A','角色B']` |
| `cgi_level` | `'none'` / `'partial'` / `'full'` |
| `status` | `'仍存在'` |

---

### locations 資料表

| 欄位 | 說明 |
|------|------|
| `scene_group_id` | FK → `scene_groups.id`，用雙層子查詢：`(SELECT id FROM scene_groups WHERE real_name='...' AND work_id=(SELECT id FROM works WHERE slug='...'))` |
| `lat` / `lng` | GPS 座標（decimal） |
| `lat_confidence` | GPS 確認的用 `'official'`；只有大範圍地址的用 `'estimated'` |
| `address` | 完整地址（中文） |
| `district` | 行政區，例如 `'中西區'` |
| `city` | 城市，例如 `'台南市'` |
| `country` | `'TW'` |
| `safety_note` | 安全提示，無則填 `NULL` |

---

## 已上線作品清單

| slug | 作品 | media_type | 主題色 |
|------|------|-----------|--------|
| `agent-from-above-2026` | 乩身 | `tv_series` | `#7A3520` |
| `light-the-night-2021` | 華燈初上 | `tv_series` | `#6B3A5A` |
| `port-of-lies-2023` | 八尺門的辯護人 | `tv_series` | `#1A4A6B` |
| `till-we-meet-again-2021` | 月老 | `movie` | `#C0392B` |
| `man-in-love-2021` | 當男人戀愛時 | `movie` | `#C0392B` |
| `our-times-2015` | 我的少女時代 | `movie` | `#D4556A` |
| `your-name-2016` | 你的名字 | `movie` | `#E8567A` |
| `someday-or-oneday-2019` | 想見你 | `tv_series` | `#5B7FA7` |

---

## index.html 架構說明

- **WORKS 物件**：每部作品一個 key（slug），包含 name、glyph、en、issue、cat、color、grad、scenes、verified、trip、center、zoom、route
- **workBar（.rail）**：新增 `.work-pill` 按鈕，`data-slug` 對應 WORKS key
- **分類**：`cat` 填 `'台劇'` / `'台灣電影'` / `'日本電影'`
- **主題色**：`color` 和 HTML `style` 的 `--theme` 要一致

---

## Git

- Remote: Vercel（git push 即自動部署）
- 若遇到 `.git/index.lock` 錯誤，需手動在 Windows 刪除該檔後再 push：
  ```
  del C:\Users\Wesley\Desktop\scenepilgrim\.git\index.lock
  git commit -m "..."
  git push
  ```
