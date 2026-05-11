-- ============================================================
-- 《想見你》Someday or One Day (2019 台劇)
-- 插入腳本: insert_someday_or_oneday.sql
-- 主題色: #5B7FA7
-- 取景地: 台南市為主（中西區、麻豆區、柳營區、左鎮區、安平區、關廟區、善化區、南區）
-- ============================================================

DO $$
DECLARE
  work_id    uuid;
  sg_id_01   uuid;
  sg_id_02   uuid;
  sg_id_03   uuid;
  sg_id_04   uuid;
  sg_id_05   uuid;
  sg_id_06   uuid;
  sg_id_07   uuid;
  sg_id_08   uuid;
  sg_id_09   uuid;
  sg_id_10   uuid;
BEGIN

-- ============================================================
-- 步驟一：建立作品
-- ============================================================
INSERT INTO works (id, slug, name, theme_color, en_title, issue_label, cat)
VALUES (
  gen_random_uuid(),
  'someday-or-oneday-2019',
  '想見你',
  '#5B7FA7',
  'Someday or One Day · 台南',
  'ISSUE №09 — 2019 — 台劇',
  '台劇'
)
RETURNING id INTO work_id;

-- ============================================================
-- 步驟二：建立 10 個場景群組 (scene_groups)
-- ============================================================

-- 01 小半樓（32唱片行）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 1)
RETURNING id INTO sg_id_01;

-- 02 龍泉冰店（莫奶奶冰店）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 2)
RETURNING id INTO sg_id_02;

-- 03 鳳和高級中學（鳳南高中）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 3)
RETURNING id INTO sg_id_03;

-- 04 二寮觀日亭
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 4)
RETURNING id INTO sg_id_04;

-- 05 漁光島活動中心公園（鞦韆場景）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 5)
RETURNING id INTO sg_id_05;

-- 06 安平老街 / 開台天后宮廣場
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 6)
RETURNING id INTO sg_id_06;

-- 07 嗊哩公園（關廟）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 7)
RETURNING id INTO sg_id_07;

-- 08 牛庄社區（善化）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 8)
RETURNING id INTO sg_id_08;

-- 09 閒情茗品屋（鍋燒意麵）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 9)
RETURNING id INTO sg_id_09;

-- 10 柳營 81-2 鄉道（上學路）
INSERT INTO scene_groups (id, work_id, sort_order)
VALUES (gen_random_uuid(), work_id, 10)
RETURNING id INTO sg_id_10;

-- ============================================================
-- 步驟三：建立 10 個地點 (locations)
-- ============================================================

-- 01 小半樓（32唱片行）
-- 劇中：陳韻如打工的32唱片行，貫穿全劇的靈魂場景
-- 主要角色：陳韻如 / 黃雨萱（柯佳嬿）、李子維 / 王詮勝（許光漢）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_01,
  '小半樓（32唱片行）',
  '陳韻如打工的32唱片行，全劇靈魂場景（E01–E13）',
  '台南市中西區民權路一段199巷7號',
  22.99168, 120.20749,
  '商店', 'none', 'verified',
  '週三至週六 14:00–19:00 開放，週日至週二公休。建議平日前往，假日排隊人潮多；店內為陶土藝術空間，保持安靜輕聲細語。附近萬川號餅舖可順遊。',
  NULL
);

-- 02 龍泉冰店（莫奶奶冰店）
-- 劇中：莫俊傑奶奶的冰店，李子維最愛「加兩倍煉乳紅豆牛奶冰」
-- 主要角色：莫俊傑（施柏宇）、陳韻如（柯佳嬿）、李子維（許光漢）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_02,
  '龍泉冰店（莫奶奶冰店）',
  '莫俊傑奶奶經營的百年冰店（E03–E10）',
  '台南市麻豆區平等路2-4號',
  23.18487, 120.24822,
  '餐飲', 'none', 'verified',
  '百年老店，07:00–19:00 營業。必點招牌紅豆牛奶冰，加兩倍煉乳才是李子維同款！麻豆市場內，可搭配附近文旦產地巡禮。',
  NULL
);

-- 03 鳳和高級中學（鳳南高中）
-- 劇中：鳳南高中校園，李子維、莫俊傑、陳韻如青春日常
-- 主要角色：全主角群
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_03,
  '鳳和高級中學',
  '劇中鳳南高中——李子維與陳韻如的青春回憶（全劇）',
  '台南市柳營區中山東路二段1330號',
  23.27964, 120.32602,
  '學校', 'none', 'verified',
  '私立學校，假日可於校外圍牆及校門口取景留念，請勿擅入影響教學。搭配附近柳營酪農區牛奶冰淇淋是朝聖好選擇。',
  '平日上課期間請勿入內打擾，校外拍照即可。'
);

-- 04 二寮觀日亭
-- 劇中：E12 三人跨年看日出，霧氣飄渺的絕美月世界地景
-- 主要角色：黃雨萱、李子維、莫俊傑
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_04,
  '二寮觀日亭',
  '三人跨年同看日出的惡地仙境（E12）',
  '台南市左鎮區二寮里171-4號',
  22.99274, 120.40987,
  '自然景觀', 'none', 'verified',
  '觀日出最佳季節為 4–9 月，需在日出前約 30 分鐘抵達（約清晨 5:00–5:30）。建議前一晚入住新化或左鎮民宿。底下月世界惡地地形禁止隨意踩踏，步道觀景即可。',
  '山路蜿蜒，夜間行車注意安全；日出後快速退潮，請勿久留影響後方車輛。'
);

-- 05 漁光島活動中心公園（鞦韆公園）
-- 劇中：E08 黃雨萱向李子維和莫俊傑坦承自己是從2019年穿越而來
-- 主要角色：黃雨萱（柯佳嬿）、李子維（許光漢）、莫俊傑（施柏宇）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_05,
  '漁光島活動中心公園',
  '黃雨萱坦承穿越身分的鞦韆公園（E08）',
  '台南市安平區漁光路89巷39之2號',
  22.97687, 120.15983,
  '公園', 'none', 'verified',
  '安平漁光島上的小公園，鞦韆依然健在可體驗。推薦傍晚前往，光線最美。附近漁光島海灘可延伸散步，並可搭配安平古堡一日遊路線。',
  NULL
);

-- 06 安平老街 / 開台天后宮廣場
-- 劇中：E06 李子維帶小雨萱買椪糖、冬瓜茶、白糖粿，安平古堡周邊漫遊
-- 主要角色：李子維（許光漢）、小黃雨萱
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_06,
  '安平老街 / 開台天后宮廣場',
  '李子維帶小雨萱吃遍安平小吃的街道（E06）',
  '台南市安平區國勝路33號（開台天后宮前廣場）',
  23.00046, 120.16095,
  '歷史街區', 'none', 'verified',
  '安平老街小攤林立，劇中椪糖攤在天后宮廣場前、冬瓜茶在國勝路附近。建議安排半天慢慢逛，可品嚐蚵嗲、白糖粿、古早味冬瓜茶。安平古堡門票約 50 元，對面妙壽宮為免費景點。',
  NULL
);

-- 07 嗊哩公園（關廟）
-- 劇中：E07 陳韻如主動親吻李子維；E09 李子維與黃雨萱分享秘密的涼亭
-- 主要角色：陳韻如（柯佳嬿）、李子維（許光漢）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_07,
  '嗊哩公園',
  '陳韻如親吻李子維、秘密涼亭（E07、E09）',
  '台南市關廟區新光里嗊哩',
  22.97434, 120.35943,
  '公園', 'none', 'estimated',
  '關廟小型社區公園，涼亭與場景氛圍保存良好。可搭配附近關廟新光里彩繪村同遊，來回約半天行程。',
  NULL
);

-- 08 牛庄社區（善化）
-- 劇中：E10 黃雨萱雨中回眸的經典場景；三人躲雨涼亭及確認心意的吻戲
-- 主要角色：黃雨萱（柯佳嬿）、李子維（許光漢）、莫俊傑（施柏宇）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_08,
  '牛庄社區',
  '黃雨萱雨中回眸的經典街道與躲雨涼亭（E10）',
  '台南市善化區牛庄里',
  23.13834, 120.31713,
  '社區街道', 'none', 'estimated',
  '台南善化的農村社區，保有古樸風貌。雨天或傍晚光線最能還原劇中氛圍。鄰近善化市區，可搭配善化慶安宮及牛墟文化一同造訪。',
  NULL
);

-- 09 閒情茗品屋（鍋燒意麵）
-- 劇中：E04、E07 李子維愛在鍋燒意麵中加大量醋的麵攤，三人常聚場景
-- 主要角色：李子維（許光漢）、莫俊傑（施柏宇）、陳韻如（柯佳嬿）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_09,
  '閒情茗品屋（鍋燒意麵）',
  '三人最愛的鍋燒意麵店，李子維狂加醋（E04、E07）',
  '台南市南區金華路二段57巷97號',
  22.97856, 120.18759,
  '餐飲', 'none', 'verified',
  '06:30–18:00 營業，週日至 14:00。點鍋燒意麵記得加醋才是李子維本人！對面林師炒飯也是台南人氣店家，可一起排。附近步行可至觀光城一帶。',
  NULL
);

-- 10 柳營 81-2 鄉道（上學路）
-- 劇中：E02、E05 李子維與莫俊傑騎機車陪韻如走過的兩側稻田田埂路
-- 主要角色：陳韻如（柯佳嬿）、李子維（許光漢）、莫俊傑（施柏宇）
INSERT INTO locations (
  id, scene_group_id, real_name, fictional_name,
  address, lat, lng,
  scene_type, cgi_level, lat_confidence,
  visit_tips, safety_note
) VALUES (
  gen_random_uuid(), sg_id_10,
  '柳營 81-2 鄉道（上學路）',
  '李子維與莫俊傑陪韻如走過的稻田上學路（E02、E05）',
  '台南市柳營區 81-2 鄉道（近鳳和高中段）',
  23.28774, 120.37194,
  '田園道路', 'none', 'estimated',
  '兩側稻田懷舊農村風情，拍照建議穿著復古服裝或帶一台老機車更能還原劇感。春夏稻田翠綠最美，鄰近鳳和高中，可與場景03合併為半日行程。',
  NULL
);

END $$;
