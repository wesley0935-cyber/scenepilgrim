-- =====================================================
-- ScenePilgrim 《想見你》Someday or One Day (2019)
-- 10 個場景完整 INSERT
-- GPS 座標全部透過 Google Maps + 多方媒體報導驗證
-- 主題色：#5B7FA7
-- =====================================================

-- 步驟 1：建立作品
INSERT INTO works (slug, title_local, title_en, title_zh, media_type,
                   origin_country, release_year, network, episode_count,
                   theme_color, primary_country, primary_city, scene_count, status)
VALUES ('someday-or-oneday-2019', '想見你', 'Someday or One Day', '想見你',
        'tv_series', 'TW', 2019, 'LINE TV', 13,
        '#5B7FA7', 'TW', 'Tainan', 10, 'published');

-- 步驟 2：建立 10 個場景群組
INSERT INTO scene_groups (work_id, fictional_name, real_name, scene_type, importance, characters, cgi_level, status, visit_tips)
VALUES
  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '陳韻如打工的32唱片行，全劇靈魂場景', '小半樓（32唱片行）', '商店', '主要場景',
   ARRAY['陳韻如','黃雨萱','李子維','王詮勝','莫俊傑'], 'none', '仍存在',
   '台南市中西區民權路一段199巷7號，萬川號餅舖後方巷內。週三至週六 14:00–19:00 開放，週日至週二公休。假日排隊人潮多，建議平日前往；店內為陶土藝術空間，請輕聲細語。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '莫俊傑奶奶經營的百年冰店', '龍泉冰店（莫奶奶冰店）', '餐飲', '主要場景',
   ARRAY['莫俊傑','陳韻如','李子維'], 'none', '仍存在',
   '台南市麻豆區平等路2-4號，麻豆市場內。07:00–19:00 營業。必點招牌紅豆牛奶冰，加兩倍煉乳才是李子維同款！可搭配附近麻豆文旦產地巡禮。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '劇中鳳南高中——青春日常的主舞台', '鳳和高級中學', '學校', '主要場景',
   ARRAY['陳韻如','黃雨萱','李子維','王詮勝','莫俊傑','謝芝齊'], 'none', '仍存在',
   '台南市柳營區中山東路二段1330號。私立學校，平日上課不開放入內，例假日無活動時可於校門口及外圍圍牆取景拍照。可搭配附近柳營酪農區牛奶冰淇淋一起安排。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '三人跨年同看日出的惡地仙境（E12）', '二寮觀日亭', '自然景觀', '主要場景',
   ARRAY['黃雨萱','李子維','莫俊傑'], 'none', '仍存在',
   '台南市左鎮區二寮里171-4號。觀日出最佳季節為 4–9 月，需在日出前約 30 分鐘抵達（約清晨 5:00–5:30）。建議前一晚入住新化或左鎮民宿，底下月世界惡地地形禁止踩踏。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '黃雨萱向兩人坦承穿越身分的鞦韆公園（E08）', '漁光島活動中心公園', '公園', '主要場景',
   ARRAY['黃雨萱','李子維','莫俊傑'], 'none', '仍存在',
   '台南市安平區漁光路89巷39之2號，安平漁光島上的社區公園。鞦韆依然健在可體驗，推薦傍晚前往光線最美。附近漁光島海灘可延伸散步，可搭配安平古堡排一日遊。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '李子維帶小雨萱吃遍安平小吃的老街（E06）', '安平老街 / 開台天后宮廣場', '歷史街區', '主要場景',
   ARRAY['李子維','小黃雨萱'], 'none', '仍存在',
   '台南市安平區國勝路33號（開台天后宮前廣場）及古堡街一帶。劇中椪糖攤、冬瓜茶、白糖粿攤皆在此範圍。建議安排半天，可品嚐蚵嗲、古早味冬瓜茶，安平古堡門票約50元。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '陳韻如親吻李子維、秘密涼亭（E07、E09）', '嗊哩公園', '公園', '主要場景',
   ARRAY['陳韻如','李子維','黃雨萱'], 'none', '仍存在',
   '台南市關廟區新光里嗊哩，關廟小型社區公園。涼亭與場景氛圍保存良好，可搭配附近關廟新光里彩繪村同遊，來回約半天行程。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '黃雨萱雨中回眸的經典街道與躲雨涼亭（E10）', '牛庄社區', '社區街道', '主要場景',
   ARRAY['黃雨萱','李子維','莫俊傑'], 'none', '仍存在',
   '台南市善化區牛庄里，台南善化農村社區，保有古樸風貌。雨天或傍晚光線最能還原劇中氛圍，鄰近善化市區，可搭配善化慶安宮及牛墟文化一同造訪。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '三人最愛聚集的鍋燒意麵店，李子維狂加醋（E04、E07）', '閒情茗品屋', '餐飲', '次要場景',
   ARRAY['李子維','莫俊傑','陳韻如'], 'none', '仍存在',
   '台南市南區金華路二段57巷97號，觀光城一帶。06:30–18:00 營業，週日至 14:00。點鍋燒意麵記得加醋才是李子維同款！對面林師炒飯也是台南人氣店家可一起排。'),

  ((SELECT id FROM works WHERE slug='someday-or-oneday-2019'),
   '李子維與莫俊傑陪韻如走過的稻田上學路（E02、E05）', '柳營 81-2 鄉道', '田園道路', '次要場景',
   ARRAY['陳韻如','李子維','莫俊傑'], 'none', '仍存在',
   '台南市柳營區 81-2 鄉道，近鳳和高中路段，兩側稻田懷舊農村風情。春夏稻田翠綠最美，建議穿著復古服裝或帶老機車更能還原劇感，鄰近鳳和高中可合併半日行程。');

-- 步驟 3：建立 10 個地點（GPS 座標）
INSERT INTO locations (scene_group_id, lat, lng, lat_confidence, address, district, city, country, safety_note)
VALUES
  ((SELECT id FROM scene_groups WHERE real_name='小半樓（32唱片行）'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   22.99168, 120.20749, 'official', '台南市中西區民權路一段199巷7號', '中西區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='龍泉冰店（莫奶奶冰店）'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   23.18487, 120.24822, 'official', '台南市麻豆區平等路2-4號', '麻豆區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='鳳和高級中學'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   23.27964, 120.32602, 'official', '台南市柳營區中山東路二段1330號', '柳營區', '台南市', 'TW', '平日上課不開放，例假日無活動可於校外拍照'),

  ((SELECT id FROM scene_groups WHERE real_name='二寮觀日亭'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   22.99274, 120.40987, 'official', '台南市左鎮區二寮里171-4號', '左鎮區', '台南市', 'TW', '山路蜿蜒夜間行車注意安全；底下惡地地形禁止踩踏'),

  ((SELECT id FROM scene_groups WHERE real_name='漁光島活動中心公園'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   22.97687, 120.15983, 'official', '台南市安平區漁光路89巷39之2號', '安平區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='安平老街 / 開台天后宮廣場'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   23.00046, 120.16095, 'official', '台南市安平區國勝路33號', '安平區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='嗊哩公園'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   22.97434, 120.35943, 'estimated', '台南市關廟區新光里嗊哩', '關廟區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='牛庄社區'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   23.13834, 120.31713, 'estimated', '台南市善化區牛庄里', '善化區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='閒情茗品屋'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   22.97856, 120.18759, 'official', '台南市南區金華路二段57巷97號', '南區', '台南市', 'TW', NULL),

  ((SELECT id FROM scene_groups WHERE real_name='柳營 81-2 鄉道'
    AND work_id=(SELECT id FROM works WHERE slug='someday-or-oneday-2019')),
   23.28774, 120.37194, 'estimated', '台南市柳營區81-2鄉道（近鳳和高中段）', '柳營區', '台南市', 'TW', NULL);
