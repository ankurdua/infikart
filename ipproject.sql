-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: ipproject
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `user` varchar(255) NOT NULL,
  `adl1` text,
  `adl2` text,
  `cty` text,
  `state` text,
  `cntry` text,
  `zip` text,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('user','264, SCHEME NO 2','LAJPAT NAGAR','ALWAR','RAJASTHAN','INDIA','301001');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','password');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balancesheet`
--

DROP TABLE IF EXISTS `balancesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balancesheet` (
  `transaction_no` int(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `balance` int(10) DEFAULT NULL,
  PRIMARY KEY (`transaction_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balancesheet`
--

LOCK TABLES `balancesheet` WRITE;
/*!40000 ALTER TABLE `balancesheet` DISABLE KEYS */;
INSERT INTO `balancesheet` VALUES (1,'start','2016-01-23 13:22:29',0,0),(2,'credit','2016-01-23 14:24:29',1300,1300),(3,'credit','2016-01-23 14:29:13',1300,2600),(4,'credit','2016-01-23 14:30:20',1300,3900),(5,'credit','2016-01-23 14:32:34',1300,5200),(6,'credit','2016-01-23 14:34:56',1300,6500),(7,'credit','2016-01-24 16:32:53',79,6579),(8,'credit','2016-01-24 16:34:26',1398,7977),(9,'credit','2016-01-25 17:01:38',79,8056),(10,'credit','2016-01-26 13:14:51',2600,10656),(11,'debit','2016-01-26 13:15:26',0,10656),(12,'credit','2016-02-03 14:05:52',10,10666),(13,'credit','2016-02-03 16:54:14',100,10766),(14,'credit','2016-02-04 13:03:33',1000,11766);
/*!40000 ALTER TABLE `balancesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crdt_card`
--

DROP TABLE IF EXISTS `crdt_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crdt_card` (
  `card_no` char(12) NOT NULL,
  `pin` char(4) DEFAULT NULL,
  `rem_crdt` int(10) DEFAULT NULL,
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crdt_card`
--

LOCK TABLES `crdt_card` WRITE;
/*!40000 ALTER TABLE `crdt_card` DISABLE KEYS */;
INSERT INTO `crdt_card` VALUES ('123456123456','1234',999999999);
/*!40000 ALTER TABLE `crdt_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbt_card`
--

DROP TABLE IF EXISTS `dbt_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbt_card` (
  `card_no` char(12) NOT NULL,
  `pin` char(4) DEFAULT NULL,
  `amt` int(10) DEFAULT NULL,
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbt_card`
--

LOCK TABLES `dbt_card` WRITE;
/*!40000 ALTER TABLE `dbt_card` DISABLE KEYS */;
INSERT INTO `dbt_card` VALUES ('123456123456','1234',999999999);
/*!40000 ALTER TABLE `dbt_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `description` (
  `codeno` int(4) NOT NULL,
  `about` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` VALUES (1,'blue colored, waterproof ,shockproof\n nikkor 3X optical zoom ,\n 4.1-12.3mm 1:3.3-5.9 digital camera\n\n'),(2,'A black colored, MDRXB950BT/B Extra \nBass, Bluetooth facilities available \nheadset'),(3,'A black colored smart LED T.V. \n(2015 Model);, 28 inch 720p'),(4,'A golden colored apple iphone 6s \nFactory Sealed Unlocked Phone,64GB'),(5,'A black coored Lenovo Z70 17.3- Inch \nLaptop (Core i7, 16 GB RAM , 1 TB + 8\nGB RAM , 1 TB + 8 GB HDD, Windows\n10); 80 GOODCUS'),(6,'A black colored Samsung Gear Fit \nSmzrt Watch, with US WARRENTY'),(7,'A black colored Acer Aspire AZ1 -623 - \nUR53 21.5- ir Full HD Touch screen \nAll- in - one Desktop '),(8,'A Canon PIXMA MX922 Wireless Color \nPhoto Printer with Scanner , Copier and \nfax '),(9,'A black-red colored Tesla Mens Cool \nCompression Baselayer Mock T Shirts\nT11 (more colors available);'),(10,'A black- red colored Triple 8 Brainsaver\nrubber Helmet with Sweatsaver Liner\n(more colors also available);'),(11,'A brown colored Luna Mahogany Series\nTattoo Concert Ukulele'),(12,'A black- brown colored Casio SA76 EDP\npersonal keyboard Package with Close\n-Cup Headphones , power supply and \n\n\n\nInstructional Software'),(13,'A book named The Brave Ones: A \nMemoir of Hope, Pride and Military\nServiceby Michael j. MacLeod'),(14,'A black - grey colored Braun Series 9 \n9090cc Electric Shaver with Cleaning\nCenter from Braun'),(15,'a Vichy Aqualia Thermal Rich Cream, \nwith 1.7 fl. oz by Vichy laboraties'),(16,'A book named Roger Waters The Wall \n(Blu - Ray ); by Sean Evans directed by \nRoger Waters'),(17,'A Family Fun Print Access\n THE YEARS BEST TOYS\n'),(18,'A BLACK-GRAY colored Targus Drifter\n II Backpack for 17- Inch Laptop,\n(TSB239US);'),(19,'A Black colored NETGEAR Gamer Wi-Fi\nRouter and Cable Modem Bundle'),(20,'A Black - Grey colored HOOTOO \nWireless Travel Router , USB Port, High\n Performance - TripMate Nano by HOOTOO '),(21,' A white colored Amazon Basics Apple\nCertified Lightning to USB Cable -6 Feet\n(1.8 Meters); by Amazon Basics'),(22,'Micro SDHC Memory card , with Adapter\n- SDSDQUAN- 032G- G4A\n(OLD VERSION);'),(23,' A Learn Alphabet Block by Fisher- price\nfor Little Children'),(24,' A Hasbro Family Fun Pack game by Ubisoft \non platform: Xbox One'),(25,'A Madden NFL 16 - PlayStation 3 by \nElectronic Arts on Platform : Play station'),(26,'A Black- Pink colored Disney Amble Quad\nTravel System for Junior Kids by \nDisney'),(27,'A Black colored Entertainment PlayStation\nVita Wi-Fi for children (certified\nRefurbised); by Sony'),(28,'A Rainforest- Friends Comfort Curve\nBouncer from Fisher - Price'),(29,'A Red- Black colored Nordic Fairilse \nSweater with design'),(30,'A Multicolored platinum Imperial\ncrown ring ,\nsize 7'),(31,' A black -  yellow colored , with beautiful\ndesigned Paris sweater for girls \n(all sizes available);'),(32,'A brown colored , Analog display ,\nmechanical hand wingd watch with \nwhite background'),(33,'A navy blue colored, fossil mens \nmichael card case with one size'),(34,'a red colored 100% nylon canada goose\nyouth sherwood jacket witth (all size\navailable);'),(35,'A lightshed multicolored umbrella \nuseful in bright and rainy days \navailable only in one size'),(36,'A white colored  mediflow 1077 original\nmemory gel foam waterbase pillow '),(37,'A metallic silver colored luggage bag \nwith outer metallic body and with a \nfine movable handle'),(38,'A cream colored 10 light cotton and \nmuslin bag with blue rope handles \n used in crafting and creatng'),(39,'A dark cherry colored packed shirt with \ntie with 55% cotton/ 45% polyester\n (available in all sizes);'),(40,'A credit card and business card holder\n , stylish shiny stainless steel travel\nwallet for men and women with 100%\nmoneyback guarentee'),(41,'A blue jean bear with glasses t-shirt\nfor boys in only 14/16 size available'),(42,'A black colored flat (toddler); with white\ndots with size number 7'),(43,'A dark chocolate made up of dryfruits \nand nuts with having low sugered value\n'),(44,' A gold standerd , double rich chocolate\n with 5 pound and 80 ounce with 100%\noptimum nutrition'),(45,'A sunwarrior blend chocolate 1.1 Ibs\n(ffp); made up of nuts available in 3 flavours '),(46,'A nutritious drink full of proteins and \nvitaminswith 100% micellar casein\nprotein'),(47,'A dove men+care body and face bar\nwith extra freshness'),(48,'A silver antiseperspirant and dedorant\nfor men+care by dove'),(49,'A liquid hand soap ,having pleasent smell\nand used to kill germs\n'),(50,'A body wash for men ,16.9 ounce\n3-in-1 with pleasent smelling by nivea'),(51,'A purified water in plastic bottles 12 in \none pack with fresh and boiled water'),(52,'A black colored crosmon bow with \nall the accessories available\n \n'),(53,'A strong axe perfume with a very\npleasent smell for men with a twin pack'),(54,'A pack of 12 cococola small cans with\n12 fl oz each in a pack of red color  '),(55,'A black colored soft and foaming X \nrocker pulse 2.1 sound gaming chair\nand having strong fibre handles'),(56,'A set of 42 pieces of plastic container\nused in food storage in red color \n(1880801);'),(57,'A black colored atlantic gaming desk for \nchildren- not machine specific'),(58,'A black colored TV stand for flat panel\nTVs up to 32 inch or 80-  pound(131020);'),(59,'A black colored 2 stage knife sharpener\nused in kitchen  by kitchen IQ'),(60,'A red- grey colored lightweight corded  \nstick vaccum cleaner used as a dirt \ndevil\n '),(61,'A wooden bed claw unibody adjustable\nheight bed frame for supporting the\nleg'),(62,'A pack of 6 new england cultery  knife in\nblack colored, sharp knife , with a pointed end'),(63,'A white colored folding guest bed with\nmulticolored pillows , foaming internal storage\nalso available'),(64,'A brown colored metallic bed with \nadirondacks design, size 4by 6 feets'),(65,'A wooden colored bunkie board of queen\nsize ,size 5by 7 feets'),(66,'A multicolored ,lightshaded folding rollaway\nbed with wooden slats and comfortable\nfoam , good wheels of 38 by 79 inches '),(67,'A black colored cansister vaccum cleaner\n with a long handle used on multisurface '),(68,'A brown- coffee colored bed with foam \nmattress  with internal storage (14 full);'),(69,'A brown- coffee colored bed with foam \nmattress  with internal storage (14 full);'),(70,'a LED light bulb-10watt household dimmable 60 watt incandescent bulbs(cool light);'),(71,'A wooden bed with two foaming pillows\n,with side racks, internal storage also\navailable'),(72,'A black colored 6 feet long data cables\na set of 2 packs supports ethernet, 3d,\n4k and audio return for HDTV PS3 PS4\n XBOX ONE'),(73,'a pack of 10  4- watt Gu -10 Super bright LED Bulbs , not dimmable '),(74,'Leather contemporary platform bed ,brown colored with side racks having internal storage also'),(75,'a set of 24 reusable cupcakes liners /muffins molds , 100%food grade non toxic Si ,used in microwave ,oven ,dishwasher ,etc'),(76,'a white colored iBed tablet stand held with a thick steel pipe'),(77,'portable mini heat sealing machine impulse sealer seal packing plastiv bag kit for food saver (pink);'),(78,'a black colored smartphone car mount-retail packaging'),(79,'Smartbase high for under bed storage /matteress foundation /platform bed frame'),(80,'fully loaded plug N play Matricom G-box quad octo processor /kodi android TV box (2GB/16GB/32GB);'),(81,'a Gu10 LED bulb ,7w 605 Lumen (35w,50w,55w); Halogen Replacement ,Warm white);'),(82,'digital meat thermomter for food ,grill,BBQ ,Temperature readings ,auto shutoff '),(83,'lipstick sized 3200mAh portable charger power back for iPhone ,samartphones ,etc-black colored'),(84,'12-LED lights pet UV Urine & stain detector Blacklight/Flashlight detector,LED UV Flashlight 395nm,'),(85,'a red colored KV25GOXER professional 5Plus 5-Quart Stand mixer'),(86,'whit colored olloclip 3- in - phone 5c photo lens - reatail packaging '),(87,'1500 thread coun 2pcs pillow cases -all size and colors available'),(88,'Mpow 3 i 1 Clip on lens kit , 180 degree 4 element 3 group supreme Fisheye lens \n+.67 X wide angle lens \n+10Xmacro lens with 3 seperate clips '),(89,'8Xtelephoto lens fisheye lens ,2 in 1 macro lens and wide angle lens -black '),(90,'250 watt hand mixer whisk with chrome beater , dough hook, 6 speed with turbo button + free ballon whisk (red);'),(91,'0 to 170 PSI -Best for cars , bikr ,motorcycle,RV,motor home SUV ATV truck'),(92,'bath towel 100 % Genuine turkish cotton ,27X54, set of 4-white'),(93,'spiderman hooded bath/beach poncho towel\n'),(94,'sea grass basket, fits guest towel 11-17 basket size 10X6-18X4-2/8\n'),(95,'a pack of 4 white colores lock sunction hooks'),(96,'made of seagrass . nested for extra space , fully assembled'),(97,'cotton tablecloth beach towel round yogA mat'),(98,'transparent hydraulic lift adjustable chair (set of two);'),(99,'66 QT./1000w ,stainless steel cooking pot and exterior , latest third generation technology'),(101,'A grey - black colored toaster , breadmaker with gluten free menu setting(b- pac20);'),(102,'A pack of brown bread loaf bags of 100 with 100 free bread'),(103,'A red colored mini fridge of KVC -4-coco- cola personal , 6 cans in one fridge '),(104,'A grey - black colored stainless steel electric single wall oven used in heating the food'),(105,'A black colored cooktop PIC titanium 2015 model year 1800 watts higest powered introduction '),(106,'A black colored electric induction cooktop'),(107,'A stainless steel gas sealed burner cooktop  by ge (cgp650setss);'),(108,'A stainless steel cookware set of 17 piece  with impact- bonded technology'),(109,'A silver colored stainless steel mount range hood of 36- inch (zlkb-36);'),(110,'A sewing machine with metal frame and stainless steel bedplate of 4432 heavy duty with extra high speed'),(111,'A pack of 200 yards with 39 assorted color and thickyards'),(112,'A yellow- black colored drill kit of 3 sets with a big drill machine of 2-18 - volt '),(113,'A  yellow colored screw driving set of 45 pieces(dw2166);'),(114,'A red - black colored multimeter/ dmm/ multitester with hfe measurement'),(115,'A brown- black colored duckwear superbib apron used in kitchen to saved our clothes from dirtness'),(116,'A cycle glide used as a cycle stand to stand the cycle'),(117,'A red colored fire extinguisher , abc,1.60ci(21005779);'),(118,' security chain company sz0133 super z6 cable chain for passengers cars , pickups , set of two'),(119,'A hurst shaker black or gold accent/ clear coat wheel with mirror machined face'),(120,'A blue - black colored hopkins subzero 16621 ice crusher ice scraper'),(121,'A black colored keyless option replacement  key remote ignition key combo keyless entry - trunk release'),(122,'A yellow - black colored super extender snowbroom used in cleaning house'),(123,'A brown colored universal front real car seat cushion cover , a pack of 6 pieces'),(124,'A grey colored waterproof breathable outdoor indoor Xguard car cover by leader accessories'),(125,'A black - golden colored used in plainsGT-7'),(126,'A bottle of green color of iron horse vineyards  wine of 750 ml '),(127,'A grey- red colored youtg spider net dirt bike Atv motocross large helmet with goggles and gloves'),(128,'A gloss black colored medium helmet , full face helmet  with a good transparent mirror (sh- ff0015);'),(129,'A pair of 3 motorcycle riding glasses a transparent colored, a yellow colored , a grey colored '),(130,'A pair of black colored carbon fibre pro- biker bicycle motorcycle motorbike powersports racing gloves'),(131,'A black colored racing enforcer adult knee guard motorcycle body armor '),(132,'A grey- blue colored black seamless skull face tube mask'),(133,'51- piece 300X600-X1200X Metal Frame Kids Student Begginer Compound microscope'),(134,'a greyish colored pull-out tach-can 30 L/8 Gal'),(135,'full body armor pro motocross ATV protector Pro street jacket Shirt (Medium);'),(136,'3D printing pen with LCD screen version 2015 light blue free spatula included'),(137,'1.75 mm ABS-240 linear Feet Toal of 12 Different clolors in 20 Foot lenghts'),(138,'AmScope PS25 prepared Microscope slide set for basic Biological Science Education , 25 slides,includes Fitted wooden case\n'),(139,'digitsl pro pocket scale with back - lit LCD Display Silver'),(140,'14-inch plastic decorative wall clock - brown colored'),(141,'Daniel dekota 71063 grandfather clock'),(142,'a black colored rubber Blue LED watch Date Sports Bracele Digital Wrist Watch'),(143,'Quartz hour date clock Black dial stainless CURREN WV223 Men Wrist watch'),(144,'Slate Colored mens GEl Ventures 5 runniing shoes withall colored and designs available'),(145,'Babys first Christmas ornament /custom ornament/gift for new moms'),(146,'a handmade golden colored key with written quotes on christmas'),(147,'a blue colored enforce hockey table,5.5 with red 4 strickers'),(148,'T-20 cricket set containing a bat,a ball,6 wickets '),(149,'wetsuits 2mm water socks -all colored and sizes available'),(150,'a diving kit -snorkeling set -black colored with pumps also availble'),(151,'A black- yellow colored worktunes hearing protector , Mp3 compatible with am/fm tuner'),(152,'A grey colored binoculars with case, size= 7X35'),(153,'A black colored tactical rifle green dotlaser sight 2.5~10X 40mm scope reflex red retical mount '),(154,'A black- yellow colored concealer smoke anti- fog dual mold safety goggle'),(155,'A black colored smith and wesson m and p shield 9mm/.40 with 1 extended magzine'),(156,'A grey colored military lensatic sighting compass with pouch used to see directions '),(157,'A black colored entranching tool with strong tringular handle'),(158,'A light blue colored OTG safety goggles , navy body , clear dura- streame hardcoat/ anti-fog lens handband made up of fabraic'),(159,'A blue colored playback rollaway table tennis table with good wheels having strong net'),(160,'A red - black colored evolution table tennis rackethaving strong woody handle'),(161,'A red- black colored federer adult strung tennis racket having strong wires and strong handle'),(162,'A black colored premium jump rope having strong handle, rapid results manual Ebook + A free extra cable'),(163,'adjustable cast iron chrome weight dumbell set dumbells 52.5 100 105 200 lbs '),(164,'A white colored tsamsung galaxy tab (7 inch); with backcover and screenguard availability'),(165,'A white colored apple ipad (air 2 mh0w2ll/a); size= 10 inch retina displayed ,16GB '),(166,'A carmel colored Lee bg boys drawstring cargo pant special for boys , all sizes available'),(167,'A purple colored ipad case , 360 degree rotating case , automatic feature with a black case for apple'),(168,'A blue- black colored  snowkypsy boot / toddler in all sizes '),(169,'A navy- red colored polar B winter boot all sizes are available'),(170,'A black colored puma big boys mesh short , all sizes are available '),(171,'A black colored cole haan zerogrand moc chukka boot , all sizes are available'),(172,'A black colored nike mens shox NZ EU running shoes , all sizes are available , white color also available'),(173,'Scenery 36 note cards of 6 different styles including cards envelopes'),(174,'A grey colored adidas mens adizero cap available in many coloress'),(175,'A brown colored NFL super grip official football by wilson'),(176,'A red colored spalding NBA street basketball available in all sizes'),(177,'A black colored philips norelco 3100 , all- in - one trimmer with 5 attachments '),(178,'A red- white rubbermaid 10qt. victory persomal cooler available in varies of colors'),(179,'A white colored BTU portable air conditioner with remote control (mn10cesww);'),(180,'A grey colored air conditioner (ac);A grey colored air conditioner (ac); outdoor window unit cover medium '),(181,'A white colored mini- split ductless air conditioner (2465576); available in many colores'),(182,'grey colored curtains having black dots blackouts curtains, casablance teal'),(183,'A grey colored  32 outdoor TV cover , soft non scratch interior (television up to 38);'),(184,'A black colored rugged impact armor hybrid kickstand cover with belt clip holster case for samsung galaxy (2014);'),(185,'A black colored  articulating (20 ext); TV and monitor wall mount for 23- 49  , size = 400X 400 , includes a 10 twisted veins HDMI cable and bubble level '),(186,'A blue colored , imported made in china , 7- piece full set , includes 86- by - 90 inch comforter , 90- by - 102 inch flat sheet , 60- by - 80 inch fitted sheet , two 12- by - 26 inch shams. and two20-by- 32 inch queen pillowcases '),(187,'A multicolored fashion falls winter mens luxurious woolen knitting warm soft knitted long thick neck muffler scarf shawl wrap'),(188,'A black colored woolen scarf neck warmer available in many colors'),(189,'A purple colored water bottle .6l can be filled  available in many colors'),(190,'A red colored thermos soft lunch kit, spiderman , available in many colors and styles'),(191,'lgg wm8000hva 5.1fT mEGA CAPACITY ELECTRIC WASHERAND 9.0 cU fT. FIT STEAM ELECTRIC DRY SET'),(192,'wm48ss BRADED WASHING MACHINE CONNECTOR, STAINLESS STEEL(3/4fghx3/4fgh 4fT'),(193,'5601-aMP,129/277 VOLT, DECORER SINGLE-POLE AC QUOTE SWITCH , RESIDENCIAL GRADE=WHITE'),(194,'A WHITE COLORED FILTERATION AND PURIFICATION SYSTEM ,6- GALLON'),(195,'lcd dUst cap 20 1/2  X  9 1/2 X3 (l w t);\na nd keyboard,CPU cap'),(196,'3.0 cable modem for compatible with major cable providers '),(197,'Computer table laptop desk stand sofa side bedroom'),(198,'black colored with white lines branded addidas Mens sandal'),(199,'a grey colored with rubber base grip Mens sandal'),(200,'a grey colored with innner orange portion addida mens barricade court tennis shoe'),(208,'A black colored laptop of 15.6nch , 4GB with window 10'),(209,' grey - black colored HP spectre of intel core i7 256 GB wiyh 8 GB internal memory'),(210,'a black colored women shoulder bag with strong handle made up of leather'),(211,'A blue colored water repellent nylon tote shoulder beach bag with strong brown colored handle'),(212,'A skin colored 3 piece tote handbag purse bags made up of leather'),(213,'A game with good graphics with good controls witcher 3 wild hunt game'),(214,'A mortal kombat X adventure game with good controlling '),(215,'An adventure game namedmetal gear solid V in playstation with good controllings'),(216,' dark souls game with fantastic animations and good controllings'),(217,'A beautiful pink coloredgirls long puffed coat with cap and belt'),(218,'A red - blue colored girls snowsuit with good combination'),(219,' Apink colored girls printed raincoat  with good designs'),(220,'A multicolored complete winter suitrugged bear girls snow bib ');
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `user` varchar(255) DEFAULT NULL,
  `feedback` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('user','Great Application'),('user','Improvements should be made \nin the search function');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `email` text,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('user','password','user@gmail.com'),('harshit','ajay@Singh1','harshitgarg475@gmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order1` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order10`
--

DROP TABLE IF EXISTS `order10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order10` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order10`
--

LOCK TABLES `order10` WRITE;
/*!40000 ALTER TABLE `order10` DISABLE KEYS */;
INSERT INTO `order10` VALUES (172,1);
/*!40000 ALTER TABLE `order10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order11`
--

DROP TABLE IF EXISTS `order11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order11` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order11`
--

LOCK TABLES `order11` WRITE;
/*!40000 ALTER TABLE `order11` DISABLE KEYS */;
INSERT INTO `order11` VALUES (6,1),(88,1),(100,1),(164,1);
/*!40000 ALTER TABLE `order11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order12`
--

DROP TABLE IF EXISTS `order12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order12` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order12`
--

LOCK TABLES `order12` WRITE;
/*!40000 ALTER TABLE `order12` DISABLE KEYS */;
INSERT INTO `order12` VALUES (25,1),(204,1),(209,1);
/*!40000 ALTER TABLE `order12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order13`
--

DROP TABLE IF EXISTS `order13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order13` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order13`
--

LOCK TABLES `order13` WRITE;
/*!40000 ALTER TABLE `order13` DISABLE KEYS */;
INSERT INTO `order13` VALUES (7,1),(21,1);
/*!40000 ALTER TABLE `order13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order14`
--

DROP TABLE IF EXISTS `order14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order14` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order14`
--

LOCK TABLES `order14` WRITE;
/*!40000 ALTER TABLE `order14` DISABLE KEYS */;
INSERT INTO `order14` VALUES (9,1);
/*!40000 ALTER TABLE `order14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order2`
--

DROP TABLE IF EXISTS `order2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order2` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order2`
--

LOCK TABLES `order2` WRITE;
/*!40000 ALTER TABLE `order2` DISABLE KEYS */;
/*!40000 ALTER TABLE `order2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order3`
--

DROP TABLE IF EXISTS `order3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order3` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order3`
--

LOCK TABLES `order3` WRITE;
/*!40000 ALTER TABLE `order3` DISABLE KEYS */;
/*!40000 ALTER TABLE `order3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order4`
--

DROP TABLE IF EXISTS `order4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order4` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order4`
--

LOCK TABLES `order4` WRITE;
/*!40000 ALTER TABLE `order4` DISABLE KEYS */;
INSERT INTO `order4` VALUES (100,1);
/*!40000 ALTER TABLE `order4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order5`
--

DROP TABLE IF EXISTS `order5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order5` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order5`
--

LOCK TABLES `order5` WRITE;
/*!40000 ALTER TABLE `order5` DISABLE KEYS */;
INSERT INTO `order5` VALUES (100,1);
/*!40000 ALTER TABLE `order5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order6`
--

DROP TABLE IF EXISTS `order6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order6` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order6`
--

LOCK TABLES `order6` WRITE;
/*!40000 ALTER TABLE `order6` DISABLE KEYS */;
INSERT INTO `order6` VALUES (6,1);
/*!40000 ALTER TABLE `order6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order7`
--

DROP TABLE IF EXISTS `order7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order7` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order7`
--

LOCK TABLES `order7` WRITE;
/*!40000 ALTER TABLE `order7` DISABLE KEYS */;
INSERT INTO `order7` VALUES (6,1),(88,1),(100,1);
/*!40000 ALTER TABLE `order7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order8`
--

DROP TABLE IF EXISTS `order8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order8` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order8`
--

LOCK TABLES `order8` WRITE;
/*!40000 ALTER TABLE `order8` DISABLE KEYS */;
INSERT INTO `order8` VALUES (6,1);
/*!40000 ALTER TABLE `order8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order9`
--

DROP TABLE IF EXISTS `order9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order9` (
  `codeno` int(5) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order9`
--

LOCK TABLES `order9` WRITE;
/*!40000 ALTER TABLE `order9` DISABLE KEYS */;
INSERT INTO `order9` VALUES (100,2);
/*!40000 ALTER TABLE `order9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_no` int(6) NOT NULL,
  `user` text,
  `date` datetime DEFAULT NULL,
  `pmt_opt` char(50) DEFAULT NULL,
  `order_status` char(50) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `card_no` char(12) DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'user','2016-01-23 14:24:29','DEBIT CARD','CANCELLED',NULL,NULL),(2,'user','2016-01-23 14:29:13','DEBIT CARD','CANCELLED',NULL,NULL),(3,'user','2016-01-23 14:30:21','DEBIT CARD','CANCELLED',NULL,NULL),(4,'user','2016-01-23 14:32:34','DEBIT CARD','CANCELLED',NULL,NULL),(5,'user','2016-01-23 14:34:56','DEBIT CARD','PENDING',NULL,NULL),(6,'user','2016-01-24 16:32:54','DEBIT CARD','PENDING',79,'123456123456'),(7,'user','2016-01-24 16:34:26','DEBIT CARD','PENDING',1398,'123456123456'),(8,'user','2016-01-25 17:01:38','DEBIT CARD','PENDING',79,'123456123456'),(9,'user','2016-01-26 13:14:51','DEBIT CARD','PENDING',2600,'123456123456'),(10,'user','2016-02-03 11:40:12','CASH ON DELIVERY','IN TRANSIT',160,'null'),(11,'user','2016-02-03 23:46:40','CASH ON DELIVERY','PENDING',1517,'null'),(12,'user','2016-02-04 13:03:33','CREDIT CARD','DELIVERED',1000,'123456123456'),(13,'user','2016-02-08 21:14:48','CASH ON DELIVERY','PENDING',708,'123456123456'),(14,'user','2016-02-08 21:23:10','CASH ON DELIVERY','PENDING',19,'null');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Name` varchar(80) DEFAULT NULL,
  `codeno` int(4) NOT NULL,
  `MANUFACTURER` varchar(50) DEFAULT NULL,
  `tag` varchar(500) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`codeno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('Nikon Coolpix S33 Waterproof Digital Camera',1,' Nikon','Electronics, Camera , waterproof , by nikon ',97),('Sony MDRXB950BT/B Extra Bass Bluetooth Headset (Black)   ',2,' Sony  ','  With Buetooth extra Bass Available In many Colors ',198),(' TCL 28S3750 28 Inch 720p Roku Smart LED TV ',3,'TCL   ',' 2015 model a Smart TV set wtith Best Sound Quality  ',170),('Apple iPhone 6S  64GB (GOLD) ',4,' Apple  ',' unlocked Phone 64 GB Gold',825),('Lenovo Z70 17.3 -Inch Laptop  ',5,' Lenovo  ',' Core i7 16 Gb RAM 1TB + B tb HDD windows 10  ',790),('Samsung Smart Watch(US Warranty)  ',6,'  Samsung ',' Gear Fitted Smart Watch with Many Colors available  ',79),(' Acer Aspire Az1-623 21.5 inch Full HD Touch Screen All IN One Desktop ',7,' acer ',' Full HD Touch Screen with Full HD Desktop with windows 10   ',700),(' Canon PIXMA MX922 Wireless COLOR Photo Printer with Scanner , Copier and fax ',8,'  Canon ',' Copier and Fax service avalaibility   ',82),(' Men\'s Cool Dry Compression Baselayer Mock Long Sleeve T Shirts T11 ',9,' Tesla  ','   ',19),('Helmet ',10,' Triple Eight  ',' Tripple 8 Brainsaver Rubber Helmet with Sweatsaver Liner   ',39),(' UkUele ',11,' LUNA  ',' Luna Mahogany Series Tattoo concert  UkUele ',86),(' Casio SA76 EDP Personal Keyboard package',12,' Casio','with Closed Cup headphones Power Supply and Instructional Software',64),(' TheBrave Ones ',13,'  Michael J. MacLeod ',' a Amazing Inspiring Book  ',11),('  Electric shaver   ',14,'  Barun ','Barun Sereis 9 9090cc with Cleaning Center  ',330),('  Cream,1.7 fl. oz. ',15,' Vichy  ','Aqalia Thermal Rich 1.7fl.   ',31),(' Rogers Waters The Wall  ',16,'  Roger Waters ','a Very Innovative sense of Book  {Blue Ray}  ',30),('  Family Fun Print Access ',17,' Meredith  ','  All Acess (print + digital )',5),(' Laptop bag ',18,' Targus  ',' Drifter II BackPack for 17-inch Laptop (TSDF6DF4) bag  ',57),('  Modem Bundle  ',19,' Netgear  ',' NightHawk Gamer Wi-Fi Router and Cable  ',250),(' Wireless Travel Router  ',20,' HooToo  ','   , USB Port high performance - tripmate ',20),('  Lightning to USB Cable - 6 Feet  ',21,' AmazonBasics  ','Apple certified 6ft -white  ',8),(' Memory Card ',22,' SandDisk  ','SandDisk Ultra 32GB Micro SFG5  card   with Adapter ',11),(' Shakira First Steps Collection  ',23,'  Fisher -Price ',' satck\'ns way to learn the alphabets  ',17),(' - Xbox One Standard Edition ',24,'  Ubisoft ',' Hasbro Fun Family Pack   ',35),('Plastation 3  ',25,'   Electronic Arts',' Madden NFL 16 with code  ',50),('  Travel System , Minie Pop ',26,' Disney  ',' Disney Amble Aqua  ',200),('  PS',27,'  Sony ','  Computer Entertainment  Vita Wi-Fi ',140),('  Curve Bouncer ',28,' Fisher Piece  ','RainForest Friend Comforts   ',35),(' Sweater   ',29,' Brooks Brother  ','Big Boys Nordic Fairilise  Fairilise   ',79),(' Imperial Crown Ring ',30,' M.C.L.  ','  Luarenza Viking stephine , size 7  ',425),(' Paris Sweater ',31,'  Zoe ','  Flowers by Zoe Big Girls  ',67),('  Watch ',32,' Stuhrling Original  ','Men\'s 54.26 Bridge Hand Wind Brown   ',219),('  Card Case  ',33,' Fossil   ','Fossil  Men\'s Michael case ',35),(' jacket  ',34,'Canada Goose   ','  Youth Sherwood with 3 colors   ',295),(' Grace AOC City Scenes ',35,' Totes  ','  Protecting you from sun and rain  ',17),('  Pillow ',36,' Mediflow  ','Memory Gel Foam Waterbase   ',70),('Luggage  Spinner',37,' Samsonite  ','   Innova Sppiner 645 with wide space ',270),('Bags ',38,' Factory Direct Craft  ','  Package of 10 Light Cotton and muslin Bags with Blue Rope Handles for Favors , Crafting and Creating  ',10),('Shirt  ',39,' Perry Ellis   ',' Big Boy\'s Broadcloth packed with tie  ',28),('Blocking Credit Card Holder   ',40,' MKTRENDZ  ',' for Men and Women -Stylish shiny stainless steel   ',15),('Big blue Boys T-Shirt  ',41,' PERRY ELLIS  ',' s/s Blue Jeans Bear with glasses   ',6),(' toddler ',42,'   Nine West',' Fi-Gi 2T gliiter Mary Jane Flat   ',20),('Kind Nuts and Dark Chcolate Nuts   ',43,' KIND  ','  1.4 ounce 12 count ',9),('Gold Standarg 100% Whey   ',44,'Optimum Nutrition   ','  Optimum Nutriition - double rich  ',10),('  Chocolate Powder ',45,' Sunwarrior  ',' Warrior Blend Raw Vegan with Optimum Nutriition  ',26),(' Naked Casien ',46,'  Naked Nutrtion ','  100% Miller protein  with Optimum Nutriition  ',95),(' Face Bar  ',47,' Dove  ','Men+ Care Body  extra Fresh , 8bar    ',7),(' Deordant  ',48,' Dove  ',' Men+ Coll Silver Antiperspirant  ',4),(' Hand Soap ',49,' Mrs. meyer Clean day  ','Mrs. meyer Clean day   Liqiud  ',3),('  Body Wash  ',50,'  Nivea ',' Nivea Men Energy Men 3-in 1  ',4),('  Purified Water  ',51,' Nestle  ','Pure Life 16.7 ounce Plastic Bottles    ',2),(' Bow  ',52,'Crosman   ','  Elkhorn Jr. Compound ',38),('Deordant  ',53,' AXE  ','Deordant Stick , Pheonix , 6 ounce   ',7),(' Coca cola Can ',54,' Coca - cola  ','  12 Count , 12 Fl Oz Each  ',4),(' Easy Food Stroage Containers  ',55,' Rubbermaid  ',' BPA free Plastics 42 - Piece   ',56),('Gaming Desk   ',57,' Atlantic  ',' Not Machine Specific  ',12),('TV\'s stand',58,'Convienience Concepts   ',' 15536-Tier TV\'s Stand For Flat    ',40),('  Knife Sharpener  ',59,' Kitchen IQ  ','500009 Edge Grip 2 Stage   ',6),(' Vacuum ',60,' Dirt Devil  ','  SD68412 Simpli Stick Corded lightwieght ',15),('Support Leg  ',61,' Bed Claw  ','Unibody Adjustable Height  Bed Frame Slat Center    ',20),('knife ',62,'  Chef Essential ','  Cutlery  Knife with Matching Sheaths ',30),('  Guest Bed ',63,' Zinus  ','Folding Sllep Master Memory resort    ',282),('  Metal Bed ',64,' Customize Bes Inc  ','Twin size Customize bed    ',190),('  Bunkie Board ',65,' Athome Mart  ','Queen Size Bed Slats    ',70),('Folding Eollway Bed ',66,'Milliard   ','   Super Strong Prtable 38 by 79 inch Folding Rollway Bed',186),(' Vacuum Cleaner  ',67,' Panasonic  ',' MC-s669Mult-Surface Bagless Canister  ',300),(' Infused Memory Foam Mettress ',68,'Customize Bed inc ',' Complete Body support and Elliminates Pressure points   ',649),(' Customize Bed Gel infused memory foam mattress ',69,'Customized bed inc.   ','complete body support and eliminates pressure points 14 fulll bed   ',649),(' A-19 Led Bulb ',70,'Greenmart','light bulb,10 watt household dimmable,60 watt incandescent bulbs equivalents cool white   ',649),(' Edgewood queen antique beige-o ',71,'home decoraters collection   ','upholstered bed wide brown kingsize bedwith a wide back ',521),('HDMI cable  ',72,'iMacket   ','6 ft supports ethernet 3d 4k and audio return for hdtv ps3 ps4 xbox1(2 pack)   ',5),('Led white light bulb',73,'zookki','led bulbs 4 watt gu 10 super bright white light 6500k not dimmable',47),('contemporary platform bed',74,'zuri furniture','made in london leather contemporary bed queen size brown colour furniture housing',1855),('Silicone baking cups',75,'kate\'s kitchen','reusable cupcake liners muffin molds 100% food grade no toxic non stick silicone oven microwave dishwasher freezer safe vibrant rainbow colours never buy paper cups again',9),('tablet stand',76,'lab c','white coloured ibed tablet stand',60),('bag heat sealer',77,'EIALA','portable mini heatsealing machines impulse sealer seal packing plastic bag kkit for  food saver pink',8),('smartphone car mount',78,'hijero','universal smartphone mount for car black retail packaging gift wtrap available',5),('platform bed frame',79,'zinus','smart base high 4 under bed storage mattress foundation platfor bed frame box spring replacement white queen black colour',110),('tv box',80,'dealz r us','fully loade an play matricom gbox  quad octo core x bmc codi android tv box 2 gb 16 gb 4k',119),('halogen bulb ',81,'LC LED','dimmable gu 10 led bulb 7w 605 lumen halogen replacement warm white wide angle flood light electronics',13),('thermometer',82,'smart homes','digita thermometer instant read digital meat thermometer for food grill bbq temperature reading auto shut off',9),('power bank',83,'Power add','ultra slim2 lipstick sized 3200 mah portable charger power bank for mobiles phones i electronics ',10),('stain detector',84,'zookki','uv light zooki 12 led light pack uv urine and stain detector backlight flashlight detector',12),(',ixer',85,'Kitchen aid','kv 25 go xcrprofessional 5 plus 5 - quart mixer grinder stand',270),('photo lens ',86,'olloclip','3 in 1 iphone 5c photo lens accessories retail packaging 6 colours available ',60),('pillow',87,'elligant comfort','1500 thread coun egyptian quality 2 pc pillow casees all size and colour home bedding',1),('photo lens',88,'mpow','3 in 1 clip on lens kit 180 degree 4element 4 group supreme fish eye lens .67s wide angle lens 10x for all mobiles iphone samsung accessories ',19),('camera lens ',89,'camkix','iphone 5c camera lens kit 8*telephoto lens fish eye lens micro lens wide angle lens black accessories mobiles',38),('mixer',90,'vonshef','professional 250 w mixture whisk whith chrome beater 2 other hooks free 6 speed with turbo buttor',22),('tyre pressure gauge',91,'geewow','0-170 psi tested developed for mechanics tools',20),('bath towel',92,'soft touch linen','luxury hotel and spa bath towels 100 % genuine turkish cotton set of 4 white',40),('poncho towel',93,'Marvel','Spiderman hoodedbath poncho towel home and decor ',9),('nasket ',94,'hoffmaster ','seagrass basket 10 X 6 11X17 for taowels hame design decor ',8),('suction hooks',95,'nl home ','4 pack power lock suction cup hooks tool ',14),('table',96,'birderock homes','sofa only managementfurniture nasting table made of beautiful hand wooven seagrass ',200),('yoga mat',97,'labhanshi','indian mandala round  roundie beach throw tapestry hippy boho gypsy cotton table cloth beach towel',14),('chair',98,'only management','chair adjustable furnicher home decor hydraulic lift',119),('programmable pressure cooker',99,'instant pot','pressure cooker kitchen appliances latest pot ',119),('refrigerator',100,'samsung','refrigerator side by side dual door kitchen appliances',1300),('breadmaker  ',101,'Zojorushi   ','BB-a23 home bakery Vitruoso bradmaker with Gluten free menu setting   ',224),(' bread loaf ',102,' Linear LD  ',' Bread loaf bags pack of 100 with 100free bread ties  ',6),('mini fridge  ',103,'  Koolatron ','KWC 4 coca cola personal 6 can mini fridge   ',54),(' wall oven  ',104,' Frigidaire  ',' FFWSR8FEF Stainless Steel Electric Single wall oven ',70),('  Induction cooktop',105,'NUwave   ',' PIC titanium 2015 model year 1800 watts powered induction cooktop  ',133),(' induction cooktop  ',106,'Frigidaire  ',' Frigidaire srgESF gallery 30 Black Electric Induction Cooktop  ',1099),(' Burner cooktop  ',107,'   GE',' GE cgp650setss cafe 36 Stainless Steel gas saeled Burner Cooktop  ',560),(' Cookware set  ',108,' Secura  ',' Duxtop [rofessional Stainless steel 17 piece Induction ready cookware set Impact bonded technology  ',249),('Mount range hood   ',109,' z-line  ','Z line ZLS -36 Stainless Steel Wall mount Range hood 36 inch   ',299),('Sewing machine   ',110,' Singer Sewing Co.  ','Singer Sewing 334 Heavy duty exta high Speed Sewing machine with metal frame and Stainless steel bedplate   ',162),(' Sewing thread  ',111,' Lyons blue  ','Lyons blue 34 Assorted Color 200  yards per unit Polyser Sewing Thread Spool set    ',6),(' Drill /Driver kit  ',112,'DEWALT   ','DEWALT DEF747-df 18volt Compact Drill DIver kit   ',89),(' Screwdriving set ',113,'DEWALt   ','DEAWALT E3544oo 45 piece Screwdriving set    ',15),(' Multimeter ',114,' Etakcity  ','MU600 Digital Multimeter / DMM / multi tester with hFE maesurment   ',9),(' Superbib apron ',115,' Bucket boss   ',' 34983 Duckwear Super bib apron Bucketbass   ',15),('Saris Cycle Glide  ',116,'Saris   ',' Saris cycle glide efficient  ',196),(' fire extinguisher  ',117,' Kidde  ',' Kidde 21005544  pro 210 fire Extingisher ABC 16071  ',40),('Cable chain  ',118,' Security cain  ','Security chain Company SW345 Super Z6 Cable for Passenger Cars, pickups , and SUVs set of 2    ',65),(' Coat wheel  ',119,'Hurst    ','Hurst Shaker Black or gold Assenr wheel with Mirror Machined Face    ',380),(' Ice crusher ',120,' Subzero  ',' Hopkins Subzero 12342 Ice crusher or ice scraper (Colors may vary )  ',6),(' replacement key  ',121,' Keyless Option  ','Keyless Optin Replacemenr=t key Remote Ignition key Combo Keyless enrtry - trunk release    ',20),('Snowbroom  ',122,' Subzero   ',' hopkins 234 m subzero 34 super extender snow boom different colors available  ',12),(' car seat  ',123,'   amooca ',' Universal front rear car seat   ',149),('Car cover  ',124,' Leader accessories  ',' waterproof breathable outdoor indoor Xguard Car cover ',50),('radar detector  ',125,' Beltronics  ',' Beltronics FE-4 Radar Detector  ',500),('  Wine',126,' Horse vine yards  ','  2010 iron Horse vine yards estate russian Cuvee Sparkling Wine 750 ml ',42),(' helmet ',127,' TMS  ',' Youth red spider net dirt bike ATv motocross hemet with googles gloves   ',39),(' helmet ',128,' Fuel helmet  ',' Sh-34 Full sapce helmet gloss black medium   ',60),('riding glasses   ',129,' Private label  ',' 3Pair motorcycke riding glasses smoke clear yellow  ',10),('Racing gloves  ',130,' TCbonny  ','Carbon fibre Pro biker bicycle motorcycle motorbike powersports Racing gloves black   ',10),('mask  ',132,' Diageng  ',' Black seamless skull face tube mask  ',5),('Compound microscope kit  ',133,'  Amscope  ',' M30-qs-Dsw35-piece metal frame Kids student beginner Compund microscope   ',43),('TrashCan  ',134,' simple human  ','under counter pullout trashCan Commercially Grade    ',80),('body armor   ',135,' TMS  ','Mototr cycle body armor protector pro street motocross   ',40),('Printing pen  ',136,' 7tech  ',' 3-D printing pen with lcd Screen light blue with free spatula included  ',90),('  3D filament',137,' 3D artist supply  ',' the original best seller - Bonus glow in the Dark color included 1.75 mm ABS - 240 Linear Feet Total of 12 Different Colors in 20 foot lengths  ',25),(' Microscope slide ',138,' Amscope   ','PS25 prepared MicroScope Slide Set for Basic Biologocal Science Education , 25 Slides , includes Fitted Wooden Case    ',17),(' Smart weigh ',139,' Smart weigh  ','Digital pro pocket scale with black lit LCD Display Silver   ',17),('Wall Clock   ',140,' Ganeva  ',' Ganeva 14-Inch Plastic Decorative Wall Clock , Brown  ',23),(' Clock  ',141,' Jenala  ',' Daniel Dakota 43.435 GranFather Clock  ',324),('Wrist Watch  ',142,' Bessky  ',' Unisex Rubber blue LED Watch date Sports Bacelet Digital Wrist Watch   ',4),('Clock   ',143,' ipsmate  ','Sportz Quarts hours sports clock Dial stainless curren WV223 men wrist watch   ',14),(' shoes ',144,' Asics  ',' Men\'s GEL venture 5 Running Shoes   ',80),(' ornament ',145,' Handmade  ',' Amazing Personalised Baby\'s First Christmas Ornament Gift for new moms  ',13),('Christmas ornament   ',146,'  Handmade ','First christmas in our new home    ',10),('Hockey table   ',147,' Hathaway  ',' Enfoecer air hockey table 5.5  ',179),(' Cricket set  ',148,' GrayNIcolls  ',' T20 Cricket set   ',55),(' Water Sock  ',149,' NeoSport  ','WetSuits Pemium Neoprene 2mm water sock   ',15),('Snorkeling set  ',150,'  US Divers ','Admiral LX Island Dry LX and Tresk Premium Snorlkeling set    ',190),(' Hearing protector ',151,'  3M ',' TEKK Tunes Hearing Protaector , mp3 Compatible eith AM / Fm tuner  ',32),(' Binoculars ',152,' Bunshell  ',' Falcon 7*35 binoculars with case  ',23),(' Rifle green dot laser  ',153,' Ledsniper  ',' Tactical rifle green dot Laser Sight 2.5 Scope Reflex REd Peticle mount   ',70),(' Mold Safety goggle  ',154,' DEWALT  ',' DPG45 -45 Concealer  Smoke Anti Fog Dual Safety Goggle  ',12),(' Mangazine ',155,' TALCON  ','  Grips for smith and wesson M&P Shield 9mm with 1 extended Magazine ',18),(' Compass ',156,' SE  ',' CC450 Military lensatic sight compass with pouch  ',8),('  Entrenching tool',157,'  SOG SPeciality knives ','FO8-9 Entenching Tool   ',10),('Anti fog lens  ',158,' Uvex  ','S2434 Stealth OTG SAfety Googfles Navy body clear Dura Streme Hardcoat Lens Fabric Headband   ',15),('T.T. table  ',159,' Butterfly  ',' TR34 Playback Rollway tt tablr  ',500),('TT rackets  ',160,' Stiga  ',' Evolution TT racket   ',47),('tennis racket   ',161,' Wilson  ','Wilson Feserer Adult Strung Tennis Racket    ',161),(' Jump rope ',162,'Fit Sqaud .com   ','Premium Jump rope for Mastering Double Unders Comes with a Carrying bag Rapid results Manual Ebook + a free Extra Cable Limited Time offer    ',28),('Dumbbell Set   ',163,' MTN  ',' New MTN Heavy duty Adjustable Cast Iron Chrome Weight Set 52.5 100 105 200 lbs  ',228),('galaxy tab4   ',164,' Samsung  ',' Samsung galaxy tab 4 (7-Inch , white )  ',119),('iPad   ',165,' Apple  ',' Apple ioad Air 245SDE 19 -Inch Retina Display ,16 GB (Gold) ',446),(' Pant ',166,' Lee  ',' lee Big Boy\'s Sport DrawnString Pant  ',25),('Smart Case cover  ',167,' KEVENZ  ',' Folio Smart Case Cover For Apple the New iPad 4 and 3   ',9),('Boot  ',168,'  Kamik ',' snowgypsy Boot (Toodler/ Little Kid/ Big Kid  ',65),('winter Boot   ',169,'Oshkosh   ',' b\'gosh Polar \'B Winter Boot   ',52),(' Short ',170,' Puma  ','Puma Big Boy\'s Mesh Shorts   ',20),(' Boot ',171,'Cole Haxade   ',' Cole Haan Zerogrand Moc Chukka Boot ',62),('Shoes  ',172,' Nike  ','Mens Shox CDZX Running Shoes  ',160),(' Scener',173,' Note Card Cafe ','majestic Scenery 36 Note Cards For 6 Different Styles Including Kraft Envelopes   ',10),('Cap  ',174,' Adidas  ',' Men\'s Adizero Cap  ',19),(' Football ',175,' Wilson  ',' NKL Super Grip official Football  ',15),('basketball   ',176,' Spalding  ',' NBA Basketball   ',116),(' Trimmer ',177,' Phillips  ','Norcelo multigroom 3100 all in one trimmer with 5 different Blades   ',68),(' Cooler ',178,' Rubbermaid  ','10qt. Victory Persona Cooler   ',12),('AC  ',179,' Honeywell  ',' MN1253000 10,000 BTU Portable AC with Remote Control ',400),('AC  ',180,' Dependable  ','AC Heavy Duty Ac Outdoor Window Unit Cover Medium    ',8),('AC  ',181,' Garrison  ',' AC Ductless Mini Split  21352 18k  BTU ',285),(' Curtain  ',182,'Half Price Draps   ','120 Balck Out Curtain Cassablance Deal   ',52),('  TV Cover',183,'  the TV Store ','32\' Outdoor TV Cover Top premium Quality Weather Resistance Soft Non Scatch Interior  ',55),('Mobile Cover  ',184,'RANZ   ',' Galaxy S5 Case Black Rugged Imapct Armor Hybrid KickStand Cover with belt Clip  ',8),('Monitor wall Mount  ',185,' Cheetah  ','Foe 32-23  LCD -LED Full bellhed Tilt Shivel  ',25),(' Trellis ',186,' AmazonBasics   ','7-Piece Bed-in-a- Back Full / queen , dusty blue trellis   ',49),('Muffler  ',187,' Our supper Store  ',' woolen Knitting Warm Soft Long Thck Crochet Neck Scarf  ',20),('Scarf',188,'Wensltd   ',' Winter O ring knit woolen Scarf neck Warmer    ',5),(' Water bottle  ',189,' camelbak  ','Chulte Water bottle With Cool Water always on    ',12),(' Lunch kit ',190,' thermos  ',' Soft Lunch Kit Spider Man  ',9),('Steam Washer  ',191,' LG  ','Graphite 3.4 Cu ft Front Load steam Washer   ',500),('washing machine Connector   ',192,'Certified Appliance ','  Certified Aplliance DEFD34 Braided Satinless Steel    ',8),(' Switch  ',193,' Leviton  ','15 Amp 120/450  Decora Single pole AC Quite Switch   ',2),('Filtration and Purification System  ',194,'  Zen water System ',' Countertop 6 Gallon  ',95),(' Dust Cover For PC ',195,' uxcell  ','Blue LCD Computer Monitor screen keyboard PC Fabric Cover 22\'   ',3),('Modem  ',196,'Linksys   ',' Advanced DFr34 3.0 Cable Modem Certified For Compact and Compatible with major Cable Providers  ',70),('Laptop Satnd  ',197,' VECELO   ','Office Furniture Modern Adjustable omputer Desk Laptop Tray Table Stand   ',39),(' sandal\'s ',198,'  adidas ',' originals Men\'s Adissage Sandal  ',38),('Sandal  ',199,' Columbia  ',' Men\'s Teschun Sandals  ',49),('BLU LIFE ONE 4 G ',201,'BLU LIFE','SMART PHONE,MOBILE, ANDROID,5.5INCH CAMERA , VOICE RECORDER,',100),('MOTO G 2ND EDITION',202,'MOTOROLA','SMART PHONE,MOBILE, ANDROID,5.5INCH CAMERA , VOICE RECORDER',100),('BLU ADVANCE 5.0',203,'BLU LIFE','SMART PHONE,MOBILE, ANDROID,5.5INCH CAMERA , VOICE RECORDER',60),('BLU LIFE ONE X ',204,'BLU LIFE','SMART PHONE,MOBILE, ANDROID,5.5INCH CAMERA , VOICE RECORDER',160),('ALEXANDER THE GREAT',205,'DEMI','HISTORY ,BIOGRAPHY ,WAR,BOOK INSPIRING',10),('STAR WARS: THE FORCE AWAKEN ',206,'PABLO HIDALGO','SCIENCE FICTION, MOVIE , BOOK,GAME ',12),('THE NEGATIVE CALORIE DIET',207,'ROCCO DISPIRITO','DIET BOOK ,COOKING BOOK ,LOOSE WEIGHT ',17),('ASUS 15.6 INCH LAPTOP',208,'ASUS','LAPTOP , 15.6 INCH 4 GB RAM,500 GB HDD ,WINDOWS 10',280),('HP  SPECTRA X 360',209,'HP','LAPTOP GADGET ELECTONIC 13.3INCH TOUCHSCREEN 256GB SSD ',790),('SHOULDER BAG',210,'COLOR SCISSOR','LEATHERBAG HAND BAG BLACK TOTE PURSE',21),('SHOULDER BEACH BAG',211,'ECOSUSI','LEATHERBAG HAND BAG BLACK TOTE PURSE WATER REPELLING NYLON',20),('LEATHER HAND BAG SET',212,'COOFIT','LEATHERBAG HAND BAG BLACK TOTE PURSE BAG SET - 3 PIECE',41),('THE WITCHER 3 ',213,'WARNER BROSS INTERACTIVE','RPG STRATEGY GAME PC GAME COPMUTER GAME ',80),('MORTAL COMBAT X ',214,'WARNER BROSS INTERACTIVE','RPG STRATEGY GAME PC GAME COPMUTER GAME  FIGHTING',59),('METAL GEAR SOLID 5 ',215,'KONAMI','RPG STRATEGY GAME PC GAME COPMUTER GAME  PLAYSTATION 4',55),('DARK SOULS 2 ',216,'BANDAI NAMCO GAMES ','RPG STRATEGY GAME PC GAME COPMUTER GAME  GHOST GAME ',20),('GIRLS LONG PUFFER COAT ',217,'PINK PLATINUM','PINK PUFFER COAT LONG COAT  WINTER WEAR ',27),('GIRLS SNOW SUIT ',218,'RUGGED BEAR','PINK PUFFER COAT LONG COAT  WINTER WEAR ',32),('GIRLS PRINTED RAINCOAT',219,'HATELY','PINK PUFFER COAT LONG COAT  WINTER WEAR ',34),('GIRLS SNOW BIB AND SUIT',220,'RUGGED BEAR ','PINK PUFFER COAT LONG COAT  WINTER WEAR ',36);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-09  5:28:38
