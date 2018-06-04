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
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `recid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `recname` varchar(20) NOT NULL,
  `reccover` varchar(300) NOT NULL,
  `recdesc` varchar(200) NOT NULL,
  `rectime` int(11) NOT NULL,
  `recportion` int(11) NOT NULL,
  `reccal` int(11) NOT NULL,
  `recvegan` varchar(20) NOT NULL,
  `recfood` longtext NOT NULL,
  `recstep` longtext NOT NULL,
  PRIMARY KEY (`recid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (3,'David','客家薑絲炒粉腸','recDavid_客家薑絲炒粉腸.jpg','一提到客家名菜-薑絲炒大腸，難免就不自主的口水直流，連嚥好幾口口水有一道和薑絲炒大腸雷同的客家家常菜，但反而在餐館中相較少見，那就是〝薑絲炒粉腸〞。',30,4,300,'葷食','[{\"name\":\"粉腸\",\"qty\":\"1\"},{\"name\":\"檸檬\",\"qty\":\"1\"},{\"name\":\"薑\",\"qty\":\"1\"},{\"name\":\"青蔥\",\"qty\":\"1\"},{\"name\":\"紅辣椒\",\"qty\":\"1\"},{\"name\":\"白醋\",\"qty\":\"1\"},{\"name\":\"醬油\",\"qty\":\"少許\"},{\"name\":\"米酒\",\"qty\":\"少許\"},{\"name\":\"糖\",\"qty\":\"5g\"},{\"name\":\"冰水\",\"qty\":\"1鍋\"}]','[\"1﹑青蔥洗淨後，切些蔥段；紅辣椒切片；薑切細絲；檸檬原汁(1顆)；備用\",\"2﹑粉腸泡清水表面輕輕洗過，撈起粉腸，剪去部份的腸白油脂 (只留一公分內的寬度)，備用\",\"3﹑煮一鍋沸水，下粉腸滾水煮15分鐘（想吃粉腸較軟的口感，就滾煮更久）\",\"4﹑備一鍋冰水\",\"5﹑燙好的粉腸撈起，馬上泡入冰水中待冷卻\\n\\n*燙好的粉腸也可以留一部份，直接切成數小段後裝盤當黑白切般，再同麵攤直接放些薑絲沾些醬油，就又是道餐桌上的美味小菜！\",\"6﹑粉腸冷卻後，撈起瀝乾，切(剪)成段(約3公分一段，每小段中間切(剪)一刀但不斷，炒時可更便於入味)\",\"7﹑切好的粉腸備用\\n\\n\",\"8﹑起油鍋將薑絲爆香\",\"9﹑下粉腸拌炒1分鐘\",\"10﹑下檸檬原汁(1顆)＋白醋2湯匙＋醬油1湯匙＋糖1〝茶〞匙，拌炒勻後悶煮3分鐘，再試酸度口味是否要調整\",\"11﹑下蔥段＋2~3片辣椒片，拌炒勻，起鍋前沿鍋子邊緣淋上少許米酒，熗些米酒香\",\"12﹑起鍋裝盤完成\"]'),(4,'David','照燒雞腿蓋飯','recDavid_照燒雞腿蓋飯.jpg','做好的照燒雞腿排搭配糖心蛋，看起來是不是讓你食指大動呢？快來學學這道料理吧',20,1,600,'葷食','[{\"name\":\"去骨雞腿肉\",\"qty\":\"1片\"},{\"name\":\"醬油\",\"qty\":\"1.5大匙\"},{\"name\":\"米酒\",\"qty\":\"1.5大匙\"},{\"name\":\" 味淋\",\"qty\":\"1.5大匙\"},{\"name\":\"糖\",\"qty\":\"0.7大匙\"},{\"name\":\" 胡椒粉\",\"qty\":\"適量\"},{\"name\":\"鹽\",\"qty\":\"適量\"},{\"name\":\"蔥花\",\"qty\":\"少許\"},{\"name\":\"\",\"qty\":\"\"}]','[\"1\\n雞腿肉洗淨後，用刀子將肉不均勻的部分劃開，讓整片肉的厚度都很平均，這樣比較好掌握肉的熟度 接著在肉的兩面撒上些許的鹽和胡椒粉，並靜待約20到30分鐘\",\"2\\n鍋中放入一小匙油(也可選擇不放） 將雞皮的那面朝下放入鍋中煎，直到雞皮呈現金黃色後才開始翻面繼續煎\",\"3\\n準備一個碗，將米酒、醬油、味淋和糖(比例約1:1:1:0.5）均勻攪拌，讓糖稍微融化於醬料中 當雞肉煎的差不多熟的時候，將鍋中已逼出來過多的雞油倒掉，並將調好的照燒醬汁淋入鍋內，用中大火的方式將其收乾\",\"4\\n將收乾醬汁的雞腿排切好後灑上芝麻，即可盛盤享用 (因家中的芝麻已用盡，故已黑胡椒粉取代)\"]'),(5,'David','小黃瓜炒嫩雞丁','recDavid_小黃瓜炒嫩雞丁.jpg','盛產的新鮮小黃瓜搭配低脂又鮮嫩的雞里肌，簡單快炒，清脆爽口無負擔哦！',10,3,500,'葷食','[{\"name\":\"雞里肌肉/雞胸肉\",\"qty\":\"250g\"},{\"name\":\" 小黃瓜\",\"qty\":\"1條\"},{\"name\":\"蒜頭\",\"qty\":\"10g\"},{\"name\":\"辣椒\",\"qty\":\"1條\"},{\"name\":\"水\",\"qty\":\"40cc\"},{\"name\":\"醬油膏\",\"qty\":\"1大匙\"},{\"name\":\"米酒\",\"qty\":\"1茶匙\"},{\"name\":\"太白粉\",\"qty\":\"1大匙\"},{\"name\":\"香油\",\"qty\":\"1茶匙\"},{\"name\":\"鹽\",\"qty\":\"少許\"},{\"name\":\"糖\",\"qty\":\"少許\"},{\"name\":\"胡椒粉\",\"qty\":\"少許\"}]','[\"1\\n雞里肌肉切小塊，以醃料（除了太白粉）醃製約20分鐘；小黃瓜切滾刀塊（同雞肉大小）；蒜頭切片；辣椒切斜片備用。\",\"2\\n加1大匙的太白粉與作法1的雞肉塊拌勻備用。\",\"3\\n炒鍋倒入1.5大匙的油熱鍋90秒（否則不銹鋼鍋會黏鍋），雞肉塊依序放入，煎至定型後翻面續煎至二面上色。\",\"4\\n放入蒜片爆香，再放入小黃瓜和30cc的水，蓋上鍋蓋小火煮約3分鐘。（帶有微脆的口感）\",\"5\\n開蓋辣椒片略拌炒，再加入鹽、糖及白胡椒粉調味拌勻即可。\"]'),(6,'Tom','日式明太子拌竹筍','rec_Tom_日式明太子拌竹筍.jpg','日式明太子拌竹筍',10,1,50,'葷食','[{\"name\":\"明太子\",\"qty\":\"20g\"},{\"name\":\"綠竹筍\",\"qty\":\"1條\"},{\"name\":\"豐\",\"qty\":\"E\"}]','[\"1\\n將竹筍洗淨後，從中間剖一條線，如此可讓竹筍更易熟，再放進鍋中，水量需可蓋過竹筍，大火滾開後轉小火，煮上30分鐘即可。\\n要看竹筍有無熟透，達人建議可用竹籤刺裂縫處，若無法輕鬆刺入，就需再煮一下。\",\"2\\n竹筍放涼後扒開外殼，並切除細尖尾段，如圖以刀削去竹筍較為粗糙面，接下來再切一片片竹筍薄片，再切成細條狀。\",\"3\\n將明太子從包裝中取出後，從兩片明太子相連之處切開，取其中一片，從中間輕劃剖半。\\n剩下的明太子以密封袋包裝，放冰箱冷藏保存即可。\",\"4\\n再用刀片細細刮下明太子，盡量保持顆粒狀，不要壓碎。\",\"5\\n將切成細條狀的竹筍及明太子，一起拌勻，約莫1分鐘，即可分盤上桌。\\n建議留些許明太子在呈盤後點綴，一來視覺好看，再來可嘗到明太子更鮮明的顆粒感，增加味覺享受。\"]'),(7,'Tom','椒鹽透抽','rec_Tom_椒鹽透抽1240.jpg','透抽肉質口感較薄脆，建議以熱炸後爆炒椒鹽，將鮮甜原味以薄薄麵衣包裹，吃得到透抽的酥脆口感，也不會覺得過於膩口。',20,4,700,'葷食','[{\"name\":\"透抽\",\"qty\":\"300g\"},{\"name\":\"蒜頭\",\"qty\":\"3顆\"},{\"name\":\"辣椒\",\"qty\":\"2支\"},{\"name\":\"雞蛋\",\"qty\":\"1顆\"},{\"name\":\"蔥花\",\"qty\":\"少許\"},{\"name\":\"薑末\",\"qty\":\"少許\"},{\"name\":\"中筋麵粉\",\"qty\":\"適量\"},{\"name\":\"米酒\",\"qty\":\"數滴\"},{\"name\":\"胡椒鹽\",\"qty\":\"少許\"}]','[\"1\\n透抽先直切對半，取1／2片切4等份，再將其中每一等份切成直條。\",\"2\\n將透抽與米酒、薑末抓勻，加入蛋汁拌勻後著靜置2～3分鐘。\\n米酒、薑末可去除海鮮腥味，蛋汁則可讓透抽口感更保水嫩、水分不流失。\",\"3\\n透抽放進中筋麵粉中，輕輕翻動讓每一條透抽都裹上薄薄一層麵粉。\",\"4\\n透抽下攝氏120度油鍋，以中火炸約30秒至金黃色即撈起。\\n油炸時間雖然很短，但務必在炸的過程中不斷翻動，以免黏鍋。\",\"5\\n另起一油鍋，下切末的蒜頭、辣椒與蔥花爆香後，加入炸好的透抽以中火快速翻炒數下，起鍋前撒上胡椒鹽即可。\"]'),(10,'guest001','4','rec_gue_46371.jpg','FF',10,3,33,'蛋奶素','[{\"name\":\"44\",\"qty\":\"55\"}]','[\"66\"]');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 20:18:01
