-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: syoku
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `storemenu`
--

DROP TABLE IF EXISTS `storemenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storemenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctype` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccal` double NOT NULL,
  `cprice` double NOT NULL,
  `cintroduction` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cimg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storemenu`
--

LOCK TABLES `storemenu` WRITE;
/*!40000 ALTER TABLE `storemenu` DISABLE KEYS */;
INSERT INTO `storemenu` VALUES (1,'三十號咖哩','日式料理',575,130,'咖哩的香料氣味十分濃郁，帶有一點微辣的調味\r 調味實在非常下飯，加上米也煮得很好，仿佛有種魔力讓人停不下來\r','三十號咖哩.jpg','kitchenisland234@gmail.com'),(2,'勁辣雞腿堡餐','美式料理',1054,135,'黃金酥脆的外皮把肉汁跟香辣滋味，鎖在鮮嫩雞腿裡，香辣入味越吃越上癮！','勁辣雞腿堡餐.png','Mcdonald@gmail.com'),(3,'和風漢堡排','日式料理',450,150,'牛肉加豬肉的漢堡肉排\r\n細緻的口感跟美式漢堡大不相同\r\n加上微酸甜鹹的醬汁也是迷人風味','和風漢堡排.jpg','kitchenisland234@gmail.com'),(4,'和食料理','日式料理',1515,800,'板前料理(冷物) 前菜、海鮮酢物、綜合生魚片 主廚料理(熟食) 鮮魚鹽燒、酒蒸貝類、豬或牛壽喜燒、魚片湯 餐後附上 水果或甜點加上飲品 咖啡或茶品','和食料理.jpg','ccc@gmail.com'),(5,'四盎司牛肉堡餐','美式料理',1083,140,'四盎司澳洲純牛肉，絕配雙層特濃紐西蘭切達吉事，加上少許酸黃瓜、洋蔥、番茄醬和黃芥末調味，完美交織出～濃到化不開的經典滋味！','四盎司牛肉堡餐.png','Mcdonald@gmail.com'),(6,'墨西哥雞肉麵','義式料理',605,160,'大火拌炒蔥、蒜頭、三色椒.搭配上充滿異國風味的墨西哥調味料.食材選自新鮮的雞胸肉切片加白酒去腥','墨西哥雞肉麵.jpg','creativepasta.studio@gmail.com'),(7,'大麥克餐','美式料理',1098,135,'雙層純牛肉、生菜、吉事、酸黃瓜、洋蔥、麥香麵包，還有獨家秘醬，層層豐富食材，滋多味美大滿足！','大麥克餐.png','Mcdonald@gmail.com'),(8,'奶油香菇雞肉寬麵','義式料理',681,160,'寬麵口感較Ｑ，雞肉吃起來很嫩，麵條都很入味','奶油香菇雞肉寬麵.jpg','creativepasta.studio@gmail.com'),(9,'德國香腸辣椒麵','義式料理',651,160,'德式香腸煎至焦香味，生辣椒加進與其一起爆炒，依序放入蒜末、新鮮小番茄、九層塔與少許茄汁。醬汁裡完整呈現了「酸甜辣」的衝勁','德國香腸辣椒麵.jpg','creativepasta.studio@gmail.com'),(10,'招牌鍋貼10個','台式料理',635,50,'將特選豬後腿肉的嚼勁揉進高麗菜的香甜口感，包入新鮮製作的餃皮再煎至金黃酥脆，成就八方雲集自豪的招牌鍋貼。\r\n','招牌鍋貼.jpg','eightway08@gmail.com'),(11,'敖唷馬鈴薯豬骨湯【小辣】','韓式料理',897,320,'今天第一次來？「敖唷」招牌，沒吃過等於沒來。長時間熬煮的大骨湯頭，淬鍊出難以言喻的美味，搭配上嚴選17種辛香料在濃郁中綻放獨特風味，讓道地韓式滋味襲捲你的味蕾。燉煮至軟嫩入味的豬肉和綿密鬆軟的馬鈴薯 ，再加上韓國醃製蔬菜和一碗搭配的白飯，簡單的菜式，背後是不簡單的飲食文化。好好享受吧！','敖唷馬鈴薯豬骨湯【小辣】.jpg','theowlhan@gmail.com'),(12,'東大門半隻雞','韓式料理',725,320,'什麼！？我哪吃得完一隻雞！來自韓國，最讓人垂涎的雞湯料理！蒜味原湯，或是韓式辣香，兩種層次在舌尖堆疊出的美味，包你一隻不夠吃！','東大門半隻雞.jpg','theowlhan@gmail.com'),(13,'板烤雞腿堡餐','美式料理',930,119,'以醇釀醬汁醃製香嫩入味的板烤雞腿肉，用板烤封住濃郁鮮美的醬汁，再搭配鮮脆爽口西生菜與紫高麗，板烤美味吃一口就入味！','板烤雞腿堡餐.png','Mcdonald@gmail.com'),(14,'火辣米酒蛤蜊麵','義式料理',723,160,'有別於經典白酒蛤蠣麵，入油熱鍋，以臺灣米酒入鍋，大火翻炒燒出甘甜味，調味時加上些許我們最驕傲的私房特製辣椒醬，嗆出米酒與蛤蜊交織的清爽，又帶點辣勁，成為了創義麵的新經典。','火辣米酒蛤蜊麵.jpg','creativepasta.studio@gmail.com'),(15,'牛肉壽喜燒','日式料理',900,150,'帶有油花的牛肉做成壽喜燒頗為適合，鹹度、油度上都控制的很好，完全不會有油膩感\r 除了牛肉片以外，還有金針菇、豆腐、洋蔥等食材，不僅配色漂亮營養也挺均衡的。','牛肉壽喜燒.jpg','kitchenisland234@gmail.com'),(16,'玉米鍋貼10個','台式料理',600,55,'精選粒粒飽滿的非基因改造玉米，讓自然甜味結合肉汁甘醇，化為金黃餃皮下一份特別的滋味！\r\n','玉米鍋貼.jpg','eightway08@gmail.com'),(17,'田園蔬菜鍋貼10個','台式料理',429,55,'選用多樣蔬菜拌製而成的內餡，以特製餃皮溫柔包藏，再煎至金黃酥脆，一口咬下，在嘴裡綻放田園芬芳。\r\n','田園蔬菜鍋貼.jpg','eightway08@gmail.com'),(18,'石鍋拌飯','韓式料理',875,220,'放比較久以後才開始拌 吃起來鍋巴就比較多一點，會有酥酥脆脆的口感 吃起來香氣十足，','石鍋拌飯.jpg','hantegak@gmail.com'),(19,'紅酒燉牛肉','日式料理',496,140,'醇香的醬汁帶著微酸的氣息\r 跟清爽的鮭魚四色飯是完全的反差\r 重口味超級下飯的一道料理','紅酒燉牛肉.jpg','kitchenisland234@gmail.com'),(20,'辣豆腐陶鍋','韓式料理',512,270,'主廚將精心熬煮二小時以上的雞湯加入嚴選秀珍菇,金針菇,嫩豆腐,蒜末,韓式辣椒 甜洋蔥,活蛤蜊,韓國天婦羅等….滾後加入生鮮雞蛋,獨特的鮮甜微辣口感,讓人喝了一口接一口','辣豆腐陶鍋.jpg','hantegak@gmail.com'),(21,'部隊鍋','韓式料理',1060,380,'部隊鍋份量十足，四五個人分食都綽綽有餘火腿、香腸、小章魚、韓國魚板、泡菜等，再加上泡麵跟起司，賣相十分誘人','部隊鍋.jpg','hantegak@gmail.com'),(22,'釜山海鮮大醬湯【微辣】','韓式料理',850,320,'想吃得健康點嗎？海鮮加大醬，低卡路里的最佳選擇！韓國最常見的平民美食，韓式味增。用鮮蝦、蛤蠣、花枝熬煮的海鮮湯底加上洋蔥、櫛瓜、金針菇等蔬菜增加湯的甜味，不僅口味滿分，營養也滿分。冷冷的天氣裡，用一碗白飯配上超級下飯的大醬湯，絕對是最好又最健康的驅寒方式！','釜山海鮮大醬湯【微辣】.jpg','theowlhan@gmail.com'),(23,'雙層牛肉吉事堡餐','美式料理',1010,125,'當吉事融化在熱騰騰牛肉上，嗯 ～ 美味濃得化不開，原來是即時點即時做，讓口感升級，美味加倍，每一口熱呼呼地直達你的胃！','雙層牛肉吉事堡餐.png','Mcdonald@gmail.com'),(24,'青醬奶油雞肉寬麵','義式料理',755,170,'整體吃起來不會太油太膩之前在外面吃的青醬吃到最後會有一層油，可能是因為創意麵搭配的是奶油，不會像橄欖油的青醬會有一層油浮出','青醬奶油雞肉寬麵.jpg','creativepasta.studio@gmail.com'),(25,'韓式辣味鍋貼10個','台式料理',688,55,'艷紅的外皮下，包著令人大呼過癮的韓式辣味內餡，香辣後勁帶出每口豐富滋味，令人想不斷一顆接一顆。\r\n','韓式辣味鍋貼.jpg','eightway08@gmail.com'),(26,'韭菜鍋貼10個','台式料理',595,55,'新鮮韭菜的清香引出豬肉甜美，翠綠豐富的內在映襯著金黃外衣，清脆的咬勁添增了每口咬下的味覺記憶。\r\n','韭菜鍋貼.jpg','eightway08@gmail.com'),(27,'韭黃魚肉鍋貼10個','台式料理',550,65,'紅麴皮包入鮮嫩純魚肉，不摻雜其他肉類。酥脆外皮、內餡鮮甜，意猶未盡！\r\n','韭黃魚肉鍋貼.jpg','eightway08@gmail.com'),(28,'鮭魚四色飯','日式料理',535,150,'甜甜脆脆的四季豆爽口\r\n香滑炒蛋鬆單吃也很美味\r\n主角鮭魚是來自大海的食材\r\n低脂豬絞肉不油不膩增添口感\r\n自由隨意拌在一起是適合夏日的清爽餐食','鮭魚四色飯.jpg','kitchenisland234@gmail.com'),(29,'麥克雞塊餐','美式料理',854,119,'上等雞肉特製而成，每一口都滿是鮮美細緻的肉質，酥香滑嫩的Q彈口感，任誰都欲罷不能！','麥克雞塊餐.png','Mcdonald@gmail.com'),(30,'麥脆雞餐','美式料理',1045,148,'金黃酥脆的外皮，包裹著鮮嫩美味的雞肉，令人饞涎欲滴的鮮美滋味，吃一口就停不下來！','麥脆雞餐.png','Mcdonald@gmail.com'),(31,'麥香雞餐','美式料理',920,105,'外皮金黃酥脆的雞肉，內部鮮嫩多汁，搭配清脆爽口生菜再淋上獨家醬料，美味令人難以忘懷！','麥香雞餐.png','Mcdonald@gmail.com'),(32,'麥香魚餐','美式料理',885,115,'來自純淨海域的鱈魚，嚴選細緻鮮美的魚肉，再淋上濃郁塔塔醬，酥嫩滑溜的口感，保證口頰留香！','麥香魚餐.png','Mcdonald@gmail.com');
/*!40000 ALTER TABLE `storemenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-06  0:55:36
