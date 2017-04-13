SET sql_mode='NO_BACKSLASH_ESCAPES';
CREATE TABLE `schema_migrations` (`version` varchar(255) NOT NULL);
INSERT INTO `schema_migrations` VALUES('20140713042447');
INSERT INTO `schema_migrations` VALUES('20140727092919');
INSERT INTO `schema_migrations` VALUES('20140729032421');
INSERT INTO `schema_migrations` VALUES('20140731110531');
INSERT INTO `schema_migrations` VALUES('20140806091451');
INSERT INTO `schema_migrations` VALUES('20140806091513');
INSERT INTO `schema_migrations` VALUES('20140808071332');
INSERT INTO `schema_migrations` VALUES('20140808101709');
INSERT INTO `schema_migrations` VALUES('20140812074839');
INSERT INTO `schema_migrations` VALUES('20140814052843');
INSERT INTO `schema_migrations` VALUES('20140816071751');
INSERT INTO `schema_migrations` VALUES('20140818043029');
INSERT INTO `schema_migrations` VALUES('20140902072301');
INSERT INTO `schema_migrations` VALUES('20140907042336');
INSERT INTO `schema_migrations` VALUES('20140907082809');
INSERT INTO `schema_migrations` VALUES('20140907095459');
INSERT INTO `schema_migrations` VALUES('20140908090959');
INSERT INTO `schema_migrations` VALUES('20140908093829');
INSERT INTO `schema_migrations` VALUES('20140908101019');
INSERT INTO `schema_migrations` VALUES('20140910065222');
INSERT INTO `schema_migrations` VALUES('20140910065349');
INSERT INTO `schema_migrations` VALUES('20141014060418');
INSERT INTO `schema_migrations` VALUES('20141113101011');
INSERT INTO `schema_migrations` VALUES('20141119073519');
INSERT INTO `schema_migrations` VALUES('20141208035818');
INSERT INTO `schema_migrations` VALUES('20141208054233');
INSERT INTO `schema_migrations` VALUES('20141228061139');
INSERT INTO `schema_migrations` VALUES('20141229054512');
INSERT INTO `schema_migrations` VALUES('20150330081021');
INSERT INTO `schema_migrations` VALUES('20150401110220');
INSERT INTO `schema_migrations` VALUES('20150401110341');
INSERT INTO `schema_migrations` VALUES('20150407223643');
INSERT INTO `schema_migrations` VALUES('20150409115519');
INSERT INTO `schema_migrations` VALUES('20150417044602');
INSERT INTO `schema_migrations` VALUES('20150419103858');
INSERT INTO `schema_migrations` VALUES('20150420053538');
INSERT INTO `schema_migrations` VALUES('20150421062325');
INSERT INTO `schema_migrations` VALUES('20150422032529');
INSERT INTO `schema_migrations` VALUES('20150430024945');
INSERT INTO `schema_migrations` VALUES('20150611021339');
INSERT INTO `schema_migrations` VALUES('20150611083913');
INSERT INTO `schema_migrations` VALUES('20150612044403');
INSERT INTO `schema_migrations` VALUES('20150620062917');
INSERT INTO `schema_migrations` VALUES('20150620105001');
INSERT INTO `schema_migrations` VALUES('20150807073434');
INSERT INTO `schema_migrations` VALUES('20150811035158');
INSERT INTO `schema_migrations` VALUES('20151014121647');
INSERT INTO `schema_migrations` VALUES('20151203030036');
INSERT INTO `schema_migrations` VALUES('20151203231500');
INSERT INTO `schema_migrations` VALUES('20151203232914');
INSERT INTO `schema_migrations` VALUES('20151203235831');
CREATE TABLE `users` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `email` varchar(255) DEFAULT '' NOT NULL, `encrypted_password` varchar(255) DEFAULT '' NOT NULL, `reset_password_token` varchar(255), `reset_password_sent_at` datetime, `remember_created_at` datetime, `sign_in_count` integer DEFAULT 0 NOT NULL, `current_sign_in_at` datetime, `last_sign_in_at` datetime, `current_sign_in_ip` varchar(255), `last_sign_in_ip` varchar(255), `created_at` datetime, `updated_at` datetime);
CREATE TABLE `staff_members` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `farm_name` varchar(255), `email` varchar(255) NOT NULL, `email_for_index` varchar(255) NOT NULL, `family_name` varchar(255), `given_name` varchar(255), `family_name_kana` varchar(255), `given_name_kana` varchar(255), `hashed_password` varchar(255), `start_date` date, `end_date` date, `suspended` boolean DEFAULT '0', `created_at` datetime, `updated_at` datetime, `image` varchar(255), `farmimg1` varchar(255), `farmimg2` varchar(255), `farmimg3` varchar(255));
INSERT INTO `staff_members` VALUES(1,'うむ農園','info@shizencyokuhan.org','info@shizencyokuhan.org','高橋','秀彰マミ','タカハシ','ヒデアキマミ','$2a$10$de9cYjIHQ2iPFkMYsLYRRekN1J3L17vBzO1RAe.sxKV1/D0LHZ/p.',NULL,NULL,'1','2015-08-12 01:15:44.715615','2016-07-03 09:35:26.934382','12000889_1665626023722777_2673408269382513762_o.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(2,'タンポポ農園','support@tanpopofarm.jp','support@tanpopofarm.jp','本多','稔','ホンダ','ミノル','$2a$10$o4REctS1g2MRgvGtC4mNdur4SjktkXpFku0HcEyPAJRqzHns6nHvC',NULL,NULL,'1','2015-08-12 16:39:43.025639','2015-10-28 23:08:00.180172','IMG_5429.jpg','IMG_5649.jpg','IMG_5666.jpg','10672223_705569029523216_8225174833015054863_n.jpg');
INSERT INTO `staff_members` VALUES(3,'牛窓ふかだ農園','snapped.forehead@gmail.com','snapped.forehead@gmail.com','深田','和裕','フカダ','カズヒロ','$2a$10$hNZZGRFknywqk3yGcl0Jfe/zK/o5VEKUfrImC9ccK4a0m0IR2SB82',NULL,NULL,'0','2015-08-12 20:48:58.702100','2016-05-13 04:13:01.329999',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(4,'野菜王国（オカダファーム）','okada-farm@m01.fitcall.net','okada-farm@m01.fitcall.net','岡田','真吾','オカダ','シンゴ','$2a$10$2oDeNPNHwvlT9rBMhW5oRewntIZhBRGnMpwEPJDn8Er0rHpSBno9u',NULL,NULL,'0','2015-08-12 22:24:14.621438','2015-12-07 10:33:46.163232','_______.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(5,'あめつち農園','ametsuchinouen@i.softbank.jp','ametsuchinouen@i.softbank.jp','塩田','宏紀','シオタ','ヒロキ','$2a$10$QINEkqGIehsbCpOdC0.Qw.rjru2fQBjruZofsfynkOyESJjkfLVI.',NULL,NULL,'0','2015-08-12 22:24:25.211445','2016-06-24 17:49:22.464819','11020905_1595657974030677_1141587893741918040_n.jpg','1422620_1594188714177603_7938594129757013137_n.jpg','1229886_1592311907698617_3944316995840001890_n.jpg','11391380_1589684177961390_6389338440883401623_n.jpg');
INSERT INTO `staff_members` VALUES(6,'ポマイカイ農園','pomaikainoen@gmail.com','pomaikainoen@gmail.com','佐藤','朋子','サトウ','トモコ','$2a$10$UseQcP70bOfvrcvOiA7Jk.fXDoGmQSgH6NZ1P2EE387F980o06qli',NULL,NULL,'0','2015-08-12 23:32:53.815989','2015-08-12 23:38:41.315651',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(7,'ピエヌ☆champ','tree.hugger33@ezweb.ne.jp','tree.hugger33@ezweb.ne.jp','木村','智子','キムラ','トモコ','$2a$10$FswZTY3R8JEv5VzhsOTxFePunmVvykFPeD4R.FkFtZjf.fmrlEXL2',NULL,NULL,'0','2015-08-17 06:50:33.866483','2015-11-12 03:23:10.928269',NULL,'IMG_168191712755544.jpg',NULL,NULL);
INSERT INTO `staff_members` VALUES(8,'淡路島 花岡農恵園','info@hanaoka-noukeien.jp','info@hanaoka-noukeien.jp','花岡','明宏','ハナオカ','アキヒロ','$2a$10$fUGT58B.cb/caJ1/lrRTBO7.xYNpiV/Fb58fNUAvI/8HW2mTb0VhG',NULL,NULL,'1','2015-08-20 04:52:52.415104','2015-11-02 08:49:53.369908','DSC_0347.jpg','_20151102_144704.jpg','DSC_0370.jpg','FB_IMG_1446453916222.jpg');
INSERT INTO `staff_members` VALUES(9,'農事組合法人 丹波みすまる','mkt0726bms@gmail.com','mkt0726bms@gmail.com','荻野','真','オギノ','マコト','$2a$10$jEd6nh73ikkXkid0OAixUOuOe582Pb3UegTCc/WonyglvXSZgRbl.',NULL,NULL,'0','2015-08-28 03:16:54.493487','2017-01-11 14:34:55.040115','image.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(10,'八百屋','jump@plantinc.net','jump@plantinc.net','小泉','拓','コイズミ','タク','$2a$10$PuD1OHR.FNzusP2bZ7YWHenA36FIwda9TVQ.4WGn7GtfGq0YBcIdy',NULL,NULL,'0','2015-08-28 12:39:19.892085','2015-08-28 12:39:19.892085',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(11,'RedRice自然農園','akou333@yahoo.co.jp','akou333@yahoo.co.jp','赤穂','達郎','アコウ','タツオ','$2a$10$.3qAOnHicOEV3/4xJ4MD8uKRw3lqbhv1VDCE0FZl.PQ8XIdKd.equ',NULL,NULL,'1','2015-09-01 10:13:49.266434','2016-02-09 10:25:17.535291',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(12,'ほっと自然栽培農園','hot_taro_10@mx2.kct.ne.jp','hot_taro_10@mx2.kct.ne.jp','高越','基治','タカコシ','モトジ','$2a$10$LKAx1EiLq8f5b0/HzL2dzuD8l/x6Gym7YRVkf7MyeSWe.wpzJ9xJC',NULL,NULL,'0','2015-09-13 12:28:34.183646','2016-12-01 10:13:55.218691',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(13,'イベファーム','takahashi.hideaki@shizencyokuhan.org','takahashi.hideaki@shizencyokuhan.org','井辺','博之','イベ','ヒロユキ','$2a$10$hmEuwXX0NJN36sYXm.qM4uvrmpi58cOnOyf0fqnfldxVjv4K6IADy',NULL,NULL,'0','2015-09-17 07:56:42.178065','2015-09-17 08:02:43.991863',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(14,'奥丹波 里山工房','kishishita@leaf.ocn.ne.jp','kishishita@leaf.ocn.ne.jp','岸下','正純','キシシタ','マサズミ','$2a$10$bR4XHKgDvFzPSLNqUlvNB.6lUHPtaXK4M7mVcTm.G6j0VDjWxVzsW',NULL,NULL,'0','2015-09-22 01:11:29.945815','2017-01-13 04:39:25.428097','image.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(15,'ずくなし農園','slowcafe1974@gmail.com','slowcafe1974@gmail.com','中村','真仁','ナカムラ','マニ','$2a$10$Ldved1yUPIZG6Nk7NA0GW.SthoknGhVkpUM3n/rH9/20bW6lzB23u',NULL,NULL,'1','2015-09-26 11:37:50.925078','2017-01-05 08:35:28.722530','00010987.jpg','2015-06-15_12.07.28.jpg','00011059.jpg','00011000.jpg');
INSERT INTO `staff_members` VALUES(16,'シンプル・ベジ','mkubo@eco-health-food-lab.org','mkubo@eco-health-food-lab.org','久保','正英','クボ','マサヒデ','$2a$10$sPi5a3/g31W4WhgvxHk0puj.05BA8zS1EOwChRbg2bDMonT117NR.',NULL,NULL,'0','2015-10-06 15:27:38.803141','2015-10-06 15:27:38.803141',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(17,'あんがとう農園','yasaitukuriya@gmail.com','yasaitukuriya@gmail.com','明星','孝昭','ミョウセイ','タカアキ','$2a$10$hOP/MWcxKanSZJS8BgTw1eTIgBhP.X71..fufJ1QflR3mjJFPybqe',NULL,NULL,'0','2015-10-07 10:08:03.196659','2015-10-14 11:00:45.114920','__.jpg','P8079920.jpg','10645240_712198975526606_538252018269623748_n.jpg','__.jpg');
INSERT INTO `staff_members` VALUES(18,'ひより農園','info@hiyori-farm.com','info@hiyori-farm.com','本山','憲誠','モトヤマ','ケンセイ','$2a$10$z4eX/icBC8E9sQYHf5MuPuQqsxSdzlDjbnGCWm1bKttCJoYQKJFsO',NULL,NULL,'0','2015-10-11 04:44:38.966427','2015-11-08 04:42:01.104588',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(19,'いわさき菜園','iwasaki-saien2006@w4.dion.ne.jp','iwasaki-saien2006@w4.dion.ne.jp','岩崎','哲史','イワサキ','テツジ','$2a$10$ibOd1z20xetPQ3GMmFlldeox5oLPjOtzdBVVEQoS1Duzgz.xeBDUe',NULL,NULL,'1','2015-10-19 22:39:20.283621','2016-12-09 15:11:11.436047','IMG_20161130_111137.jpg','DSC_0694.jpg','DSC_0683.jpg','DSC_0685.jpg');
INSERT INTO `staff_members` VALUES(20,'','moja@gm-moja.com','moja@gm-moja.com','福永','雅文','フクナガ','マサフミ','$2a$10$pXc8/n0EnmjuWTR30sUuGe8n6a9w/QwztDvaBO.DHmcuPKmX4qpG6',NULL,NULL,'0','2015-10-20 22:02:41.354223','2015-10-20 22:03:25.269741',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(21,'かなん自然農園','takamasa0710@ezweb.ne.jp','takamasa0710@ezweb.ne.jp','畑','尚賢','ハタ','タカマサ','$2a$10$aDrJIqFirGAS0JUt3623huuZ1e2LVGbD5.3YPytx4OG103u2kudT.',NULL,NULL,'0','2015-11-14 07:05:44.876873','2015-11-15 10:44:57.513726','received_833114806767080.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(22,'明石農園','aka4sei1sae5@ca2.so-net.ne.jp','aka4sei1sae5@ca2.so-net.ne.jp','明石','誠一','アカシ','セイイチ','$2a$10$JCo5ZXSf0dCJIizV9xsRT.XdsPjtsxAUZHNgOpCYHAU5h1SvzKmNm',NULL,NULL,'0','2015-12-02 12:34:32.640983','2015-12-02 12:34:32.640983',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(23,'淡路島ビオ畑','awajishimabio@gmail.com','awajishimabio@gmail.com','児島','光宏','コジマ','ミツヒロ','$2a$10$Z7Wez9PJLguvhdahEjl3u.UCn17C7dfC/MwufK6LNHawwgIQPfHTu',NULL,NULL,'0','2015-12-18 12:58:55.822380','2015-12-21 23:33:45.259506',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(24,'加茂自然農園','me@yamatokucha.com','me@yamatokucha.com','山崎','徳哉','ヤマザキ','トクヤ','$2a$10$hr8VXZbL0cThNpbntLhjT.ESVUuOF27VMvQV1PSKrnP8w3mWSN5Bm',NULL,NULL,'1','2015-12-20 23:43:53.992109','2017-01-20 14:20:59.714815','FB_IMG_1459679769031.jpg','Screenshot_2015-04-27-22-41-00.jpg','IMG_20150402_122759.jpg','DSC_0815.jpg');
INSERT INTO `staff_members` VALUES(25,'ヒロファーム','hiro0036460522@docomo.ne.jp','hiro0036460522@docomo.ne.jp','広岡','治','ヒロオカ','オサム','$2a$10$Lr7megqB0zQWeqMXlSXpOeup87hxv2k/36eTR5..qMfaHMoGQd7Ey',NULL,NULL,'1','2015-12-31 08:34:10.699796','2016-09-22 03:56:25.045089','14407921_968319929961430_1818628987_o.jpg','14407970_968319956628094_830623305_o.jpg','14423962_968319883294768_391962993_o.jpg','14408265_968319896628100_61900456_o.jpg');
INSERT INTO `staff_members` VALUES(26,'里山農園やまぐち','okurimeku@gmail.com','okurimeku@gmail.com','山口','敦央','ヤマグチ','アツテル','$2a$10$EPOPpSkJjLY3EUjuhBrbW..nDewDsbfcEdGa7Xyvl/vWCwdT.rFaK',NULL,NULL,'0','2016-01-05 02:57:24.504129','2017-02-10 04:49:58.386344','FB_IMG_1461827091978.jpg','edited_20151214_101816.jpg','20150714_172404.jpg','20160301_225437.jpg');
INSERT INTO `staff_members` VALUES(27,'ビオアグリ','hkashiwagi@bioagri.jp','hkashiwagi@bioagri.jp','柏木','大樹','カシワギ','ヒロキ','$2a$10$NZtYGVxTjwHADVkb.QqeIuPrrIr.uI8LNs00ljyTmtTWUcco.Xiv.',NULL,NULL,'0','2016-01-14 12:47:17.897932','2016-01-14 12:47:17.897932',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(29,'遊嬉農苑','i.am.in.dreamfarm@ezweb.ne.jp','i.am.in.dreamfarm@ezweb.ne.jp','清水','靖司','シミズ','ヤスシ','$2a$10$T9MzCN0hJstwuWhyXjOnkeIVCSUtsD559jnwXCmk5Uhu8csuf9NVa',NULL,NULL,'1','2016-01-18 07:28:52.256581','2016-11-24 11:57:14.777298','image.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(30,'ひより農園','k.motoyama@hiyori-farm.com','k.motoyama@hiyori-farm.com','本山','憲誠','モトヤマ','ケンセイ','$2a$10$VmUBZpuOufBzi06Fu2AcU.sQFTM5/7h93AEVgdc8j282DikRUhbfa',NULL,NULL,'1','2016-02-12 09:35:56.977285','2016-10-24 02:30:48.761839',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(31,'ファーザーズファーム','allfreekyoto@gmail.com','allfreekyoto@gmail.com','伊藤','博隆','イトウ','ヒロタカ','$2a$10$/oQCw5yetP98Wfs9SVW5FeUZdLs3esL8OnM5/ZziII3ZGpSmRUmle',NULL,NULL,'0','2016-02-16 05:02:50.335303','2016-08-06 04:58:28.323893','image.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(32,'ポマイカイ農園','pomaikainoen@yahoo.co.jp','pomaikainoen@yahoo.co.jp','佐藤','朋子','サトウ','トモコ','$2a$10$2GknA/i4.JacT56XY4Jny.QVMe64S4cRUQie.NBu9oHHnRh/LPN/a',NULL,NULL,'0','2016-03-07 00:09:27.556781','2016-03-28 06:14:16.703656','image.jpg','image.jpg','image.jpg','image.jpg');
INSERT INTO `staff_members` VALUES(33,'純天然舎','purehoneyfarm@yahoo.co.jp','purehoneyfarm@yahoo.co.jp','後藤','純子','ゴトウ','ジュンコ','$2a$10$I8ieIni4BBN7PWavlTwq.eubtxVfiiWVuzxeSoDXLMSDtRPvZZVQ.',NULL,NULL,'1','2016-03-18 02:14:53.521637','2016-04-23 23:53:46.877816','12527842_1118037884913815_711965292_n.jpg','moonsoap_5.jpg','moonsoap_beewax3.jpg','botanicallipbalm.jpg');
INSERT INTO `staff_members` VALUES(34,'牛窓食糧庫','ushimado-foodbase@willcom.com','ushimado-foodbase@willcom.com','守谷','征謙','モリタニ','ユキノリ','$2a$10$YwLriDbkwEYDsPV11uzNtubSkZF0lXzMOBzFeR5rM4GPpjXSu.Guq',NULL,NULL,'0','2016-03-28 06:12:48.545978','2016-03-29 08:58:44.540541',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(36,'室田農園','zero-farm@docomo.ne.jp','zero-farm@docomo.ne.jp','室田','歳明','ムロタ','トシアキ','$2a$10$NUsLsAAhZNt2rMRqp9RXveOahCIL9z8TvW5YL808CXYorQl6V5m0S',NULL,NULL,'0','2016-04-01 02:54:31.983360','2017-01-26 13:04:08.552614',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(37,'今日はいい天気だFARM','yutama828@gmail.com','yutama828@gmail.com','松島','裕太','マツシマ','ユウタ','$2a$10$sPyctNrlKpe7TGSf8hGYkuh35.CUyiRnKgN3jB294.lwdyPovf8Zq',NULL,NULL,'1','2016-04-02 03:06:55.848263','2016-09-16 13:42:57.350762','image.jpg','image.jpg','image.jpg','image.jpg');
INSERT INTO `staff_members` VALUES(38,'農enファーム','nouenfarm@gmail.com','nouenfarm@gmail.com','伊藤','雅史','イトウ','マサシ','$2a$10$JsrR45a0lqAqo2Ffr/C9VO6vvSMhEOkxlV24Zyl/gL5dOdnau7GDS',NULL,NULL,'0','2016-04-02 10:07:10.918126','2016-10-11 00:28:41.828302','logo_690190.jpg','IMG_20140608_102129.jpg','IMG_20140718_180318.jpg','cereal_bag678482.jpg');
INSERT INTO `staff_members` VALUES(39,'自然栽培 ただし〜農園','kimurajuku24@yahoo.co.jp','kimurajuku24@yahoo.co.jp','高橋','正','タカハシ','タダシ','$2a$10$tdz4dXJ4RqiZwsE51FjJ9.N9fJ3muJQ8Ixgegn87UbTQ/ROVSBY6C',NULL,NULL,'1','2016-04-05 13:07:06.797741','2016-09-14 00:25:16.734374','12935280_531578473687413_1567700022_n.jpg',NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(40,'とんぎりやま農園','tongiriyama@gmail.com','tongiriyama@gmail.com','小野','浩典','オノ','ヒロノリ','$2a$10$hSclFtewjhVvwfSSl5.WzuRyaH2ulVhwtsI//iGsI4BmN/4CukeEi',NULL,NULL,'1','2016-05-13 12:40:33.998993','2016-10-10 13:39:18.921564','image.jpg','image.jpg','image.jpg','image.jpg');
INSERT INTO `staff_members` VALUES(41,'大村農園','taichiomura@walaugh.net','taichiomura@walaugh.net','大村','太一','オオムラ','タイチ','$2a$10$w3nsZDP57zN1iZLa3Ls.zO2mQJMdixsrUGDG3y.wscnT3lUrAImkW',NULL,NULL,'0','2016-09-10 03:57:03.965382','2016-12-24 23:05:30.991606',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(42,'ビオアグリ','hiroki.s.and.k@gmail.com','hiroki.s.and.k@gmail.com','柏木','大樹','カシワギ','ヒロキ','$2a$10$GH1cLKlY1H6dWpzBIEW0Bu6zd0FALWj.4oZvCU7nGZS8S0CUqO0YC',NULL,NULL,'1','2016-11-16 09:17:25.460244','2016-11-17 02:10:38.203675',NULL,NULL,NULL,NULL);
INSERT INTO `staff_members` VALUES(43,'五段農園','tky@5dan-farm.com','tky@5dan-farm.com','高谷','裕一郎','タカヤ','ユウイチロウ','$2a$10$Pk7XSs8wHYMmiCZHPaCPiOQdS9qz/k9kT1BQ.uy.PVPJBBy9ntK3u',NULL,NULL,'0','2016-12-03 23:33:53.128301','2016-12-03 23:33:53.128301',NULL,NULL,NULL,NULL);
CREATE TABLE `administrators` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `email` varchar(255) NOT NULL, `email_for_index` varchar(255) NOT NULL, `hashed_password` varchar(255), `suspended` boolean DEFAULT '0' NOT NULL, `created_at` datetime, `updated_at` datetime);
CREATE TABLE `staff_events` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `staff_member_id` integer NOT NULL, `type` varchar(255) NOT NULL, `created_at` datetime NOT NULL);
INSERT INTO `staff_events` VALUES(1,1,'logged_in','2015-08-12 01:22:33.591700');
INSERT INTO `staff_events` VALUES(2,2,'logged_in','2015-08-12 16:42:15.946657');
INSERT INTO `staff_events` VALUES(3,1,'logged_in','2015-08-12 17:14:28.690911');
INSERT INTO `staff_events` VALUES(4,3,'logged_in','2015-08-12 20:49:24.489655');
INSERT INTO `staff_events` VALUES(5,4,'logged_in','2015-08-12 22:24:55.896064');
INSERT INTO `staff_events` VALUES(6,6,'logged_in','2015-08-12 23:34:11.628665');
INSERT INTO `staff_events` VALUES(7,5,'logged_in','2015-08-13 00:13:12.866545');
INSERT INTO `staff_events` VALUES(8,1,'logged_in','2015-08-13 00:53:28.589514');
INSERT INTO `staff_events` VALUES(9,5,'logged_in','2015-08-13 01:56:36.785240');
INSERT INTO `staff_events` VALUES(10,5,'logged_in','2015-08-13 01:57:03.118056');
INSERT INTO `staff_events` VALUES(11,1,'logged_out','2015-08-13 02:47:48.132117');
INSERT INTO `staff_events` VALUES(12,4,'logged_in','2015-08-13 02:48:27.401103');
INSERT INTO `staff_events` VALUES(13,4,'logged_out','2015-08-13 02:50:26.308329');
INSERT INTO `staff_events` VALUES(14,4,'logged_in','2015-08-13 02:52:28.040064');
INSERT INTO `staff_events` VALUES(15,7,'logged_in','2015-08-17 06:50:55.335999');
INSERT INTO `staff_events` VALUES(16,7,'logged_in','2015-08-17 09:29:25.513559');
INSERT INTO `staff_events` VALUES(17,1,'logged_in','2015-08-17 09:34:57.861638');
INSERT INTO `staff_events` VALUES(18,7,'logged_out','2015-08-17 09:42:54.104627');
INSERT INTO `staff_events` VALUES(19,7,'logged_in','2015-08-17 09:43:10.809906');
INSERT INTO `staff_events` VALUES(20,1,'logged_in','2015-08-18 05:37:06.588569');
INSERT INTO `staff_events` VALUES(21,8,'logged_in','2015-08-20 04:54:23.083922');
INSERT INTO `staff_events` VALUES(22,5,'logged_in','2015-08-21 00:28:54.507888');
INSERT INTO `staff_events` VALUES(23,5,'logged_in','2015-08-21 00:29:11.286429');
INSERT INTO `staff_events` VALUES(24,1,'logged_in','2015-08-27 06:25:10.314508');
INSERT INTO `staff_events` VALUES(25,1,'logged_in','2015-08-27 10:50:04.872888');
INSERT INTO `staff_events` VALUES(26,1,'logged_in','2015-08-27 10:51:07.251876');
INSERT INTO `staff_events` VALUES(27,1,'logged_in','2015-08-27 11:23:05.535433');
INSERT INTO `staff_events` VALUES(28,1,'logged_in','2015-08-28 03:06:18.997467');
INSERT INTO `staff_events` VALUES(29,1,'logged_out','2015-08-28 03:15:26.676235');
INSERT INTO `staff_events` VALUES(30,9,'logged_in','2015-08-28 03:17:53.645490');
INSERT INTO `staff_events` VALUES(31,9,'logged_out','2015-08-28 03:22:45.169586');
INSERT INTO `staff_events` VALUES(32,1,'logged_in','2015-08-28 03:22:58.995726');
INSERT INTO `staff_events` VALUES(33,9,'logged_in','2015-08-28 03:26:45.994816');
INSERT INTO `staff_events` VALUES(34,9,'logged_in','2015-08-28 03:38:03.567066');
INSERT INTO `staff_events` VALUES(35,9,'logged_out','2015-08-28 03:56:28.876124');
INSERT INTO `staff_events` VALUES(36,1,'logged_in','2015-08-28 04:22:39.949992');
INSERT INTO `staff_events` VALUES(37,4,'logged_in','2015-08-28 04:35:58.072140');
INSERT INTO `staff_events` VALUES(38,4,'logged_out','2015-08-28 12:36:19.734806');
INSERT INTO `staff_events` VALUES(39,10,'logged_in','2015-08-28 12:39:56.396503');
INSERT INTO `staff_events` VALUES(40,10,'logged_out','2015-08-28 13:02:46.802940');
INSERT INTO `staff_events` VALUES(41,1,'logged_in','2015-08-28 13:05:44.567770');
INSERT INTO `staff_events` VALUES(42,1,'logged_in','2015-08-28 13:07:24.780650');
INSERT INTO `staff_events` VALUES(43,11,'logged_in','2015-09-01 10:18:39.981956');
INSERT INTO `staff_events` VALUES(44,1,'logged_in','2015-09-06 02:55:45.599418');
INSERT INTO `staff_events` VALUES(45,1,'logged_out','2015-09-08 14:00:54.661020');
INSERT INTO `staff_events` VALUES(46,1,'logged_in','2015-09-09 04:24:57.618625');
INSERT INTO `staff_events` VALUES(47,1,'logged_in','2015-09-10 08:07:34.044048');
INSERT INTO `staff_events` VALUES(48,1,'logged_in','2015-09-10 10:06:19.712355');
INSERT INTO `staff_events` VALUES(49,12,'logged_in','2015-09-13 12:35:38.419749');
INSERT INTO `staff_events` VALUES(50,1,'logged_in','2015-09-17 02:48:12.940118');
INSERT INTO `staff_events` VALUES(51,1,'logged_in','2015-09-17 06:49:03.802457');
INSERT INTO `staff_events` VALUES(52,13,'logged_in','2015-09-17 07:58:32.341682');
INSERT INTO `staff_events` VALUES(53,13,'logged_in','2015-09-17 13:43:42.686165');
INSERT INTO `staff_events` VALUES(54,14,'logged_in','2015-09-22 01:11:56.704444');
INSERT INTO `staff_events` VALUES(55,1,'logged_in','2015-09-22 03:55:24.970219');
INSERT INTO `staff_events` VALUES(56,1,'logged_in','2015-09-22 05:14:59.609085');
INSERT INTO `staff_events` VALUES(57,1,'logged_in','2015-09-25 06:27:25.230112');
INSERT INTO `staff_events` VALUES(58,4,'logged_in','2015-09-25 08:09:42.165026');
INSERT INTO `staff_events` VALUES(59,1,'logged_in','2015-09-25 12:08:50.988088');
INSERT INTO `staff_events` VALUES(60,1,'logged_in','2015-09-25 23:27:03.211292');
INSERT INTO `staff_events` VALUES(61,15,'logged_in','2015-09-26 11:39:37.871796');
INSERT INTO `staff_events` VALUES(62,15,'logged_in','2015-09-26 11:50:03.365862');
INSERT INTO `staff_events` VALUES(63,15,'logged_in','2015-09-27 01:23:06.690811');
INSERT INTO `staff_events` VALUES(64,12,'logged_in','2015-09-28 04:18:58.716595');
INSERT INTO `staff_events` VALUES(65,1,'logged_in','2015-09-28 10:50:52.702474');
INSERT INTO `staff_events` VALUES(66,1,'logged_in','2015-10-01 09:12:08.421588');
INSERT INTO `staff_events` VALUES(67,1,'logged_in','2015-10-01 12:20:04.902135');
INSERT INTO `staff_events` VALUES(68,1,'logged_in','2015-10-01 13:29:34.181898');
INSERT INTO `staff_events` VALUES(69,1,'logged_in','2015-10-01 15:00:38.685369');
INSERT INTO `staff_events` VALUES(70,1,'logged_in','2015-10-01 21:33:37.846176');
INSERT INTO `staff_events` VALUES(71,9,'logged_in','2015-10-02 03:12:44.376973');
INSERT INTO `staff_events` VALUES(72,1,'logged_in','2015-10-04 13:41:17.446050');
INSERT INTO `staff_events` VALUES(73,1,'logged_out','2015-10-04 14:03:43.405641');
INSERT INTO `staff_events` VALUES(74,1,'logged_out','2015-10-06 01:59:47.533712');
INSERT INTO `staff_events` VALUES(75,1,'logged_in','2015-10-06 02:23:49.978882');
INSERT INTO `staff_events` VALUES(76,3,'logged_in','2015-10-06 12:03:41.712438');
INSERT INTO `staff_events` VALUES(77,16,'logged_in','2015-10-06 15:28:20.016195');
INSERT INTO `staff_events` VALUES(78,16,'logged_out','2015-10-06 15:38:53.500483');
INSERT INTO `staff_events` VALUES(79,1,'logged_in','2015-10-07 08:35:57.067336');
INSERT INTO `staff_events` VALUES(80,17,'logged_in','2015-10-07 10:09:04.913559');
INSERT INTO `staff_events` VALUES(81,17,'logged_in','2015-10-08 00:01:19.107225');
INSERT INTO `staff_events` VALUES(82,17,'logged_in','2015-10-08 21:39:44.275713');
INSERT INTO `staff_events` VALUES(83,9,'logged_in','2015-10-09 00:36:49.339476');
INSERT INTO `staff_events` VALUES(84,18,'logged_in','2015-10-11 04:45:44.509372');
INSERT INTO `staff_events` VALUES(85,17,'logged_in','2015-10-11 11:43:10.535644');
INSERT INTO `staff_events` VALUES(86,1,'logged_out','2015-10-14 10:57:11.956519');
INSERT INTO `staff_events` VALUES(87,17,'logged_in','2015-10-14 10:57:22.550992');
INSERT INTO `staff_events` VALUES(88,1,'logged_in','2015-10-14 12:40:05.481630');
INSERT INTO `staff_events` VALUES(89,1,'logged_in','2015-10-18 12:07:13.893747');
INSERT INTO `staff_events` VALUES(90,1,'logged_in','2015-10-18 22:43:47.279116');
INSERT INTO `staff_events` VALUES(91,1,'logged_in','2015-10-19 22:43:50.101646');
INSERT INTO `staff_events` VALUES(92,19,'logged_in','2015-10-19 22:52:08.159498');
INSERT INTO `staff_events` VALUES(93,1,'logged_in','2015-10-20 11:44:12.022825');
INSERT INTO `staff_events` VALUES(94,20,'logged_in','2015-10-20 22:03:07.585360');
INSERT INTO `staff_events` VALUES(95,1,'logged_in','2015-10-21 03:39:47.955779');
INSERT INTO `staff_events` VALUES(96,1,'logged_in','2015-10-21 07:40:57.978871');
INSERT INTO `staff_events` VALUES(97,9,'logged_in','2015-10-22 11:37:53.812901');
INSERT INTO `staff_events` VALUES(98,19,'logged_in','2015-10-22 14:19:38.947517');
INSERT INTO `staff_events` VALUES(99,19,'logged_out','2015-10-22 15:29:06.534275');
INSERT INTO `staff_events` VALUES(100,19,'logged_in','2015-10-23 12:12:20.955068');
INSERT INTO `staff_events` VALUES(101,20,'logged_in','2015-10-24 05:40:03.646889');
INSERT INTO `staff_events` VALUES(102,4,'logged_in','2015-10-24 11:32:17.360612');
INSERT INTO `staff_events` VALUES(103,17,'logged_in','2015-10-24 20:20:49.285529');
INSERT INTO `staff_events` VALUES(104,1,'logged_in','2015-10-25 00:58:50.283769');
INSERT INTO `staff_events` VALUES(105,1,'logged_in','2015-10-25 08:05:47.442207');
INSERT INTO `staff_events` VALUES(106,1,'logged_in','2015-10-25 11:31:21.594423');
INSERT INTO `staff_events` VALUES(107,1,'logged_in','2015-10-25 11:33:45.495031');
INSERT INTO `staff_events` VALUES(108,1,'logged_out','2015-10-25 11:42:16.872068');
INSERT INTO `staff_events` VALUES(109,19,'logged_in','2015-10-25 16:27:59.349794');
INSERT INTO `staff_events` VALUES(110,2,'logged_in','2015-10-25 23:14:50.383127');
INSERT INTO `staff_events` VALUES(111,19,'logged_in','2015-10-26 06:17:14.456739');
INSERT INTO `staff_events` VALUES(112,19,'logged_out','2015-10-26 06:47:01.386609');
INSERT INTO `staff_events` VALUES(113,19,'logged_in','2015-10-26 06:48:30.245898');
INSERT INTO `staff_events` VALUES(114,1,'logged_in','2015-10-26 11:08:20.566782');
INSERT INTO `staff_events` VALUES(115,2,'logged_in','2015-10-26 22:23:02.035582');
INSERT INTO `staff_events` VALUES(116,1,'logged_in','2015-10-26 22:56:41.367491');
INSERT INTO `staff_events` VALUES(117,1,'logged_in','2015-10-27 02:07:46.080508');
INSERT INTO `staff_events` VALUES(118,2,'logged_in','2015-10-27 03:32:53.118902');
INSERT INTO `staff_events` VALUES(119,1,'logged_in','2015-10-27 09:37:33.280815');
INSERT INTO `staff_events` VALUES(120,19,'logged_in','2015-10-28 05:03:07.468964');
INSERT INTO `staff_events` VALUES(121,19,'logged_out','2015-10-28 06:05:10.012878');
INSERT INTO `staff_events` VALUES(122,19,'logged_in','2015-10-28 06:09:47.323962');
INSERT INTO `staff_events` VALUES(123,19,'logged_out','2015-10-28 06:13:26.381916');
INSERT INTO `staff_events` VALUES(124,19,'logged_in','2015-10-28 06:13:54.136737');
INSERT INTO `staff_events` VALUES(125,19,'logged_out','2015-10-28 06:14:11.329727');
INSERT INTO `staff_events` VALUES(126,1,'logged_in','2015-10-28 06:59:48.402434');
INSERT INTO `staff_events` VALUES(127,19,'logged_in','2015-10-28 15:38:21.785043');
INSERT INTO `staff_events` VALUES(128,19,'logged_out','2015-10-28 16:50:36.814179');
INSERT INTO `staff_events` VALUES(129,19,'logged_in','2015-10-28 17:02:24.905909');
INSERT INTO `staff_events` VALUES(130,2,'logged_in','2015-10-28 23:07:50.345091');
INSERT INTO `staff_events` VALUES(131,19,'logged_in','2015-10-28 23:53:40.347189');
INSERT INTO `staff_events` VALUES(132,2,'logged_in','2015-10-30 11:42:28.530074');
INSERT INTO `staff_events` VALUES(133,8,'logged_in','2015-11-02 05:53:56.684552');
INSERT INTO `staff_events` VALUES(134,19,'logged_in','2015-11-02 05:58:56.623859');
INSERT INTO `staff_events` VALUES(135,8,'logged_in','2015-11-04 21:05:30.462680');
INSERT INTO `staff_events` VALUES(136,8,'logged_in','2015-11-04 22:06:32.053291');
INSERT INTO `staff_events` VALUES(137,19,'logged_in','2015-11-05 06:50:32.928881');
INSERT INTO `staff_events` VALUES(138,19,'logged_out','2015-11-05 08:40:17.776141');
INSERT INTO `staff_events` VALUES(139,19,'logged_in','2015-11-05 08:41:39.646604');
INSERT INTO `staff_events` VALUES(140,1,'logged_in','2015-11-05 08:46:29.521395');
INSERT INTO `staff_events` VALUES(141,8,'logged_in','2015-11-05 09:29:40.621150');
INSERT INTO `staff_events` VALUES(142,19,'logged_in','2015-11-05 11:21:38.535848');
INSERT INTO `staff_events` VALUES(143,19,'logged_in','2015-11-06 09:03:54.516076');
INSERT INTO `staff_events` VALUES(144,1,'logged_in','2015-11-06 10:50:35.895966');
INSERT INTO `staff_events` VALUES(145,9,'logged_in','2015-11-06 13:48:09.198077');
INSERT INTO `staff_events` VALUES(146,9,'logged_out','2015-11-06 14:02:09.644685');
INSERT INTO `staff_events` VALUES(147,19,'logged_in','2015-11-07 04:34:42.366535');
INSERT INTO `staff_events` VALUES(148,19,'logged_out','2015-11-07 05:27:54.665920');
INSERT INTO `staff_events` VALUES(149,18,'logged_in','2015-11-08 04:32:31.879443');
INSERT INTO `staff_events` VALUES(150,8,'logged_in','2015-11-09 05:27:08.703218');
INSERT INTO `staff_events` VALUES(151,8,'logged_out','2015-11-09 07:06:32.659238');
INSERT INTO `staff_events` VALUES(152,8,'logged_in','2015-11-09 07:07:03.977668');
INSERT INTO `staff_events` VALUES(153,8,'logged_out','2015-11-09 07:07:13.713475');
INSERT INTO `staff_events` VALUES(154,8,'logged_in','2015-11-10 05:51:28.100692');
INSERT INTO `staff_events` VALUES(155,18,'logged_in','2015-11-10 21:31:13.743405');
INSERT INTO `staff_events` VALUES(156,7,'logged_in','2015-11-12 03:15:28.550833');
INSERT INTO `staff_events` VALUES(157,7,'logged_out','2015-11-12 03:28:11.193747');
INSERT INTO `staff_events` VALUES(158,8,'logged_in','2015-11-12 08:16:58.488486');
INSERT INTO `staff_events` VALUES(159,7,'logged_in','2015-11-12 13:06:20.773038');
INSERT INTO `staff_events` VALUES(160,7,'logged_in','2015-11-12 14:38:07.525143');
INSERT INTO `staff_events` VALUES(161,8,'logged_in','2015-11-13 07:23:47.159125');
INSERT INTO `staff_events` VALUES(162,8,'logged_in','2015-11-13 07:23:50.044895');
INSERT INTO `staff_events` VALUES(163,19,'logged_in','2015-11-13 14:21:26.268381');
INSERT INTO `staff_events` VALUES(164,19,'logged_out','2015-11-13 15:27:19.758319');
INSERT INTO `staff_events` VALUES(165,19,'logged_in','2015-11-14 00:53:50.395999');
INSERT INTO `staff_events` VALUES(166,19,'logged_in','2015-11-14 03:48:26.096280');
INSERT INTO `staff_events` VALUES(167,19,'logged_in','2015-11-14 04:59:40.483942');
INSERT INTO `staff_events` VALUES(168,19,'logged_out','2015-11-14 05:13:57.891631');
INSERT INTO `staff_events` VALUES(169,21,'logged_in','2015-11-14 07:06:45.492884');
INSERT INTO `staff_events` VALUES(170,21,'logged_in','2015-11-14 08:11:57.647925');
INSERT INTO `staff_events` VALUES(171,21,'logged_in','2015-11-15 10:40:43.901594');
INSERT INTO `staff_events` VALUES(172,21,'logged_in','2015-11-16 12:23:37.553250');
INSERT INTO `staff_events` VALUES(173,1,'logged_in','2015-11-17 07:09:15.960139');
INSERT INTO `staff_events` VALUES(174,21,'logged_in','2015-11-17 08:32:25.413548');
INSERT INTO `staff_events` VALUES(175,21,'logged_in','2015-11-19 12:45:11.961193');
INSERT INTO `staff_events` VALUES(176,9,'logged_in','2015-11-26 04:39:58.099099');
INSERT INTO `staff_events` VALUES(177,9,'logged_out','2015-11-26 04:40:48.971603');
INSERT INTO `staff_events` VALUES(178,21,'logged_in','2015-11-27 11:15:15.729514');
INSERT INTO `staff_events` VALUES(179,1,'logged_in','2015-11-28 09:25:49.715449');
INSERT INTO `staff_events` VALUES(180,9,'logged_in','2015-11-28 15:04:57.445767');
INSERT INTO `staff_events` VALUES(181,9,'logged_in','2015-12-01 12:59:22.038826');
INSERT INTO `staff_events` VALUES(182,1,'logged_in','2015-12-03 03:12:13.636421');
INSERT INTO `staff_events` VALUES(183,1,'logged_in','2015-12-04 00:44:02.793493');
INSERT INTO `staff_events` VALUES(184,1,'logged_in','2015-12-04 05:09:44.643544');
INSERT INTO `staff_events` VALUES(185,1,'logged_in','2015-12-04 05:39:08.046645');
INSERT INTO `staff_events` VALUES(186,1,'logged_in','2015-12-04 05:39:43.299686');
INSERT INTO `staff_events` VALUES(187,1,'logged_out','2015-12-04 05:41:23.842895');
INSERT INTO `staff_events` VALUES(188,1,'logged_in','2015-12-04 05:42:12.269519');
INSERT INTO `staff_events` VALUES(189,1,'logged_in','2015-12-04 06:10:51.060760');
INSERT INTO `staff_events` VALUES(190,1,'logged_in','2015-12-04 09:29:03.506575');
INSERT INTO `staff_events` VALUES(191,1,'logged_in','2015-12-06 01:54:30.164249');
INSERT INTO `staff_events` VALUES(192,1,'logged_in','2015-12-06 10:13:50.099941');
INSERT INTO `staff_events` VALUES(193,1,'logged_in','2015-12-07 01:24:28.629747');
INSERT INTO `staff_events` VALUES(194,4,'logged_in','2015-12-07 10:15:03.631247');
INSERT INTO `staff_events` VALUES(195,9,'logged_in','2015-12-07 10:25:51.776454');
INSERT INTO `staff_events` VALUES(196,1,'logged_in','2015-12-08 11:33:12.823181');
INSERT INTO `staff_events` VALUES(197,1,'logged_in','2015-12-10 22:36:34.745889');
INSERT INTO `staff_events` VALUES(198,1,'logged_in','2015-12-11 06:56:24.234310');
INSERT INTO `staff_events` VALUES(199,1,'logged_in','2015-12-12 08:24:51.041833');
INSERT INTO `staff_events` VALUES(200,1,'logged_out','2015-12-12 08:40:39.005941');
INSERT INTO `staff_events` VALUES(201,14,'logged_in','2015-12-12 08:46:03.193369');
INSERT INTO `staff_events` VALUES(202,1,'logged_in','2015-12-12 22:12:41.722473');
INSERT INTO `staff_events` VALUES(203,1,'logged_in','2015-12-14 09:32:27.314342');
INSERT INTO `staff_events` VALUES(204,9,'logged_in','2015-12-14 14:41:34.995212');
INSERT INTO `staff_events` VALUES(205,9,'logged_out','2015-12-14 14:42:22.318189');
INSERT INTO `staff_events` VALUES(206,1,'logged_out','2015-12-18 07:02:50.968383');
INSERT INTO `staff_events` VALUES(207,11,'logged_in','2015-12-19 08:09:32.518996');
INSERT INTO `staff_events` VALUES(208,11,'logged_out','2015-12-19 08:23:41.263456');
INSERT INTO `staff_events` VALUES(209,1,'logged_in','2015-12-19 08:26:36.811535');
INSERT INTO `staff_events` VALUES(210,22,'logged_in','2015-12-20 02:40:12.932609');
INSERT INTO `staff_events` VALUES(211,1,'logged_in','2015-12-20 04:44:34.118032');
INSERT INTO `staff_events` VALUES(212,5,'logged_in','2015-12-20 11:02:48.741786');
INSERT INTO `staff_events` VALUES(213,1,'logged_out','2015-12-20 11:54:12.448144');
INSERT INTO `staff_events` VALUES(214,24,'logged_in','2015-12-20 23:44:54.290499');
INSERT INTO `staff_events` VALUES(215,1,'logged_in','2015-12-21 02:58:48.193521');
INSERT INTO `staff_events` VALUES(216,23,'logged_in','2015-12-21 23:29:53.774844');
INSERT INTO `staff_events` VALUES(217,1,'logged_in','2015-12-23 04:53:41.317750');
INSERT INTO `staff_events` VALUES(218,9,'logged_in','2015-12-26 07:52:53.852058');
INSERT INTO `staff_events` VALUES(219,1,'logged_in','2015-12-29 00:53:21.437344');
INSERT INTO `staff_events` VALUES(220,25,'logged_in','2015-12-31 08:36:08.261297');
INSERT INTO `staff_events` VALUES(221,25,'logged_out','2015-12-31 08:37:51.152881');
INSERT INTO `staff_events` VALUES(222,1,'logged_in','2016-01-03 10:52:24.267805');
INSERT INTO `staff_events` VALUES(223,12,'logged_in','2016-01-03 23:26:38.423654');
INSERT INTO `staff_events` VALUES(224,12,'logged_out','2016-01-05 02:08:03.389364');
INSERT INTO `staff_events` VALUES(225,12,'logged_in','2016-01-05 02:12:08.839821');
INSERT INTO `staff_events` VALUES(226,26,'logged_in','2016-01-05 03:28:17.212155');
INSERT INTO `staff_events` VALUES(227,26,'logged_in','2016-01-05 03:28:18.645030');
INSERT INTO `staff_events` VALUES(228,12,'logged_in','2016-01-11 01:52:20.950248');
INSERT INTO `staff_events` VALUES(229,8,'logged_in','2016-01-11 05:56:52.025293');
INSERT INTO `staff_events` VALUES(230,1,'logged_in','2016-01-13 05:01:58.266154');
INSERT INTO `staff_events` VALUES(231,12,'logged_in','2016-01-16 02:03:07.136306');
INSERT INTO `staff_events` VALUES(232,12,'logged_out','2016-01-16 02:05:04.409577');
INSERT INTO `staff_events` VALUES(233,12,'logged_in','2016-01-16 02:06:51.536545');
INSERT INTO `staff_events` VALUES(234,12,'logged_in','2016-01-16 04:33:00.890097');
INSERT INTO `staff_events` VALUES(235,1,'logged_in','2016-01-18 06:30:03.164192');
INSERT INTO `staff_events` VALUES(236,29,'logged_in','2016-01-18 07:29:42.095646');
INSERT INTO `staff_events` VALUES(237,12,'logged_in','2016-01-18 12:36:41.121196');
INSERT INTO `staff_events` VALUES(238,24,'logged_in','2016-01-18 12:49:45.342102');
INSERT INTO `staff_events` VALUES(239,12,'logged_in','2016-01-19 03:06:15.376025');
INSERT INTO `staff_events` VALUES(240,12,'logged_in','2016-01-24 02:52:32.343805');
INSERT INTO `staff_events` VALUES(241,24,'logged_in','2016-01-29 07:04:23.892166');
INSERT INTO `staff_events` VALUES(242,24,'logged_in','2016-01-29 07:33:03.444083');
INSERT INTO `staff_events` VALUES(243,24,'logged_in','2016-01-30 10:14:56.243744');
INSERT INTO `staff_events` VALUES(244,12,'logged_in','2016-01-31 09:42:26.174899');
INSERT INTO `staff_events` VALUES(245,29,'logged_in','2016-01-31 10:37:07.500531');
INSERT INTO `staff_events` VALUES(246,2,'logged_in','2016-01-31 12:44:12.127350');
INSERT INTO `staff_events` VALUES(247,2,'logged_out','2016-01-31 12:44:47.798232');
INSERT INTO `staff_events` VALUES(248,2,'logged_in','2016-01-31 14:21:29.630184');
INSERT INTO `staff_events` VALUES(249,1,'logged_in','2016-02-02 00:40:48.319042');
INSERT INTO `staff_events` VALUES(250,25,'logged_in','2016-02-02 05:26:59.045075');
INSERT INTO `staff_events` VALUES(251,12,'logged_in','2016-02-02 07:41:08.895490');
INSERT INTO `staff_events` VALUES(252,11,'logged_in','2016-02-02 10:08:58.900390');
INSERT INTO `staff_events` VALUES(253,15,'logged_in','2016-02-02 12:04:10.265106');
INSERT INTO `staff_events` VALUES(254,2,'logged_out','2016-02-03 04:24:58.702688');
INSERT INTO `staff_events` VALUES(255,2,'logged_in','2016-02-03 05:06:36.817844');
INSERT INTO `staff_events` VALUES(256,2,'logged_out','2016-02-03 05:07:58.043274');
INSERT INTO `staff_events` VALUES(257,2,'logged_in','2016-02-03 15:11:29.360233');
INSERT INTO `staff_events` VALUES(258,19,'logged_in','2016-02-06 11:43:40.449924');
INSERT INTO `staff_events` VALUES(259,29,'logged_in','2016-02-06 13:29:49.096583');
INSERT INTO `staff_events` VALUES(260,12,'logged_in','2016-02-07 06:33:44.641776');
INSERT INTO `staff_events` VALUES(261,8,'logged_in','2016-02-07 23:03:57.668657');
INSERT INTO `staff_events` VALUES(262,1,'logged_out','2016-02-08 13:26:53.884635');
INSERT INTO `staff_events` VALUES(263,1,'logged_in','2016-02-08 13:27:38.394774');
INSERT INTO `staff_events` VALUES(264,1,'logged_out','2016-02-08 13:41:13.617803');
INSERT INTO `staff_events` VALUES(265,1,'logged_in','2016-02-08 14:00:58.613794');
INSERT INTO `staff_events` VALUES(266,1,'logged_in','2016-02-08 14:07:17.404162');
INSERT INTO `staff_events` VALUES(267,1,'logged_out','2016-02-08 14:07:48.671207');
INSERT INTO `staff_events` VALUES(268,12,'logged_in','2016-02-09 03:02:55.343926');
INSERT INTO `staff_events` VALUES(269,11,'logged_in','2016-02-09 10:12:40.328305');
INSERT INTO `staff_events` VALUES(270,8,'logged_in','2016-02-10 23:28:25.822020');
INSERT INTO `staff_events` VALUES(271,1,'logged_in','2016-02-11 09:31:52.454173');
INSERT INTO `staff_events` VALUES(272,1,'logged_in','2016-02-11 09:34:00.859326');
INSERT INTO `staff_events` VALUES(273,5,'logged_in','2016-02-11 12:35:35.658004');
INSERT INTO `staff_events` VALUES(274,8,'logged_in','2016-02-11 22:11:03.964517');
INSERT INTO `staff_events` VALUES(275,30,'logged_in','2016-02-12 09:56:25.181331');
INSERT INTO `staff_events` VALUES(276,30,'logged_in','2016-02-12 13:24:49.006192');
INSERT INTO `staff_events` VALUES(277,23,'logged_in','2016-02-12 14:53:03.304786');
INSERT INTO `staff_events` VALUES(278,5,'logged_in','2016-02-12 22:22:16.952444');
INSERT INTO `staff_events` VALUES(279,19,'logged_in','2016-02-13 07:01:06.344616');
INSERT INTO `staff_events` VALUES(280,30,'logged_in','2016-02-13 10:29:00.920069');
INSERT INTO `staff_events` VALUES(281,5,'logged_in','2016-02-13 11:51:58.684760');
INSERT INTO `staff_events` VALUES(282,30,'logged_in','2016-02-14 23:28:30.980296');
INSERT INTO `staff_events` VALUES(283,30,'logged_in','2016-02-15 02:44:51.363155');
INSERT INTO `staff_events` VALUES(284,8,'logged_in','2016-02-15 22:33:15.817439');
INSERT INTO `staff_events` VALUES(285,30,'logged_in','2016-02-16 04:47:12.122459');
INSERT INTO `staff_events` VALUES(286,30,'logged_in','2016-02-16 04:49:58.484814');
INSERT INTO `staff_events` VALUES(287,1,'logged_out','2016-02-16 04:58:56.803047');
INSERT INTO `staff_events` VALUES(288,31,'logged_in','2016-02-16 05:03:31.665485');
INSERT INTO `staff_events` VALUES(289,31,'logged_in','2016-02-16 05:11:27.534468');
INSERT INTO `staff_events` VALUES(290,31,'logged_out','2016-02-16 12:30:29.864536');
INSERT INTO `staff_events` VALUES(291,14,'logged_in','2016-02-16 12:32:07.979987');
INSERT INTO `staff_events` VALUES(292,1,'logged_in','2016-02-18 02:27:33.277669');
INSERT INTO `staff_events` VALUES(293,1,'logged_out','2016-02-18 12:21:36.249429');
INSERT INTO `staff_events` VALUES(294,14,'logged_in','2016-02-18 12:30:21.088425');
INSERT INTO `staff_events` VALUES(295,30,'logged_in','2016-02-18 12:30:57.079286');
INSERT INTO `staff_events` VALUES(296,30,'logged_in','2016-02-19 04:10:24.249006');
INSERT INTO `staff_events` VALUES(297,15,'logged_in','2016-02-21 08:10:00.072335');
INSERT INTO `staff_events` VALUES(298,1,'logged_in','2016-02-21 08:48:55.584121');
INSERT INTO `staff_events` VALUES(299,30,'logged_in','2016-02-23 10:09:02.980271');
INSERT INTO `staff_events` VALUES(300,29,'logged_in','2016-02-28 14:03:35.418409');
INSERT INTO `staff_events` VALUES(301,14,'logged_in','2016-02-29 04:49:19.116626');
INSERT INTO `staff_events` VALUES(302,8,'logged_in','2016-02-29 08:18:47.998573');
INSERT INTO `staff_events` VALUES(303,14,'logged_in','2016-03-01 10:40:21.258709');
INSERT INTO `staff_events` VALUES(304,14,'logged_in','2016-03-01 10:41:14.980114');
INSERT INTO `staff_events` VALUES(305,24,'logged_in','2016-03-04 02:19:55.040998');
INSERT INTO `staff_events` VALUES(306,24,'logged_in','2016-03-04 02:20:02.967428');
INSERT INTO `staff_events` VALUES(307,12,'logged_in','2016-03-04 09:52:48.121618');
INSERT INTO `staff_events` VALUES(308,32,'logged_in','2016-03-07 00:20:40.076758');
INSERT INTO `staff_events` VALUES(309,8,'logged_in','2016-03-07 08:22:29.511837');
INSERT INTO `staff_events` VALUES(310,8,'logged_in','2016-03-08 08:30:16.471863');
INSERT INTO `staff_events` VALUES(311,11,'logged_in','2016-03-08 15:00:15.408233');
INSERT INTO `staff_events` VALUES(312,12,'logged_in','2016-03-09 02:05:09.785503');
INSERT INTO `staff_events` VALUES(313,32,'logged_in','2016-03-09 14:53:40.851634');
INSERT INTO `staff_events` VALUES(314,14,'logged_out','2016-03-10 08:06:56.600036');
INSERT INTO `staff_events` VALUES(315,1,'logged_in','2016-03-10 08:07:36.803174');
INSERT INTO `staff_events` VALUES(316,8,'logged_in','2016-03-10 08:15:47.769426');
INSERT INTO `staff_events` VALUES(317,29,'logged_in','2016-03-10 13:06:13.395529');
INSERT INTO `staff_events` VALUES(318,8,'logged_in','2016-03-11 08:35:38.103948');
INSERT INTO `staff_events` VALUES(319,29,'logged_in','2016-03-15 03:02:20.919706');
INSERT INTO `staff_events` VALUES(320,1,'logged_in','2016-03-16 10:14:10.211290');
INSERT INTO `staff_events` VALUES(321,29,'logged_in','2016-03-17 00:46:29.873320');
INSERT INTO `staff_events` VALUES(322,12,'logged_in','2016-03-17 22:34:09.103455');
INSERT INTO `staff_events` VALUES(323,33,'logged_in','2016-03-18 02:15:13.274991');
INSERT INTO `staff_events` VALUES(324,8,'logged_in','2016-03-18 09:09:21.928843');
INSERT INTO `staff_events` VALUES(325,33,'logged_in','2016-03-18 12:57:58.080342');
INSERT INTO `staff_events` VALUES(326,29,'logged_in','2016-03-18 13:37:45.504118');
INSERT INTO `staff_events` VALUES(327,33,'logged_out','2016-03-18 16:20:15.733494');
INSERT INTO `staff_events` VALUES(328,33,'logged_in','2016-03-18 16:24:22.235653');
INSERT INTO `staff_events` VALUES(329,33,'logged_out','2016-03-18 16:26:17.338656');
INSERT INTO `staff_events` VALUES(330,12,'logged_in','2016-03-18 23:27:35.733416');
INSERT INTO `staff_events` VALUES(331,33,'logged_in','2016-03-19 00:59:31.507581');
INSERT INTO `staff_events` VALUES(332,24,'logged_in','2016-03-19 02:58:47.966084');
INSERT INTO `staff_events` VALUES(333,14,'logged_in','2016-03-20 01:07:16.138328');
INSERT INTO `staff_events` VALUES(334,33,'logged_in','2016-03-20 15:46:41.208249');
INSERT INTO `staff_events` VALUES(335,33,'logged_out','2016-03-20 15:47:52.784336');
INSERT INTO `staff_events` VALUES(336,33,'logged_in','2016-03-21 00:01:35.353865');
INSERT INTO `staff_events` VALUES(337,33,'logged_out','2016-03-21 00:15:28.996630');
INSERT INTO `staff_events` VALUES(338,33,'logged_in','2016-03-21 00:29:31.189989');
INSERT INTO `staff_events` VALUES(339,33,'logged_in','2016-03-22 06:00:10.682497');
INSERT INTO `staff_events` VALUES(340,33,'logged_in','2016-03-22 22:31:11.549068');
INSERT INTO `staff_events` VALUES(341,11,'logged_in','2016-03-23 02:32:47.097079');
INSERT INTO `staff_events` VALUES(342,33,'logged_in','2016-03-23 11:15:02.615017');
INSERT INTO `staff_events` VALUES(343,24,'logged_in','2016-03-24 11:54:58.661961');
INSERT INTO `staff_events` VALUES(344,33,'logged_in','2016-03-24 12:26:09.031930');
INSERT INTO `staff_events` VALUES(345,33,'logged_out','2016-03-24 16:17:23.093034');
INSERT INTO `staff_events` VALUES(346,33,'logged_in','2016-03-24 23:23:50.367560');
INSERT INTO `staff_events` VALUES(347,1,'logged_in','2016-03-25 04:12:38.949946');
INSERT INTO `staff_events` VALUES(348,1,'logged_out','2016-03-25 04:31:55.034953');
INSERT INTO `staff_events` VALUES(349,33,'logged_in','2016-03-25 04:32:18.395136');
INSERT INTO `staff_events` VALUES(350,33,'logged_out','2016-03-25 13:47:39.809278');
INSERT INTO `staff_events` VALUES(351,33,'logged_in','2016-03-25 13:54:01.939735');
INSERT INTO `staff_events` VALUES(352,33,'logged_out','2016-03-25 16:06:50.052189');
INSERT INTO `staff_events` VALUES(353,30,'logged_in','2016-03-25 22:15:15.921846');
INSERT INTO `staff_events` VALUES(354,1,'logged_in','2016-03-26 04:29:43.498000');
INSERT INTO `staff_events` VALUES(355,30,'logged_in','2016-03-26 05:16:14.570984');
INSERT INTO `staff_events` VALUES(356,11,'logged_in','2016-03-26 13:18:53.858676');
INSERT INTO `staff_events` VALUES(357,33,'logged_in','2016-03-26 14:35:34.635524');
INSERT INTO `staff_events` VALUES(358,32,'logged_in','2016-03-28 05:37:12.294665');
INSERT INTO `staff_events` VALUES(359,34,'logged_in','2016-03-28 06:14:15.491684');
INSERT INTO `staff_events` VALUES(360,35,'logged_in','2016-03-30 12:45:34.791430');
INSERT INTO `staff_events` VALUES(361,35,'logged_in','2016-03-30 13:15:34.715725');
INSERT INTO `staff_events` VALUES(362,33,'logged_in','2016-03-31 00:53:04.383148');
INSERT INTO `staff_events` VALUES(363,33,'logged_in','2016-03-31 14:28:54.496281');
INSERT INTO `staff_events` VALUES(364,36,'logged_in','2016-04-01 02:55:35.612321');
INSERT INTO `staff_events` VALUES(365,36,'logged_out','2016-04-01 02:56:26.465141');
INSERT INTO `staff_events` VALUES(366,29,'logged_in','2016-04-01 05:31:29.849771');
INSERT INTO `staff_events` VALUES(367,33,'logged_in','2016-04-01 21:28:55.637452');
INSERT INTO `staff_events` VALUES(368,37,'logged_in','2016-04-02 03:07:28.983646');
INSERT INTO `staff_events` VALUES(369,38,'logged_in','2016-04-02 10:07:47.103153');
INSERT INTO `staff_events` VALUES(370,38,'logged_in','2016-04-03 10:04:50.294609');
INSERT INTO `staff_events` VALUES(371,24,'logged_in','2016-04-03 10:46:41.127212');
INSERT INTO `staff_events` VALUES(372,38,'logged_out','2016-04-03 23:49:11.567851');
INSERT INTO `staff_events` VALUES(373,33,'logged_in','2016-04-04 00:37:21.857044');
INSERT INTO `staff_events` VALUES(374,33,'logged_in','2016-04-04 11:59:53.732283');
INSERT INTO `staff_events` VALUES(375,38,'logged_in','2016-04-04 21:18:22.377042');
INSERT INTO `staff_events` VALUES(376,33,'logged_in','2016-04-05 01:22:10.179628');
INSERT INTO `staff_events` VALUES(377,39,'logged_in','2016-04-05 13:08:17.098290');
INSERT INTO `staff_events` VALUES(378,2,'logged_in','2016-04-05 14:15:56.758810');
INSERT INTO `staff_events` VALUES(379,33,'logged_in','2016-04-05 15:17:31.678789');
INSERT INTO `staff_events` VALUES(380,39,'logged_out','2016-04-05 15:34:28.033546');
INSERT INTO `staff_events` VALUES(381,1,'logged_in','2016-04-05 15:34:55.298787');
INSERT INTO `staff_events` VALUES(382,33,'logged_out','2016-04-05 16:14:33.232740');
INSERT INTO `staff_events` VALUES(383,39,'logged_in','2016-04-05 19:15:37.203725');
INSERT INTO `staff_events` VALUES(384,33,'logged_in','2016-04-06 00:47:54.151225');
INSERT INTO `staff_events` VALUES(385,1,'logged_out','2016-04-06 01:28:00.201921');
INSERT INTO `staff_events` VALUES(386,39,'logged_in','2016-04-06 01:28:18.304491');
INSERT INTO `staff_events` VALUES(387,26,'logged_in','2016-04-06 02:11:56.751232');
INSERT INTO `staff_events` VALUES(388,38,'logged_in','2016-04-06 10:18:30.028492');
INSERT INTO `staff_events` VALUES(389,12,'logged_in','2016-04-06 13:08:26.030651');
INSERT INTO `staff_events` VALUES(390,38,'logged_in','2016-04-06 22:00:19.375788');
INSERT INTO `staff_events` VALUES(391,33,'logged_in','2016-04-07 00:05:25.006885');
INSERT INTO `staff_events` VALUES(392,39,'logged_out','2016-04-07 01:47:28.680769');
INSERT INTO `staff_events` VALUES(393,14,'logged_in','2016-04-07 01:47:50.475859');
INSERT INTO `staff_events` VALUES(394,14,'logged_in','2016-04-07 04:29:58.568443');
INSERT INTO `staff_events` VALUES(395,33,'logged_in','2016-04-07 15:42:37.659743');
INSERT INTO `staff_events` VALUES(396,33,'logged_in','2016-04-08 00:52:26.761611');
INSERT INTO `staff_events` VALUES(397,38,'logged_in','2016-04-08 08:32:39.816583');
INSERT INTO `staff_events` VALUES(398,8,'logged_in','2016-04-09 02:48:39.128306');
INSERT INTO `staff_events` VALUES(399,33,'logged_in','2016-04-10 15:06:07.746970');
INSERT INTO `staff_events` VALUES(400,38,'logged_in','2016-04-19 10:29:20.095859');
INSERT INTO `staff_events` VALUES(401,38,'logged_out','2016-04-21 13:24:26.654908');
INSERT INTO `staff_events` VALUES(402,32,'logged_in','2016-04-27 13:32:04.316447');
INSERT INTO `staff_events` VALUES(403,26,'logged_in','2016-04-28 02:03:28.223572');
INSERT INTO `staff_events` VALUES(404,26,'logged_in','2016-04-28 06:59:28.272336');
INSERT INTO `staff_events` VALUES(405,26,'logged_in','2016-04-28 07:43:35.051046');
INSERT INTO `staff_events` VALUES(406,5,'logged_in','2016-05-01 04:40:33.467198');
INSERT INTO `staff_events` VALUES(407,5,'logged_in','2016-05-01 04:53:00.254589');
INSERT INTO `staff_events` VALUES(408,14,'logged_in','2016-05-02 09:22:26.504227');
INSERT INTO `staff_events` VALUES(409,9,'logged_in','2016-05-06 11:50:14.041697');
INSERT INTO `staff_events` VALUES(410,30,'logged_in','2016-05-09 05:13:48.526125');
INSERT INTO `staff_events` VALUES(411,5,'logged_in','2016-05-10 12:25:41.079264');
INSERT INTO `staff_events` VALUES(412,14,'logged_out','2016-05-11 10:17:56.471233');
INSERT INTO `staff_events` VALUES(413,1,'logged_in','2016-05-11 10:18:40.482820');
INSERT INTO `staff_events` VALUES(414,29,'logged_in','2016-05-13 01:25:18.768473');
INSERT INTO `staff_events` VALUES(415,1,'logged_out','2016-05-13 04:11:22.432252');
INSERT INTO `staff_events` VALUES(416,3,'logged_in','2016-05-13 04:11:41.609492');
INSERT INTO `staff_events` VALUES(417,1,'logged_in','2016-05-13 04:12:06.593458');
INSERT INTO `staff_events` VALUES(418,5,'logged_in','2016-05-13 04:19:33.225472');
INSERT INTO `staff_events` VALUES(419,1,'logged_out','2016-05-13 10:10:45.779729');
INSERT INTO `staff_events` VALUES(420,40,'logged_in','2016-05-13 12:41:53.146802');
INSERT INTO `staff_events` VALUES(421,40,'logged_in','2016-05-13 12:43:21.970956');
INSERT INTO `staff_events` VALUES(422,5,'logged_in','2016-05-14 03:51:14.931112');
INSERT INTO `staff_events` VALUES(423,1,'logged_in','2016-05-14 07:11:33.463907');
INSERT INTO `staff_events` VALUES(424,14,'logged_out','2016-05-14 11:21:33.163712');
INSERT INTO `staff_events` VALUES(425,1,'logged_in','2016-05-14 11:22:09.810691');
INSERT INTO `staff_events` VALUES(426,15,'logged_in','2016-05-14 15:24:38.139239');
INSERT INTO `staff_events` VALUES(427,5,'logged_in','2016-05-14 15:44:24.450463');
INSERT INTO `staff_events` VALUES(428,1,'logged_in','2016-05-18 03:05:13.733362');
INSERT INTO `staff_events` VALUES(429,36,'logged_in','2016-05-19 12:50:39.116011');
INSERT INTO `staff_events` VALUES(430,36,'logged_in','2016-05-20 03:45:48.648109');
INSERT INTO `staff_events` VALUES(431,1,'logged_out','2016-05-20 11:51:59.336968');
INSERT INTO `staff_events` VALUES(432,14,'logged_in','2016-05-20 11:52:22.377930');
INSERT INTO `staff_events` VALUES(433,14,'logged_out','2016-05-20 12:30:54.821923');
INSERT INTO `staff_events` VALUES(434,1,'logged_in','2016-05-20 12:31:21.868947');
INSERT INTO `staff_events` VALUES(435,5,'logged_in','2016-05-27 01:28:24.865785');
INSERT INTO `staff_events` VALUES(436,1,'logged_out','2016-05-28 10:50:35.595337');
INSERT INTO `staff_events` VALUES(437,5,'logged_in','2016-05-29 04:22:55.628701');
INSERT INTO `staff_events` VALUES(438,5,'logged_in','2016-05-29 04:40:15.429692');
INSERT INTO `staff_events` VALUES(439,5,'logged_in','2016-05-29 06:38:20.428279');
INSERT INTO `staff_events` VALUES(440,36,'logged_in','2016-06-02 15:37:48.877396');
INSERT INTO `staff_events` VALUES(441,36,'logged_out','2016-06-02 16:09:23.861377');
INSERT INTO `staff_events` VALUES(442,37,'logged_in','2016-06-06 14:49:46.509915');
INSERT INTO `staff_events` VALUES(443,1,'logged_in','2016-06-21 05:34:49.418844');
INSERT INTO `staff_events` VALUES(444,5,'logged_in','2016-06-24 17:49:18.495959');
INSERT INTO `staff_events` VALUES(445,38,'logged_in','2016-06-26 06:47:43.154289');
INSERT INTO `staff_events` VALUES(446,15,'logged_in','2016-06-27 04:28:47.848623');
INSERT INTO `staff_events` VALUES(447,1,'logged_out','2016-06-28 00:11:10.131871');
INSERT INTO `staff_events` VALUES(448,31,'logged_in','2016-06-28 00:11:20.873573');
INSERT INTO `staff_events` VALUES(449,31,'logged_in','2016-07-01 09:57:41.880020');
INSERT INTO `staff_events` VALUES(450,31,'logged_out','2016-07-01 10:03:11.289580');
INSERT INTO `staff_events` VALUES(451,1,'logged_in','2016-07-01 10:03:24.594280');
INSERT INTO `staff_events` VALUES(452,1,'logged_out','2016-07-01 10:03:35.726396');
INSERT INTO `staff_events` VALUES(453,14,'logged_in','2016-07-01 10:03:47.071856');
INSERT INTO `staff_events` VALUES(454,31,'logged_out','2016-07-02 10:04:43.752652');
INSERT INTO `staff_events` VALUES(455,31,'logged_in','2016-07-02 10:11:16.122893');
INSERT INTO `staff_events` VALUES(456,38,'logged_in','2016-07-04 22:25:14.803530');
INSERT INTO `staff_events` VALUES(457,8,'logged_out','2016-07-06 08:22:23.109179');
INSERT INTO `staff_events` VALUES(458,8,'logged_in','2016-07-10 23:17:37.564188');
INSERT INTO `staff_events` VALUES(459,14,'logged_in','2016-07-11 00:02:52.070697');
INSERT INTO `staff_events` VALUES(460,1,'logged_out','2016-07-11 03:07:56.422257');
INSERT INTO `staff_events` VALUES(461,14,'logged_in','2016-07-11 03:09:31.070933');
INSERT INTO `staff_events` VALUES(462,5,'logged_in','2016-07-13 01:18:46.261142');
INSERT INTO `staff_events` VALUES(463,19,'logged_in','2016-07-15 09:45:53.833323');
INSERT INTO `staff_events` VALUES(464,19,'logged_out','2016-07-15 09:53:20.242363');
INSERT INTO `staff_events` VALUES(465,19,'logged_in','2016-07-15 10:04:51.142256');
INSERT INTO `staff_events` VALUES(466,19,'logged_out','2016-07-15 10:14:48.356675');
INSERT INTO `staff_events` VALUES(467,14,'logged_out','2016-07-17 05:18:34.252860');
INSERT INTO `staff_events` VALUES(468,25,'logged_in','2016-07-17 05:26:08.563597');
INSERT INTO `staff_events` VALUES(469,14,'logged_out','2016-07-17 06:49:55.417719');
INSERT INTO `staff_events` VALUES(470,25,'logged_in','2016-07-17 06:54:06.785215');
INSERT INTO `staff_events` VALUES(471,25,'logged_out','2016-07-21 13:12:56.658027');
INSERT INTO `staff_events` VALUES(472,1,'logged_in','2016-07-21 13:13:21.021098');
INSERT INTO `staff_events` VALUES(473,19,'logged_in','2016-07-23 05:52:10.559621');
INSERT INTO `staff_events` VALUES(474,19,'logged_out','2016-07-23 06:19:28.269997');
INSERT INTO `staff_events` VALUES(475,15,'logged_out','2016-07-25 09:42:39.617730');
INSERT INTO `staff_events` VALUES(476,15,'logged_in','2016-07-25 10:01:30.207283');
INSERT INTO `staff_events` VALUES(477,31,'logged_in','2016-08-06 04:25:19.546260');
INSERT INTO `staff_events` VALUES(478,31,'logged_out','2016-08-06 04:31:01.426625');
INSERT INTO `staff_events` VALUES(479,31,'logged_in','2016-08-06 04:55:08.404536');
INSERT INTO `staff_events` VALUES(480,25,'logged_out','2016-08-06 09:56:23.906449');
INSERT INTO `staff_events` VALUES(481,30,'logged_in','2016-08-15 22:58:42.846434');
INSERT INTO `staff_events` VALUES(482,1,'logged_out','2016-08-16 04:52:59.786923');
INSERT INTO `staff_events` VALUES(483,14,'logged_in','2016-08-16 04:53:17.855604');
INSERT INTO `staff_events` VALUES(484,14,'logged_in','2016-08-16 08:14:43.860059');
INSERT INTO `staff_events` VALUES(485,30,'logged_in','2016-08-16 21:33:06.216540');
INSERT INTO `staff_events` VALUES(486,14,'logged_out','2016-08-18 04:55:30.623991');
INSERT INTO `staff_events` VALUES(487,39,'logged_in','2016-08-18 04:56:09.770973');
INSERT INTO `staff_events` VALUES(488,39,'logged_in','2016-08-18 19:50:53.436198');
INSERT INTO `staff_events` VALUES(489,39,'logged_out','2016-08-18 22:16:39.163426');
INSERT INTO `staff_events` VALUES(490,14,'logged_in','2016-08-18 22:17:02.654157');
INSERT INTO `staff_events` VALUES(491,14,'logged_out','2016-08-19 01:09:14.994511');
INSERT INTO `staff_events` VALUES(492,39,'logged_in','2016-08-19 01:09:42.508623');
INSERT INTO `staff_events` VALUES(493,39,'logged_in','2016-08-22 05:22:14.307471');
INSERT INTO `staff_events` VALUES(494,39,'logged_out','2016-08-25 23:54:26.846876');
INSERT INTO `staff_events` VALUES(495,14,'logged_in','2016-08-25 23:54:49.769605');
INSERT INTO `staff_events` VALUES(496,39,'logged_in','2016-08-26 18:37:57.669302');
INSERT INTO `staff_events` VALUES(497,30,'logged_in','2016-08-27 23:25:06.016105');
INSERT INTO `staff_events` VALUES(498,14,'logged_out','2016-09-10 03:53:55.735246');
INSERT INTO `staff_events` VALUES(499,41,'logged_in','2016-09-10 04:02:55.532560');
INSERT INTO `staff_events` VALUES(500,39,'logged_in','2016-09-14 01:17:51.809064');
INSERT INTO `staff_events` VALUES(501,37,'logged_in','2016-09-16 13:30:07.589255');
INSERT INTO `staff_events` VALUES(502,11,'logged_in','2016-09-16 14:30:59.965282');
INSERT INTO `staff_events` VALUES(503,12,'logged_in','2016-09-19 22:52:07.539655');
INSERT INTO `staff_events` VALUES(504,14,'logged_out','2016-09-22 03:34:29.892273');
INSERT INTO `staff_events` VALUES(505,25,'logged_in','2016-09-22 03:35:50.781075');
INSERT INTO `staff_events` VALUES(506,30,'logged_in','2016-09-23 06:00:03.409392');
INSERT INTO `staff_events` VALUES(507,25,'logged_out','2016-09-23 10:55:00.420353');
INSERT INTO `staff_events` VALUES(508,1,'logged_in','2016-09-23 10:58:03.936113');
INSERT INTO `staff_events` VALUES(509,14,'logged_in','2016-09-27 02:17:28.109804');
INSERT INTO `staff_events` VALUES(510,1,'logged_out','2016-09-27 05:36:14.773472');
INSERT INTO `staff_events` VALUES(511,14,'logged_in','2016-09-27 05:36:27.800671');
INSERT INTO `staff_events` VALUES(512,15,'logged_in','2016-09-28 16:48:02.055975');
INSERT INTO `staff_events` VALUES(513,30,'logged_in','2016-10-03 01:26:00.186941');
INSERT INTO `staff_events` VALUES(514,38,'logged_in','2016-10-05 17:21:13.385870');
INSERT INTO `staff_events` VALUES(515,1,'logged_in','2016-10-11 13:16:23.604413');
INSERT INTO `staff_events` VALUES(516,1,'logged_in','2016-10-11 13:20:28.844870');
INSERT INTO `staff_events` VALUES(517,19,'logged_in','2016-10-15 01:49:45.565708');
INSERT INTO `staff_events` VALUES(518,36,'logged_out','2016-10-17 15:57:45.582920');
INSERT INTO `staff_events` VALUES(519,14,'logged_in','2016-10-18 07:27:00.892615');
INSERT INTO `staff_events` VALUES(520,39,'logged_out','2016-10-20 07:35:31.401002');
INSERT INTO `staff_events` VALUES(521,1,'logged_in','2016-10-20 07:35:59.979304');
INSERT INTO `staff_events` VALUES(522,8,'logged_in','2016-10-20 11:02:16.612637');
INSERT INTO `staff_events` VALUES(523,36,'logged_in','2016-10-24 14:42:39.236082');
INSERT INTO `staff_events` VALUES(524,36,'logged_in','2016-10-24 14:43:09.495818');
INSERT INTO `staff_events` VALUES(525,36,'logged_in','2016-10-24 14:56:26.873611');
INSERT INTO `staff_events` VALUES(526,9,'logged_in','2016-10-29 23:56:22.472405');
INSERT INTO `staff_events` VALUES(527,9,'logged_out','2016-10-29 23:56:58.860633');
INSERT INTO `staff_events` VALUES(528,24,'logged_in','2016-10-30 01:58:41.041148');
INSERT INTO `staff_events` VALUES(529,9,'logged_in','2016-10-30 10:09:18.584360');
INSERT INTO `staff_events` VALUES(530,15,'logged_in','2016-11-02 17:54:19.389903');
INSERT INTO `staff_events` VALUES(531,42,'logged_in','2016-11-16 09:18:00.783352');
INSERT INTO `staff_events` VALUES(532,24,'logged_in','2016-11-19 00:49:36.091985');
INSERT INTO `staff_events` VALUES(533,29,'logged_in','2016-11-23 13:36:42.599739');
INSERT INTO `staff_events` VALUES(534,14,'logged_out','2016-11-24 13:50:16.167823');
INSERT INTO `staff_events` VALUES(535,19,'logged_in','2016-12-01 06:50:40.009745');
INSERT INTO `staff_events` VALUES(536,43,'logged_in','2016-12-03 23:34:17.451338');
INSERT INTO `staff_events` VALUES(537,43,'logged_in','2016-12-03 23:58:11.233714');
INSERT INTO `staff_events` VALUES(538,36,'logged_in','2016-12-13 12:54:31.164868');
INSERT INTO `staff_events` VALUES(539,36,'logged_out','2016-12-13 12:56:01.187694');
INSERT INTO `staff_events` VALUES(540,36,'logged_in','2016-12-18 02:39:41.356586');
INSERT INTO `staff_events` VALUES(541,36,'logged_out','2016-12-18 03:01:31.654411');
INSERT INTO `staff_events` VALUES(542,36,'logged_in','2016-12-18 03:18:23.323567');
INSERT INTO `staff_events` VALUES(543,36,'logged_out','2016-12-18 03:19:20.035835');
INSERT INTO `staff_events` VALUES(544,36,'logged_out','2016-12-18 15:22:33.592256');
INSERT INTO `staff_events` VALUES(545,36,'logged_in','2016-12-19 09:07:04.131661');
INSERT INTO `staff_events` VALUES(546,36,'logged_in','2016-12-19 15:55:21.538069');
INSERT INTO `staff_events` VALUES(547,36,'logged_in','2016-12-19 15:56:13.328999');
INSERT INTO `staff_events` VALUES(548,36,'logged_out','2016-12-20 01:13:54.720149');
INSERT INTO `staff_events` VALUES(549,36,'logged_out','2016-12-20 08:38:10.218913');
INSERT INTO `staff_events` VALUES(550,36,'logged_in','2016-12-21 00:22:49.321483');
INSERT INTO `staff_events` VALUES(551,36,'logged_in','2016-12-21 02:25:24.009511');
INSERT INTO `staff_events` VALUES(552,36,'logged_out','2016-12-21 02:27:26.170902');
INSERT INTO `staff_events` VALUES(553,41,'logged_in','2016-12-24 22:57:07.796749');
INSERT INTO `staff_events` VALUES(554,14,'logged_in','2017-01-06 10:20:59.729567');
INSERT INTO `staff_events` VALUES(555,36,'logged_in','2017-01-09 02:13:53.379872');
INSERT INTO `staff_events` VALUES(556,36,'logged_out','2017-01-09 02:15:04.806160');
INSERT INTO `staff_events` VALUES(557,36,'logged_in','2017-01-10 14:31:29.835812');
INSERT INTO `staff_events` VALUES(558,36,'logged_out','2017-01-10 14:32:14.487195');
INSERT INTO `staff_events` VALUES(559,36,'logged_out','2017-01-23 01:09:30.249918');
INSERT INTO `staff_events` VALUES(560,36,'logged_in','2017-01-26 13:04:02.189154');
INSERT INTO `staff_events` VALUES(561,36,'logged_out','2017-01-26 13:04:19.476720');
INSERT INTO `staff_events` VALUES(562,26,'logged_in','2017-02-10 04:48:35.619463');
CREATE TABLE `customers` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `email` varchar(255) NOT NULL, `email_for_index` varchar(255) NOT NULL, `hashed_password` varchar(255), `family_name` varchar(255) NOT NULL, `given_name` varchar(255) NOT NULL, `family_name_kana` varchar(255) NOT NULL, `given_name_kana` varchar(255) NOT NULL, `created_at` datetime, `updated_at` datetime);
INSERT INTO `customers` VALUES(1,'hideakitakahashi99@gmail.com','hideakitakahashi99@gmail.com','$2a$10$zuQzZlcR7XuOv8.lHadFbObo7C51ZzPdSrmnPJMo86qx2a4XkpGyi','高橋','秀彰','タカハシ','ヒデアキ','2015-08-12 01:17:57.070921','2015-08-12 01:17:57.070921');
INSERT INTO `customers` VALUES(2,'sample@example.com','sample@example.com','$2a$10$bxzK6ve8nDNhft.t1vrhSuSyG5aoq9JOFmI0NzVp2lT42R2ox0tby','サンプル','サンプル','サンプル','サンプル','2015-08-12 02:17:13.915008','2015-08-12 02:17:13.915008');
INSERT INTO `customers` VALUES(3,'jump@plantinc.net','jump@plantinc.net','$2a$10$dAOC6KjMvQNcg3oTd.9ueuJD49mzNP1gwON7UEPDA7I803yLwKR/K','八百屋','八百屋','ヤオヤ','ヤオヤ','2015-08-20 07:11:37.417819','2015-08-20 07:11:37.417819');
INSERT INTO `customers` VALUES(4,'k.tomo-1029@n.vodafone.ne.jp','k.tomo-1029@n.vodafone.ne.jp','$2a$10$IA9oYmyTaRSG2ocYceY.2.vWhu3HeHRdZiki45aH3YHBxi6tz54m.','阿部','友美','アベ','トモミ','2015-08-21 11:28:53.655377','2015-08-21 11:28:53.655377');
INSERT INTO `customers` VALUES(5,'mkt0726bms@gmail.com','mkt0726bms@gmail.com','$2a$10$bydsUcytMvp55zyJg2iMMedPZd0RP08G3yOudqE0uPjsBNQpD/ZAa','荻野','真','オギノ','マコト','2015-08-27 14:59:16.837850','2015-08-27 14:59:16.837850');
INSERT INTO `customers` VALUES(6,'hanshinmetalics.inoue@gmail.com','hanshinmetalics.inoue@gmail.com','$2a$10$rHJuJ2xXL.BrNTSaB7vd4euolS1m75z.5lMKE65wyD6SgYg74TEYm','井上','忍','イノウエ','シノブ','2015-08-28 07:24:18.911678','2015-08-28 07:24:18.911678');
INSERT INTO `customers` VALUES(7,'yazuyamato@gmail.com','yazuyamato@gmail.com','$2a$10$ekK/1/L5goV17k0xPugfRemqSgM61C1oUPSxWSuvdPY3WTcPw6Os.','門脇','恵美','カドワキ','エミ','2015-08-30 04:53:35.885736','2015-08-30 04:53:35.885736');
INSERT INTO `customers` VALUES(8,'yoshiyuki_s@suekage.com','yoshiyuki_s@suekage.com','$2a$10$W/z4rHY8pO/ZfXBURUunveDgIyD1zmjo2noebbYYJJ9TY./mu4iEu','末陰','禎之','スエカゲ','ヨシユキ','2015-09-02 04:33:20.193054','2015-09-02 04:33:20.193054');
INSERT INTO `customers` VALUES(9,'shangdengdiye@gmail.com','shangdengdiye@gmail.com','$2a$10$1J6WAU4uZFT8zCAhskSf9O7qMHGV0J/MM27dAMEXlBO0qFggbpe9G','荻野','尚登','オギノ','ナオト','2015-09-05 06:55:42.593309','2015-09-05 06:55:42.593309');
INSERT INTO `customers` VALUES(10,'hiropinnn@yahoo.co.jp','hiropinnn@yahoo.co.jp','$2a$10$tYjtGJBnF64FpNzTgYRRNO5qI8ygTpYUGqtJlokqkETS.eDxyfgeW','田中','裕子','タナカ','ヒロコ','2015-09-08 13:41:34.708243','2015-09-08 13:41:34.708243');
INSERT INTO `customers` VALUES(11,'czq06541@nifty.com','czq06541@nifty.com','$2a$10$k5ZIMlCTP4J2pwvQJ80pp.fdjg7hjuMUx6T93zjvQlTamEZDqL/xy','河合','利恵','カワイ','トシエ','2015-09-27 12:42:39.145704','2015-09-27 12:42:39.145704');
INSERT INTO `customers` VALUES(12,'kunikokohmoto@gmail.com','kunikokohmoto@gmail.com','$2a$10$IakPAA9Aggva9KQGvLeKmObngSJkZTLkXdUtxlwS6gV9voknr65Su','香本','久仁子','ｺｳﾓﾄ','クニコ','2015-09-27 12:55:35.944307','2015-09-27 12:55:35.944307');
INSERT INTO `customers` VALUES(13,'pirachaanpe@i.softbank.jp','pirachaanpe@i.softbank.jp','$2a$10$WSljR.MRP.6X80vD3AE9qebelSkpFZNmpVEmSgCWQE1juRodKBbOq','坂本','尚志','サカモト','タカシ','2015-09-30 00:53:47.067167','2015-09-30 00:53:47.067167');
INSERT INTO `customers` VALUES(14,'mako241024@gmail.com','mako241024@gmail.com','$2a$10$z/98VlCZIoiKfyuMibeiX.2JYeMhTLrpSWHpFtLXUAEmDLpIhziYG','村木','麻美','ムラキ','マミ','2015-10-01 08:20:42.285291','2015-10-01 08:20:42.285291');
INSERT INTO `customers` VALUES(15,'yasaitukuriya@gmai.com','yasaitukuriya@gmai.com','$2a$10$f1AiCwDMw1gfF2FeAfZGGeiUKUDUNG4y3pVZInfG/4EF17m0GzA2O','明星','孝昭','ミョウセイ','タカアキ','2015-10-07 12:06:53.744448','2015-10-07 12:06:53.744448');
INSERT INTO `customers` VALUES(16,'thankyou.verymuch28@ezweb.ne.jp','thankyou.verymuch28@ezweb.ne.jp','$2a$10$zmK4c/NuQvUgnXkwCoHlAO8b2g78qjgC4o17MqgMiTKBZQ9bZvE1q','林','加奈','ハヤシ','カナ','2015-10-08 22:04:14.502864','2015-10-08 22:04:14.502864');
INSERT INTO `customers` VALUES(17,'hiroki.s.and.k@gmail.com','hiroki.s.and.k@gmail.com','$2a$10$EAmQg6jy8OoGzLsCMpT5Fe0Dr3PxSt9eWgvS4acAfh5eJjZ6YEgLm','柏木','大樹','カシワギ','ヒロキ','2015-10-11 09:31:04.622898','2015-10-11 09:31:04.622898');
INSERT INTO `customers` VALUES(18,'3373aoi8823@gmail.com','3373aoi8823@gmail.com','$2a$10$Uu.s4dcP6T5rTrlzheoLs.GMUnEDnqpOp8DEeTYXblJxZBYSMRcPe','山村','寛枝','ヤマムラ','トモエ','2015-10-15 01:05:52.950894','2015-10-15 01:05:52.950894');
INSERT INTO `customers` VALUES(19,'atuatukoiya@icloud.com','atuatukoiya@icloud.com','$2a$10$ggDPaUv1ka1R/86kxhYsd.9zU8obrYWD4J/uBK9NFVZUIFyjJpAxO','上田','温子','ウエダ','アツコ','2015-10-18 15:05:04.502839','2015-10-18 15:05:04.502839');
INSERT INTO `customers` VALUES(20,'kikiymk5@gmail.com','kikiymk5@gmail.com','$2a$10$7TjaW1RLDRWiAjKmYWrWGuC10df1f01s.Alyq5cYNEUnlICpd.JlS','陰山','美雪','カゲヤマ','ミユキ','2015-10-20 11:36:52.497738','2015-10-20 11:36:52.497738');
INSERT INTO `customers` VALUES(21,'s.horii@gmail.com','s.horii@gmail.com','$2a$10$oM3l/Hui5Ghj56NgGI5KGuGhTkM4CpXNrENAtQfuvg46VDPArNpae','堀井','将吾','ホリイ','ショウゴ','2015-10-25 12:10:42.932961','2015-10-25 12:10:42.932961');
INSERT INTO `customers` VALUES(22,'s.horii3067@gmail.com','s.horii3067@gmail.com','$2a$10$X7iJ.herc5GDfF8026ZhW.fKJjXX0uZ1jwtTfclaDd2KWbmDB/93C','堀井','将吾','ホリイ','ショウゴ','2015-10-25 12:19:01.573942','2015-10-25 12:19:01.573942');
INSERT INTO `customers` VALUES(23,'fighting-mama0523@i.softbank.jp','fighting-mama0523@i.softbank.jp','$2a$10$8IBmQ79JLomYpqFhb0.ve.5bzpdgIxJGfBeR3oJrwxmCPwdd6vZaa','長谷川','美栄','ハセガワ','ミエ','2015-10-26 13:04:17.332018','2015-10-26 13:04:17.332018');
INSERT INTO `customers` VALUES(24,'hasegawife@yahoo.co.jp','hasegawife@yahoo.co.jp','$2a$10$BWsDtucSTzYDGxQ3o8Lh.uETMazsDcWPeMATe19dEkjFGetGG3ucW','長谷川','文子','ハセガワ','アヤコ','2015-10-26 13:17:41.432299','2015-10-26 13:17:41.432299');
INSERT INTO `customers` VALUES(25,'support@tanpopofarm.jp','support@tanpopofarm.jp','$2a$10$AAziXF4g6Hi3ziwklyGAwu6OT96Fp9foS16DnpfhbNBzk28tnKj.2','本多','利恵','ホンダ','リエ','2015-10-26 21:53:36.679003','2015-10-26 21:53:36.679003');
INSERT INTO `customers` VALUES(26,'shimashimakun2000@yahoo.co.jp','shimashimakun2000@yahoo.co.jp','$2a$10$pUZBG4A6ZGq119FPdcw3Bus9tWPTrLvMVAv08aYGHBBmtBPeLAdYq','古賀','玲','コガ','レイ','2015-10-28 11:01:50.462287','2015-10-28 11:01:50.462287');
INSERT INTO `customers` VALUES(27,'yuichiro0521jp@gmail.com','yuichiro0521jp@gmail.com','$2a$10$G3Wn0RzEYMSIxcyBXR7zXusuWNaJByOHevzvqsKv4OUsh.4Dy58Am','立野','雄一郎','タツノ','ユウイチロウ','2015-11-02 06:03:22.050341','2015-11-02 06:03:22.050341');
INSERT INTO `customers` VALUES(28,'info@sselega.com','info@sselega.com','$2a$10$yWw3a.0Qc0nvapN7uRwGTeKFtkyRIAjHTqxPQ2JxPjZTYn1iflUHu','高橋','智子','タカハシ','チエコ','2015-11-04 04:51:15.733099','2015-11-04 04:51:15.733099');
INSERT INTO `customers` VALUES(29,'info@hanaoka-noukeien.jp','info@hanaoka-noukeien.jp','$2a$10$mV1CG.i7NBLo3k92EupRYeNTj7RLGpAC5FoE7PP4ATLVGNsJdZmoq','花岡','明宏','ハナオカ','アキヒロ','2015-11-04 21:11:15.001905','2015-11-04 21:11:15.001905');
INSERT INTO `customers` VALUES(30,'yoshitoko_naturalfarm@hotmail.co.jp','yoshitoko_naturalfarm@hotmail.co.jp','$2a$10$iJpp63OJRrMrxrhBQ6Iw1uPO/cbmmviKVSKY/UqaurVmDN2yYchkq','井上','嘉人','イノウエ','ヨシト','2015-11-05 12:04:59.300457','2015-11-05 12:04:59.300457');
INSERT INTO `customers` VALUES(31,'scream0204@i.softbank.jp','scream0204@i.softbank.jp','$2a$10$/QAFQ5jXTqw.mWYIVkYZP.pqCzml9j9JO6bAnNGa7uH1aRdwrtPim','梶原','淳子','カジワラ','ジュンコ','2015-11-06 05:07:24.210610','2015-11-06 05:07:24.210610');
INSERT INTO `customers` VALUES(32,'tree.hugger33@ezweb.ne.jp','tree.hugger33@ezweb.ne.jp','$2a$10$GjuWWHtFR4oixE6Tj7nPn.UM4tkmOwNiGcJ3V9RNCXNo6QExDOrDC','木村','智子','キムラ','トモコ','2015-11-09 15:14:56.828070','2015-11-09 15:14:56.828070');
INSERT INTO `customers` VALUES(33,'vlmg223@ybb.ne.jp','vlmg223@ybb.ne.jp','$2a$10$tnygtXSDQcJg9uDvQvwGcutXD9iJRslNQNMmiown5beQJ91UptIJu','亀井','一郎','カメイ','イチロウ','2015-11-10 06:22:32.168893','2015-11-10 06:22:32.168893');
INSERT INTO `customers` VALUES(34,'sakuranbomaki@gmail.com','sakuranbomaki@gmail.com','$2a$10$DJ4XnfUDK8m1.Il0OWH4TOMsTnFwdoLFTjlq80z2LZj3z8F9.wJla','秋元','麻希','アキモト','マキ','2015-11-14 06:39:24.561618','2015-11-14 06:39:24.561618');
INSERT INTO `customers` VALUES(35,'ayame.mini.mini.1116-o@ezweb.ne.jp','ayame.mini.mini.1116-o@ezweb.ne.jp','$2a$10$DhoY0vjXQL8y.PASNITStuXCpNYGyhHxHKiBxbwDWb8wiEeqZeVc.','田中','康代','タナカ','ヤスヨ','2015-11-14 06:40:11.845542','2015-11-14 06:40:11.845542');
INSERT INTO `customers` VALUES(36,'utnx00758@zeus.eonet.ne.jp','utnx00758@zeus.eonet.ne.jp','$2a$10$w1bOpdO5fwzIw3VRNpFdluz5ZzvyP159R98G7xlz9RA5RkphM5a6O','田畑','知也','タバタ','トモヤ','2015-11-19 00:55:23.209369','2015-11-19 00:55:23.209369');
INSERT INTO `customers` VALUES(37,'takamasa0710@ezweb.ne.jp','takamasa0710@ezweb.ne.jp','$2a$10$1Y49R3v2RZSLNlN1.BvMcuLMMeJxEpkOgAqlpYW6tkPztEw4spfFm','畑','尚賢','ハタ','タカマサ','2015-11-19 12:42:59.189199','2015-11-19 12:42:59.189199');
INSERT INTO `customers` VALUES(38,'pupu-tony@i.softbank.ne.jp','pupu-tony@i.softbank.ne.jp','$2a$10$.BtO/OAhUXjarjYVcnnbxOPucw6wOuE079vSf7IJ6PjbiRUgsArfW','八木','かおる','ヤギ','カオル','2015-11-20 13:17:56.654540','2015-11-20 13:17:56.654540');
INSERT INTO `customers` VALUES(39,'pupu-tony@i.softbank.jp','pupu-tony@i.softbank.jp','$2a$10$zRBEpuvsHN7JxYvJUlC/q.WJiPM2a5NWgo6P.MGZf6pvwbaM7xvb2','八木','かおる','ヤギ','カオル','2015-11-21 08:15:45.349242','2015-11-21 08:15:45.349242');
INSERT INTO `customers` VALUES(40,'xjr13jp@gmail.com','xjr13jp@gmail.com','$2a$10$zdgi7hFzBTfjDkei.ci8guA3Zmd06dURRR9loJGEWRzttfEJ9NGX6','吉田','賢一','ヨシダ','ケンイチ','2015-11-23 06:07:44.004827','2015-11-23 06:07:44.004827');
INSERT INTO `customers` VALUES(41,'yudaitakano@msn.com','yudaitakano@msn.com','$2a$10$.ZyPcFjvsMAAHMKo5yxbQ.avgJQBqAln2sKKB7CiA..B/842A35..','高野','雄太','タカノ','ユウダイ','2015-11-25 03:45:10.522082','2015-11-25 03:45:10.522082');
INSERT INTO `customers` VALUES(42,'yukob919@yahoo.co.jp','yukob919@yahoo.co.jp','$2a$10$fni9YuaHmeA525A3q4pUTel9K4h.1Y7AJqbDzHJCUuGzNJeSwbSu2','小林','祐','コバヤシ','ユウ','2015-11-30 03:47:07.653088','2015-11-30 03:47:07.653088');
INSERT INTO `customers` VALUES(43,'sicinia.shige@i.softbank.jp','sicinia.shige@i.softbank.jp','$2a$10$9mi3uC0kbx38gYBeWIL0f.vTM.tXLk/3RqQEVlwYvDIoCHUvjvbly','板野','茂樹','イタノ','シゲキ','2015-12-03 10:53:47.512989','2015-12-03 10:53:47.512989');
INSERT INTO `customers` VALUES(44,'yukali.829@gmail.com','yukali.829@gmail.com','$2a$10$mJLQE1rZwlXY3NV9uEtSZ.OccjJZ70Fp1Iq1ei5jj6XKtesSX1Wci','村松','ゆかり','ムラマツ','ユカリ','2015-12-04 04:43:16.816598','2015-12-04 04:43:16.816598');
INSERT INTO `customers` VALUES(45,'ryo.green3939@gmail.com','ryo.green3939@gmail.com','$2a$10$rJWkow1m1Ug5VAoe5qja9u39rTvibmsZu9ytF2NP5dE1PoP3MmWKm','近藤','亮平','コンドウ','リョウヘイ','2015-12-04 05:29:43.454292','2015-12-04 05:29:43.454292');
INSERT INTO `customers` VALUES(46,'cocokazu2002@gmail.com','cocokazu2002@gmail.com','$2a$10$yzAi2c.v6HRYSCN5Ya/MleBPydoLx401Kea7HOwQKBpOYNJrA98gC','福田','加奈子','フクダ','カナコ','2015-12-04 12:07:48.370778','2015-12-04 12:07:48.370778');
INSERT INTO `customers` VALUES(47,'takahashi.hideaki@shizencyokuhan.org','takahashi.hideaki@shizencyokuhan.org','$2a$10$OdYcQHukyodVucU5gPmnSOL2DC2iMj8LN8denql5cVNSV/GXns6n6','高橋','秀彰','タカハシ','ヒデアキ','2015-12-06 02:20:48.152031','2015-12-06 02:20:48.152031');
INSERT INTO `customers` VALUES(48,'info@shizencyokuhan.org','info@shizencyokuhan.org','$2a$10$Cdy.LMsjdYxPTCXaFGP34uKN003AI9gcdG1vZxTQlA6ooLXOvL2Pi','うむ','株式会社','ウム','カブシキガイシャ','2015-12-06 02:37:11.431648','2015-12-06 02:37:11.431648');
INSERT INTO `customers` VALUES(49,'test@shizencyokuhan.org','test@shizencyokuhan.org','$2a$10$1G7NrJTysPHdbsAjNA/.yuY9oUEtbmTO2g4EfbT0uV/VEODp52yDa','うむ','株式会社','ウム','カブシキガイシャ','2015-12-06 02:46:44.191947','2015-12-06 02:46:44.191947');
INSERT INTO `customers` VALUES(50,'okada-farm@m01.fitcall.net','okada-farm@m01.fitcall.net','$2a$10$hFdJWcsRAP9WaV5BI8qoD.mmx0OMvMSO71EZ0AhgA.hVeUiUBhOy6','岡田','真吾','オカダ','シンゴ','2015-12-07 10:20:55.134244','2015-12-07 10:20:55.134244');
INSERT INTO `customers` VALUES(51,'kato@tam-tam.co.jp','kato@tam-tam.co.jp','$2a$10$klO7MXh28CfNX3EB6FG5.OmD67WLFtqlyap.eM3F8inqqC.nkWjWG','加藤','洋','カトウ','ヒロシ','2015-12-08 12:13:06.186822','2015-12-08 12:13:06.186822');
INSERT INTO `customers` VALUES(52,'y_goto@sr-j.com','y_goto@sr-j.com','$2a$10$K/nRdAcRu6GPDsKzSW45.eTNyL7K0LldU5ONYOpghXemBATuxt4G.','後藤','義輝','ゴトウ','ヨシテル','2015-12-14 13:10:03.226144','2015-12-14 13:10:03.226144');
INSERT INTO `customers` VALUES(53,'goto@sr-j.com','goto@sr-j.com','$2a$10$zUAqwiMiSfKgkLlO1tie5e6qpKZknXVygRsuuBe1kOMuz.i5Xy/Ca','後藤','義輝','ゴトウ','ヨシテル','2015-12-14 13:10:41.582525','2015-12-14 13:10:41.582525');
INSERT INTO `customers` VALUES(54,'takada@shizen.co','takada@shizen.co','$2a$10$Q8EAOzg1DcjpWCtEFjvbvOKFWVwCySlcIx5GNyIkY3SMp3bfpNEhO','高田','一郎','タカダ','イチロウ','2015-12-18 04:44:30.908126','2015-12-18 04:44:30.908126');
INSERT INTO `customers` VALUES(55,'kobito@sss.com','kobito@sss.com','$2a$10$dJEtbhgcA7XiXCVjkr/65.M9cNUkmqe27qLcL5BFobD3t/RWkAVbG','kobito','kobito','コビト','コビト','2015-12-18 06:32:12.733180','2015-12-18 06:32:12.733180');
INSERT INTO `customers` VALUES(56,'aka4sei1sae5@ca2.so-net.ne.jp','aka4sei1sae5@ca2.so-net.ne.jp','$2a$10$jwCRs8AquJfDtfF8Arq7U.w.x3ko28wbRi2/5iI8P8vXVpYQGikBG','明石','明石誠一','アカシ','セイイチ','2015-12-20 02:41:43.334281','2015-12-20 02:41:43.334281');
INSERT INTO `customers` VALUES(57,'me@yamatokucha.com','me@yamatokucha.com','$2a$10$5T1/NZwZKb2hU4x3isPe/OMvARfyfKXsGTmyNfSk.OXbLFMafxa6e','山崎','徳哉','ヤマザキ','トクヤ','2015-12-21 05:48:50.153746','2015-12-21 05:48:50.153746');
INSERT INTO `customers` VALUES(58,'a.kawa.g1@gmail.com','a.kawa.g1@gmail.com','$2a$10$/8xnA1NnNllcSYChsO25k.xIyB3keZvv1eScGGqOPhX4SKqtraqSW','川上','敦弘','カワカミ','アツヒロ','2015-12-21 08:46:51.001949','2015-12-21 08:46:51.001949');
INSERT INTO `customers` VALUES(59,'taku76kawa@gmail.com','taku76kawa@gmail.com','$2a$10$DYhAarAjUfYjUderKoqUa.VepcSCi/tfqcC194q4E0am3p5sKnf.i','川上','拓','カワカミ','タク','2015-12-21 16:31:51.212547','2015-12-21 16:31:51.212547');
INSERT INTO `customers` VALUES(60,'stelafelice1188@softbank.ne.jp','stelafelice1188@softbank.ne.jp','$2a$10$ycII1Tdg7lU0uNPl6PW3subeGI9ssoRvb6n9cJwpQlEvYbZbkKECi','島田','津太子','シマダ','ツタコ','2015-12-23 01:45:40.447506','2015-12-23 01:45:40.447506');
INSERT INTO `customers` VALUES(61,'kayochin-half.moon@ezweb.ne.jp','kayochin-half.moon@ezweb.ne.jp','$2a$10$zQuzQGEApSEW6mCqlh1msOIwbv2Lxpl.aynvQP0RSFZ6Z0e5X0UFe','落合','加代子','オチアイ','カヨコ','2015-12-23 03:48:01.730059','2015-12-23 03:48:01.730059');
INSERT INTO `customers` VALUES(62,'saeko.email@gmail.com','saeko.email@gmail.com','$2a$10$CoIlze63yP0iawn5JemSHepD1xTKKgOqt/26ZwcviIAXJHGN3g72.','岩崎','佐絵子','イワサキ','サエコ','2015-12-24 17:00:38.926874','2015-12-24 17:00:38.926874');
INSERT INTO `customers` VALUES(63,'3st-masanari@ezweb.ne.jp','3st-masanari@ezweb.ne.jp','$2a$10$ipTa21qxey/VU/ncpLCaAev5JSG7LPX6Cby4Wj1K1DHgvANpjho4G','佐藤','眞也','サトウ','マサナリ','2015-12-26 23:01:29.436713','2015-12-26 23:01:29.436713');
INSERT INTO `customers` VALUES(64,'yurichan19860211@yahoo.co.jp','yurichan19860211@yahoo.co.jp','$2a$10$t88zvMojJ3DZ047LQwcduO4G7LqfZQY7UEn5QeVaEMtlnBh.1GuGi','松尾','優璃','マツオ','ユリ','2015-12-29 07:25:37.284519','2015-12-29 07:25:37.284519');
INSERT INTO `customers` VALUES(65,'kuukanomori@gmail.com','kuukanomori@gmail.com','$2a$10$FkZUj3X/FbxesMcbQyOoSem9rOxnhQwPfZrD/po2nLRmum8Wb8U1a','今井','真理子','イマイ','マリコ','2015-12-30 22:12:17.556551','2015-12-30 22:12:17.556551');
INSERT INTO `customers` VALUES(66,'hydrangea-m.r.k.@docomo.ne.jp','hydrangea-m.r.k.@docomo.ne.jp','$2a$10$IET.fvbJBTD1Ex6AOl1BWeXdbNs8wqk7mY2XcRDLGNuew01xGUSJi','今井','真理子','イマイ','マリコ','2015-12-30 22:18:46.434463','2015-12-30 22:18:46.434463');
INSERT INTO `customers` VALUES(67,'min.vege@docomo.ne.jp','min.vege@docomo.ne.jp','$2a$10$lJmDd4PNW7uhMWNHT..Ix.BAGgZARxRemdQGDgb8QeY.2/B.WhU.K','鈴木','香純','スズキ','カスミ','2015-12-31 11:45:45.051130','2015-12-31 11:45:45.051130');
INSERT INTO `customers` VALUES(68,'kaori.s.1019@gmail.com','kaori.s.1019@gmail.com','$2a$10$bFwjcoPyvYkQ.1UmBDr7XekZkBjM6VECcwuq6G8d3zl53Uj6A7PTy','大山','香緒里','オオヤマ','カオリ','2015-12-31 13:06:07.109960','2015-12-31 13:06:07.109960');
INSERT INTO `customers` VALUES(69,'mozzarellaigo@yahoo.co.jp','mozzarellaigo@yahoo.co.jp','$2a$10$eWqRnnkOBjHVhpNFwvA8EeGujWTp2l41bc/ERtMy5ECw6erp2VJKO','紙谷','愛','カミヤ','アイ','2015-12-31 13:52:55.196928','2015-12-31 13:52:55.196928');
INSERT INTO `customers` VALUES(70,'sleepingprincess66@gmail.com','sleepingprincess66@gmail.com','$2a$10$J5rOaakoGfIPjzoFMSIfOumkGGKHnRExDxeVSfQ9HWmaT3DMt4G.K','中嶋','節子','ナカジマ','セツコ','2015-12-31 14:15:10.214215','2015-12-31 14:15:10.214215');
INSERT INTO `customers` VALUES(71,'tsukuda@ncv.jp','tsukuda@ncv.jp','$2a$10$DGg.yDL6.ektNsvg.Jw2Zue0W1ierPzMPqKcE8NcufRHzOL2cK6S2','筑田','郁子','ツクダ','イクコ','2015-12-31 14:30:22.395453','2015-12-31 14:30:22.395453');
INSERT INTO `customers` VALUES(72,'mms21.tnf@me.com','mms21.tnf@me.com','$2a$10$rRZNiui124la1SmKOAdRt.aTrE3IwDAXh8Vlvfr1HjY9jY9s0dFbC','町田','俊明','マチダ','トシアキ','2015-12-31 15:03:24.767492','2015-12-31 15:03:24.767492');
INSERT INTO `customers` VALUES(73,'3mi4yoshi@gmail.com','3mi4yoshi@gmail.com','$2a$10$cxEqnx2xCGQFf.KfnBsCJ.mN4P/raz4w6gY5iKt3PI87lWsKY9iTW','三好','朝子','ミヨシ','アサコ','2015-12-31 16:02:22.249841','2015-12-31 16:02:22.249841');
INSERT INTO `customers` VALUES(74,'rgbfm285@yahoo.co.jp','rgbfm285@yahoo.co.jp','$2a$10$LXboz4yCF7JX/1hC2bX9B.SRFlLlmNadTkGL.cmlEekYHujVmi4tC','猿谷','進一','サルヤ','シンイチ','2015-12-31 20:26:00.471063','2015-12-31 20:26:00.471063');
INSERT INTO `customers` VALUES(75,'akiko.kobayashi0048@gmail.com','akiko.kobayashi0048@gmail.com','$2a$10$6lGiUewyjAWLuiMsKRulJuhZGfaAfRIbrbJ/bJ7re6eRumrflS/CS','小林','亮子','コバヤシ','アキコ','2015-12-31 20:33:45.332295','2015-12-31 20:33:45.332295');
INSERT INTO `customers` VALUES(76,'kazahanamau29nohini@i.softbank.jp','kazahanamau29nohini@i.softbank.jp','$2a$10$xXEdguqaRTbYNN77cDk0X.ISidI8sd41tZbfGnym9jkUGsF2oac2.','平岩','靖子','ヒライワ','ヤスコ','2016-01-01 05:18:42.387124','2016-01-01 05:18:42.387124');
INSERT INTO `customers` VALUES(77,'tsukabon4187-m@docomo.ne.jp','tsukabon4187-m@docomo.ne.jp','$2a$10$cK1DK7nOb9lZF/8b9a1faewwrJ7fRVmcZEZZj1TIwBmeNftclGo/O','松本','司','マツモト','ツカサ','2016-01-01 06:01:13.908655','2016-01-01 06:01:13.908655');
INSERT INTO `customers` VALUES(78,'itoseiki808110@gmail.com','itoseiki808110@gmail.com','$2a$10$tijQn6r1MPV.D.7pAVjVhe/GJYywnXQsAcIQ2lZgUFuWiNyOCeWdq','伊藤','誠規','イトウ','セイキ','2016-01-01 11:41:14.832769','2016-01-01 11:41:14.832769');
INSERT INTO `customers` VALUES(79,'ihave126.ai@gmail.com','ihave126.ai@gmail.com','$2a$10$zKJinKH1Ii8NfoUgVWBkCeVxsR1K2ArXQGdJZ0UvNZOska5zj44we','飯田','亜樹','イイダ','アキ','2016-01-01 12:46:06.090375','2016-01-01 12:46:06.090375');
INSERT INTO `customers` VALUES(80,'ts-s.h2.k.-874@ezweb.ne.jp','ts-s.h2.k.-874@ezweb.ne.jp','$2a$10$0bBBI5XMkS7HusJNs5NMHOzQaCvBabyWzgH7X8cgxygWUCufsJT5.','齊藤','智子','サイトウ','トモコ','2016-01-01 16:02:59.694451','2016-01-01 16:02:59.694451');
INSERT INTO `customers` VALUES(81,'riaeing@gmail.com','riaeing@gmail.com','$2a$10$MQLeSs2TLhcG/EmgIMFySO6bnc2ZqJKWToDLWfkzR/cZqZ4Zz/jhG','朴','理愛','パク','リエ','2016-01-01 22:29:49.185024','2016-01-01 22:29:49.185024');
INSERT INTO `customers` VALUES(82,'rakiraki9659@gmail.com','rakiraki9659@gmail.com','$2a$10$pIEoxtLvpKvoaZy50AGF2OJfGEj9LPsarFyIoRJx27OlYHhpfaGqG','白石','久美恵','シライシ','クミエ','2016-01-02 01:53:30.808122','2016-01-02 01:53:30.808122');
INSERT INTO `customers` VALUES(83,'amateras831@gmail.com','amateras831@gmail.com','$2a$10$h99uFf0IorShqkL0NcPIKO5FQZhi7jCD38eLlEMhgZ6O8oIYKPA4W','森川','理恵','モリカワ','リエ','2016-01-02 05:51:28.311316','2016-01-02 05:51:28.311316');
INSERT INTO `customers` VALUES(84,'zuhaki@gmail.com','zuhaki@gmail.com','$2a$10$pUUt0KZ8XWfQCQAqzEsSveygqExTHYCgMsiSVwvSDUDRmetFFo89m','田中','葉月','タナカ','ハヅキ','2016-01-02 07:10:03.383760','2016-01-02 07:10:03.383760');
INSERT INTO `customers` VALUES(85,'a.ri.ga.to.u.2.11@docomo.ne.jp','a.ri.ga.to.u.2.11@docomo.ne.jp','$2a$10$IBrrv.V/an34K6CQIXcp6.ZIhVb8mnbWjEFJY1zr5Dw./2sjoe0Pe','熊井戸','英恵','クマイド','ハナエ','2016-01-02 08:33:18.553996','2016-01-02 08:33:18.553996');
INSERT INTO `customers` VALUES(86,'mahina-meke-aloha@softbank.ne.jp','mahina-meke-aloha@softbank.ne.jp','$2a$10$1SbhxsDdNdk/yKWBppSMCuuL9OiMO4y2NreEbpxjlJkZl/mbFljPO','木村','佑未子','キムラ','ユミコ','2016-01-02 09:02:22.690918','2016-01-02 09:02:22.690918');
INSERT INTO `customers` VALUES(87,'na_na_caster3mm@yahoo.co.jp','na_na_caster3mm@yahoo.co.jp','$2a$10$q2WRRheI6iPlwdXOBlKfge9/OIIKfS8KpMuBjs0Tkt8Egv42L7jZO','島田','菜々子','シマダ','ナナコ','2016-01-02 11:00:08.234472','2016-01-02 11:00:08.234472');
INSERT INTO `customers` VALUES(88,'carnival0224@yahoo.co.jp','carnival0224@yahoo.co.jp','$2a$10$ibBZvGEtgZCB98f73ss/V.FwHT8w6Gp8Ci3bZ/9SpVULTHRkJPwjW','金本','正一','かなもと','しょういち','2016-01-02 13:27:59.728322','2016-01-02 13:27:59.728322');
INSERT INTO `customers` VALUES(89,'k_hiromi0614@yahoo.co.jp','k_hiromi0614@yahoo.co.jp','$2a$10$3ynnk.Fc6C8HJj4Haffy1e.W2U0HXAQGr2d2qZtQgdxUAfl.TWrie','窪田','宏美','クボタ','ヒロミ','2016-01-02 14:14:27.457895','2016-01-02 14:14:27.457895');
INSERT INTO `customers` VALUES(90,'aloha.maluhia.11.117@icloud.com','aloha.maluhia.11.117@icloud.com','$2a$10$.Gh2NO5kWJkgvoNOEY9nreIfiv/Y5rNoADTQ2Bo4tgXKMpzXIwVfO','照喜名','葵','テルキナ','アオイ','2016-01-02 14:16:48.029990','2016-01-02 14:16:48.029990');
INSERT INTO `customers` VALUES(91,'amber-wainu11@ezweb.ne.jp','amber-wainu11@ezweb.ne.jp','$2a$10$RYerhNjQy1b5qort400EbO//tnKPpYXTwPoa0IkRGLUdiMSguolFW','椎野','まりこ','シイノ','マリコ','2016-01-03 09:45:14.622427','2016-01-03 09:45:14.622427');
INSERT INTO `customers` VALUES(92,'machiosoa@emobile.ne.jp','machiosoa@emobile.ne.jp','$2a$10$b5mSXZ24IHlU8uqWd6SMQeKsbCWtq85cHJ1SqqYqg9biSbrTRN20W','大橋','幸子','オオハシ','サチコ','2016-01-03 16:21:21.200497','2016-01-03 16:21:21.200497');
INSERT INTO `customers` VALUES(93,'machiosoa@yahoo.co.jp','machiosoa@yahoo.co.jp','$2a$10$antlmU1o1So5B7dUuYQbS.XMEN1ntv3MJ1MY5Uss8hFXyCnKKp9LK','大橋','幸子','オオハシ','サチコ','2016-01-03 16:23:39.653068','2016-01-03 16:23:39.653068');
INSERT INTO `customers` VALUES(94,'hot_taro_10@mx2.kct.ne.jp','hot_taro_10@mx2.kct.ne.jp','$2a$10$c5xwD7lvXNErPmC1qpgkwe3At6ami9nO.D9z3N2Hmx.DLpcOxFT2G','高越 ','基治','タカコシ','モトジ','2016-01-03 23:15:11.597670','2016-01-03 23:15:11.597670');
INSERT INTO `customers` VALUES(95,'greenbird2012@gmail.com','greenbird2012@gmail.com','$2a$10$3QBGwrTnG0WtFi7PAv258Ohb0ZERrOala.GLaTxCadoJCxhM/6Ebe','竹本','了弘','タケモト','リョウコウ','2016-01-04 01:35:24.090996','2016-01-04 01:35:24.090996');
INSERT INTO `customers` VALUES(96,'n.mai102@docomo.ne.jp','n.mai102@docomo.ne.jp','$2a$10$qGIGAFEAcM4wfj87Cz6uI.OUyYPerCsf8mCgZQ/xTu8XYFZoEgOya','中川','麻衣','ナカガワ','マイ','2016-01-04 05:42:41.530886','2016-01-04 05:42:41.530886');
INSERT INTO `customers` VALUES(97,'omb-mm@mxg.mesh.ne.jp','omb-mm@mxg.mesh.ne.jp','$2a$10$i15GuXSwO26q2Bolj8MCMONkhZ3hMVXYTcgeO1TzbfLhENfx9xxJC','三好','基晴','ミヨシ','モトハル','2016-01-04 06:45:12.675261','2016-01-04 06:45:12.675261');
INSERT INTO `customers` VALUES(98,'sophiawa221@gmail.com','sophiawa221@gmail.com','$2a$10$41oS5.zcr2pMTGqSzD5oFejXyG7uq25qXmvWxD8bqFDUWijK1p40y','白井','千恵子','シライ','チエコ','2016-01-04 06:46:49.512433','2016-01-04 06:46:49.512433');
INSERT INTO `customers` VALUES(99,'hnnk200829@akane.waseda.jp','hnnk200829@akane.waseda.jp','$2a$10$xJUyiWhJBxMp.ifRWUEsxOAmIz1kyDprNzXt.i24Co0dXICHo5YMi','田口','なおみ','タグチ','ナオミ','2016-01-06 02:08:03.740430','2016-01-06 02:08:03.740430');
INSERT INTO `customers` VALUES(100,'akochan124@gmail.com','akochan124@gmail.com','$2a$10$hgJ/WzRWJQoAysMQ1gLUf.kusifu3/adTUX2GZVOAFWAPKY08Mx9u','荻原','彩子','オギワラ','アヤコ','2016-01-07 09:04:52.490895','2016-01-07 09:04:52.490895');
INSERT INTO `customers` VALUES(101,'xpe7i76mcr@gmail.com','xpe7i76mcr@gmail.com','$2a$10$f8WV/V.tCRFzI2ZDLP3Qi.6FAEqpBNSmx.f84VPIy0dspmm6SjFlu','松井','貴士','マツイ','タカシ','2016-01-10 17:55:42.165130','2016-01-10 17:55:42.165130');
INSERT INTO `customers` VALUES(102,'tiko.radha@gmail.com','tiko.radha@gmail.com','$2a$10$Li4Gh5ojil9vf4O.QavqreuCmjBX818tAC.ZVMnIHnhGMqVs0HM4G','門田','路子','カドタ','ミチコ','2016-01-11 06:26:45.797505','2016-01-11 06:26:45.797505');
INSERT INTO `customers` VALUES(103,'bagel.tomoko@gmail.com','bagel.tomoko@gmail.com','$2a$10$8vyTy8CWbt/IZj91mwTORu7gzerwu7yU3nyd8ybBUyoD.mpiLb1s.','鈴木','知子','すずき','ともこ','2016-01-12 06:58:05.934127','2016-01-12 06:58:05.934127');
INSERT INTO `customers` VALUES(104,'onibakidd@gmail.com','onibakidd@gmail.com','$2a$10$iKTQCliZuLVB7ftmnLCtmOoMrLaD9SafDb3Cv9l620xPfzh0ZT9nS','明石','太陽','アカシ','タイヨウ','2016-01-13 05:15:25.191169','2016-01-13 05:15:25.191169');
INSERT INTO `customers` VALUES(105,'stars.big2men@gmail.com','stars.big2men@gmail.com','$2a$10$sAaEiwY8aaxc61bu.YyYKu/PWqkn9XOz5XLYYlN8d1L3TmUk9BHJG','堀田','駿','ホッタ','シュン','2016-01-13 06:12:30.809803','2016-01-13 06:12:30.809803');
INSERT INTO `customers` VALUES(106,'toshi.tomo.miduki@gmail.com','toshi.tomo.miduki@gmail.com','$2a$10$6qZrExJoVeW8Y0/QUWWAkukFenq1ba5u2t8ifdfY5mNTAIHltac6.','河合','朋美','カワイ','トモミ','2016-01-13 06:27:27.459244','2016-01-13 06:27:27.459244');
INSERT INTO `customers` VALUES(107,'con3con3@i.softbank.jp','con3con3@i.softbank.jp','$2a$10$6eVroK1TZS59HdHkarTJaesoUQjQbZ31Q.WN3m0IivIfo/HEsWoOS','今','義統','コン','ヨシノリ','2016-01-15 01:38:53.233343','2016-01-15 01:38:53.233343');
INSERT INTO `customers` VALUES(108,'mae.mae.h.113@gmail.com','mae.mae.h.113@gmail.com','$2a$10$VVk7tTVyYGL5Qtd7m1b4EeMTO567DOqoNRLZmZibeofe2ex3.euLS','畑','麻江子','ハタ','マエコ','2016-01-15 11:58:16.282706','2016-01-15 11:58:16.282706');
INSERT INTO `customers` VALUES(109,'ohnoaki0516@hotmail.com','ohnoaki0516@hotmail.com','$2a$10$AkQsOl82WT1Inx7Kwvxh.uWS93OGs0acK6ii4rrlpxGUBwqqNskpi','大野','亜紀','オオノ','アキ','2016-01-17 01:15:33.836458','2016-01-17 01:15:33.836458');
INSERT INTO `customers` VALUES(110,'sdjtm818@yahoo.co.jp','sdjtm818@yahoo.co.jp','$2a$10$mZ/1qcJ1RD.yNWwqaIQex.3G3rr43jmIa4Wgg/GvANceCjlO0lsgq','向井','万里子','ムカイ','マリコ','2016-01-17 07:41:56.861116','2016-01-17 07:41:56.861116');
INSERT INTO `customers` VALUES(111,'shie_frottee@ezweb.ne.jp','shie_frottee@ezweb.ne.jp','$2a$10$/rWclk7ngjrpUbAPhnESE.h.lQDmB1gI.Pg6eratg2WtNAbMYssYi','姉歯','志保子','アネハ','シホコ','2016-01-18 10:06:28.691793','2016-01-18 10:06:28.691793');
INSERT INTO `customers` VALUES(112,'matumura@coilkma.com','matumura@coilkma.com','$2a$10$xojFOxRtAJ4Orq3zvNMvw.q2qRffAxCJKNaKhCpxIv8L0ROTxr9pK','松村','一輝','マツムラ','カズテル','2016-01-19 02:59:06.596601','2016-01-19 02:59:06.596601');
INSERT INTO `customers` VALUES(113,'kota2000kota@i.softbank.jp','kota2000kota@i.softbank.jp','$2a$10$RT5vG9iIdHDAIpTzztAP2uNOYHcYNXUY5C32LicTI3EBN0MtCiNWG','古川','真弓','フルカワ','マユミ','2016-01-21 07:09:01.296024','2016-01-21 07:09:01.296024');
INSERT INTO `customers` VALUES(114,'miyuto-sana212-2@ezweb.ne.jp','miyuto-sana212-2@ezweb.ne.jp','$2a$10$5Ep8R59WXXDEWJQ.52p63u5xxfWo.6PdFVno.K9g9JGLqgWwzuRYG','加藤','早苗','カトウ','サナエ','2016-01-21 09:32:36.052878','2016-01-21 09:32:36.052878');
INSERT INTO `customers` VALUES(115,'kurekuru96@ezweb.ne.jp','kurekuru96@ezweb.ne.jp','$2a$10$pnQhXaw002mxkA5LMSLuIuWqXFfO9lhQHG3KMaxIg9pqDc4ykjit2','和田','るみ','ワダ','ルミ','2016-01-21 13:15:58.205187','2016-01-21 13:15:58.205187');
INSERT INTO `customers` VALUES(116,'smilelife08171128@gmail.com','smilelife08171128@gmail.com','$2a$10$esG9dVuPdaHwRomS1zCYXeKqloFsHU7eGQwshvLuYV6n2PLdD1XoK','藤原','杏奈','フジワラ','アンナ','2016-01-30 13:06:57.062536','2016-01-30 13:06:57.062536');
INSERT INTO `customers` VALUES(117,'sako.issi-31@docomo.ne.jp','sako.issi-31@docomo.ne.jp','$2a$10$BDyhjiKe.uT66eHFwBUzJuc69HLgO/RPss5Y8IjdxbTN0lWyhZrum','石田','尚子','イシダ','ヒサコ','2016-01-31 05:33:09.301883','2016-01-31 05:33:09.301883');
INSERT INTO `customers` VALUES(118,'aya.shonan423@i.softbank.jp','aya.shonan423@i.softbank.jp','$2a$10$Acc8agJ/DcKsKPV2o1cSvOJa1Ve7RF3D4PqTNougmQXHdplSTd77e','酒井','彩子','サカイ','アヤコ','2016-01-31 05:35:22.000862','2016-01-31 05:35:22.000862');
INSERT INTO `customers` VALUES(119,'michi@naritagumi.co.jp','michi@naritagumi.co.jp','$2a$10$PIiyVLIa0U/RsU6EPiwImuS4oy9EQ5MrLrnjTG2KJ1GiG/T0tXnfm','成田','道紀','ナリタ','ミチノリ','2016-01-31 06:18:23.158456','2016-01-31 06:18:23.158456');
INSERT INTO `customers` VALUES(120,'mayuminmin10@yahoo.co.jp','mayuminmin10@yahoo.co.jp','$2a$10$LYD78FobXe6hRQRYtNhkw.2wJVio0dMP0ET86TjXHYoW7sK/mWLMC','増田','真弓','マスダ','マユミ','2016-01-31 07:01:09.875102','2016-01-31 07:01:09.875102');
INSERT INTO `customers` VALUES(121,'nozomi_1012@i.softbank.jp','nozomi_1012@i.softbank.jp','$2a$10$8C5Vzk2/UWIlzc36JdgQ1OGzHd0wHPXXQ.6/lNPIWwBwMi14kKxDO','松田','望','マツダ','ノゾミ','2016-01-31 07:06:50.741027','2016-01-31 07:06:50.741027');
INSERT INTO `customers` VALUES(122,'ryosuke2008@i.softbank.jp','ryosuke2008@i.softbank.jp','$2a$10$ZV29QpT3PmAnmmsyerwFcOtzfya9NNcOe5kW8OL0wKNXcbQa0OFfu','畑野','亮子','ハタノ','リョウコ','2016-01-31 07:09:12.119367','2016-01-31 07:09:12.119367');
INSERT INTO `customers` VALUES(123,'70.yotsu.6@gmail.com','70.yotsu.6@gmail.com','$2a$10$JyurCN54C/rF21S7n6d/p.duEAFF0MhjBxBJ6ywHyB3srcGg8HhTy','金子','千晴','カネコ','チハル','2016-01-31 07:42:55.279137','2016-01-31 07:42:55.279137');
INSERT INTO `customers` VALUES(124,'rikomint@gmail.com','rikomint@gmail.com','$2a$10$fMJTLfpBMmMFiqkd2eJEXuovGW.prC5itlrj95kNBxEwP/fvy/sKe','笠井','理恵','カサイ','リエ','2016-01-31 07:54:02.004698','2016-01-31 07:54:02.004698');
INSERT INTO `customers` VALUES(125,'izumi039@yahoo.co.jp','izumi039@yahoo.co.jp','$2a$10$U3KhwwZ8OK23ydMjsE8vuOraN05yUcLSCyuVbh4xQPnhYyvUkmWBm','木下','祝','キノシタ','イワイ','2016-01-31 08:04:16.742950','2016-01-31 08:04:16.742950');
INSERT INTO `customers` VALUES(126,'ilinqs@gmail.com','ilinqs@gmail.com','$2a$10$wYL7d0mwypIJUZ88IeQ9p.bsIh3DHV1/U0X6GWjYSKT0BoFqlbyBu','志賀','武','シガ','タケシ','2016-01-31 08:28:55.391532','2016-01-31 08:28:55.391532');
INSERT INTO `customers` VALUES(127,'namato0723@gmail.com','namato0723@gmail.com','$2a$10$tSjKVx0/ZBQTkEHpvsTTuOcFwwI/AwnrPh5nWaT0GuOc7P4VHzB0i','平田','友志子','ヒラタ','トシコ','2016-01-31 08:33:32.915206','2016-01-31 08:33:32.915206');
INSERT INTO `customers` VALUES(128,'super-achako-515@docomo.ne.jp','super-achako-515@docomo.ne.jp','$2a$10$HS1iGhLfDavIjBwpFDA27.Tk9HvLRKS1O/aLrCfK6rA5llp9iSMVC','川上','朝子','カワカミ','アサコ','2016-01-31 08:34:11.542485','2016-01-31 08:34:11.542485');
INSERT INTO `customers` VALUES(129,'obata.kyouko@hotmail.co.jp','obata.kyouko@hotmail.co.jp','$2a$10$i.1R2b0QsGrHG.qtq0PnlO66k4.RlOpx.n6QjLzBplhRG/zKzVtUq','小畑','恭子','オバタ','キョウコ','2016-01-31 09:06:38.883009','2016-01-31 09:06:38.883009');
INSERT INTO `customers` VALUES(130,'minataro.413@i.softbank.jp','minataro.413@i.softbank.jp','$2a$10$O37KJt9NmRTh0R0uNAsHiOtkO4oeimAEj3zQS7qGJXkNP8ZBDTKqi','川島','伊純','カワシマ','イヅミ','2016-01-31 09:29:39.529876','2016-01-31 09:29:39.529876');
INSERT INTO `customers` VALUES(131,'ri-michi216@i.softbank.jp','ri-michi216@i.softbank.jp','$2a$10$YTfLas4eMhYj/HW71//fd.AWvJL22acxCmZTVk7VMDmfCBP/03Afa','山村','ミチ子','ヤマムラ','ミチコ','2016-01-31 10:51:46.777937','2016-01-31 10:51:46.777937');
INSERT INTO `customers` VALUES(132,'minmi.hughug1219@ezweb.ne.jp','minmi.hughug1219@ezweb.ne.jp','$2a$10$ENuceBINn9cNlqyuzYV6E.7/wXTa56Q0s3lImhZkH7vUEc9AbaA6O','伊藤','由紀江','イトウ','ユキエ','2016-01-31 10:52:06.269329','2016-01-31 10:52:06.269329');
INSERT INTO `customers` VALUES(133,'fyasuko@zb.cyberhome.ne.jp','fyasuko@zb.cyberhome.ne.jp','$2a$10$hC.6W52GolX9MHD0DX5tJePPUJqQ5XH/JsM2fmpEu9zwKt4lynLni','藤井','泰子','フジイ','ヤスコ','2016-01-31 11:50:12.172023','2016-01-31 11:50:12.172023');
INSERT INTO `customers` VALUES(134,'tsuruyo0813_256@docomo.ne.jp','tsuruyo0813_256@docomo.ne.jp','$2a$10$79M694ZCRkaP3qWMm.xXiuh.AbFVtvHqZcmuflYd0HD4L3Nil9I0K','春木','鶴代','ハルキ','ツルヨ','2016-01-31 12:18:49.980059','2016-01-31 12:18:49.980059');
INSERT INTO `customers` VALUES(135,'chikuwabu9@gmail.com','chikuwabu9@gmail.com','$2a$10$eogjpinOiFBla5xrVsgDLeCU0XubyE44ZLcy1t3LxzGoc1QPMdYKy','中久保','歩','ナカクボ','アユミ','2016-01-31 12:51:40.863129','2016-01-31 12:51:40.863129');
INSERT INTO `customers` VALUES(136,'ishikawa_mikaringo@yahoo.co.jp','ishikawa_mikaringo@yahoo.co.jp','$2a$10$yV7VXkm33zPMJau7amPGHOYbzInphisjYVHhP8ZguS6QHA3ooc0jy','石川','美加','イシカワ','ミカ','2016-01-31 13:07:07.148716','2016-01-31 13:07:07.148716');
INSERT INTO `customers` VALUES(137,'harmony0602@i.softbank.jp','harmony0602@i.softbank.jp','$2a$10$M7dg85O3hugDVJ5L4/eWdOiP.m6fRm3SZ4.uifwOgUbkaW4Od1AHm','我孫子','睦子','アビコ','ムツコ','2016-01-31 13:17:38.397687','2016-01-31 13:17:38.397687');
INSERT INTO `customers` VALUES(138,'teruko812neko@gmail.com','teruko812neko@gmail.com','$2a$10$b8iyzbrJLvyVgHye34efoucXZ2BhQYP1tYC6vLI7ySFdB5F/B1GVu','笹子','照子','ササゴ','テルコ','2016-01-31 13:22:29.210030','2016-01-31 13:22:29.210030');
INSERT INTO `customers` VALUES(139,'tom-37-fine@i.softbank.jp','tom-37-fine@i.softbank.jp','$2a$10$yX7PhW.VbllH6uLphUINQ.b6pHbVZAfaP.3PhFDk8N8KVWjkP.5Ae','小野','ともみ','オノ','トモミ','2016-01-31 13:36:17.772941','2016-01-31 13:36:17.772941');
INSERT INTO `customers` VALUES(140,'takahashi.yuko75@gmail.com','takahashi.yuko75@gmail.com','$2a$10$yMEPnomGUrAXfWCy2lOSbOAn5ELIBxvp9BQfdTK8sll3OGJDzvxX.','高橋','祐子','タカハシ','ユウコ','2016-01-31 13:50:25.164861','2016-01-31 13:50:25.164861');
INSERT INTO `customers` VALUES(141,'ngs.n161707@ezweb.ne.jp','ngs.n161707@ezweb.ne.jp','$2a$10$7VNIA7fpbEp7cvOrlsDb/OMHYcUPgoynO8PED04KfdM7Qkaf8LE3O','野口','渚','ノグチ','ナギサ','2016-01-31 13:52:59.051342','2016-01-31 13:52:59.051342');
INSERT INTO `customers` VALUES(142,'kamiden@ezweb.ne.jp','kamiden@ezweb.ne.jp','$2a$10$yXYzn3fBIci5MnpvgVcKCu1FJXVdY8uMlvBsi1sph6GCW5Q.68byy','前島','八寿子','マエジマ','ヤスコ','2016-01-31 13:53:00.987902','2016-01-31 13:53:00.987902');
INSERT INTO `customers` VALUES(143,'kyonkyonhappy@i.softbank.jp','kyonkyonhappy@i.softbank.jp','$2a$10$l0ccSi1.tKittagDhG//6uRzXbcf8jbjGxaFMkpJONIl.sNb5uhL.','神本','恭子','カミモト','キョウコ','2016-01-31 14:33:26.783861','2016-01-31 14:33:26.783861');
INSERT INTO `customers` VALUES(144,'sekoyuki@gmail.com','sekoyuki@gmail.com','$2a$10$QKw2WRgAwErd3nvGnUAGBupbbWMYepUA.G0DsjVfbNDORanxRDqo6','岡崎','幸子','オカザキ','ユキコ','2016-01-31 14:46:28.853483','2016-01-31 14:46:28.853483');
INSERT INTO `customers` VALUES(145,'rio-rito-riha@i.softbank.jp','rio-rito-riha@i.softbank.jp','$2a$10$fA95a/t/16bTAh6SpA4wnemMpNRlj5rygVuvjaZNcxxDm7UsF.PLO','鈴木','由美','スズキ','ユミ','2016-01-31 14:52:51.187729','2016-01-31 14:52:51.187729');
INSERT INTO `customers` VALUES(146,'flowermake2010@yahoo.co.jp','flowermake2010@yahoo.co.jp','$2a$10$OWIs3kkoZk3noIa0ZRDFb.mc1BlfumqYsyXIbpvcsFwNTHk8XdbEy','岸','礼子','キシ','レイコ','2016-01-31 15:13:49.505171','2016-01-31 15:13:49.505171');
INSERT INTO `customers` VALUES(147,'kimikan@gmail.com','kimikan@gmail.com','$2a$10$yx/nYdHKgID1LC8b/ouBt.kZevwiqmmVIFBmZB8U29Te.kA0lvq1e','塚田','貴美子','ツカダ','キミコ','2016-01-31 15:25:42.858118','2016-01-31 15:25:42.858118');
INSERT INTO `customers` VALUES(148,'kotomemo@gmail.com','kotomemo@gmail.com','$2a$10$8H3HoFsJOj64Ob2iFZCzPupz6gn7kDHGAdNlc/IUT1aKTRihLPd2i','金子','洋子','カネコ','ヨウコ','2016-01-31 15:34:01.344715','2016-01-31 15:34:01.344715');
INSERT INTO `customers` VALUES(149,'masako_thm1203@yahoo.co.jp','masako_thm1203@yahoo.co.jp','$2a$10$NTbxFsAC/TiVLqB1bD7q1elmql1NxFYWdKm4vgKOZww9K1KfJt1Mq','浜田','雅子','ハマダ','マサコ','2016-02-01 00:40:29.229588','2016-02-01 00:40:29.229588');
INSERT INTO `customers` VALUES(150,'maki.takami0417@gmail.com','maki.takami0417@gmail.com','$2a$10$mStE2Z4l/D5LDnOjHmMDkOE/ZRkylvj95OWV7/PAHDUX9cPmsvrzC','今井','麻記','イマイ','マキ','2016-02-01 00:53:36.031161','2016-02-01 00:53:36.031161');
INSERT INTO `customers` VALUES(151,'yossiy4848@gmail.com','yossiy4848@gmail.com','$2a$10$VLiyDwZR3wspaSaxASBJbODNCKTQqqpHOG9c89sbyQFGjrTbVNuOu','芳田','早智子','ヨシダ','サチコ','2016-02-01 02:25:36.952888','2016-02-01 02:25:36.952888');
INSERT INTO `customers` VALUES(152,'doughnut.mumu@i.softbank.jp','doughnut.mumu@i.softbank.jp','$2a$10$VGNMpM6zYMR1Q/QA71iUV.HzyHPwq5VgAK8fp9O9au93yEkyqvyy6','鈴木','早紀','スズキ','サキ','2016-02-01 05:10:36.455080','2016-02-01 05:10:36.455080');
INSERT INTO `customers` VALUES(153,'achievement21@ezweb.ne.jp','achievement21@ezweb.ne.jp','$2a$10$dXjZKyj90sbcUUH7mBm/0uxRqRNU6xx7W62si9NZfi9gncSQZdiQu','加藤','友子','カトウ','トモコ','2016-02-01 06:09:47.866789','2016-02-01 06:09:47.866789');
INSERT INTO `customers` VALUES(154,'takukazsora@yahoo.co.jp','takukazsora@yahoo.co.jp','$2a$10$Y5ah8MM8K7G7kZ3RgCzigO8fnZD9FEpu9w3phU8kF79/.LJpVjAJu','星野','和美','ホシノ','カズミ','2016-02-01 06:10:42.081694','2016-02-01 06:10:42.081694');
INSERT INTO `customers` VALUES(155,'m.macrobeauty@gmail.com','m.macrobeauty@gmail.com','$2a$10$/O/qfSJJ3MKq0y0/1UImzOJoogaARakmFR8qW7p2ZpMkp7QkeDMiS','中村','美由紀','ナカムラ','ミユキ','2016-02-01 06:38:40.786667','2016-02-01 06:38:40.786667');
INSERT INTO `customers` VALUES(156,'chika.oka.thc523@ezweb.ne.jp','chika.oka.thc523@ezweb.ne.jp','$2a$10$quGAVgZO.R7mMZxCFejq1enWj3WwtaJ6v91tC13uQNn63CjfibYBC','岡田','千賀子','オカダ','チカコ','2016-02-01 07:31:34.511463','2016-02-01 07:31:34.511463');
INSERT INTO `customers` VALUES(157,'fujicch-hidelvjyuna@i.softbank.jp','fujicch-hidelvjyuna@i.softbank.jp','$2a$10$07.paM6z7g2jgX7njDF5KOTjeMiRQT.ANI.qemnRiUueTsOcv3GPK','藤尾','英利','フジオ','ヒデトシ','2016-02-01 08:00:11.312013','2016-02-01 08:00:11.312013');
INSERT INTO `customers` VALUES(158,'massu0117@i.softbank.jp','massu0117@i.softbank.jp','$2a$10$VqUZ2ML/jQc4umB.YdiR/uPDFzSTgqgGb5n96G684woT.dwVkcpjK','川越','ますみ','カワゴエ','マスミ','2016-02-01 12:20:45.293082','2016-02-01 12:20:45.293082');
INSERT INTO `customers` VALUES(159,'one.advance2008@gmail.com','one.advance2008@gmail.com','$2a$10$j/J9WVgxR92S9LzC4eJsNOhTBB0MH6zcihet11qu2ODOCfMdoQBw6','大野','崇恵','オオノ','タカエ','2016-02-01 12:21:16.599092','2016-02-01 12:21:16.599092');
INSERT INTO `customers` VALUES(160,'nocchi-Morton.4898@i.softbank.jp','nocchi-morton.4898@i.softbank.jp','$2a$10$VwsQwbfwpBBWT9r.2yKaKuZN7z9CtoT4QIyNr3DGj8hWA3a12lceS','能登','美恵子','ノト','ミエコ','2016-02-01 14:06:16.222609','2016-02-01 14:06:16.222609');
INSERT INTO `customers` VALUES(161,'nocchi-mietan.4898@i.softbank.jp','nocchi-mietan.4898@i.softbank.jp','$2a$10$eJWA/ZCdXwPM5ArIBwUxA.DJqkwrz8ZFdJf9aIA43cJJUM3D0Z0xC','能登','美恵子','ノト','ミエコ','2016-02-01 14:07:01.090193','2016-02-01 14:07:01.090193');
INSERT INTO `customers` VALUES(162,'nocchi-mietan.4898@i.softban.jp','nocchi-mietan.4898@i.softban.jp','$2a$10$Rj3nE.bz5RS5Fy0RiS305usbl/rYH.a.CTKOuTyaPREdSjtdlujM2','能登','美恵子','ノト','ミエコ','2016-02-01 14:12:23.624963','2016-02-01 14:12:23.624963');
INSERT INTO `customers` VALUES(163,'kenkoudaiichi5.20@docomo.ne.jp','kenkoudaiichi5.20@docomo.ne.jp','$2a$10$AK8HDD/tkiZuM/XHKiooSerpAaqkIi2sVKVbJQ1w8Lnn86TVFlsw.','丸山','実穂','マルヤマ','ミホ','2016-02-01 16:39:06.452091','2016-02-01 16:39:06.452091');
INSERT INTO `customers` VALUES(164,'misato1955@gmail.com','misato1955@gmail.com','$2a$10$7PpJWln9BLAfVNUpWZKbTuerJy.8KU9SG4R19Yavu8EPeC.pne8D.','今村','美里','イマムラ','ミサト','2016-02-02 00:20:59.280777','2016-02-02 00:20:59.280777');
INSERT INTO `customers` VALUES(165,'special-poko@ezweb.ne.jp','special-poko@ezweb.ne.jp','$2a$10$v2ZtiDvVIv/.liRHCHwlU.Mj115QhsaMpUZwD4JR2H5ZYJBNXpRnK','大久保','久美子','オオクボ','クミコ','2016-02-02 01:42:24.900118','2016-02-02 01:42:24.900118');
INSERT INTO `customers` VALUES(166,'obarenjar5@yahoo.co.jp','obarenjar5@yahoo.co.jp','$2a$10$Pa6SjsIA7KQBL9zcNjpSNOIA5gqQ/rPz8nDJc7VH0CsbZKQu9GZFe','足立','浩恵','アダチ','ヒロエ','2016-02-02 04:08:16.615287','2016-02-02 04:08:16.615287');
INSERT INTO `customers` VALUES(167,'kenichitonegawa0788@icloud.com','kenichitonegawa0788@icloud.com','$2a$10$/.fPcvhbchhLGt6iBu5Uq.TC/T3L3GbfX3RmiPmDQJz9Eg3bPT9Ey','利根川','賢一','トネガワ','ケンイチ','2016-02-02 04:48:44.071578','2016-02-02 04:48:44.071578');
INSERT INTO `customers` VALUES(168,'kanaaan7272@gmail.com','kanaaan7272@gmail.com','$2a$10$gLZOFZdtwpiU0AM1XbdQBudp7ldZmzVFAjSh/q92XFw5jMr4jqyvy','道家','賀奈子','ドウケ','カナコ','2016-02-02 05:35:32.981841','2016-02-02 05:35:32.981841');
INSERT INTO `customers` VALUES(169,'blackpink_bu@yahoo.co.jp','blackpink_bu@yahoo.co.jp','$2a$10$qQp554R/Hz7xK6uex1OkmudBKEqF9nkuteHhwXsz8ESukUzOhhpl2','山本','悦子','ヤマモト','エツコ','2016-02-02 05:36:29.330316','2016-02-02 05:36:29.330316');
INSERT INTO `customers` VALUES(170,'Kawaiihinako0404@hotmail.co.jp','kawaiihinako0404@hotmail.co.jp','$2a$10$aUyqPk.PJo/oarW6P9VITuQ/l1AdG9pN073omvVP0ec13sTrxJKMC','木曾','ゆかり','キソ','ユカリ','2016-02-02 05:58:58.604969','2016-02-02 05:58:58.604969');
INSERT INTO `customers` VALUES(171,'ncdhyuctt@i.softbank.jp','ncdhyuctt@i.softbank.jp','$2a$10$YUyNIpIK9/bKwEiq0s9blO1HarVLwHeqHpqmqBRDzPluIJYQfso6q','大山','香緒里','オオヤマ','カオリ','2016-02-02 07:01:31.404547','2016-02-02 07:01:31.404547');
INSERT INTO `customers` VALUES(172,'wachoitei001@gmail.com','wachoitei001@gmail.com','$2a$10$WvLWAbuHR..h97JTwUrPkOfq47sxS6nghyuSLAhyD0aOOrGgVT3IS','村上','洋一郎','ムラカミ','ヨウイチロウ','2016-02-02 11:44:56.691507','2016-02-02 11:44:56.691507');
INSERT INTO `customers` VALUES(173,'strngfngrtky3a@gmail.com','strngfngrtky3a@gmail.com','$2a$10$tEHjVwqzrF/B0fkCOE0ZWOXt4UY9vFEJjZkDxoc15nP4YrJxVIkfy','高谷','裕一郎','タカヤ','ユウイチロウ','2016-02-02 13:27:36.452641','2016-02-02 13:27:36.452641');
INSERT INTO `customers` VALUES(174,'slowcafe1974@gmail.com','slowcafe1974@gmail.com','$2a$10$4yHdOdPOc1C3ZNgnrnaRkOGl0pskYQQBFYRY.FK7ScfkNiUnXHcQ2','中村','真仁','ナカムラ','マニ','2016-02-02 14:46:18.205641','2016-02-02 14:46:18.205641');
INSERT INTO `customers` VALUES(175,'mameika720@gmail.com','mameika720@gmail.com','$2a$10$Dp3DTDv0D1NXftKLxyfVF.imqbTEfZlUtrLBhB4yp3QMZcozjsqE6','行本','摩美子','ユキモト','マミコ','2016-02-02 22:57:57.338717','2016-02-02 22:57:57.338717');
INSERT INTO `customers` VALUES(176,'hakubisou@gmail.com','hakubisou@gmail.com','$2a$10$ZCyYr2tz6jm765uzeQ4L4OuoZ6UaYepm2Vk8Xlz8t/AdLLBcf84QS','柴田','正宏','シバタ','マサヒロ','2016-02-02 23:22:47.341843','2016-02-02 23:22:47.341843');
INSERT INTO `customers` VALUES(177,'mrs.chie.shinohara@gmail.com','mrs.chie.shinohara@gmail.com','$2a$10$v3J.BIWVhcctl/Qsxe6NJOnPVjFN6OsQzShf321FK6Qwwn33vD.xi','篠原','千恵','シノハラ','チエ','2016-02-03 00:48:02.896234','2016-02-03 00:48:02.896234');
INSERT INTO `customers` VALUES(178,'masudanoyasai@yahoo.co.jp','masudanoyasai@yahoo.co.jp','$2a$10$vQka1V3Bb/tr9GTYW1.VAOEtcTAfAdgEbVGVZvYtK3j1R7uK/xANS','舛田','望美','マスダ','ノゾミ','2016-02-03 07:18:55.156463','2016-02-03 07:18:55.156463');
INSERT INTO `customers` VALUES(179,'0911tkhr@gmail.com','0911tkhr@gmail.com','$2a$10$bQzROsB0FXGYgjTMcwBBz.rL9V5sq6ecp9IyuHQpqOIgC0at9SfB.','久山','貴央','ひさやま','たかひろ','2016-02-03 12:00:28.148045','2016-02-03 12:00:28.148045');
INSERT INTO `customers` VALUES(180,'ranmaru@m2.pbc.ne.jp','ranmaru@m2.pbc.ne.jp','$2a$10$D1Kk/nEkNC3F2sLdEiCwBeyi.kTjRFFYVKBvcZkYraTfeUewpOFP2','井口','恵美','イグチ','メグミ','2016-02-03 12:32:21.142950','2016-02-03 12:32:21.142950');
INSERT INTO `customers` VALUES(181,'yukiko1103@i.softbank.jp','yukiko1103@i.softbank.jp','$2a$10$Pn3mAbw3HLQefuPdC509n.0xqiQ/G7MD56x5MOcmSaLpv2c9h.HIK','堀岡','倖子','ホリオカ','ユキコ','2016-02-03 22:03:14.220957','2016-02-03 22:03:14.220957');
INSERT INTO `customers` VALUES(182,'sakara0405@asando.jp','sakara0405@asando.jp','$2a$10$nBRRz2cOlZNYzXgSxlbAs.yXqMd59iicj7MPEhoGtNtOol.KWRpXm','山田','和義','ヤマダ・','カズヨシ','2016-02-04 09:07:37.451932','2016-02-04 09:07:37.451932');
INSERT INTO `customers` VALUES(183,'sakura0405@asando.jp','sakura0405@asando.jp','$2a$10$XjKFV9VoqOkRi7mgTPCzSuLOTQw6aP4v.Z9Bbntmcn4D.6H.INEia','山田','和義','ヤマダ・','カズヨシ','2016-02-04 09:09:54.337953','2016-02-04 09:09:54.337953');
INSERT INTO `customers` VALUES(184,'rayfield325@gmail.com','rayfield325@gmail.com','$2a$10$fvHy0NiXvWzY/eyx3cmW6OrB/vGZfjAOVX4UH38Q9PjYuZd6J9ABy','松田','大輔','マツダ','ダイスケ','2016-02-04 11:49:12.377851','2016-02-04 11:49:12.377851');
INSERT INTO `customers` VALUES(185,'november-0703emy@i.softbank.jp','november-0703emy@i.softbank.jp','$2a$10$D/59bJRBefu2ZrgEzRmJnuJe.NZYOwa0oy7FZZMqzTi0yI8yaol3q','野沢','悦子','ノザワ','エツコ','2016-02-04 15:20:21.609875','2016-02-04 15:20:21.609875');
INSERT INTO `customers` VALUES(186,'purehoneyfarm@yahoo.co.jp','purehoneyfarm@yahoo.co.jp','$2a$10$JjA5D53O5xwRzMeJIgnt1uSMpnWk1K8LNSSSlX5WzF/Pb1.Yu64VC','後藤','純子','ゴトウ','ジュンコ','2016-02-05 04:17:10.360552','2016-02-05 04:17:10.360552');
INSERT INTO `customers` VALUES(187,'kotonoritomoshin@gmail.com','kotonoritomoshin@gmail.com','$2a$10$4irBMB4qD1tbEH7WRWdn1OTCqA87/UAflgSXFjPsUoTxNN9yKEXG.','澤村','朋美','サワムラ','トモミ','2016-02-06 10:43:34.141736','2016-02-06 10:43:34.141736');
INSERT INTO `customers` VALUES(188,'yuu0818yuu@gmai.com','yuu0818yuu@gmai.com','$2a$10$UETiuh1tjGEvjVcCYkb.HeVlZhcO01jA36sky8X9T6vjvleW/8M36','吉井','優子','ヨシイ','ユウコ','2016-02-06 14:11:17.917437','2016-02-06 14:11:17.917437');
INSERT INTO `customers` VALUES(189,'maromaro.fx6boo@titan.ocn.ne.jp','maromaro.fx6boo@titan.ocn.ne.jp','$2a$10$RVd85JCMbww44BaAaYa75uOraOohVBQz3aW01quCWcj5LH9X4WET2','二村','茂男','フタムラ','シゲオ','2016-02-07 05:38:08.944362','2016-02-07 05:38:08.944362');
INSERT INTO `customers` VALUES(190,'chocochan.n_n.10@i.softbank.jp','chocochan.n_n.10@i.softbank.jp','$2a$10$d5lVmvzgoEneK/iDCI807eFMj/7rqf917Tz34LgNGwSdIJutZ3BBu','川上','菜月','カワカミ','ナツキ','2016-02-07 07:08:36.714287','2016-02-07 07:08:36.714287');
INSERT INTO `customers` VALUES(191,'iizuka0504@gmail.com','iizuka0504@gmail.com','$2a$10$ErBy.1u6PBDjdyY3mrVPg.InjqgX.ewMQ5a201vF.Uz4yygHgB8LG','飯塚','昌恵','イイヅカ','マサエ','2016-02-07 20:32:19.919270','2016-02-07 20:32:19.919270');
INSERT INTO `customers` VALUES(192,'kitchenyuka222@gmail.com','kitchenyuka222@gmail.com','$2a$10$tY2cfI9wKi3bKqGO1LYGh.2wsSHTMkt3l3Yox2UD476gX5rOg767m','河野','ゆかり','コウノ','ユカリ','2016-02-08 01:34:38.220543','2016-02-08 01:34:38.220543');
INSERT INTO `customers` VALUES(193,'cfh32580@yahoo.co.jp','cfh32580@yahoo.co.jp','$2a$10$J3hEuAMxoekkkg9L0EBlFut9od1aWfUpzCh5wGcKlT9UZK3TUEiAm','服部','翠','ハットリ','ミドリ','2016-02-08 05:17:49.056858','2016-02-08 05:17:49.056858');
INSERT INTO `customers` VALUES(194,'ayueast702@gmail.com','ayueast702@gmail.com','$2a$10$jg6F7vEn9IcE3DqLF.zemuKFbsi.i8RUXJACSj3d7xWqrS4aodeJi','福井','あゆみ','フクイ','アユミ','2016-02-08 09:19:33.138810','2016-02-08 09:19:33.138810');
INSERT INTO `customers` VALUES(195,'sedonavoltex@gmail.com','sedonavoltex@gmail.com','$2a$10$7cFTptwm7FJh5TbCNkiKKe47w590z314x0bUm4nVIcvNk4AzhKKJm','加藤','優子','カトウ','ユウコ','2016-02-08 09:24:54.805661','2016-02-08 09:24:54.805661');
INSERT INTO `customers` VALUES(196,'kaze.T.O.arbol@i.softbank.jp','kaze.t.o.arbol@i.softbank.jp','$2a$10$kdSYzkuFNXh4m2FbvZGdR.f1LDDUs0LEl42Q.UmZlDLFqKjv9Z43K','小松','朋世','コマツ','トモヨ','2016-02-08 09:45:34.310236','2016-02-08 09:45:34.310236');
INSERT INTO `customers` VALUES(197,'taniguchimasaki@gmail.com','taniguchimasaki@gmail.com','$2a$10$qYAqPRTuXNdPd36L/I8KaeX02tsci3ucEsjzoiderMIeopt5E2j0y','谷口','正樹','タニグチ','マサキ','2016-02-08 23:14:44.810440','2016-02-08 23:14:44.810440');
INSERT INTO `customers` VALUES(198,'olipom-akepom@globe.ocn.ne.jp','olipom-akepom@globe.ocn.ne.jp','$2a$10$L6DU.vQFUQYj3w0fWX6AAeR1X6QN.PeIMfcNUvgYcc8QWMj8.G.oi','岩元','明美','イワモト','アケミ','2016-02-08 23:53:00.606112','2016-02-08 23:53:00.606112');
INSERT INTO `customers` VALUES(199,'chibatea@gmail.com','chibatea@gmail.com','$2a$10$gpOg14B5nQxOrwQ7IqLWduIzuiTfB9w0YgzCYnh8p07jLOCygAqYy','千葉','明美','チバ','アケミ','2016-02-09 00:10:44.328168','2016-02-09 00:10:44.328168');
INSERT INTO `customers` VALUES(200,'kenchanayo52@gmail.com','kenchanayo52@gmail.com','$2a$10$zesnm4dW5/Kxtc6VpgQT/ey5G3x3XIfQPO33kKekv7HLfn/Em3cLe','三田村','健一','ミタムラ','ケンイチ','2016-02-09 01:40:41.238563','2016-02-09 01:40:41.238563');
INSERT INTO `customers` VALUES(201,'Gobou.com@gmail.com','gobou.com@gmail.com','$2a$10$wmi5F7/11Ll8HSSCOuNbN.qEdnUuFth/XBmYmJ31rYgzVpVH/up8O','中村','謙一','ナカムラ','ケンイチ','2016-02-09 02:57:11.084342','2016-02-09 02:57:11.084342');
INSERT INTO `customers` VALUES(202,'make-you...smile-0720@docomo.ne.jp','make-you...smile-0720@docomo.ne.jp','$2a$10$fnt95PhmRtGPJCCIiAaMAuIihX0Q3JABOjCEDDQA11SyAbtvu0nwW','石黒','陽子','イシグロ','ヨウコ','2016-02-09 04:52:15.642353','2016-02-09 04:52:15.642353');
INSERT INTO `customers` VALUES(203,'sae.nishi15@gmail.com','sae.nishi15@gmail.com','$2a$10$DUuQzU4nrSd/mKgQe4JhpOUjUejrg98LnkXc7LlPKwnRcIMOXf56W','西窪','彩恵','ニシクボ','サエ','2016-02-09 07:16:38.687632','2016-02-09 07:16:38.687632');
INSERT INTO `customers` VALUES(204,'angel-sp@ebony.plala.or.jp','angel-sp@ebony.plala.or.jp','$2a$10$NwGS.DMIAlYS9zt5ZjC00OPf7YqBd29SWS17NQt.uf03xHmjNqvW2','大西','淳','オオニシ','ジュン','2016-02-09 09:40:35.576614','2016-02-09 09:40:35.576614');
INSERT INTO `customers` VALUES(205,'kosaka.ichitaro@gmail.com','kosaka.ichitaro@gmail.com','$2a$10$sCRqYg/GYhjZxpB0IpbvbebiMWkyPKr7Ej.PMl2BQpr5olqG.fOCG','香坂','一太朗','コウサカ','イチタロウ','2016-02-09 09:49:18.757082','2016-02-09 09:49:18.757082');
INSERT INTO `customers` VALUES(206,'mms21.tnf@gmail.com','mms21.tnf@gmail.com','$2a$10$JsMDqdfJ9Shvd0X.XCetnOy.M.27zzAOAQL65xa1vZfi1WXXnXZ16','町田','俊明','マチダ','トシアキ','2016-02-09 13:22:05.479130','2016-02-09 13:22:05.479130');
INSERT INTO `customers` VALUES(207,'angelmoon.32.soul@gmail.com','angelmoon.32.soul@gmail.com','$2a$10$tvpe9gFK0PXeb74Anqa91OFzxWFf0G2.BXxH4t3OkR1Nt70dNmVby','横地','昌美','ヨコチ','マサミ','2016-02-10 11:04:14.624339','2016-02-10 11:04:14.624339');
INSERT INTO `customers` VALUES(208,'izumama323@gmail.com','izumama323@gmail.com','$2a$10$UEvBfcgmx8fPLr6hoBzA/eXOtreZ4NoTcDyZI3/sxPlUAPP8hvb.a','安達','泉','アダチ','イズミ','2016-02-11 11:00:27.510229','2016-02-11 11:00:27.510229');
INSERT INTO `customers` VALUES(209,'tooky@nifty.com','tooky@nifty.com','$2a$10$YBxxK8rF5sJDL23ltX43Gu6Q4KlbH9IU48TN8UHAVuNvOh2WTWvaK','浅間','俊之','アサマ','トシユキ','2016-02-11 14:26:47.918939','2016-02-11 14:26:47.918939');
INSERT INTO `customers` VALUES(210,'mg28nko53@gmail.com','mg28nko53@gmail.com','$2a$10$5OhSBDFvlEsdnokByOFRmOy9hE1CfzCDIxMQHZpJiTnF/EBobxLGq','谷本','めぐみ','タニモト','メグミ','2016-02-12 14:37:33.544094','2016-02-12 14:37:33.544094');
INSERT INTO `customers` VALUES(211,'kobutachan4408@i.softbank.jp','kobutachan4408@i.softbank.jp','$2a$10$exLUonRtKnLc1uu9bx6VN.twb.htHFENBp1PXoxEw5IZ48jw3TjDe','南場','昭子','ナンバ','アキコ','2016-02-12 17:07:19.786974','2016-02-12 17:07:19.786974');
INSERT INTO `customers` VALUES(212,'izuchi@dmet.co.jp','izuchi@dmet.co.jp','$2a$10$YNPyRO9t5Z6cC2pw.onJrejw2Vk4iI7Uh0yC1Df34b0nxHAT2LpqK','井土','晃彦','イヅチ','アキヒコ','2016-02-13 00:28:19.629625','2016-02-13 00:28:19.629625');
INSERT INTO `customers` VALUES(213,'nakais_preznt88@ezweb.ne.jp','nakais_preznt88@ezweb.ne.jp','$2a$10$AsftFGJyBGZ6iNkzVK9.9ecIGh9SuK2VRDetpQndBW4yvM6U/kPS6','中井','潤','ナカイ','ジュン','2016-02-13 16:42:31.170115','2016-02-13 16:42:31.170115');
INSERT INTO `customers` VALUES(214,'perfectrainbow111@gmail.com','perfectrainbow111@gmail.com','$2a$10$SNle97jglWqA8cnqPzSWFOhkDxD31mR6hZJ9FBVTfPw3shRUxIxe6','沖田','真理','オキタ','マリ','2016-02-13 22:13:49.028950','2016-02-13 22:13:49.028950');
INSERT INTO `customers` VALUES(215,'fukuhiko@gmail.com','fukuhiko@gmail.com','$2a$10$0wqoQuMWjoDNUMPK5rgel.qq1rc2Lm.daxZ9D2f6kyB/mGlzHtgQm','赤澤','福彦','アカザワ','フクヒコ','2016-02-14 00:16:32.370588','2016-02-14 00:16:32.370588');
INSERT INTO `customers` VALUES(216,'yokitomo0834@yahoo.co.jp','yokitomo0834@yahoo.co.jp','$2a$10$rvtJmBoYGujlX8Jt4lGW7e8vsfPaNJ0vJlRKnaiuVKP5FSe3Ei9MK','長谷川','明子','ハセガワ','アキコ','2016-02-14 03:08:51.368936','2016-02-14 03:08:51.368936');
INSERT INTO `customers` VALUES(217,'cap971332@docomo.ne.jp','cap971332@docomo.ne.jp','$2a$10$HVUkp.v3u./HAKLIOo1fO.2Bx/dBUF8LHlitaKijFayO3tf.6SO1K','澤谷','幸治','サワタニ','コウジ','2016-02-14 05:34:44.612536','2016-02-14 05:34:44.612536');
INSERT INTO `customers` VALUES(218,'harutenshi7@i.softbank.jp','harutenshi7@i.softbank.jp','$2a$10$VshLkTek7Hp9IqU5.ZJeSOe/E1Y5Fk92JD5jmAKUb5VX4Dy9KTpua','池野','なお','イケノ','ナオ','2016-02-14 11:38:53.302075','2016-02-14 11:38:53.302075');
INSERT INTO `customers` VALUES(219,'37710tjyy@ezweb.ne.jp','37710tjyy@ezweb.ne.jp','$2a$10$I.UP7AODpYydldzhPEvYB.GLbkW5yK1B35Loti7UvQyWUeQmdWg7e','今成','じゅん子','イマナリ','ジュンコ','2016-02-14 12:29:55.314592','2016-02-14 12:29:55.314592');
INSERT INTO `customers` VALUES(220,'olive794@gmail.com','olive794@gmail.com','$2a$10$1IcO1KaGWEcG1QNU6VDbQeX4AbQ7jhBTRsKXWtfYUjG69csGDk/hS','西窪','幸子','ニシクボ','サチコ','2016-02-16 08:04:21.698132','2016-02-16 08:04:21.698132');
INSERT INTO `customers` VALUES(221,'masakajinami@me.com','masakajinami@me.com','$2a$10$a8tOF8mHfVMz4MNmokGrS.50TKAj4hQn2hTn3eirmCGtIRnLRQJ6K','梶並','正博','カジナミ','マサヒロ','2016-02-16 08:06:00.937332','2016-02-16 08:06:00.937332');
INSERT INTO `customers` VALUES(222,'kanten217@hotmail.com','kanten217@hotmail.com','$2a$10$kmOXacZcwkh23q0LbwZ1WOCC0fi5.Q..pZ2ug.Bp8OkI6aVPANVb2','吉岡','寛典','ヨシオカ','ヒロノリ','2016-02-17 14:41:57.229355','2016-02-17 14:41:57.229355');
INSERT INTO `customers` VALUES(223,'kiyonari444@gmail.com','kiyonari444@gmail.com','$2a$10$SxRGbz.cJJnon0Y/wruyl.jgDLbsbcfcKZmAi3iaU/nyM3RTyBfmi','清成','勇一','キヨナリ','ユウイチ','2016-02-19 00:13:17.158310','2016-02-19 00:13:17.158310');
INSERT INTO `customers` VALUES(224,'yasuturi@gmail.com','yasuturi@gmail.com','$2a$10$57lKVmsUPDot1LcUTfNfpu1DP5Xtg3k4D9rUNQAbibSqNQTKk7I1O','瀬戸','康貴','セト','ヤスタカ','2016-02-19 04:40:51.226284','2016-02-19 04:40:51.226284');
INSERT INTO `customers` VALUES(225,'momo_taku1219@docomo.ne.jp','momo_taku1219@docomo.ne.jp','$2a$10$zB4Skwf8HPmHo/Xk.YJXee5IK4vEi4RxQZnOG.yJ.W9JlcMl1UbuC','加藤','美妃','カトウ','ミキ','2016-02-19 08:16:32.753462','2016-02-19 08:16:32.753462');
INSERT INTO `customers` VALUES(226,'petit.porco.k@gmail.com','petit.porco.k@gmail.com','$2a$10$rRpo30zHrUFDojGgP9hqZOUqttiKWtA4DZ8JBh5FulZ8x7FDEs8.m','佐藤','かすみ','サトウ','カスミ','2016-02-20 04:20:37.451208','2016-02-20 04:20:37.451208');
INSERT INTO `customers` VALUES(227,'t-oda@tca-laruche.co.jp','t-oda@tca-laruche.co.jp','$2a$10$l0RLV4RI/J8eNY.57HzeJOSQCSIfoubYcdUWUvBvVSq5lbK3UqzQq','小田','忠雄','オダ','タダオ','2016-02-21 01:10:18.557263','2016-02-21 01:10:18.557263');
INSERT INTO `customers` VALUES(228,'b-chan4210@softbank.ne.jp','b-chan4210@softbank.ne.jp','$2a$10$Wh4i72GiKwnJcHs0Yf5WQOi4ktJhtNFNxWrUBnze79eu3w/HaQwAy','大川','美枝','オオカワ','ミエ','2016-02-23 14:21:03.286608','2016-02-23 14:21:03.286608');
INSERT INTO `customers` VALUES(229,'08093080482@ecc.biz.ezweb.ne.jp','08093080482@ecc.biz.ezweb.ne.jp','$2a$10$GRHDuOlVODpV2lAVDGQZ1emYlwtKupsJAI7HW05oSEQfYmamM/Yvm','内藤','章子','ナイトウ','アキコ','2016-02-24 23:40:41.380083','2016-02-24 23:40:41.380083');
INSERT INTO `customers` VALUES(230,'takakonishimura0925@gmail.com','takakonishimura0925@gmail.com','$2a$10$4arQZcPrYcK7ZzCRdg1zr.XToXwsP1hmr/PsXhB7laXkV/20hHgvy','西村','隆子','ニシムラ','タカコ','2016-02-27 04:35:36.923796','2016-02-27 04:35:36.923796');
INSERT INTO `customers` VALUES(231,'yuko_taureau@yahoo.co.jp','yuko_taureau@yahoo.co.jp','$2a$10$fRr73r7dqzr37/GhubVUaeeu1Mw14p1dwWPDbw/mKQMtyovwhinwy','藤田','裕子','フジタ','ユウコ','2016-02-29 22:42:01.912641','2016-02-29 22:42:01.912641');
INSERT INTO `customers` VALUES(232,'yoji.deguchi@gmail.com','yoji.deguchi@gmail.com','$2a$10$pSJxq0l43aASo3/bMnKBJuMNDwQ2T./7d63avnSCpOGN289ppo.j2','出口','洋次','デグチ','ヨウジ','2016-03-02 08:22:13.533921','2016-03-02 08:22:13.533921');
INSERT INTO `customers` VALUES(233,'sima51gou@gmail.com','sima51gou@gmail.com','$2a$10$UNXoJXZpkI.Vd5psbmkk.u.afNo8sLjTyOGWbdrGTxebcU.ar.cua','島袋','悟','シマブクロ','サトル','2016-03-05 22:53:32.232944','2016-03-05 22:53:32.232944');
INSERT INTO `customers` VALUES(234,'pinaconami@yahoo.co.jp','pinaconami@yahoo.co.jp','$2a$10$ZFOp8Upz//NFFvy1Sk.9suXPZc/RrWjDgtmzIueP8O/5HxU9PjpDO','石崎','美奈子','イシザキ','ミナコ','2016-03-06 02:28:58.550665','2016-03-06 02:28:58.550665');
INSERT INTO `customers` VALUES(235,'gejimayu2676@gmail.com','gejimayu2676@gmail.com','$2a$10$DxDyYzA60nJ.pmrJQt7ZHeR52OB6mnU.oLeWp5O0GEtlQph0TDyaa','吉川','幸利','ヨシカワ','ユキトシ','2016-03-07 05:10:26.329977','2016-03-07 05:10:26.329977');
INSERT INTO `customers` VALUES(236,'bpstw1998@gmail.com','bpstw1998@gmail.com','$2a$10$mokVUtcUD8A8lJLLi4MkfOeTcnmV/o.WClDRCuSBVXrO8QkhkTSae','高島','勇志','タカシマ','ユウジ','2016-03-10 05:29:34.494682','2016-03-10 05:29:34.494682');
INSERT INTO `customers` VALUES(237,'chi-fa.6@ezweb.ne.jp','chi-fa.6@ezweb.ne.jp','$2a$10$hy8GqneInQodkhxWfo3R.eeyNtrFq1IdaEOzBnUjEvfiYTg237eo6','金子','千晴','カネコ','チハル','2016-03-10 09:04:03.922025','2016-03-10 09:04:03.922025');
INSERT INTO `customers` VALUES(238,'masa1132sora@gmail.com','masa1132sora@gmail.com','$2a$10$ZgdpQOjjuIX6pnyO1OmkOeNjJV8SmzkMJI3RIM8Gso7WgfAtjXtIS','奥田','雅子','オクダ','マサコ','2016-03-11 16:42:55.470238','2016-03-11 16:42:55.470238');
INSERT INTO `customers` VALUES(239,'sawakiss1118@i.softbank.jp','sawakiss1118@i.softbank.jp','$2a$10$FlhqIw5Ezs29bHbXnoDLouNvbmylcMG1lKcTeX/6L0SV8TIKexUKK','澤木','茂子','サワキ','シゲコ','2016-03-13 05:10:31.924686','2016-03-13 05:10:31.924686');
INSERT INTO `customers` VALUES(240,'mio6031.2@gmail.com','mio6031.2@gmail.com','$2a$10$XmiNka7cykg00ZYgSVFEt.RePKm9TJzJ9T1f6NDkWMkfSoVL7pxc.','大倉','美保子','オオクラ','ミオコ','2016-03-15 02:09:10.252763','2016-03-15 02:09:10.252763');
INSERT INTO `customers` VALUES(241,'kokona93@yahoo.co.jp','kokona93@yahoo.co.jp','$2a$10$HA.Kb2mTrTxNeP9RLdNOqew30nLBAaFBkuVHNv1fiJrkBRBsh7RQ6','加々美','久美','カガミ','クミ','2016-03-15 04:23:18.675835','2016-03-15 04:23:18.675835');
INSERT INTO `customers` VALUES(242,'manafactory@ezweb.ne.jp','manafactory@ezweb.ne.jp','$2a$10$0s0Y7GUu4jGSieKd4QEbOOhE548z/t6YwwuO2KE367l6Kblz7ZWX6','浅井','朝明','アサイ','トモアキ','2016-03-17 05:49:30.679300','2016-03-17 05:49:30.679300');
INSERT INTO `customers` VALUES(243,'1can5where@gmail.com','1can5where@gmail.com','$2a$10$qMM3TC2Wu2hhnAjc3uuusex6i8e3.sjBDfFg4IxfqZh.2cFqp8qam','齋藤','明美','サイトウ','アケミ','2016-03-17 09:27:52.037286','2016-03-17 09:27:52.037286');
INSERT INTO `customers` VALUES(244,'bread.class_orange-cafe@ezweb.ne.jp','bread.class_orange-cafe@ezweb.ne.jp','$2a$10$jOOR5/J/VW9cg5dGTlsaG.U6kxRKEOQ8KnnmWLlRivHMGPApcqaZC','森','久美','モリ','ヒサミ','2016-03-17 10:09:52.427970','2016-03-17 10:09:52.427970');
INSERT INTO `customers` VALUES(245,'kao@fa2.so-net.ne.jp','kao@fa2.so-net.ne.jp','$2a$10$vE5G74N/VB/ONdJispgale1OTAhV3Cf41owgPhkos2yuSgTMFpuUC','和田','香織里','ワダ','カオリ','2016-03-17 10:12:20.118101','2016-03-17 10:12:20.118101');
INSERT INTO `customers` VALUES(246,'linda127h2@yahoo.co.jp','linda127h2@yahoo.co.jp','$2a$10$ybei603ansRsjY/FYq5Jae6s5tlIOyHJV.nuKqSfIbrD5bXxG5YSy','高木','博世','タカギ','ヒロヨ','2016-03-17 15:02:39.076813','2016-03-17 15:02:39.076813');
INSERT INTO `customers` VALUES(247,'kinrmk@gmail.com','kinrmk@gmail.com','$2a$10$poAyEahKPnOEmdqq8W0bM.b8MyRRMQnCwakIpWZiajJFAK.5ed2XS','古川','ルミ子','フルカワ','ルミコ','2016-03-17 21:24:48.029345','2016-03-17 21:24:48.029345');
INSERT INTO `customers` VALUES(248,'aaa2014zzz@yahoo.co.jp','aaa2014zzz@yahoo.co.jp','$2a$10$MRKbix36tP8kt1po8hMHq.G29lBjb5EwoMvxkE5GTn7fKa/xXuzBG','金海','京治','カナウミ','キョウジ','2016-03-18 00:37:30.249227','2016-03-18 00:37:30.249227');
INSERT INTO `customers` VALUES(249,'ck.s-ukktkr-orz@ezweb.ne.jp','ck.s-ukktkr-orz@ezweb.ne.jp','$2a$10$vPM6PWegkJCjRmY5pht.UeF/p95eZr.bOKmTc6m35HFmsKiPkjfVK','小谷野','友香','コヤノ','ユカ','2016-03-18 00:52:02.212208','2016-03-18 00:52:02.212208');
INSERT INTO `customers` VALUES(250,'rierie312@i.Softbank.jp','rierie312@i.softbank.jp','$2a$10$NVHosLrFUjiP1C1y1xr9me96FvlduypA7.zcHJrbimdSHBtMUrXby','松井','理絵','マツイ','リエ','2016-03-18 00:56:54.807248','2016-03-18 00:56:54.807248');
INSERT INTO `customers` VALUES(251,'marukawa.okami.@docomo.ne.jp','marukawa.okami.@docomo.ne.jp','$2a$10$BMOMUsqcwy.svqNSTD7CGO4ydm2J9V7c84nllNDTYU9KUGEgbhd9K','今澤','昭子','イマザワ','アキコ','2016-03-18 01:19:29.591645','2016-03-18 01:19:29.591645');
INSERT INTO `customers` VALUES(252,'araibu12306@gmail.com','araibu12306@gmail.com','$2a$10$lOIJlAvkvjI2s9UB5hlPvOnHRnnmYpRQlxuWns5dO9yPNl7z2WWn6','比嘉','真紀','ヒガ','マキ','2016-03-18 01:39:11.333184','2016-03-18 01:39:11.333184');
INSERT INTO `customers` VALUES(253,'kayak715@yahoo.co.jp','kayak715@yahoo.co.jp','$2a$10$zq3uWOmuxdhk4GNU00We7u16q2Gt6/o.zrcQ.YmAiQKU2T6zEciHe','高野倉','慶子','タカノクラ','ケイコ','2016-03-18 01:49:28.698948','2016-03-18 01:49:28.698948');
INSERT INTO `customers` VALUES(254,'berry--maruba.k@ezweb.ne.jp','berry--maruba.k@ezweb.ne.jp','$2a$10$ONhUrsnWa.4u9Lj9QyDG/uTNftk7esEaYWIa7zWINDrT47Tp/5Tcu','馬場','圭子','ババ','ケイコ','2016-03-18 01:53:36.754266','2016-03-18 01:53:36.754266');
INSERT INTO `customers` VALUES(255,'yumitan51@goo.jp','yumitan51@goo.jp','$2a$10$6WG76QCQLRR7MQdAGl3Z5ePe6/P.RI4Ln5kRIUaAnTDDs.Wk0zL3C','長原','由美子','ナガハラ','ユミコ','2016-03-18 02:00:17.171107','2016-03-18 02:00:17.171107');
INSERT INTO `customers` VALUES(256,'la-chie@jcom.home.ne.jp','la-chie@jcom.home.ne.jp','$2a$10$zcFyKATih6syv5Otk3/CIOb.7R6IWwxF3Qqm9CDraqbVeLJms2yNC','加藤','千恵','カトウ','チエ','2016-03-18 02:12:54.074325','2016-03-18 02:12:54.074325');
INSERT INTO `customers` VALUES(257,'pfmamimatsu@yahoo.co.jp','pfmamimatsu@yahoo.co.jp','$2a$10$4QyC9oO6t8aivvrvFemfEez4eMx.vw6OJwCtqMqyuv6DYCCoypqYu','松村','真美','マツムラ','マミ','2016-03-18 02:16:58.283474','2016-03-18 02:16:58.283474');
INSERT INTO `customers` VALUES(258,'aika-1002@fuga.ocn.ne.jp','aika-1002@fuga.ocn.ne.jp','$2a$10$6iB3SXqhotjCli4JixYpcuLiAGrMH7G7fg7fT6nrEZkVJtuuGBjn.','橋本','恵子','ハシモト','ケイコ','2016-03-18 02:22:22.154613','2016-03-18 02:22:22.154613');
INSERT INTO `customers` VALUES(259,'kenji@moku2house.co.jp','kenji@moku2house.co.jp','$2a$10$OPO9m7jrotdhHSOB7yPxdebdDjpmnu8esalJNcTDFia9vz0e91R8i','島村','健二','シマムラ','ケンジ','2016-03-18 03:06:59.954842','2016-03-18 03:06:59.954842');
INSERT INTO `customers` VALUES(260,'d-x-b.11ayano27@i.softbank.jp','d-x-b.11ayano27@i.softbank.jp','$2a$10$A68nF7IL7RwGw5eQTV2wJ.jmkU9W.HdiLFISfAljIA6Xli8Z.GPAK','金田','彩乃','カネダ','アヤノ','2016-03-18 03:14:28.358723','2016-03-18 03:14:28.358723');
INSERT INTO `customers` VALUES(261,'sayuri00.123@w5.dion.ne.jp','sayuri00.123@w5.dion.ne.jp','$2a$10$bptwjWMCF0W6FbFAWcJOleJVrs1.kPY3t8a9Uss0E19pIWIcnfJKW','和田','小百合','ワダ','サユリ','2016-03-18 03:17:39.857228','2016-03-18 03:17:39.857228');
INSERT INTO `customers` VALUES(262,'mayuteru@yahoo.co.jp','mayuteru@yahoo.co.jp','$2a$10$ievR/t7gqZFWDifeg0o41..6vOLP39naoM7xg9bVMWDAvk38V6PBC','立川','真由美','タチカワ','マユミ','2016-03-18 03:33:24.548246','2016-03-18 03:33:24.548246');
INSERT INTO `customers` VALUES(263,'yukotajima0624@gmail.com','yukotajima0624@gmail.com','$2a$10$GJEdkWjrQk1a6YXGc.vnFuByn2n4e9VYRg5z39WNYIGk0b5WXchRu','田島','優子','タジマ','ユウコ','2016-03-18 04:10:22.222228','2016-03-18 04:10:22.222228');
INSERT INTO `customers` VALUES(264,'naoko_crescent@yahoo.co.jp','naoko_crescent@yahoo.co.jp','$2a$10$fuZbZhXVv7kyg/0tubThqeUFkmkjc8UuPHzYGH1..60PTrQcyxnCi','滑川','直子','ナメカワ','ナオコ','2016-03-18 04:15:47.150314','2016-03-18 04:15:47.150314');
INSERT INTO `customers` VALUES(265,'gonta.chamu.0410@gmail.com','gonta.chamu.0410@gmail.com','$2a$10$p8VnNRNmwiJnWqBlGjTkW.ITTWabOgcdz/xiWaOcxrB.v3i93itgC','齋藤','瞳','サイトウ','ヒトミ','2016-03-18 04:21:24.080484','2016-03-18 04:21:24.080484');
INSERT INTO `customers` VALUES(266,'yuki.sgn1129@gmail.com','yuki.sgn1129@gmail.com','$2a$10$h5uZWcFudmpY614VdquZK.GviNilw0S3/rp8tweuEGX16Xr4xSHQO','重野','友希','シゲノ','ユキ','2016-03-18 05:11:16.028030','2016-03-18 05:11:16.028030');
INSERT INTO `customers` VALUES(267,'apon37@icloud.com','apon37@icloud.com','$2a$10$21mlhLZHOnfHYyOnOQEVD.20FCNK/rzRzZkk/n8L3l9uf5siSlec2','小林','敦子','コバヤシ','アツコ','2016-03-18 05:39:12.847374','2016-03-18 05:39:12.847374');
INSERT INTO `customers` VALUES(268,'ym_kr.stwi-h_delo-e.f_ev-r2@docomo.ne.jp','ym_kr.stwi-h_delo-e.f_ev-r2@docomo.ne.jp','$2a$10$Vrt9jmujiItdiKyevnyLXuWWceJlAVUCVQcATWGJg8kF2Tfw.WJa2','渡辺','真里','ワタナベ','マリ','2016-03-18 05:51:15.233406','2016-03-18 05:51:15.233406');
INSERT INTO `customers` VALUES(269,'makkin@sembl.jp','makkin@sembl.jp','$2a$10$PGT4uOBDQ6GSjkXVmuR3Vu1Zvb7VSUe4X02jfyQpur2L8x4U4vknm','槙尾','真紀','マキオ','マキ','2016-03-18 07:11:51.529597','2016-03-18 07:11:51.529597');
INSERT INTO `customers` VALUES(270,'shinobu.souda@gmail.com','shinobu.souda@gmail.com','$2a$10$R09CU3YRzFUkFtUjxAEooexmNTnaS30e2XVyZ.h4ZGDR5cyrGGJda','宗田','しのぶ','ソウダ','シノブ','2016-03-18 07:24:57.186340','2016-03-18 07:24:57.186340');
INSERT INTO `customers` VALUES(271,'akari.yokoi@gmail.com','akari.yokoi@gmail.com','$2a$10$2XNsYPelrUhkCy3Oxu.Wwu43qESagv4dpQD42pkcJp1Uk4d1XJm8e','横井','朱里','ヨコイ','アカリ','2016-03-18 07:33:43.212800','2016-03-18 07:33:43.212800');
INSERT INTO `customers` VALUES(272,'y-aihara-ohnuma@softbank.ne.jp','y-aihara-ohnuma@softbank.ne.jp','$2a$10$SyJR7XpevcWuz/1bwypEr.0IRqGkPKd32aU6J8BfzMAFk2HqM585W','大沼','よしえ','オオヌマ','ヨシエ','2016-03-18 07:50:05.084003','2016-03-18 07:50:05.084003');
INSERT INTO `customers` VALUES(273,'j.beauty.1009@gmail.com','j.beauty.1009@gmail.com','$2a$10$/zgO7gT043YBFgZ8w6CuouM2TkIh4POudEi09KmpFRajZCmtnfiEm','田中','淳子','タナカ','ジュンコ','2016-03-18 07:56:48.055258','2016-03-18 07:56:48.055258');
INSERT INTO `customers` VALUES(274,'ktmlove1125@gmail.com','ktmlove1125@gmail.com','$2a$10$IWqKzgTNs7CcKeJ3zCiYAeJW7DHD.NRhAbeG9zNjNL6xp6PaEzT2e','岸','悠圭','キシ','ユカ','2016-03-18 08:06:18.017489','2016-03-18 08:06:18.017489');
INSERT INTO `customers` VALUES(275,'ringotomikan1014@yahoo.co.jp','ringotomikan1014@yahoo.co.jp','$2a$10$.h6YiowZOc.eoAxx.APBVe2pKoOjeHdkBV1ug8KMjHsO3ejEGUD5G','中山','めぐみ','ナカヤマ','メグミ','2016-03-18 08:26:01.708630','2016-03-18 08:26:01.708630');
INSERT INTO `customers` VALUES(276,'nakama@happytown.ocn.ne.jp','nakama@happytown.ocn.ne.jp','$2a$10$ScSfZwlqY9F7w9UcOoW8juIr3prEfpNRZUDMK2.Kgk21Lb4DH9gbS','中摩','孝江','ナカマ','タカエ','2016-03-18 08:57:50.773828','2016-03-18 08:57:50.773828');
INSERT INTO `customers` VALUES(277,'yukoihaya@i.softbank.jp','yukoihaya@i.softbank.jp','$2a$10$KHEdNtcyzIsyC1Dwe95YCeEetAG0ZuBleZPTLARkK.rb3YZCEv2j2','井早','優子','イハヤ','ユウコ','2016-03-18 09:28:26.224328','2016-03-18 09:28:26.224328');
INSERT INTO `customers` VALUES(278,'sayaka511@msn.com','sayaka511@msn.com','$2a$10$aImDL/Q/Eu/f.zv0JzHuYubi91V8yfJlTzubz.imQSGPFUNpbSOAy','森','さやか','モリ','サヤカ','2016-03-18 10:38:14.735311','2016-03-18 10:38:14.735311');
INSERT INTO `customers` VALUES(279,'akayas2007@gmail.com','akayas2007@gmail.com','$2a$10$smg/ABVRAlMSnIp4GNY9ZOat7m01qTKl47WREXnJjHBZCw.g5v.j6','森','さやか','モリ','サヤカ','2016-03-18 10:41:42.476421','2016-03-18 10:41:42.476421');
INSERT INTO `customers` VALUES(280,'izumi-1205@softbank.ne.jp','izumi-1205@softbank.ne.jp','$2a$10$zPUEV9du1N.sFqgCg25E3.zj7Pnp3ArP7vYNiyjGbP9QvT.farUx.','武田','いづみ','タケダ','イヅミ','2016-03-18 10:47:58.168899','2016-03-18 10:47:58.168899');
INSERT INTO `customers` VALUES(281,'nnkttmk@yahoo.co.jp','nnkttmk@yahoo.co.jp','$2a$10$MTJ4XWyCxhmjS8o/PDpSK.mEqtaCsvSiPMJpXqNd9qRWMEk/.uwri','金井','智子','カナイ','トモコ','2016-03-18 11:02:29.536880','2016-03-18 11:02:29.536880');
INSERT INTO `customers` VALUES(282,'nozo@cream.plala.or.jp','nozo@cream.plala.or.jp','$2a$10$wsoD.eOzP3SpsdrRk2Xz.erlbhtf5ryFYTXzPhuaR9NF7uO1eZlGC','名畑','のぞみ','ナバタ','ノゾミ','2016-03-18 11:19:18.364100','2016-03-18 11:19:18.364100');
INSERT INTO `customers` VALUES(283,'pupu_made@yahoo.co.jp','pupu_made@yahoo.co.jp','$2a$10$Ug0GFhKo8ZCAOU1vycVel.Q3LF98P1pIdg9cckofpuImt1fOYC6a.','市川','アカネ','イチカワ','アカネ','2016-03-18 12:02:09.530261','2016-03-18 12:02:09.530261');
INSERT INTO `customers` VALUES(284,'y.manmi-skrzk@hotmail.co.jp','y.manmi-skrzk@hotmail.co.jp','$2a$10$LO5OJ4QRSSeCN4jk4EjZAOrvqA87ADjPyqrhC907tGDac31OL342y','山口','まゆみ','ヤマグチ','マユミ','2016-03-18 12:37:27.301884','2016-03-18 12:37:27.301884');
INSERT INTO `customers` VALUES(285,'gushimaru@yahoo.co.jp','gushimaru@yahoo.co.jp','$2a$10$QATjPkDaGqlF4lakrnhNheG11WpvfEFGkJHhKLyojj6c/1fw8p7mi','具島','ゆみ','グシマ','ユミ','2016-03-18 13:11:33.717073','2016-03-18 13:11:33.717073');
INSERT INTO `customers` VALUES(286,'onlysachi@me.com','onlysachi@me.com','$2a$10$HsCErsCzi7pjmKk1CWgLweJtSnHJ1F1wE0Cj8jXHOLLtXof6SWgnC','安田','幸子','ヤスダ','サチコ','2016-03-18 15:45:10.992852','2016-03-18 15:45:10.992852');
INSERT INTO `customers` VALUES(287,'eculiptus@gmail.com','eculiptus@gmail.com','$2a$10$E6HIzuJsPFDXpMI6BCuhO.vqvE.ShjP1CfvGOBH6sUbv.GgIur4t.','北原','千絵','キタハラ','チエ','2016-03-18 17:50:21.616763','2016-03-18 17:50:21.616763');
INSERT INTO `customers` VALUES(288,'taro_aberu@yahoo.co.jp','taro_aberu@yahoo.co.jp','$2a$10$nWPrLfnU0Ig.T9N91lRrGeaHvFgSSU80jOrXzGmklbk0RWZneSjHS','福澤','啓子','フクザワ','ケイコ','2016-03-19 00:15:52.212695','2016-03-19 00:15:52.212695');
INSERT INTO `customers` VALUES(289,'fujiyama919@icloud.com','fujiyama919@icloud.com','$2a$10$H79rfukKJQZMtCFj.wbuhe7k/iEvkqH7FKlDb2L4qn4zPDTWrxV0q','佐藤','富士雄','サトウ','フジオ','2016-03-19 02:10:03.821251','2016-03-19 02:10:03.821251');
INSERT INTO `customers` VALUES(290,'akikokurata0320@gmail.com','akikokurata0320@gmail.com','$2a$10$TNdegjEROuYBj7l4M8VsUONcosKDwffABqv.rXlrcuSAp71pEpRWi','倉田','晃子','クラタ','アキコ','2016-03-19 02:42:11.433778','2016-03-19 02:42:11.433778');
INSERT INTO `customers` VALUES(291,'no1federer@livemail.tw','no1federer@livemail.tw','$2a$10$M.rIx6bs9hQg3Xg5eMjnG.bHzu9B8WjUjxYC78huVcOwzgKVvwabm','廖','婉婷','廖','婉婷','2016-03-19 05:50:31.342418','2016-03-19 05:50:31.342418');
INSERT INTO `customers` VALUES(292,'m_m.chisato.takahashi@docomo.ne.jp','m_m.chisato.takahashi@docomo.ne.jp','$2a$10$es9FUzQdOS05o2MW8NJmiePEwKnljA2qU4p0L1Cd7OfbFIC0iB/oK','高橋','千智','タカハシ','チサト','2016-03-19 07:35:58.766807','2016-03-19 07:35:58.766807');
INSERT INTO `customers` VALUES(293,'21diamondsunao@gmail.com','21diamondsunao@gmail.com','$2a$10$qmwQ1xRpVBUAQpR5DiZCVeXNMcyScVzTXKtnhR.9DyvUMmKjisjti','松原','直美','マツバラ','ナオミ','2016-03-19 07:46:59.874644','2016-03-19 07:46:59.874644');
INSERT INTO `customers` VALUES(294,'eriko-no-mail.8.18@i.softbank.jp','eriko-no-mail.8.18@i.softbank.jp','$2a$10$TVp3xCDBFm.tTqS.qm7le.Ii5KGGv6bXvhTEPFyQJMqpprtpGYcbq','山内','絵里子','ヤマノウチ','エリコ','2016-03-19 09:59:20.182094','2016-03-19 09:59:20.182094');
INSERT INTO `customers` VALUES(295,'saya.100pt@gmail.com','saya.100pt@gmail.com','$2a$10$XSzuE.bmW24W.OHb.E6J2OEulEYQS8LBlXlwjtunOr88dFm7NCX6O','佐藤','早也佳','サトウ','サヤカ','2016-03-20 02:19:12.378928','2016-03-20 02:19:12.378928');
INSERT INTO `customers` VALUES(296,'miare2006@gmail.com','miare2006@gmail.com','$2a$10$74k6wFKUbCeWaXzdG0w3TuIq8P/1HEft.RKT9X3N1YVhi9eFhM6Ui','村松','美紗登','ムラマツ','ミサト','2016-03-20 10:36:39.890269','2016-03-20 10:36:39.890269');
INSERT INTO `customers` VALUES(297,'tadaooda@yahoo.co.jp','tadaooda@yahoo.co.jp','$2a$10$dcZ10SHBnWT8nX4hTvgjbOs.1qnSXZV.X.mOXwASgRpDxN5pxJ1Pe','小田','忠雄','オダ','タダオ','2016-03-25 00:54:43.312242','2016-03-25 00:54:43.312242');
INSERT INTO `customers` VALUES(298,'horitomo200221@gmail.com','horitomo200221@gmail.com','$2a$10$rAoq2ZRUwFgpvxGCEkv2Xump36unO88u3WjCc0FpRIhzlVvMVJ9s6','堀','智子','ホリ','トモコ','2016-03-25 14:54:32.012577','2016-03-25 14:54:32.012577');
INSERT INTO `customers` VALUES(299,'aitsun0701@hotmail.com','aitsun0701@hotmail.com','$2a$10$DHF0Z7i.Aiaod26y0bi7geq7E6OeSxibCYS0HrmCG0abBG/j/QWzq','佐藤','愛','サトウ','アイ','2016-03-27 01:48:44.371268','2016-03-27 01:48:44.371268');
INSERT INTO `customers` VALUES(300,'sudadon@gmail.com','sudadon@gmail.com','$2a$10$DghrVRWQe1MYif4bw5n2NePooInOjOqvDkQ0/.daNiWf2PLH2jn8C','宮本','貞雄','ミヤモト','サダオ','2016-03-27 02:32:36.165081','2016-03-27 02:32:36.165081');
INSERT INTO `customers` VALUES(301,'megaminoru@gmail.com','megaminoru@gmail.com','$2a$10$fCmiDzrSmrAO7TH9wrt1tukEZqNK.kCQ7co/9N366GSz/uSF/iipy','わたなべ','めぐみ','ワタナベ','メグミ','2016-03-27 20:48:38.732669','2016-03-27 20:48:38.732669');
INSERT INTO `customers` VALUES(302,'polygon_016@homtail.co.jp','polygon_016@homtail.co.jp','$2a$10$wrHwMPm1PscaZF/2LwMiY.3WTvcWPjjFYN0cSoH6FMRxAj171U.NK','秦','麻理絵','ハタ','マリエ','2016-03-28 00:36:18.042793','2016-03-28 00:36:18.042793');
INSERT INTO `customers` VALUES(303,'vp_l_kyoko_ma@hotmail.com','vp_l_kyoko_ma@hotmail.com','$2a$10$ozi6BMd/R3vz3R6zwSdGFeSPJfazJgHY299c/V3zd.xDCySpqFJzy','松本','教子','マツモト','キョウコ','2016-03-28 05:14:42.224738','2016-03-28 05:14:42.224738');
INSERT INTO `customers` VALUES(304,'iscat2007@yahoo.co.jp','iscat2007@yahoo.co.jp','$2a$10$hHAB/jWPsfvjeVb6I8y8ce5spQhkJob49GnrFKgR8JgiIIuJ2t4C6','辻','ミカ','ツジ','ミカ','2016-03-28 10:22:33.883171','2016-03-28 10:22:33.883171');
INSERT INTO `customers` VALUES(305,'ketsume-m.and-team.b10@docomo.ne.jp','ketsume-m.and-team.b10@docomo.ne.jp','$2a$10$VnYRJpkXkNWBxcDgd8KjCue4CZ.L0kFy/kuP9u1mIzKneBNHbfXbO','山口','真由美','ヤマグチ','マユミ','2016-03-28 11:58:54.982024','2016-03-28 11:58:54.982024');
INSERT INTO `customers` VALUES(306,'phgupnmnhf@i.softbank.jp','phgupnmnhf@i.softbank.jp','$2a$10$Ou3ew34oIcgWj4d9l65ZtOEqliFGa3R7Cf29NN/UW7Q1uzTOsHfNW','林','久美子','ハヤシ','クミコ','2016-03-28 13:18:47.226551','2016-03-28 13:18:47.226551');
INSERT INTO `customers` VALUES(307,'musubee14@gmail.com','musubee14@gmail.com','$2a$10$s.s5iEid3BJX2jYIt1mT7eAjaP3HIP/nRPp8vR0sxw8WVJ9hhAnjm','齋藤','明美','サイトウ','アケミ','2016-03-30 01:55:59.989902','2016-03-30 01:55:59.989902');
INSERT INTO `customers` VALUES(309,'sarihayakawa@gmail.com','sarihayakawa@gmail.com','$2a$10$Nta7Bf7yS7zzGFXzDtv2HuNJXRNHctiaxOdIOVi2mPbcYlnjwiP9C','野口','沙里','ノグチ','サリ','2016-03-31 10:57:47.540643','2016-03-31 10:57:47.540643');
INSERT INTO `customers` VALUES(310,'supernova2029@gmail.com','supernova2029@gmail.com','$2a$10$iLaGgDFemCeZ6BHUFcvbCeUkgGj960FYLyh9QyMkSqE022dT1ZwDC','片岡','まゆみ','カタオカ','マユミ','2016-04-01 22:05:11.615993','2016-04-01 22:05:11.615993');
INSERT INTO `customers` VALUES(311,'ibsid1018@yahoo.co.jp','ibsid1018@yahoo.co.jp','$2a$10$Os7hBXzhRi0v09ekOQmzYuHAhU1bEJRKpQ8eNEBazwzyKptwHzIeG','森谷','妙子','モリヤ','タエコ','2016-04-01 22:59:07.091133','2016-04-01 22:59:07.091133');
INSERT INTO `customers` VALUES(312,'ai-fa10611031208tnm@docomo.ne.jp','ai-fa10611031208tnm@docomo.ne.jp','$2a$10$aQuNMB/ROPRerSLC3hhWNuu.Ba6syOJsvi5rxfwRYPEMArQVjP5sa','相澤','早紀','アイザワ','サキ','2016-04-02 01:01:57.240697','2016-04-02 01:01:57.240697');
INSERT INTO `customers` VALUES(313,'kumiko.fujimoto@gmail.com','kumiko.fujimoto@gmail.com','$2a$10$RHhl1pO1CL8cqI8QapVJ1e2WVY1iLpDQC1yItZ2536Nyg5k.pnmF6','藤本','久美子','フジモト','クミコ','2016-04-02 03:57:26.945558','2016-04-02 03:57:26.945558');
INSERT INTO `customers` VALUES(314,'marinakamura619@gmail.com','marinakamura619@gmail.com','$2a$10$W16FcCtdK7q1CC0qnKcWLO43uswm0rsI.fGf3iAmEKiMxzw.W2wWK','中村','真理','ナカムラ','マリ','2016-04-02 10:50:14.115398','2016-04-02 10:50:14.115398');
INSERT INTO `customers` VALUES(315,'chiiiie1015@i.softbank.jp','chiiiie1015@i.softbank.jp','$2a$10$B92FxrQoUf2WD5yjsQ0kZeAO4bg4ivYdC3ra60XrKYiZiMjVhdKa6','伊藤','千恵','イトウ','チエ','2016-04-02 11:21:06.272784','2016-04-02 11:21:06.272784');
INSERT INTO `customers` VALUES(316,'h-nishio@oizumi.ne.jp','h-nishio@oizumi.ne.jp','$2a$10$DnczC3/IPkdhftSta2/aw.RTyR12QA32cCtWcybhOvio4BK0EqWZS','西尾','元','ニシオ','ハジメ','2016-04-02 23:42:02.677737','2016-04-02 23:42:02.677737');
INSERT INTO `customers` VALUES(317,'y.kaibuki02@docomo.ne.jp','y.kaibuki02@docomo.ne.jp','$2a$10$qwh9UadCjt9pxpB/GnNgSOcB5rAOgS7ViwQuHnjaxrrBC0AzqUkOu','貝吹','行則','カイブキ','ユキノリ','2016-04-03 06:28:55.376589','2016-04-03 06:28:55.376589');
INSERT INTO `customers` VALUES(318,'happybeeing2015@gmail.com','happybeeing2015@gmail.com','$2a$10$GoCrXldBotKfm9Qv3nRC8.L/0BfQlIjUEioCmewiE1Um9wTjZPqpi','伊藤','輝幸','イトウ','テルユキ','2016-04-03 09:19:18.318320','2016-04-03 09:19:18.318320');
INSERT INTO `customers` VALUES(319,'masasitou@yahoo.co.jp','masasitou@yahoo.co.jp','$2a$10$1PZ3p0Qy1vBfm/Jv02u97etrqqjnD1AXyK5YRnwYcIq6H3rNp5BI.','伊藤','雅史','イトウ','マサシ','2016-04-03 10:07:19.387663','2016-04-03 10:07:19.387663');
INSERT INTO `customers` VALUES(320,'Info@asy-next.com','info@asy-next.com','$2a$10$mblRBdgDigpM3cFgFwoVkOOgHK2lDYWOWLDg3fPdWPYbg6dYCXxxy','芝原','一美','シバハラ','ヒトミ','2016-04-04 05:11:36.914602','2016-04-04 05:11:36.914602');
INSERT INTO `customers` VALUES(321,'mamio.ra.toy@gmail.com','mamio.ra.toy@gmail.com','$2a$10$X7Hc13wGTkstTcnnKNweHudA6C3VaZzkjkskHhOTU5y6aWrFuCAXa','服部','真実','ハットリ','マミ','2016-04-04 12:35:01.881816','2016-04-04 12:35:01.881816');
INSERT INTO `customers` VALUES(322,'evehitomi1224@yahoo.co.jp','evehitomi1224@yahoo.co.jp','$2a$10$0afUt1N8H8R.eTBWX3j7/u8yLlfmSUVRI.yoWZARt5fbGQEWVwDjO','ないとう','ひとみ','ナイトウ','ヒトミ','2016-04-04 13:57:33.522976','2016-04-04 13:57:33.522976');
INSERT INTO `customers` VALUES(324,'masaki87saku@gmail.com','masaki87saku@gmail.com','$2a$10$a2fnRggx94pMTQjMoUWX6OksP8EZ4/CkB1tUa/udo8cNrjpjJeuoq','櫻井','正喜','サクライ','マサキ','2016-04-05 08:53:43.176427','2016-04-05 08:53:43.176427');
INSERT INTO `customers` VALUES(325,'happy-g.sy-3_3-tm@docomo.ne.jp','happy-g.sy-3_3-tm@docomo.ne.jp','$2a$10$ET6BW4jqC54VBp2wguIugOry.8990UA/rETMs13xDD0yPWWsgwXTK','角田','さゆり','ツノダサユリ','サユリ','2016-04-05 09:11:50.133597','2016-04-05 09:11:50.133597');
INSERT INTO `customers` VALUES(326,'yu37mi@hotmail.com','yu37mi@hotmail.com','$2a$10$yG1Mmgz5/.qIn5M4C5mSkOs9bV3CYsfM9/KqanAnOr3i3XRhcaQu6','香川','裕美','カガワ','ユミ','2016-04-05 09:21:24.061289','2016-04-05 09:21:24.061289');
INSERT INTO `customers` VALUES(327,'momonapu@me.com','momonapu@me.com','$2a$10$H2GY5c.AOmdhtN7OBXTnauD.jnU8HEmkOVfSOqklXNrkBAGYt6f66','平井','理恵','ヒライ','リエ','2016-04-05 09:36:48.019341','2016-04-05 09:36:48.019341');
INSERT INTO `customers` VALUES(328,'ri417ff@gmail.com','ri417ff@gmail.com','$2a$10$V1mAtM6At48CQD9mWYHVs.0/3nyvFFjRP9zDjFVfGJaj5i9BdQnrK','高橋','里枝','タカハシ','リエ','2016-04-05 11:41:31.147837','2016-04-05 11:41:31.147837');
INSERT INTO `customers` VALUES(329,'mayoka.kanada@gmail.com','mayoka.kanada@gmail.com','$2a$10$wF/bDRkaaLYlf0LyyFRuo.K2RkLnsAehXUcmcHIDrAam2T1neIc9C','松尾','万葉香','マツオ','マヨカ','2016-04-05 11:53:02.037208','2016-04-05 11:53:02.037208');
INSERT INTO `customers` VALUES(331,'nicokabu@outlook.com','nicokabu@outlook.com','$2a$10$o8ruWxAw4Laa5vSyFk/SwOQXV8lMQZphLxHVN6w1JrXprNePDSqeS','吉田','澄江','ヨシダ','スミエ','2016-04-05 12:45:18.755686','2016-04-05 12:45:18.755686');
INSERT INTO `customers` VALUES(332,'yumico.sakai@gmail.com','yumico.sakai@gmail.com','$2a$10$g9E8S4XOH8ql51eVCDfm/.ZzBBHf8HUSFXG7mYTs0CrJZM41bLxqe','坂井','ゆみ子','サカイ','ユミコ','2016-04-05 12:50:09.339182','2016-04-05 12:50:09.339182');
INSERT INTO `customers` VALUES(333,'kum1023ha@docomo.ne.jp','kum1023ha@docomo.ne.jp','$2a$10$zmhVWbGEC3YUM8tETEcJgOY.yLdFY3Ae3mui1kZJ/d3PSg2gTv3Yy','碇','久美子','イカリ','クミコ','2016-04-05 13:25:34.816813','2016-04-05 13:25:34.816813');
INSERT INTO `customers` VALUES(334,'chenevofxwgd@docomo.ne.jp','chenevofxwgd@docomo.ne.jp','$2a$10$vKbZ5UmOLUnkIox4lYSygex/c4zyT./ZVKtwaq6HcpqBPtbrVz9My','阿部','公昭','アベ','マサアキ','2016-04-05 13:50:27.151098','2016-04-05 13:50:27.151098');
INSERT INTO `customers` VALUES(335,'worp-suru@i.softbank.jp','worp-suru@i.softbank.jp','$2a$10$Awbc.SZJREEUNUSDBctRV.x9Ez6t7DYdKpyTnHnUdehVHGYP0ZxRe','山下','哲史','ヤマシタ','サトシ','2016-04-06 00:20:12.458934','2016-04-06 00:20:12.458934');
INSERT INTO `customers` VALUES(336,'aromaan@icloud.com','aromaan@icloud.com','$2a$10$2pSXQKq8nWTT5onuegcpweLRsEjpIorN79SsrM7ojv4synXuy30WS','篠原','祐子','シノハラ','ユウコ','2016-04-06 00:49:10.138327','2016-04-06 00:49:10.138327');
INSERT INTO `customers` VALUES(337,'xijgx6xhx@i.softbank.jp','xijgx6xhx@i.softbank.jp','$2a$10$AW./haUjjyh4Tn1qLd1tBOIRJ4xz4ExHRWssUYc.V3jnUZ7zYjxWC','向井','雅津葉','ムカイ','カズハ','2016-04-06 01:28:13.355277','2016-04-06 01:28:13.355277');
INSERT INTO `customers` VALUES(338,'kiyokiyokiyo331.10061115@ezweb.ne.jp','kiyokiyokiyo331.10061115@ezweb.ne.jp','$2a$10$/A.iKkHWSEj.srL.eyKA9.4w1/u/JkLxEF8WIJIaBUUKuXHBeimdy','早坂','紀代美','ハヤサカ','キヨミ','2016-04-06 01:40:25.069955','2016-04-06 01:40:25.069955');
INSERT INTO `customers` VALUES(339,'yokotan0307@gmail.com','yokotan0307@gmail.com','$2a$10$hGcdkParVzKrQimgHtuMzOt/7tBt46/ykdcZOClgq6wcyPjEkHIrm','竹内','洋子','タケウチ','ヨウコ','2016-04-06 02:50:29.809189','2016-04-06 02:50:29.809189');
INSERT INTO `customers` VALUES(340,'pecopekox6-_-9xjemsk@softbank.ne.jp','pecopekox6-_-9xjemsk@softbank.ne.jp','$2a$10$v2YzkFnPH4uCYGOUWHRw7eunyBQwGqNpMUB5.uAoW3U3Sez5G/wEG','野田','靖子','ノダ','ヤスコ','2016-04-06 02:58:05.973266','2016-04-06 02:58:05.973266');
INSERT INTO `customers` VALUES(341,'higop2000@yahoo.co.jp','higop2000@yahoo.co.jp','$2a$10$vlIoEOgV9oG9p/mLAUOAoOb3AVEJUOnFph8XwKhSA4ifKLdwRKokC','肥後','総陽','ヒゴ','フサヨ','2016-04-06 03:45:56.920238','2016-04-06 03:45:56.920238');
INSERT INTO `customers` VALUES(343,'sakiueo@gmail.com','sakiueo@gmail.com','$2a$10$59T8e/Gk8F0O.QR2ynSY6uPNopa9uy8bpM7hyipFRmgwP0HTrHfEO','朝比奈','早希恵','アサヒナ','サキエ','2016-04-06 04:35:19.137734','2016-04-06 04:35:19.137734');
INSERT INTO `customers` VALUES(344,'sadahiro_ueki@ybb.ne.jp','sadahiro_ueki@ybb.ne.jp','$2a$10$Krvh8tp4w2rIpbtUuRLbYuy53bc5yvtDNkduGU5yd54lEmy2cw42y','植木','禎裕','ウエキ','サダヒロ','2016-04-06 04:47:25.262143','2016-04-06 04:47:25.262143');
INSERT INTO `customers` VALUES(345,'hiromos@jcom.zaq.ne.jpaic','hiromos@jcom.zaq.ne.jpaic','$2a$10$eh20f08dCOYMvvjyTDM0WOGhXWQRST/gdJJIQFftFmaDUmZty2XWG','山下','裕美','ヤマシタ','ヒロミ','2016-04-06 04:57:46.008958','2016-04-06 04:57:46.008958');
INSERT INTO `customers` VALUES(346,'fremont.chelsea1113@docomo.ne.jp','fremont.chelsea1113@docomo.ne.jp','$2a$10$tPNNUPWyzg1L8l.OkDRBr.WPg/rP.2D8tN7Rm.DDWmyeKT.b63a0q','太田','まさえ','オオタ','マサエ','2016-04-06 05:16:30.795576','2016-04-06 05:16:30.795576');
INSERT INTO `customers` VALUES(347,'tatomae.tsugu.1115@ezweb.ne.jp','tatomae.tsugu.1115@ezweb.ne.jp','$2a$10$WBm74JgxpPEbG2yhqukO.OcuLUUgt5aNkTbzPsJRDraOI69vlzTUq','斉藤','利恵','サイトウ','トシエ','2016-04-06 05:38:46.143785','2016-04-06 05:38:46.143785');
INSERT INTO `customers` VALUES(348,'egurumi63@yahoo.co.jp','egurumi63@yahoo.co.jp','$2a$10$Bm6k3spAknCyGA9jii5e0u/dLxXhZdTLn9W9K/KIQcPI05HKyJJvy','渡邊','留美','ワタナベ','ルミ','2016-04-06 06:01:59.820875','2016-04-06 06:01:59.820875');
INSERT INTO `customers` VALUES(349,'Kiyomatsu_0077@yahoo.co.jp','kiyomatsu_0077@yahoo.co.jp','$2a$10$mH01/EabqX4rO8MRZNQjZupSLVWCKadmFANIoBLZ6.OojL4VluwFC','後藤','司','ゴトウ','ツカサ','2016-04-06 06:13:51.470329','2016-04-06 06:13:51.470329');
INSERT INTO `customers` VALUES(350,'kozu.ryuuharusout@i.softbank.jp','kozu.ryuuharusout@i.softbank.jp','$2a$10$3O.CQN4cbeXwNBzD./mmHOXEMQAYzPo7wR0UZIUx/amwvpwavcVi.','河村','こずえ','カワムラ','コズエ','2016-04-06 07:20:59.683968','2016-04-06 07:20:59.683968');
INSERT INTO `customers` VALUES(351,'eikokusuyama@gmail.com','eikokusuyama@gmail.com','$2a$10$D/McSpEgGU0gXl4E0E9MruFwBTGNOcgI2RX.PvkmHVCJHXrcWv46a','足立','詠子','アダチ','エイコ','2016-04-06 07:24:43.067562','2016-04-06 07:24:43.067562');
INSERT INTO `customers` VALUES(352,'kmdn-grc-mariko@aquarius.zaq.jp','kmdn-grc-mariko@aquarius.zaq.jp','$2a$10$BBah6DurkrpRRqrdlqmSUeIhG7BpE/mrfTpEyG5.a4DWszG5QFMGq','山崎','眞理子','ヤマザキ','真理子','2016-04-06 08:08:37.445298','2016-04-06 08:08:37.445298');
INSERT INTO `customers` VALUES(353,'Kae777@gmail.com','kae777@gmail.com','$2a$10$jGQ1Kla7ozh1Hpwy4vUPDehZGQX/suU7mdw45hdknUWy8F3bTX8BC','羽田','賀恵','ハダ','カエ','2016-04-06 08:28:00.061580','2016-04-06 08:28:00.061580');
INSERT INTO `customers` VALUES(354,'mg416dct11661@gmail.com','mg416dct11661@gmail.com','$2a$10$sZSZvRXzFJ/lbQIWjlfWUOULuCo5k4l4QGOBsWolhOT44yZLWJKoG','井上','加奈子','イノウエ','カナコ','2016-04-06 09:54:50.174465','2016-04-06 09:54:50.174465');
INSERT INTO `customers` VALUES(355,'holly.k.0112@gmail.com','holly.k.0112@gmail.com','$2a$10$9a6Bay1U9Sl5B6QQYNwFd.DHTfSr9nrmmGNxUoHqyw5PtVz5jY6hK','堀江','和代','ホリエ','カズヨ','2016-04-06 10:37:05.906875','2016-04-06 10:37:05.906875');
INSERT INTO `customers` VALUES(356,'miho.ko02150307@gmail.com','miho.ko02150307@gmail.com','$2a$10$RfAENGo2c2beibk65prWduV/yrtuVvx1TX3BLmHeQckom67HpSjkS','髙','美穂','コウ','ミホ','2016-04-06 11:11:31.007375','2016-04-06 11:11:31.007375');
INSERT INTO `customers` VALUES(357,'satomi.kawashima@gmail.com','satomi.kawashima@gmail.com','$2a$10$acAPNasASQEgDIfQeMpbZemqQsIrc1DmY63vpLtqKJpkPe5I0B/Yy','今井','聡美','イマイ','サトミ','2016-04-06 12:04:06.908514','2016-04-06 12:04:06.908514');
INSERT INTO `customers` VALUES(358,'ultrakazz443@gmail.com','ultrakazz443@gmail.com','$2a$10$h0Qq/PtbSrNgLdyp.N5v.ujXUPhwDwEEFOOZ7wbytiqhTofZ6dOKi','佐藤','利夫','サトウ','トシオ','2016-04-06 12:09:14.954706','2016-04-06 12:09:14.954706');
INSERT INTO `customers` VALUES(359,'anjali.shibuya@gmail.com','anjali.shibuya@gmail.com','$2a$10$vfjW/di6GrI2XU/JTji3EOZ6.QP6yEWhocBRcbbFDvticvFuX5KkG','中村','くみ','ナカムラ','クミ','2016-04-06 12:27:34.147767','2016-04-06 12:27:34.147767');
INSERT INTO `customers` VALUES(360,'yuki.takayama123@gmail.com','yuki.takayama123@gmail.com','$2a$10$WjGYh8NLzOKriApv.iWQHuoQfpyfb.E/O57HKKGuVnPSmv672xiF6','高山','有貴','タカヤマ','ユキ','2016-04-06 12:36:46.761185','2016-04-06 12:36:46.761185');
INSERT INTO `customers` VALUES(361,'akanecocolo@yahoo.co.jp','akanecocolo@yahoo.co.jp','$2a$10$7lz7oLHE8vmAsnyU1MboROLZs.va403gXUzToJpLsYaNciU5neUhq','浦川','あかね','ウラカワ','アカネ','2016-04-06 12:49:22.273881','2016-04-06 12:49:22.273881');
INSERT INTO `customers` VALUES(362,'injc@outlook.com','injc@outlook.com','$2a$10$iofNXHOTFd330N1ZRA4BjOHpOYTRaMEwLGZSEmwqX/Sxrmr30FeBm','天野','秀亮','アマノ','ヒデアキ','2016-04-06 13:03:00.574665','2016-04-06 13:03:00.574665');
INSERT INTO `customers` VALUES(363,'risuandcat@googlemail.com','risuandcat@googlemail.com','$2a$10$.yrFGHCb4wyRvp88GEgCF.YWCdc9aq2iSY3Mtp8NfO1UANUZg5Rl2','堀江','美保子','ホリエ','ミホコ','2016-04-06 14:30:54.234012','2016-04-06 14:30:54.234012');
INSERT INTO `customers` VALUES(364,'mayupopo22@mac.com','mayupopo22@mac.com','$2a$10$c5oeKV4uV/gG0jiCnWeZD.iGy7RpHgYcaxyCGbZBQNdK6PXkz.0PC','平沼','真由美','ヒラヌマ','マユミ','2016-04-06 15:44:35.584114','2016-04-06 15:44:35.584114');
INSERT INTO `customers` VALUES(365,'shinsan_21_sas@yahoo.co.jp','shinsan_21_sas@yahoo.co.jp','$2a$10$rMRpgH7tAMP0zf6VV.wHqest3TQg4BMivSkkin/YnqdBoI0h9Z2Au','加藤','心平','カトウ','シンペイ','2016-04-06 15:47:48.105684','2016-04-06 15:47:48.105684');
INSERT INTO `customers` VALUES(366,'akiluck0608@hmail.com','akiluck0608@hmail.com','$2a$10$/llQjFA6h/95XTbiDLfoneny1f96F.u54Er9I2whxKLrO5x.bH8Fe','鬼澤','聡','オニザワ','アキラ','2016-04-06 22:28:46.051088','2016-04-06 22:28:46.051088');
INSERT INTO `customers` VALUES(367,'hiyo_hiyo_hiyoyo@yahoo.co.jp','hiyo_hiyo_hiyoyo@yahoo.co.jp','$2a$10$ujqSTNMIsgkcfKXoxoBQr.8U9uxlN74DA1ceofWMYvxJ4/adQ.cay','中寿賀','ゆい子','ナカスガ','ユイコ','2016-04-06 23:23:56.223983','2016-04-06 23:23:56.223983');
INSERT INTO `customers` VALUES(368,'emi_fuku_3047@yahoo.co.jp','emi_fuku_3047@yahoo.co.jp','$2a$10$D9Bz.LPuxv6zBJ6yvMW.ZunkHBIEQN/17J3sIG41I7s/KDjMsL2vC','福島','恵未','フクシマ','エミ','2016-04-07 01:57:58.534397','2016-04-07 01:57:58.534397');
INSERT INTO `customers` VALUES(369,'info@organickaemon.com','info@organickaemon.com','$2a$10$f2KGK7uTT56ExrxFQ4WKnuydsuyAHa3YzfE9DSjYcwFIf0iFMhNHe','上原','一徳','ウエハラ','カズノリ','2016-04-07 05:15:29.087282','2016-04-07 05:15:29.087282');
INSERT INTO `customers` VALUES(370,'kaemongakudai@gmail.com','kaemongakudai@gmail.com','$2a$10$jXXy2l8HlwHZZwdbzi/FqeeO6Csi3J1/QMMnWhLo2wo4qQeSqctLS','田村','彰信','タムラ','アキノブ','2016-04-07 05:20:36.334829','2016-04-07 05:20:36.334829');
INSERT INTO `customers` VALUES(371,'noriko6seki@yahoo.co.jp','noriko6seki@yahoo.co.jp','$2a$10$GLYsPaHKDO2yIJSNFhG0seQ71dJGRUiM8CYBOMHCOkjqjE69OncZm','関','紀子','セキ','ノリコ','2016-04-07 06:02:52.222221','2016-04-07 06:02:52.222221');
INSERT INTO `customers` VALUES(372,'hayatas@nifty.com','hayatas@nifty.com','$2a$10$V8vLF27woPSEq25QWq6Toe/IdpkhK0zyiwNulWSPd5Xfjtwbo2gcO','早田','賀津子','ハヤタ','カツコ','2016-04-07 10:59:38.975568','2016-04-07 10:59:38.975568');
INSERT INTO `customers` VALUES(373,'wa-danbo@softbank.ne.jp','wa-danbo@softbank.ne.jp','$2a$10$ictYykie0trAEtnW8M9iCekSfCNv4ZkOMRlOlPrQbhTye11HEuUI2','桜木','真奈','サクラギ','マナ','2016-04-07 14:17:31.615332','2016-04-07 14:17:31.615332');
INSERT INTO `customers` VALUES(374,'o8051435316@gmail.com','o8051435316@gmail.com','$2a$10$htmjXSxGhzDMjwl/kg6oYuk198FQrT1s0zNcZgmJRKhGrHN2gMjPm','高井','由紀子','タカイ','ユキコ','2016-04-07 21:21:10.507059','2016-04-07 21:21:10.507059');
INSERT INTO `customers` VALUES(375,'mihomarumasato@gmail.com','mihomarumasato@gmail.com','$2a$10$Ce12Xuoxsh5ihVMndQWRmO4lt6638jsBv4O/MwMgisoulGJ4Z7eba','伊藤','弥穂','イトウ','ミホ','2016-04-08 05:12:56.778152','2016-04-08 05:12:56.778152');
INSERT INTO `customers` VALUES(376,'soumu@hanshinmetalics.co.jp','soumu@hanshinmetalics.co.jp','$2a$10$YlyU6Tbrj1GUljTYlHTHEuHD11aUOKCIPSfWaRTN4wV9tARvMnReS','河合','俊和','カワイ','トシカズ','2016-04-08 05:29:52.429662','2016-04-08 05:29:52.429662');
INSERT INTO `customers` VALUES(377,'neverend_lovestory-toshi_setu@docomo.ne.jp','neverend_lovestory-toshi_setu@docomo.ne.jp','$2a$10$BP.fk0z2C/FLL7YxVaCbgO0KLhzQb1eCULGDIqkReUhhrjDTxhgEm','河合','俊和','カワイ','トシカズ','2016-04-08 08:47:23.938950','2016-04-08 08:47:23.938950');
INSERT INTO `customers` VALUES(378,'chinamakiko@gmail.com','chinamakiko@gmail.com','$2a$10$v./qjMIf8vM3xZXi1649/evc4cAgIv3.9Dk/RA0w.5J6YmfBELS3i','知名','牧子','チナ','マキコ','2016-04-08 13:05:37.069090','2016-04-08 13:05:37.069090');
INSERT INTO `customers` VALUES(379,'tashimarumiko@gmai.com','tashimarumiko@gmai.com','$2a$10$/0VIPMlfIGaVHbKSWm/Xa.ewjv/Mob8TIohGnJKSP4FasC80rn3sO','田嶋','留美子','タシマ','ルミコ','2016-04-13 04:36:44.129094','2016-04-13 04:36:44.129094');
INSERT INTO `customers` VALUES(380,'chihirosatoschuh@gmail.com','chihirosatoschuh@gmail.com','$2a$10$dyhENYqr.W7iKK2l8O960e7u18j68OI3pRDgtF62DlbqKiq4QtKAK','佐藤','ちひろ','サトウ','チヒロ','2016-04-13 20:56:47.431498','2016-04-13 20:56:47.431498');
INSERT INTO `customers` VALUES(381,'k.mikari.kagami@ezweb.ne.jp','k.mikari.kagami@ezweb.ne.jp','$2a$10$UUppGmq5xaA9yPN3hH5Sn.KOMv3mWaqmbQpKpTN9uvKcguFcqgPK.','加家美','香里','かがみ','かおり','2016-04-16 19:55:32.570821','2016-04-16 19:55:32.570821');
INSERT INTO `customers` VALUES(382,'fuurkawa33@gmail.com','fuurkawa33@gmail.com','$2a$10$G4uQ3QSjVvB8Z38CLeH63OOkt8r6olMoXDFvrWPebhVQme9yq3Kyy','古川','勝也','フルカワ','カツヤ','2016-04-18 20:45:46.429337','2016-04-18 20:45:46.429337');
INSERT INTO `customers` VALUES(383,'fkatsuya33@yhoo.co.jp','fkatsuya33@yhoo.co.jp','$2a$10$SD7QTy99UpQ0.taq3DalYOVbvUGRxakswUBjiUDyF3WyOKHZzfBtS','古川','勝也','フルカワ','カツヤ','2016-04-18 20:48:04.994328','2016-04-18 20:48:04.994328');
INSERT INTO `customers` VALUES(384,'naodai0804@icloud.com','naodai0804@icloud.com','$2a$10$yEn7tG9hejWEIO9fYOseuOpkorLtEN1RyOhGl8WHsYcjQ5gaizVM.','山下','直美','ヤマシタ','ナオミ','2016-04-19 15:30:53.220529','2016-04-19 15:30:53.220529');
INSERT INTO `customers` VALUES(385,'info@cafegreen.net','info@cafegreen.net','$2a$10$Cqa6ukZBDpNp98Gh687gE.usySuydlQe5zWnLoBBlTZDkIlolOp0u','一井','昭良','イチイ','アキラ','2016-04-20 05:15:48.099137','2016-04-20 05:15:48.099137');
INSERT INTO `customers` VALUES(386,'rnxoxory.yy81@softbank.ne.jp','rnxoxory.yy81@softbank.ne.jp','$2a$10$qotobj9AE0zeVHrRvdv1W.TVGIe09vz2CFslrm3g9KLs5dFluTeZS','松下','莉奈','マツシタ','リナ','2016-04-21 10:54:07.227024','2016-04-21 10:54:07.227024');
INSERT INTO `customers` VALUES(387,'watari130088@yahoo.co.jp','watari130088@yahoo.co.jp','$2a$10$g2jz7GHG7K7jeYAcyX5HPuiI1LFOOPSE/fxCvtgfX5A/brbOy71.e','櫻井','海','サクライ','ウミ','2016-04-22 01:16:55.965905','2016-04-22 01:16:55.965905');
INSERT INTO `customers` VALUES(388,'etsuko_m313@icloud.com','etsuko_m313@icloud.com','$2a$10$Xo51stdLnjlKM4QCElMqH.2HgflIk8DsHz4i4gSFonYPNYak3.Dwy','森島','悦子','モリシマ','エツコ','2016-04-22 23:45:16.678708','2016-04-22 23:45:16.678708');
INSERT INTO `customers` VALUES(389,'mcshinok@gmail.com','mcshinok@gmail.com','$2a$10$tMfDw1GyFsFkD6uPgrMDoOw30vxXU1QK3SI3Bwv55RlfMyHmPXw5W','武貞','京子','タケサダ','キョウコ','2016-04-25 14:26:52.269373','2016-04-25 14:26:52.269373');
INSERT INTO `customers` VALUES(390,'musubiyakyoto@gmail.com','musubiyakyoto@gmail.com','$2a$10$begcQMqzbP12GTTJ/CkYGes0ClU3LNFYzocTN9cOy09deKbI5Iw/y','田渕','市之介','タブチ','イチノスケ','2016-04-27 04:23:55.708643','2016-04-27 04:23:55.708643');
INSERT INTO `customers` VALUES(391,'soilfarm@icloud.com','soilfarm@icloud.com','$2a$10$FkLGsqQMSsGDb9kxRfwO2OzhFN51nviIt91KsPWqJMiWw.BUlNNNW','久山','貴央','ヒサヤマ','タカヒロ','2016-04-27 10:01:42.684881','2016-04-27 10:01:42.684881');
INSERT INTO `customers` VALUES(392,'you-me39@i.softbank.jp','you-me39@i.softbank.jp','$2a$10$JPpPaAibyYMDJXtdyAuAZ.H5v4v3PeOvzZTCV5/hwgBjpt1kk3FxO','朝井','由美','アサイ','ユミ','2016-04-28 21:53:55.057220','2016-04-28 21:53:55.057220');
INSERT INTO `customers` VALUES(393,'mst.119@i.softbank.jp','mst.119@i.softbank.jp','$2a$10$nuCGxISaR/gO2QsVxXrwTuyd7WQF4WVVptiBI2XBpyJUiU2TTEZu2','小川','美里','オガワ','ミサト','2016-04-29 02:23:30.546041','2016-04-29 02:23:30.546041');
INSERT INTO `customers` VALUES(394,'musubishokudo@gmail.com','musubishokudo@gmail.com','$2a$10$LDIz5299WKrcWCcCm/gUJ.fTvUuS3pHaCKXoz.5s/toz1A2cTQiKO','近藤','貴水','コンドウ','タカミ','2016-04-29 13:39:31.900370','2016-04-29 13:39:31.900370');
INSERT INTO `customers` VALUES(395,'aib1217@softbank.ne.jp','aib1217@softbank.ne.jp','$2a$10$FshyquERUlCzPCEMhKw5GesmWm1NzvXc.puShij7MJu9L7Nkstp1K','川崎','愛','かわさき','あい','2016-04-30 10:03:10.892730','2016-04-30 10:03:10.892730');
INSERT INTO `customers` VALUES(396,'okurimeku@gmail.com','okurimeku@gmail.com','$2a$10$seCIt/F18r/iePULUGFoTuRnRMSOKlN6M0kJkXFu/efkKvWjv1Fbq','山口','敦央','やまぐち','アツテル','2016-05-02 04:12:38.838484','2016-05-02 04:12:38.838484');
INSERT INTO `customers` VALUES(397,'chan.chan.chanta-02920-@docomo.ne.jp','chan.chan.chanta-02920-@docomo.ne.jp','$2a$10$AqbwrVV5xPPM.eMints0wOIY7d9lsg3LB118jL2d/7O7mcFd1CA66','次田','稚奈','ツギタ','ワカナ','2016-05-04 19:55:40.309307','2016-05-04 19:55:40.309307');
INSERT INTO `customers` VALUES(398,'m_orga329@docomo.ne.jp','m_orga329@docomo.ne.jp','$2a$10$veaVGIRqvO0XuahwZ7fxAeWeBg5OXd7LS6wls.vZxx8xsLwTH6Hz.','成田','美郷','ナリタ','ミサト','2016-05-07 05:09:48.636702','2016-05-07 05:09:48.636702');
INSERT INTO `customers` VALUES(399,'maki.kadohiro@gmail.com','maki.kadohiro@gmail.com','$2a$10$aOnjcCx0Uub3rwl3/bNqgu50y9UIcAqw24x/crOzKxD1PS9n49M1y','門廣','真紀','カドヒロ','マキ','2016-05-09 11:33:37.999791','2016-05-09 11:33:37.999791');
INSERT INTO `customers` VALUES(400,'rui72475288@gmail.com','rui72475288@gmail.com','$2a$10$etNfiMsWxzwXDN61a/qj4Ow/dmwlQZb4ducpmOGhFomyhiAaX410e','中村','真美','ナカムラ','マミ','2016-05-10 15:14:59.775524','2016-05-10 15:14:59.775524');
INSERT INTO `customers` VALUES(401,'ayameg.p.58sdp@gmail.com','ayameg.p.58sdp@gmail.com','$2a$10$3OfayK1xLyJzCWjTeCCSsOVKzX6ftM5/3b0HhHwu6K2KfD8nKQ2O6','中谷','綾恵','ナカタニ','アヤエ','2016-05-11 02:57:20.853701','2016-05-11 02:57:20.853701');
INSERT INTO `customers` VALUES(402,'nariagari3232@gmail.com','nariagari3232@gmail.com','$2a$10$IG3kk55jYPJ.le/s1TO0j.Q5xyfIJvFZ1gHbarSMiyhf2TmWiHnl2','小島',' 哲也','コジマ','テツヤ','2016-05-11 06:49:17.853331','2016-05-11 06:49:17.853331');
INSERT INTO `customers` VALUES(403,'yupige@yahoo.co.jp','yupige@yahoo.co.jp','$2a$10$kiApP.Eh1z/J/RNInLAsrujjy8nK1BHwbYzno9CfiADfgbka/qCOG','高橋','雪枝','タカハシ','ユキエ','2016-05-11 08:58:36.070126','2016-05-11 08:58:36.070126');
INSERT INTO `customers` VALUES(404,'yu-matu.0402@docomo.ne.jp','yu-matu.0402@docomo.ne.jp','$2a$10$z.lexfdfU3x6YQNPYrgE4.B/ZqEv4mlwjRlHuXu2WHvS5yMcIcWHC','大東','友加里','オオヒガシ','ユカリ','2016-05-11 09:09:49.017419','2016-05-11 09:09:49.017419');
INSERT INTO `customers` VALUES(405,'sabrin_012@yahoo.co.jp','sabrin_012@yahoo.co.jp','$2a$10$Wktt7dFWZ4uDv/unG/AP6eHGYinbuSdwPJj8.MRM//U233V1AWINu','谷藤','広子','タニフジ','ヒロコ','2016-05-11 09:38:07.549035','2016-05-11 09:38:07.549035');
INSERT INTO `customers` VALUES(406,'ttomaya@i.softbank.jp','ttomaya@i.softbank.jp','$2a$10$9HVYtIJW3xjjjPEmjNGx0emrl4cHgdkdPCNWhHJTNF/LEuJle8VPS','小林','佳恵','コバヤシ','ヨシエ','2016-05-11 10:08:48.127909','2016-05-11 10:08:48.127909');
INSERT INTO `customers` VALUES(407,'yu_yo_coco@yahoo.co.jp','yu_yo_coco@yahoo.co.jp','$2a$10$yUWnVhcQDNlJLd2nTeUTBOKkwx/wEizL.L.Ah61mtfYiEJAqAvExi','山中','有里','ヤマナカ','ユリ','2016-05-11 10:12:24.919876','2016-05-11 10:12:24.919876');
INSERT INTO `customers` VALUES(408,'rossoamore2000@yahoo.co.jp','rossoamore2000@yahoo.co.jp','$2a$10$38Rg2kbuHVVvizlotZ3PjuazR8A/5jSYd2.MGeXB2IoMvBulaxhOS','山崎','ゆか','ヤマサキ','ユカ','2016-05-11 10:30:44.004622','2016-05-11 10:30:44.004622');
INSERT INTO `customers` VALUES(409,'gorigero@gmail.com','gorigero@gmail.com','$2a$10$nBn5lPP.Vtbt6pV/GsX5x.bPJcqMUJsxBusw8L1Od/mKfJ8eDl1Oy','赤塚','マキ','アカツカ','マイ','2016-05-11 10:32:27.461516','2016-05-11 10:32:27.461516');
INSERT INTO `customers` VALUES(410,'gorigero1818@gmail.com','gorigero1818@gmail.com','$2a$10$82IYX9lbCCWPldEb34.1I.m.9vOKoKUOGLjOu6x1UA/264q4iDIXy','赤塚','マキ','アカツカ','マイ','2016-05-11 10:33:04.503927','2016-05-11 10:33:04.503927');
INSERT INTO `customers` VALUES(411,'shusukeing@gmail.com','shusukeing@gmail.com','$2a$10$V6kJc7jRFaU5muHtlV5NkubOzEUtQFxQ6/YSZD08hyfT/MUfG54Yy','山崎','周亮','ヤマサキ','シュウスケ','2016-05-11 12:40:30.190324','2016-05-11 12:40:30.190324');
INSERT INTO `customers` VALUES(413,'aegfaegf@max.odn.ne.jp','aegfaegf@max.odn.ne.jp','$2a$10$2T.OKre/uDyWlSh3B3MW6eNEq7G3EA80ia6skxJFBaHvGTxE9l3VW','渕上','英治','フチガミ','エイジ','2016-05-11 20:04:26.553418','2016-05-11 20:04:26.553418');
INSERT INTO `customers` VALUES(414,'mw-tm49172023@softbank.ne.jp','mw-tm49172023@softbank.ne.jp','$2a$10$XIUVSHuLz5sD0/aXhveGx.CUGGa.EST5iGkz19cxot3mxa0ez3YeW','向井','朋美','ムカイ','トモミ','2016-05-11 21:10:36.739670','2016-05-11 21:10:36.739670');
INSERT INTO `customers` VALUES(415,'takakako@hcc5.bai.ne.jp','takakako@hcc5.bai.ne.jp','$2a$10$y2ETBkKTizlBoquZYkQkVePC1V9EPiCQ/aSDkJspR7HQqqiGj.M/K','太田','貴子','オオタ','タカコ','2016-05-11 22:41:41.176057','2016-05-11 22:41:41.176057');
INSERT INTO `customers` VALUES(416,'yukino-baron@docomo.ne.jp','yukino-baron@docomo.ne.jp','$2a$10$1P9DUACyWDgd3XH5R.UpmuPRIEkP.Aet10HGBG.nqSA2RIlwxw6Cq','渡邉','千乃','ワタナベ','ユキノ','2016-05-11 23:59:21.046035','2016-05-11 23:59:21.046035');
INSERT INTO `customers` VALUES(417,'kuribou@mbg.nifty.com','kuribou@mbg.nifty.com','$2a$10$4P1iEB288S7ffxgrmdA3du7hTj4oLgrbGrEoBwmx73NNnT2w3RvFG','くりた','ありひろ','クリタ','アリヒロ','2016-05-12 00:59:19.335663','2016-05-12 00:59:19.335663');
INSERT INTO `customers` VALUES(418,'ciaomayumi@gmail.com','ciaomayumi@gmail.com','$2a$10$8cPH7JR/XBA91kKZINddsOwnuNaBt4VPs3.ICQwhoEn1JCVvB7cAO','米谷','真弓','ヨネタニ','マユミ','2016-05-12 01:46:54.465005','2016-05-12 01:46:54.465005');
INSERT INTO `customers` VALUES(419,'127befudge@gmail.com','127befudge@gmail.com','$2a$10$f4OjKN2ECl90kt3/Jp/Kgen8m35TjDAOP3A5Mpd6YcKP0s8zi9UWe','一條','美由紀','イチジョウ','ミユキ','2016-05-12 03:56:31.249791','2016-05-12 03:56:31.249791');
INSERT INTO `customers` VALUES(420,'twinkle-stars.0320@i.softbank.jp','twinkle-stars.0320@i.softbank.jp','$2a$10$vZ5egOJOfztVjLmOBfk2AunYuXk8cJJdDVgJOMlX1wkCWYpYE4YYe','小山','紘子','コヤマ','ヒロコ','2016-05-12 04:22:28.291933','2016-05-12 04:22:28.291933');
INSERT INTO `customers` VALUES(421,'fckf008@kcc.zaq.ne.jp','fckf008@kcc.zaq.ne.jp','$2a$10$Shn8epZdRUigpSwIv5CIW.YFVyvacqxHhczXhS7U7piNJfMHa7ebu','大野','貞枝','オオノ','サダエ','2016-05-12 06:45:44.257495','2016-05-12 06:45:44.257495');
INSERT INTO `customers` VALUES(422,'dfckf008@kcc.zaq.ne.jp','dfckf008@kcc.zaq.ne.jp','$2a$10$uRu6boVEA2XFz.cFV/u15uJmFkf3ZA5kuJeegWYzlxGE.I5dkiJz2','大野','貞枝','オオノ','サダエ','2016-05-12 06:46:16.447323','2016-05-12 06:46:16.447323');
INSERT INTO `customers` VALUES(423,'yuri.morihara@gmail.com','yuri.morihara@gmail.com','$2a$10$EwLmBp5fNOj0On8z9/iEoezHRZaMjujMP60BmlsX/8WuMF8Xu.G7e','西村','百合','ニシムラ','ユリ','2016-05-12 09:32:47.984730','2016-05-12 09:32:47.984730');
INSERT INTO `customers` VALUES(424,'mako520926@hotmail.com','mako520926@hotmail.com','$2a$10$tGqArO6LFWIWJyy5lVeVueZq3Ew0Nm.2aAz/Lo9vveIXkDVsOEKcy','藤井','雅子','フジイ','マサコ','2016-05-12 16:19:49.659434','2016-05-12 16:19:49.659434');
INSERT INTO `customers` VALUES(425,'gintashinbee@gmail.com','gintashinbee@gmail.com','$2a$10$7YAN8tMjjRwi85MR4rg7tuxFb4QJ3smH2k7q0ihV2WzhynJgtXVsi','永井','智和','ナガイ','トモカズ','2016-05-12 22:48:48.030077','2016-05-12 22:48:48.030077');
INSERT INTO `customers` VALUES(426,'pepperpots.mari@gmail.com','pepperpots.mari@gmail.com','$2a$10$OUWVGaFLpzxyWj040ewfeuqxaFMLh2mw37pfCXZ7EG./.75H76dWm','ひらやま','まりえ','ヒラヤマ','マリエ','2016-05-12 23:43:57.206965','2016-05-12 23:43:57.206965');
INSERT INTO `customers` VALUES(428,'bluetora2000@yahoo.co.jp','bluetora2000@yahoo.co.jp','$2a$10$MAlzVD24/m3daCa9wF60Ee9nYJWLtQ1drMDBFy0Hsz0mQGA5SYh5W','本田','友和','ホンダ','トモカズ','2016-05-13 01:05:42.212135','2016-05-13 01:05:42.212135');
INSERT INTO `customers` VALUES(429,'tsujino@soragroup.jp','tsujino@soragroup.jp','$2a$10$PdqvNoy1HCRVondMdmZZGOAFTFP7SoMKSsNn/IGuFq1Cx8zslY4yu','辻野','将之','ツジノ','マサユキ','2016-05-13 02:42:02.926385','2016-05-13 02:42:02.926385');
INSERT INTO `customers` VALUES(430,'tenurohetes@ezweb.ne.jp','tenurohetes@ezweb.ne.jp','$2a$10$hkpNQ4gW8vEdVrFHbw5hTeLtoFLGLbaDa0CyzpC/UQs8BVxDcWtAe','赤坂','英里','アカサカ','エリ','2016-05-13 04:27:29.590719','2016-05-13 04:27:29.590719');
INSERT INTO `customers` VALUES(431,'miyabi0714@i.softbank.jp','miyabi0714@i.softbank.jp','$2a$10$mU4IDtYe2H.qATesdCwXUedDKrAE92fRKDiwLy/BFAoSDubeGUG3e','天野','由美香','アマノ','ユミカ','2016-05-13 08:38:21.872109','2016-05-13 08:38:21.872109');
INSERT INTO `customers` VALUES(432,'tongiriyama@gmail.com','tongiriyama@gmail.com','$2a$10$vC0mgr6KKJaBbE8co1wtPOpb2kQaE4gqVU3U/BnpU5Gmc4xZbY5eK','小野','浩典','オノ','ヒロノリ','2016-05-13 13:14:42.989919','2016-05-13 13:14:42.989919');
INSERT INTO `customers` VALUES(433,'wilinao@icloud.com','wilinao@icloud.com','$2a$10$DOUSH2mzR9D9ud0UDZMKgupAE.2Be/rdiEzC4.U8R7BDifNyxn122','安永','直子','ヤスナガ','ナオコ','2016-05-13 16:03:21.161715','2016-05-13 16:03:21.161715');
INSERT INTO `customers` VALUES(434,'hananiponta@yahoo.co.jp','hananiponta@yahoo.co.jp','$2a$10$DKHLRYdO/yaP9UqE7DEIT.z1FdDzKccfEzeiqmB5JA4GwJoup27Iu','都谷','大輔','ツタニ','だ','2016-05-13 16:07:06.919017','2016-05-13 16:07:06.919017');
INSERT INTO `customers` VALUES(435,'hal220guy514@gmail.com','hal220guy514@gmail.com','$2a$10$w2J4hGQnc8EbimuKON0iTepB/uclXqNRybOgu.u/DVQSh1ceaZKf.','廣橋','久美子','ヒロハシ','クミコ','2016-05-14 01:29:33.053768','2016-05-14 01:29:33.053768');
INSERT INTO `customers` VALUES(436,'recognizesunshine@gmail.com','recognizesunshine@gmail.com','$2a$10$OQQI6Wiyal9NZ5HrRZO49.u83zqoV2k9lwzc87XE43VwminvMe0NC','江藤','憲史','エトウ','ケンジ','2016-05-14 03:39:27.976596','2016-05-14 03:39:27.976596');
INSERT INTO `customers` VALUES(437,'kokoko@shishi.com','kokoko@shishi.com','$2a$10$Lt.YXeYEG3m3fXL6Pf05turYjLFCRLfYk1IXWmj0nZs2q3Ldt/jZi','高橋','秀彰','タカハシ','ヒデアキ','2016-05-14 08:05:34.742774','2016-05-14 08:05:34.742774');
INSERT INTO `customers` VALUES(438,'grisgris1525@gmail.com','grisgris1525@gmail.com','$2a$10$Tmy.uVla5IyrDS6Zmz.SdeB5OLOrJVs7xsw1SOKJpkO/fykE0FOHm','井澤','有紀子','イザワ','ユキコ','2016-05-14 16:18:31.825368','2016-05-14 16:18:31.825368');
INSERT INTO `customers` VALUES(439,'yukiko@angelicstones.com','yukiko@angelicstones.com','$2a$10$yAq7fs/E6Oqo//p1GoniA.GIWJeMTiwEYjzNw1dztIVohR7oQ0UcG','永光','幸子','ナガミツ','ユキコ','2016-05-15 02:41:21.874849','2016-05-15 02:41:21.874849');
INSERT INTO `customers` VALUES(440,'tomopain@yahoo.co.jp','tomopain@yahoo.co.jp','$2a$10$iSATjQPqzgUk1SLozqOIbeCUHQDS7QTyHOzyuyNpbtUUO/usBO9Lm','田中','朋子','タナカ','トモコ','2016-05-15 11:43:17.993500','2016-05-15 11:43:17.993500');
INSERT INTO `customers` VALUES(441,'atelier.marron@gmail.com','atelier.marron@gmail.com','$2a$10$cmnsUHX9i0ina2Wb7T6k3ekRbSLSbcMJnQkRwcvgG2ajkkVhB3WFm','高橋','マミ','タカハシ','マミ','2016-05-15 14:02:09.680114','2016-05-15 14:02:09.680114');
INSERT INTO `customers` VALUES(442,'y-mayumi@mbf.nifty.com','y-mayumi@mbf.nifty.com','$2a$10$eVK9DWAX3XQdo1y8uBmWYu.GYioFZRXJgmBToYJTL248Hsgj5hHHm','山本','真由美','ヤマモト','マユミ','2016-05-16 04:29:56.020034','2016-05-16 04:29:56.020034');
INSERT INTO `customers` VALUES(443,'b777-seiko.nov17@softbank.ne.jp','b777-seiko.nov17@softbank.ne.jp','$2a$10$7szFCTN3IFvJvtG5VBSR.e3L.crtER.M0VszNcdpnRe/VCVtKRN1O','小山','聖子','コヤマ','セイコ','2016-05-16 12:28:54.064598','2016-05-16 12:28:54.064598');
INSERT INTO `customers` VALUES(444,'kmyss.toki@gmail.com','kmyss.toki@gmail.com','$2a$10$3UnLX8uuF9CmpgsqhLyb1u.Z8XQayRnHv.YTnd3RX7oxVo4CaKfgS','水本','旬代','ミズモト','トキヨ','2016-05-16 13:42:15.493573','2016-05-16 13:42:15.493573');
INSERT INTO `customers` VALUES(445,'tokimayu118.iameri@ezweb.ne.jp','tokimayu118.iameri@ezweb.ne.jp','$2a$10$mHWuiTqpg7PL0MIQreJzAukMDR5U2xJ58pjtt22nUbhs4SzeFaca2','水本','旬代','ミズモト','トキヨ','2016-05-16 13:44:18.711528','2016-05-16 13:44:18.711528');
INSERT INTO `customers` VALUES(446,'kitchneyuka222@gmail.com','kitchneyuka222@gmail.com','$2a$10$a1/vlz6A1p.wMoJ7mPBL.OGBtj3Wpxo29wK/k6FMWax1AY6MV8UmC','河野','ゆかり','コウノ','ユカリ','2016-05-17 05:48:43.578056','2016-05-17 05:48:43.578056');
INSERT INTO `customers` VALUES(447,'t-nkkrm-@nifty.com','t-nkkrm-@nifty.com','$2a$10$YwOplUpGYaKPo92tvM/Jhu.sLTwZwCvUMnsf8ffZBqhewCwVKCbr6','塚本','梨江','ツカモト','リエ','2016-05-19 03:15:56.605488','2016-05-19 03:15:56.605488');
INSERT INTO `customers` VALUES(448,'pear6021@ezweb.ne.jp','pear6021@ezweb.ne.jp','$2a$10$db093AbLur8mQDnnnxbHuuVN74hJuML82xFhpSg9VUBseocFNfETa','塚本','梨江','ツカモト','リエ','2016-05-19 03:17:35.879168','2016-05-19 03:17:35.879168');
INSERT INTO `customers` VALUES(449,'kumiko-629@i.softbank.jp','kumiko-629@i.softbank.jp','$2a$10$zWtgZb5oDOanHEyQ3KjyG.9AxAjXY0.b0EbgcBc7neQ.qgrZlJCxO','川','久美子','カワ','クミコ','2016-05-19 07:58:55.718098','2016-05-19 07:58:55.718098');
INSERT INTO `customers` VALUES(450,'zero-farm@docomo.ne.jp','zero-farm@docomo.ne.jp','$2a$10$BBVIWqY9z2LqLSVz3wX.s.pBLBYblWe1Jjk3E6ubtIixkMRAjM1vK','室田','歳明','ムロタ','トシアキ','2016-05-19 13:02:04.805243','2016-05-19 13:02:04.805243');
INSERT INTO `customers` VALUES(451,'yoo-hwasil@i.softbank.jp','yoo-hwasil@i.softbank.jp','$2a$10$k/NckD4olw613wQQwajS1OkxyYNNfqZBE.3qL5dtECoIQ84pIvEra','柳','和実','ユウ','ファシル','2016-05-20 02:06:46.985623','2016-05-20 02:06:46.985623');
INSERT INTO `customers` VALUES(452,'elumo60@yahoo.co.jp','elumo60@yahoo.co.jp','$2a$10$Yu7z6Fuqk5YpTxR5IOGNQ.AQrDkTxeJYvsesa02SWQoloky2UJrnS','出村　','哲夫','デムラ','テツオ','2016-05-20 03:53:11.165487','2016-05-20 03:53:11.165487');
INSERT INTO `customers` VALUES(453,'fukisakumugi@yahoo.co.jp','fukisakumugi@yahoo.co.jp','$2a$10$tWc9iux77W1t3JmSoUsU8ehMbyD3l1RF1OO.WbU4FQfq1kmlWO6hK','杉本','尚士','スギモト','ヒサシ','2016-05-21 12:54:52.866560','2016-05-21 12:54:52.866560');
INSERT INTO `customers` VALUES(454,'bebe82711@gmail.com','bebe82711@gmail.com','$2a$10$eZd69D6xr97Y14sxrijw1.Rw/p4NFBiOBH8s18Djyug1K9QyPEPaa','柳楽','奈美子','ナギラ','ナミコ','2016-05-21 15:17:14.772049','2016-05-21 15:17:14.772049');
INSERT INTO `customers` VALUES(455,'ghiotto.beare@gmail.com','ghiotto.beare@gmail.com','$2a$10$iu5rWZq0grBS7HzgoYFwoOhpCDulrbtGeE4oCDsQBtb9KU/Pz275K','古西','幸登','フルニシ','ユキト','2016-05-22 15:44:36.456171','2016-05-22 15:44:36.456171');
INSERT INTO `customers` VALUES(456,'eumo60@yahoo.co.jp','eumo60@yahoo.co.jp','$2a$10$ze8D/s/AXo1WOGBF0tnQOu0XRi8Prhtk2fHeQup0jUOXUoCC8D/ba','出村','哲夫','デムラ','テツオ','2016-05-26 09:00:49.154532','2016-05-26 09:00:49.154532');
INSERT INTO `customers` VALUES(457,'hal@plants-web.jp','hal@plants-web.jp','$2a$10$m6lY0h.1LQWWauKBhhPgNOSgF4zwh7rJISX.s8SrGOfcBsdVi2YG2','関','治之','セキ','ハルユキ','2016-06-01 06:29:07.629811','2016-06-01 06:29:07.629811');
INSERT INTO `customers` VALUES(458,'rouge1899@gmail.com','rouge1899@gmail.com','$2a$10$IYGUSH80jQbvs8cBWlS3U.5QIryDn9NQGB21yg4ZFrUVWT5104GA6','清水','迪子','シミズ','ミチコ','2016-06-02 23:51:54.972556','2016-06-02 23:51:54.972556');
INSERT INTO `customers` VALUES(459,'dfckf008@kcc.aq.ne.jp','dfckf008@kcc.aq.ne.jp','$2a$10$vY8oIShrYg7tfCRoTN5FbO8dUotCsHxkPdjSBYiwLFwVqi7xhGIfy','大野','貞枝','オオノ','サダエ','2016-06-04 13:39:12.309303','2016-06-04 13:39:12.309303');
INSERT INTO `customers` VALUES(460,'ucf30_masago@i.softbank.jp','ucf30_masago@i.softbank.jp','$2a$10$jPKdvHOVggOf79PFieL2q.s.lTy14MycZkdQhnZeoVzbP0Oo/M4..','品川','拓也','シナガワ','タクヤ','2016-06-05 06:27:40.473306','2016-06-05 06:27:40.473306');
INSERT INTO `customers` VALUES(461,'naokobenedicta@icloud.com','naokobenedicta@icloud.com','$2a$10$QUyU6rEBs5VkgUuaCB7AO.a9xxlehJy7Zj5yBCIGYScKfOM/lFMOm','魚住','尚子','ウオズミ','ナオコ','2016-06-10 10:33:16.626756','2016-06-10 10:33:16.626756');
INSERT INTO `customers` VALUES(462,'tottoriorganicmarket@gmail.com','tottoriorganicmarket@gmail.com','$2a$10$53KYUxB0NRUi4.VNRqavUOTJKPFLmxJvm1AZNNJFiXyWbaajOjo7S','田中','正貢','タナカ','マサツグ','2016-06-11 21:53:48.607794','2016-06-11 21:53:48.607794');
INSERT INTO `customers` VALUES(463,'shizencyokuhan.retail@gmail.com','shizencyokuhan.retail@gmail.com','$2a$10$VlZqzXR/ZbcB/hj9G0shIen7CVl4eBlqZc2dggtfAxDJnSEgUupZ.','ちょくはん小売販売','窓口','チョクハンコウリハンバイ','マドグチ','2016-06-12 08:21:01.795109','2016-06-12 08:21:01.795109');
INSERT INTO `customers` VALUES(464,'docosa.hexa.enchang1022@gmail.com','docosa.hexa.enchang1022@gmail.com','$2a$10$Ku5T1LELJwnZEngXLMTKD.TleeG0FBoOAqeZxK2OTJq5dLn6DfQkK','遠藤','翼','エンドウ','ツバサ','2016-06-13 02:54:36.720312','2016-06-13 02:54:36.720312');
INSERT INTO `customers` VALUES(465,'atsuko814@mail.bbexcite.jp','atsuko814@mail.bbexcite.jp','$2a$10$TufaxSNaVmX.JPaPsN7YG.jXvKqKXZTgcl/bwUowrpZrU7xWFUL7u','キュブルー','祢津厚子','キュブルー','ネツアツコ','2016-06-14 23:08:08.192064','2016-06-14 23:08:08.192064');
INSERT INTO `customers` VALUES(466,'info@livefukui.com','info@livefukui.com','$2a$10$zZ405KERrYY3oEkF45wnBe/Ld2RwIKjM9WwXO0YGHMzRpLbvz0iGW','株式会社','LIVE','カブシキガイシャ','ライブ','2016-06-19 02:13:14.927747','2016-06-19 02:13:14.927747');
INSERT INTO `customers` VALUES(467,'fluke1019@gmail.com','fluke1019@gmail.com','$2a$10$rObiSNFKLb3Q8XLEwykQROz.eqxse1rJYfgef8JfUNQpND5Vk.KRm','中山','大輔','','','2016-06-23 01:57:04.957694','2016-06-23 01:57:04.957694');
INSERT INTO `customers` VALUES(468,'u-ki8383@docomo.ne.jp','u-ki8383@docomo.ne.jp','$2a$10$U7CwOAyy58c4lzCE0ggAXOj7C/ogfT/c8Zg5IzQA4nwGUMnm7Jl9u','市川','優希','イチカワ','ユウキ','2016-06-23 07:30:10.996090','2016-06-23 07:30:10.996090');
INSERT INTO `customers` VALUES(469,'rui72475288@docomo.ne.jp','rui72475288@docomo.ne.jp','$2a$10$/36c.JYv4G2gS.TKVPmdiu8M1Pr2An8lRL2gw6Q0oAcF3kHcIO5L.','中村','真美','ナカムラ','マミ','2016-06-23 08:42:49.504771','2016-06-23 08:42:49.504771');
INSERT INTO `customers` VALUES(470,'jahbless.stmbns@gmail.com','jahbless.stmbns@gmail.com','$2a$10$zhkbqg.9st4A4QekSXnUBOsbbn0sbd1kUAJfWBj/uL5lmBkXZvOC2','バンシ','里美','バンシ','サトミ','2016-06-23 09:55:57.716108','2016-06-23 09:55:57.716108');
INSERT INTO `customers` VALUES(471,'y.dobashi28@gmail.com','y.dobashi28@gmail.com','$2a$10$ghBi5b1KXPILvKVKquC2ueICGhukY8vv4b1UpAFKNOZCK81ARZX26','土橋','遊','ドバシ','ユウ','2016-06-23 23:03:35.350336','2016-06-23 23:03:35.350336');
INSERT INTO `customers` VALUES(473,'hikaru.2013.10.6@i.softbank.jp','hikaru.2013.10.6@i.softbank.jp','$2a$10$PCLGV2ZfAtMwnO.wzYTH2eFxdhIncb3crL838yPNquk4Y7rio2vOS','西田','雅美','ニシダ','マサミ','2016-06-24 10:18:17.342085','2016-06-24 10:18:17.342085');
INSERT INTO `customers` VALUES(474,'farm@apricot.ocn.ne.jp','farm@apricot.ocn.ne.jp','$2a$10$1Lli4JRNFegDaMp8h4VDp.cDXspnBWYX4Qndwk1aoJaYHAd78c/mK','荻野','拓司','おぎの','ひろし','2016-06-25 05:59:52.668805','2016-06-25 05:59:52.668805');
INSERT INTO `customers` VALUES(475,'marchcrama@wiicom.com','marchcrama@wiicom.com','$2a$10$THrY40bbnZwIyEJzid9suOQJV/tasV.BTBmVV4lXMIKpQQq5DGcNG','山口','やよい','ヤマグチ','ヤヨイ','2016-06-25 23:25:08.530476','2016-06-25 23:25:08.530476');
INSERT INTO `customers` VALUES(476,'ukouko.82@icloud.com','ukouko.82@icloud.com','$2a$10$q2kq1uP13jCm93hUHOFWb.EM3gVz10ia5l6/BEcdMCwP2IkfOnOgy','山上','真由美','ヤマカミ','マユミ','2016-06-26 12:26:51.520352','2016-06-26 12:26:51.520352');
INSERT INTO `customers` VALUES(477,'yoshinaga.takayuki@gmail.com','yoshinaga.takayuki@gmail.com','$2a$10$QB7s8GxgTIgwcginruzTceqft81WG1mow9JWbMWIKCWTisCd7FPqG','吉永','隆之','ヨシナガ','タカユキ','2016-06-27 07:45:48.818284','2016-06-27 07:45:48.818284');
INSERT INTO `customers` VALUES(478,'thedogofmelon@yahoo.co.jp','thedogofmelon@yahoo.co.jp','$2a$10$qr3QU99GeQ5TBLOygYwghurmvL2yi1RlLYcP2iHhe3H00.XRAGPB6','小林','敦子','コバヤシ','アツコ','2016-06-27 10:18:53.228833','2016-06-27 10:18:53.228833');
INSERT INTO `customers` VALUES(479,'taka8069@yahoo.co.jp','taka8069@yahoo.co.jp','$2a$10$yEGu/NPduJDOJ8c1lNCVke0oVjqD3wirs5kRk2PoT9g2vZVa.XvXG','高島','悟','タカシマ','サトル','2016-06-28 18:47:43.052984','2016-06-28 18:47:43.052984');
INSERT INTO `customers` VALUES(480,'htw2ffrr@yk.commufa.jp','htw2ffrr@yk.commufa.jp','$2a$10$s6eY8qgCYOJT3A/etUhzs.f0coD5VCGIBitXL8YDHxecMVY0Pe8cm','志賀','今日子','シガ','キョウコ','2016-06-28 22:59:46.890688','2016-06-28 22:59:46.890688');
INSERT INTO `customers` VALUES(481,'mototsugu0601@gmail.com','mototsugu0601@gmail.com','$2a$10$QhIWJKTzgHtHKf/K0ogtAe/wL3gyJfYHA0hq2.OkSZyfZ1i/HWLp2','上園','元嗣','ウエゾノ','モトツグ','2016-06-29 04:57:34.760639','2016-06-29 04:57:34.760639');
INSERT INTO `customers` VALUES(482,'maiko.kawano@gmail.com','maiko.kawano@gmail.com','$2a$10$EEEcRwtbmBIavxgDcFuzVuxw2DvcySwaNkpdXnuFLdoL6R3RxIC1O','河野','麻衣子','カワノ','マイコ','2016-06-29 06:42:08.672515','2016-06-29 06:42:08.672515');
INSERT INTO `customers` VALUES(483,'itaita0610@gmail.com','itaita0610@gmail.com','$2a$10$dm6mURbtWqiqW/2bbqR4UOv70LopYuEhFnmLycjqWeJv8jhshAsNu','高橋','功','タカハシ','イサオ','2016-06-29 07:41:16.879008','2016-06-29 07:41:16.879008');
INSERT INTO `customers` VALUES(484,'hanshinmetalics.kondo@gmail.com','hanshinmetalics.kondo@gmail.com','$2a$10$a1tE22Wp/piQlepJ22cL3.hCjWVeVfox/.MqbS0ubEXzDX1GSdhmC','近藤','祐輔','コンドウ','ユウスケ','2016-06-29 09:04:15.509754','2016-06-29 09:04:15.509754');
INSERT INTO `customers` VALUES(485,'zyny0215@gmail.com','zyny0215@gmail.com','$2a$10$2Af6DzVwz7Q.G3zpnWwPbeEufu.ZS.cldLatRBqpC2bmLt9rrUZjy','三枝','江梨香','ミエダ','エリカ','2016-06-29 09:20:38.220518','2016-06-29 09:20:38.220518');
INSERT INTO `customers` VALUES(486,'hanshinmetalics.kamitani@gmail.com','hanshinmetalics.kamitani@gmail.com','$2a$10$Qq1CqW.pj0E9BQGHzcAfLeOAELFoFfwkwL8eBtXnGTGT.6qQblq6e','神谷','俊毅','カミタニ','トシキ','2016-06-29 09:20:55.742632','2016-06-29 09:20:55.742632');
INSERT INTO `customers` VALUES(487,'yuko@meme.ne.jp','yuko@meme.ne.jp','$2a$10$jyLJNaWUWKnf0X1oJyGjuu6mqXDuAyMt6a1LptiSwg0VSgI7qq1s.','藤本','祐子','フジモト','ユウコ','2016-06-29 09:23:32.060155','2016-06-29 09:23:32.060155');
INSERT INTO `customers` VALUES(488,'hanshinmetalics.yokokawa@gmail.com','hanshinmetalics.yokokawa@gmail.com','$2a$10$eqMPHW89S659YmImuIy5P.HPRNxhl3zcsVxgNpY78SmbBVxx4T0m2','横川','達也','ヨコカワ','タツヤ','2016-06-29 10:42:23.670645','2016-06-29 10:42:23.670645');
INSERT INTO `customers` VALUES(489,'hanshinmetalics.uetou@gmail.com','hanshinmetalics.uetou@gmail.com','$2a$10$2eftCLkL1lsSivWZsEc0..Olb8kSLTAz/1MIDulbkmM1trD2jJqyq','上藤','剛','ウエトウ','タケシ','2016-06-29 10:55:06.749044','2016-06-29 10:55:06.749044');
INSERT INTO `customers` VALUES(490,'honsha@hanshinmetalics.co.jp','honsha@hanshinmetalics.co.jp','$2a$10$/GoarqvgZjiYqNNurx5hqeEDfDW2yMe4HW2ev1TzB8DCQLwIZ8ArC','阪神メタリックス','本社','ハンシンメタリックス','ホンシャ','2016-06-30 00:44:34.549381','2016-06-30 00:44:34.549381');
INSERT INTO `customers` VALUES(491,'naomi6028@gmail.com','naomi6028@gmail.com','$2a$10$/E50FJS93q0fjkOAy.g88.5jbd0rZW.Ky4ayE1BPRDmZ08ZopL5YS','吉田','尚美','ヨシダ','ナオミ','2016-06-30 03:45:04.463325','2016-06-30 03:45:04.463325');
INSERT INTO `customers` VALUES(492,'meghan@500startups.com','meghan@500startups.com','$2a$10$.gEZxjYixF7Dqign0b.DeuVlhN8Rfev1pOJW3lAgIyUqJd.aguaG6','Christenson','Meghan','Meghan','Meghan','2016-07-02 01:48:36.562160','2016-07-02 01:48:36.562160');
INSERT INTO `customers` VALUES(493,'cyo_ro0947@yahoo.co.jp','cyo_ro0947@yahoo.co.jp','$2a$10$lwr8Ck9wfNXUuKrGNKBqLu9a/ICPscljgV3/zzDE1ApIqhY8L4eAW','白柳','明美','シラヤナギ','アケミ','2016-07-02 18:58:07.862787','2016-07-02 18:58:07.862787');
INSERT INTO `customers` VALUES(494,'atyapi07@yahoo.co.jp','atyapi07@yahoo.co.jp','$2a$10$r7Ylx0DpLSNn3M.1P65omuLk6awVMXWP0Ec9kEXVRkkeNYADR4Vde','安東','藍','アンドウ','アイ','2016-07-04 12:53:00.645395','2016-07-04 12:53:00.645395');
INSERT INTO `customers` VALUES(495,'pooq@movie.ocn.ne.jp','pooq@movie.ocn.ne.jp','$2a$10$0kWVgBiUr2dTOkfmL/REt.qB9tkBWifJweATWcTRdxLPCS6hKY6Ey','馬場','貴洋子','ババ','キョウコ','2016-07-06 06:41:29.925326','2016-07-06 06:41:29.925326');
INSERT INTO `customers` VALUES(496,'fujikko57@d.vodafone.ne.jp','fujikko57@d.vodafone.ne.jp','$2a$10$bTW1LJ3hrmI0TnKu04fy1eu/sERYGcVCzLkX2Az9Jq/RCH/TodtdO','日向','愛香','ヒナタ','アイカ','2016-07-07 10:39:32.403059','2016-07-07 10:39:32.403059');
INSERT INTO `customers` VALUES(497,'k.bun-bun-bun@softbank.ne.jp','k.bun-bun-bun@softbank.ne.jp','$2a$10$uD/2yq56k1OGqSzK09Jkvu95/nsQfQBnMgAkTGyHT2x4Bp32bf.IS','芝本','公子','シバモト','キミコ','2016-07-07 23:08:07.402158','2016-07-07 23:08:07.402158');
INSERT INTO `customers` VALUES(498,'hirokoizumi@kobe-relocation.com','hirokoizumi@kobe-relocation.com','$2a$10$V/DoNsOvMtpSOVhKfG127e1fO04RM.LLi8.zsPbdSM8R2LD13dcHK','小泉','寛明','コイズミ','ヒロアキ','2016-07-08 01:22:27.474205','2016-07-08 01:22:27.474205');
INSERT INTO `customers` VALUES(499,'icecream-193@ezweb.ne.jp','icecream-193@ezweb.ne.jp','$2a$10$q.9B87en7sA4I4ttsEhvhOcKaWLmvih906MI.NqgkqVOo8ImeS7t2','小野','千恵','オノ','チエ','2016-07-08 07:46:50.585117','2016-07-08 07:46:50.585117');
INSERT INTO `customers` VALUES(500,'kuroda.kj.96@gmail.com','kuroda.kj.96@gmail.com','$2a$10$imQiKVYbScjTY0d3KGzSOOIHvn01moMBv8KZ46EgsnHTDoVgorQ0y','黒田','浩二','クロダ','コウジ','2016-07-08 12:47:46.911962','2016-07-08 12:47:46.911962');
INSERT INTO `customers` VALUES(501,'chikakosugio@ezweb.ne.jp','chikakosugio@ezweb.ne.jp','$2a$10$D0M.zPzDSA1KFoBIZDcVeebpJ0q/aE5Ytrfq14bSp/w9BxdvQ8g1W','杉尾','智香子','スギオ','チカコ','2016-07-09 15:19:10.612233','2016-07-09 15:19:10.612233');
INSERT INTO `customers` VALUES(502,'chikakosugio@gmail.com','chikakosugio@gmail.com','$2a$10$sObqT3FZmfN785fmWQSxQ.afZXMOPIlPhTEWr4OoYqEfBHhJ4Xtxq','杉尾','智香子','スギオ','チカコ','2016-07-09 15:38:01.680075','2016-07-09 15:38:01.680075');
INSERT INTO `customers` VALUES(503,'roopgo@yahoo.co.jp','roopgo@yahoo.co.jp','$2a$10$RAb9zMyQN9Kdz1Ltfgq9BOmZrDhsCXGAxfUASryXNGrZX9zflsIoa','前田','貴子','マエダ','タカコ','2016-07-10 08:56:58.225402','2016-07-10 08:56:58.225402');
INSERT INTO `customers` VALUES(504,'sknth507@ybb.ne.jp','sknth507@ybb.ne.jp','$2a$10$lXTvpXVtaT0yKV9lp/5VTudkFyW42xG5UOx2XUMsRKCEi0a.VpEym','木村','純','キムラ','ジュン','2016-07-10 10:13:45.316250','2016-07-10 10:13:45.316250');
INSERT INTO `customers` VALUES(505,'moomin--mama.82@ezweb.ne.jp','moomin--mama.82@ezweb.ne.jp','$2a$10$8XdL/F.fDL6/Vb.KFe6pm.hlhUqtSHSPZLJ5TZFHSQxAPuufj2CUu','武田　','いずみ','タケダ','イズミ','2016-07-11 09:37:59.429476','2016-07-11 09:37:59.429476');
INSERT INTO `customers` VALUES(506,'Pinklash0119mumu@docomo.ne.jp','pinklash0119mumu@docomo.ne.jp','$2a$10$aS2GQOhswA6iR.niOMtoBu8mZO3mx1aW8GgSpA0H07fitj4oQEQ6G','鈴木','美香','スズキ','ミカ','2016-07-11 22:16:39.262363','2016-07-11 22:16:39.262363');
INSERT INTO `customers` VALUES(507,'mayushow@me.com','mayushow@me.com','$2a$10$O5FS7.dysq2pr5L9UBeBPuhdWyVMapOfy52sm95HFw6PenZU01AdK','伊坂','弘一郎','イサカ','コウイチロウ','2016-07-12 06:33:30.551165','2016-07-12 06:33:30.551165');
INSERT INTO `customers` VALUES(508,'n0.u_n0.life-nsw.l0ve_f0rever@ezweb.ne.jp','n0.u_n0.life-nsw.l0ve_f0rever@ezweb.ne.jp','$2a$10$ZouOn.NFnd/wKSoypwkwnO3.amebRkJPU/BvDThKL/mCLCcm1VMLy','篠田','絵理香','シノダ','エリカ','2016-07-12 23:38:44.891611','2016-07-12 23:38:44.891611');
INSERT INTO `customers` VALUES(509,'oyajisama0225@docomo.ne.jp','oyajisama0225@docomo.ne.jp','$2a$10$ZrOu7lju0KjN8ZEaJCzisecdzC9sZFb1aIZvDoCWCkM2ubkSM.rw.','高月','登志','タカツキ','トシ','2016-07-14 06:11:00.393520','2016-07-14 06:11:00.393520');
INSERT INTO `customers` VALUES(510,'the.toy.box.seo@gmail.com','the.toy.box.seo@gmail.com','$2a$10$uCrEK6xSQa9E9WsOgYhEg.ktbFHCiw/UEH6kp6dap8/vCBvAjjZIa','松下','世緒','マツシタ','セオ','2016-07-15 10:16:00.446769','2016-07-15 10:16:00.446769');
INSERT INTO `customers` VALUES(512,'sat0829@ezweb.ne.jp','sat0829@ezweb.ne.jp','$2a$10$pqZ4q2Fx5LlfZQDYOrxrKeizWDBHKtVZklG.Iak0htEyCI48215eK','波多野','さとみ','ハタノ','サトミ','2016-07-19 12:23:01.857187','2016-07-19 12:23:01.857187');
INSERT INTO `customers` VALUES(513,'sanhatano@gmail.com','sanhatano@gmail.com','$2a$10$5sK.qZ08IZ.xxyRLibkoZuDPdcvdffjSfjccKHzXqAKzD0MBj9gxS','波多野','さとみ','ハタノ','サトミ','2016-07-19 23:27:33.826453','2016-07-19 23:27:33.826453');
INSERT INTO `customers` VALUES(514,'oda.soyoko@gmail.com','oda.soyoko@gmail.com','$2a$10$Or.5SzZq8l9BM/l0jJrNhOPh0vOkHIDw5ysG1Q9sheYA1OqoucniO','林','素代子','ハヤシ','ソヨコ','2016-07-21 05:20:57.824877','2016-07-21 05:20:57.824877');
INSERT INTO `customers` VALUES(515,'elephantizm@gmail.com','elephantizm@gmail.com','$2a$10$oC3q8LANDXX394T3GPCpLexC8N5WxxCW30zO1gXQSvHmSN5aBp.CC','平松','さやか','ヒラマツ','サヤカ','2016-07-22 07:10:59.239898','2016-07-22 07:10:59.239898');
INSERT INTO `customers` VALUES(516,'ganbare-kozomayu@ezweb.ne.jp','ganbare-kozomayu@ezweb.ne.jp','$2a$10$AVGsnkTns5A.02VFlfrC1O8VyW5Gb3.e1eT2VJZkGdSeeDJWsVpai','中道','真弓','ナカミチ','マユミ','2016-07-26 08:17:20.182744','2016-07-26 08:17:20.182744');
INSERT INTO `customers` VALUES(517,'sho3214765@yahoo.co.jp','sho3214765@yahoo.co.jp','$2a$10$ZcaiQ2wYK6vgo1wn5SspIeRLdew22K39WULiERP1/CB7t3Ag/DQuK','富田','しょう','トミタ','ショウ','2016-07-26 08:54:34.652972','2016-07-26 08:54:34.652972');
INSERT INTO `customers` VALUES(518,'staff1982@excite.co.jp','staff1982@excite.co.jp','$2a$10$gC8Ahla5R/tGGeqsYKekEOp55cujNrsXVgGBiUiZ0PmRWzE8YRPBO','川野','兵馬','カワノ','ヒョウマ','2016-07-26 11:51:03.749869','2016-07-26 11:51:03.749869');
INSERT INTO `customers` VALUES(519,'coba@farmfes.com','coba@farmfes.com','$2a$10$ZGKbcwq2dNXmQMosItwq9OoRTdQnEvQK7bQ7OX.CZcOGnXhfRX.ve','木庭','政行','コバ','マサユキ','2016-07-28 04:38:18.614406','2016-07-28 04:38:18.614406');
INSERT INTO `customers` VALUES(520,'shinchike@gmail.com','shinchike@gmail.com','$2a$10$kcypG5pq6mHQt1MRN/eqAursUL8KqlFZZvb18eVHcth7/fE9nsJ2S','新地','久美子','シンチ','クミコ','2016-07-30 14:35:52.145112','2016-07-30 14:35:52.145112');
INSERT INTO `customers` VALUES(521,'roi.et.reine_14@i.softbank.jp','roi.et.reine_14@i.softbank.jp','$2a$10$3zDsQzuurzwF6KOPjstfDuWjvA0pXTlLB5WS58mAThQWi/VSoyR2q','渡辺','恵理','ワタナベ','エリ','2016-07-31 13:54:32.905900','2016-07-31 13:54:32.905900');
INSERT INTO `customers` VALUES(522,'sorakaze.r.j2@gmail.com','sorakaze.r.j2@gmail.com','$2a$10$oGb8lTFrpd1nRc/zu0/cau1kKvwlEPGWmiibJe9OfrUGRMruDSSrW','渡辺','節子','ワタナベ','セツコ','2016-08-01 00:55:04.830220','2016-08-01 00:55:04.830220');
INSERT INTO `customers` VALUES(523,'taroon@m18.alpha-net.ne.jp','taroon@m18.alpha-net.ne.jp','$2a$10$Ba0NjtLL.nuoWggo7x59IO5okRH2/2FwUR5ybPMphFRrhFSlcNuce','田村','三代','タムラ','ミツヨ','2016-08-01 18:10:49.017320','2016-08-01 18:10:49.017320');
INSERT INTO `customers` VALUES(524,'yasuhiro252@gmail.com','yasuhiro252@gmail.com','$2a$10$VciPf9fLGqe4cCYAfSLbsOunzg/9Jq074ZHb9EvORsm9Ipj74O6fi','吉田','恭浩','ヨシダ','ヤスヒロ','2016-08-02 02:25:35.403331','2016-08-02 02:25:35.403331');
INSERT INTO `customers` VALUES(525,'s.ishida@pocket-menu.jp','s.ishida@pocket-menu.jp','$2a$10$GjD3lTWpaQ9/dd/9T6oqpO061uYnaMbWy/3gpXquvq4dkO2I1ctWa','石田','誠也','イシダ','セイヤ','2016-08-02 02:48:00.281168','2016-08-02 02:48:00.281168');
INSERT INTO `customers` VALUES(526,'megoija10-ringokko5@ezweb.ne.jp','megoija10-ringokko5@ezweb.ne.jp','$2a$10$/ZkmZ6KWCXYbZqiEbdlup.nQXxPyRyi93HujKXYvPgQu1ex/QX17W','引地','あつ子','ヒキチ','アツコ','2016-08-03 02:01:24.440268','2016-08-03 02:01:24.440268');
INSERT INTO `customers` VALUES(527,'takahisa.adati@ezweb.ne.jp','takahisa.adati@ezweb.ne.jp','$2a$10$z79tKW9gEKOE.w8NDj2sJum0jtgnkllhVEpV9l7pk9IA1Dw1tv3ZS','足立','貴久','アダチ','タカヒサ','2016-08-03 09:15:27.692855','2016-08-03 09:15:27.692855');
INSERT INTO `customers` VALUES(528,'hiwori@gmail.com','hiwori@gmail.com','$2a$10$5vVLo3tvvIxcGAJNVVUdROdkjy5Zz9QqCmb06/lzbuYnSlrx712SC','吉度','日央里','ヨシド','ヒヲリ','2016-08-06 02:42:35.511399','2016-08-06 02:42:35.511399');
INSERT INTO `customers` VALUES(529,'tsubame_ym44m@yahoo.co.jp','tsubame_ym44m@yahoo.co.jp','$2a$10$clZh.Q/QnyPnJxgiqUoTwOQFQgK2/HhSP4K8WXRS6b4UuEC1h1R0W','吉田','恵','ヨシダ','メグミ','2016-08-06 03:11:18.552944','2016-08-06 03:11:18.552944');
INSERT INTO `customers` VALUES(530,'mfmfm.k@gmail.com','mfmfm.k@gmail.com','$2a$10$a7BnMvt49wghyIGvq5PLXOKYd93WIY6ti8XV0HVGdxbgYe983xaBK','榧守','美文','カヤモリ','ミフミ','2016-08-06 03:25:24.079706','2016-08-06 03:25:24.079706');
INSERT INTO `customers` VALUES(531,'jahbless.stmbms@gmail.com','jahbless.stmbms@gmail.com','$2a$10$JASMc7C7F1yj.TthIZxW4ukDAjsCnMxEJaN/5Ja8sSzEQ4F9q1e6q','バンシ','里美','バンシ','サトミ','2016-08-06 03:30:56.574929','2016-08-06 03:30:56.574929');
INSERT INTO `customers` VALUES(532,'poemu@i.softobank.jp','poemu@i.softobank.jp','$2a$10$tP5dga7PHbnhQuMSfRZejeo7yJR9F6fqnWSIpvEetYenYDSm9qSv.','三木','仁美','ミキ','ヒトミ','2016-08-06 03:42:57.216356','2016-08-06 03:42:57.216356');
INSERT INTO `customers` VALUES(533,'teruteruok@aol.com','teruteruok@aol.com','$2a$10$Z5KZCNMHqV8YENicfuGALOTmfvkMRbbrQPLxVuJqWj8ooAnsqtslu','岡野','輝子','オカノ','テルコ','2016-08-06 03:45:59.830644','2016-08-06 03:45:59.830644');
INSERT INTO `customers` VALUES(534,'shotaroro@gmail.com','shotaroro@gmail.com','$2a$10$FtURftMpSCCAis5rb2Xcu.gnheY5/Z3fxsaBKNb/NanV0lBard8lS','緒方','正太郎','オガタ','ショウタロウ','2016-08-06 04:49:15.148311','2016-08-06 04:49:15.148311');
INSERT INTO `customers` VALUES(535,'morika87@icloud.com','morika87@icloud.com','$2a$10$i/DTyADmIN2NvyFt1LcR5uI6qUusMaVRtb7v1KFMDET8SMNRROzNS','森山','佳代','モリヤマ','カヨ','2016-08-06 05:01:36.575465','2016-08-06 05:01:36.575465');
INSERT INTO `customers` VALUES(537,'masato_hm@hotmail.com','masato_hm@hotmail.com','$2a$10$n/raGuSZOuKqnRT0Ageq6e5Yei7faFE4d28Y7dPDl4.gWngx.3Dga','中村','正人','ナカムラ','マサト','2016-08-06 05:41:08.123741','2016-08-06 05:41:08.123741');
INSERT INTO `customers` VALUES(538,'mk.itami6436@gmail.com','mk.itami6436@gmail.com','$2a$10$mmegDLWRG6eBcIG20Mp0b.5IhEkfKDb0nouYysJS14RGn44eo5enq','山﨑','憲一','ヤマサキ','ケンイチ','2016-08-06 06:12:50.825197','2016-08-06 06:12:50.825197');
INSERT INTO `customers` VALUES(539,'kiku.mash@gmail.com','kiku.mash@gmail.com','$2a$10$NURnfiYQ7W3EhlBogIAvBOtFXBItRART/wl8Eqh1KJfcvAiivgaz2','大保','寿恵','ダイボ','ヒサエ','2016-08-06 08:20:58.898821','2016-08-06 08:20:58.898821');
INSERT INTO `customers` VALUES(540,'aimerfutur7@gmail.com','aimerfutur7@gmail.com','$2a$10$ie.YVAOJEWzsxSVd.Ej1ieZYgQVIw6Q//Hq6pJfFpc0Sh55xTzehi','一箭','晶子','イチヤ','アキコ','2016-08-06 09:06:48.320262','2016-08-06 09:06:48.320262');
INSERT INTO `customers` VALUES(541,'jimin.chan@icloud.com','jimin.chan@icloud.com','$2a$10$tlUCZbLyhyvjuENNYqfaHO06emupxZHrZW1jsKktz3GVnBM6CgY8S','伊藤','真弓','イトウ','マユミ','2016-08-06 10:34:53.235802','2016-08-06 10:34:53.235802');
INSERT INTO `customers` VALUES(542,'yuimanaharu0911@gmail.com','yuimanaharu0911@gmail.com','$2a$10$69/cjDayYDKW8.mDBicFZO4XS0d4V.ZyVjA3ODNlmZsmvW3D7ae1u','清田','朝子','キヨタ','トモコ','2016-08-06 10:47:54.345089','2016-08-06 10:47:54.345089');
INSERT INTO `customers` VALUES(543,'makinoshita@h6.dion.ne.jp','makinoshita@h6.dion.ne.jp','$2a$10$uz9IGE9TDY7CeI1Kv4r9Au9sPB5g/NTmqRtN7QUhSp5R4QUe4AOGu','西','真紀','ニシ','マキ','2016-08-06 11:44:17.674894','2016-08-06 11:44:17.674894');
INSERT INTO `customers` VALUES(544,'yuko1209happy358@i.softbank.jp','yuko1209happy358@i.softbank.jp','$2a$10$vnV5udTog9T1I.AUowdcDeywUJf8NVrw6NYgK7TeM9GQMDyutm2C2','木村','裕子','キムラ','ユウコ','2016-08-06 11:44:30.443875','2016-08-06 11:44:30.443875');
INSERT INTO `customers` VALUES(545,'ayumitanaka@hotmail.com','ayumitanaka@hotmail.com','$2a$10$xILSCTdsNTYm3pPq7FbXwu2aQbsNosekctWL56erKqydQNVOVeYvm','嶋津','あゆみ','シマズ','アユミ','2016-08-06 11:53:26.883821','2016-08-06 11:53:26.883821');
INSERT INTO `customers` VALUES(546,'healthytastyandwise@gmail.com','healthytastyandwise@gmail.com','$2a$10$OjRInMTWrYdhUXBmdujExu30STaa40PaTiD7uR9NvZ5PGor2e5raK','高橋','裕子','タカハシ','ヒロコ','2016-08-06 12:02:51.076871','2016-08-06 12:02:51.076871');
INSERT INTO `customers` VALUES(547,'ty20070317chg@i.softbank.jp','ty20070317chg@i.softbank.jp','$2a$10$RhzlOVAT2urVg86GdATK.OLf6SpKTNCu9xwqy2VprkkKqNf3BNoIm','岡田','妙香','オカダ','タエカ','2016-08-06 12:04:45.835202','2016-08-06 12:04:45.835202');
INSERT INTO `customers` VALUES(549,'senyishitaka@hotmail.com','senyishitaka@hotmail.com','$2a$10$rJI7HXoQPinubmXPT6AOQucrJPpcuegEXcLrrj9X4dj1YNe/Jx2bC','銭','祥貴','セン','ヨシタカ','2016-08-06 12:24:44.106920','2016-08-06 12:24:44.106920');
INSERT INTO `customers` VALUES(550,'nori.fuji5@gmail.com','nori.fuji5@gmail.com','$2a$10$7qMT6ILX6LLZshoU8pUzOua2y4mAWVdoJUUQ3K09lX0X1zL776kHe','河隅','紀子','カワスミ','ノリコ','2016-08-06 12:35:33.978637','2016-08-06 12:35:33.978637');
INSERT INTO `customers` VALUES(551,'nsoman68@gmail.com','nsoman68@gmail.com','$2a$10$CD3bmL1ea6cOw.cSJ5LY0u793ITFqWQ0Zdc8eN8JDX7olt13D0GFm','相馬','記子','ソウマ','ノリコ','2016-08-06 12:58:43.412075','2016-08-06 12:58:43.412075');
INSERT INTO `customers` VALUES(553,'whitebelt33@gmail.com','whitebelt33@gmail.com','$2a$10$zyYI4Nvf3XeGS1w.xPyoGuJzkh3qi5qs36EPeKQ.RXpeeEjXs7gNe','高木','昭博','タカギ','アキヒロ','2016-08-06 14:03:59.076172','2016-08-06 14:03:59.076172');
INSERT INTO `customers` VALUES(554,'sat829@ezweb.ne.jp','sat829@ezweb.ne.jp','$2a$10$/Z9HeIRpVWD/smHAWZ13fOtcrPDW7U/unLtBhhM8SjiymUUhxawry','波多野','さとみ','ハタノ','サトミ','2016-08-06 14:29:02.125683','2016-08-06 14:29:02.125683');
INSERT INTO `customers` VALUES(555,'chise1106@gmail.com','chise1106@gmail.com','$2a$10$EY33rXGsTOu1uKFLW1b0B.opw55Xk6bT8lufOR9OHY3Khhcj28t4a','遠藤','千世','エンドウ','チセ','2016-08-06 14:58:45.822532','2016-08-06 14:58:45.822532');
INSERT INTO `customers` VALUES(556,'Keitarosekiya@gmail.com','keitarosekiya@gmail.com','$2a$10$ZtEAasony0pUNWxkFF9vpOY5OzTMnzytZ01IvCYtPwAOIDqB59isG','関谷','啓太郎','セキヤ','ケイタロウ','2016-08-06 15:02:56.273545','2016-08-06 15:02:56.273545');
INSERT INTO `customers` VALUES(557,'bluesettebluesette@gmail.com','bluesettebluesette@gmail.com','$2a$10$n1etGjEOg5rTsFf3LjnL0OlBCt5SWn4OxEPeDobHnjxn/3LmbuSeq','鈴木','けいこ','スズキ','ケイコ','2016-08-06 15:03:31.262618','2016-08-06 15:03:31.262618');
INSERT INTO `customers` VALUES(558,'greatest3110@gmail.com','greatest3110@gmail.com','$2a$10$NHcluPLctDjxJjYcSuWqPuASatwQVjCHIsrRld/A9LhtrU.EFtQz.','斎藤','晃','サイトウ','アキラ','2016-08-06 17:07:19.215649','2016-08-06 17:07:19.215649');
INSERT INTO `customers` VALUES(559,'katsu92engw@gmail.com','katsu92engw@gmail.com','$2a$10$a2AoPjbdKplE09PMM8DdBuGEU2CYf5Y47bk0IxkLv/Z8SUmFuCq7m','勝又','國江','カツマタ','クニエ','2016-08-06 17:39:25.732043','2016-08-06 17:39:25.732043');
INSERT INTO `customers` VALUES(560,'i.sato.0413@docomo.ne.jp','i.sato.0413@docomo.ne.jp','$2a$10$wEcruT33E7uyzMjJZm4PG.PxDvhiTiYfoBn31Px1gVAVlFjdRL.Kq','佐藤','育子','サトウ','イクコ','2016-08-06 18:10:12.263508','2016-08-06 18:10:12.263508');
INSERT INTO `customers` VALUES(561,'peke67-shimada@docomo.ne.jp','peke67-shimada@docomo.ne.jp','$2a$10$SNBwByBiC.KWERDrtzhd/e8/T0Oedz1u6TQlidgqKBZ9VHfSQ5UzK','島田','淳子','シマダ','ジュンコ','2016-08-06 20:28:00.737260','2016-08-06 20:28:00.737260');
INSERT INTO `customers` VALUES(562,'mai0920@hotmail.co.jp','mai0920@hotmail.co.jp','$2a$10$S6VywQmLKQpG0rSCd9eW.OmMc//Lunhie7FRgxhVHaskeeyoC2ik.','野頭','麻衣子','ノトウ','マイコ','2016-08-06 21:11:24.282144','2016-08-06 21:11:24.282144');
INSERT INTO `customers` VALUES(563,'naokori@hotmail.com','naokori@hotmail.com','$2a$10$WBdGfFgEzu0X0eFMFnks3ukKfb8h1YnrulxuhaYmHi7crdo85EdDy','','田中','直子','タナカナオコ','2016-08-06 21:41:39.283062','2016-08-06 21:41:39.283062');
INSERT INTO `customers` VALUES(564,'kyasarin03@docomo.ne.jp','kyasarin03@docomo.ne.jp','$2a$10$TxpIE.iWNEc.Vt0XCaBQ1OkkH92NrSWr8gkulCaxyzoGE1t2XBK1i','片岡','祥子','カタオカ','サチコ','2016-08-06 21:53:20.397058','2016-08-06 21:53:20.397058');
INSERT INTO `customers` VALUES(565,'aduki34@gmail.com','aduki34@gmail.com','$2a$10$YPLmKUQHjvg/iAsVVGy4POdhYpML5TIe/T17eUVjdmOd0kBgb9nDe','鶴田','美保','ツルタ','ミホ','2016-08-06 22:03:00.668186','2016-08-06 22:03:00.668186');
INSERT INTO `customers` VALUES(566,'fujimaki.maki2@gmail.com','fujimaki.maki2@gmail.com','$2a$10$/lYCWQb6thssXozRPpiMW.Y.0wgWvb/qaaHzCs/R3mWw2eO2jnDcO','今井','真規子','イマイ','マキコ','2016-08-06 23:23:32.745362','2016-08-06 23:23:32.745362');
INSERT INTO `customers` VALUES(567,'naekine-1714@softbank.ne.jp','naekine-1714@softbank.ne.jp','$2a$10$Wo30ycHRHyYF0l0Ud.WSqesCNgG4Ut1gk96kEzHJ6qOfSQzqbcFK.','仲村','雅美','ナカムラ','マサミ','2016-08-07 00:48:43.516127','2016-08-07 00:48:43.516127');
INSERT INTO `customers` VALUES(568,'salon_en_avant@yahoo.co.jp','salon_en_avant@yahoo.co.jp','$2a$10$WVZHO22UfqF9we2nPlCkKe4xAQqtjM3LC6daz47Ctu3B.CZ4UeNZK','岩浅','まなみ','イワサ','マナミ','2016-08-07 03:50:27.573661','2016-08-07 03:50:27.573661');
INSERT INTO `customers` VALUES(569,'salon.enavant@gmail.com','salon.enavant@gmail.com','$2a$10$H2oYXch5V/d0dxIlPvswJeHU3g0rmtI0wKLHx2gvnyd7GQt8al2Aa','岩浅','まなみ','イワサ','マナミ','2016-08-07 03:52:43.563238','2016-08-07 03:52:43.563238');
INSERT INTO `customers` VALUES(570,'yukarin.1113@ezweb.ne.jp','yukarin.1113@ezweb.ne.jp','$2a$10$iKug1fN0ia8y20cXgdECKOJPMu2eTUlsfvIelrizlvbwHB6yH6.Qy','吉高','裕佳子','ヨシタカ','ユカコ','2016-08-07 04:54:08.538248','2016-08-07 04:54:08.538248');
INSERT INTO `customers` VALUES(571,'gaku.oto.1011@kcn.jp','gaku.oto.1011@kcn.jp','$2a$10$dmyx3U6pc1JZ2kN4mqd6IO3Wjlu7I4oaSNZhXmvOldtPD2JngXnY2','吉高','裕佳子','ヨシタカ','ユカコ','2016-08-07 04:55:47.511564','2016-08-07 04:55:47.511564');
INSERT INTO `customers` VALUES(572,'junkohiratsuka@gmail.com','junkohiratsuka@gmail.com','$2a$10$e.iMis7/u0s0wIaBhnG94uG9ZSDAQw9fKHoqJgmyjlmvX32R6SJmu','平塚','淳子','ヒラツカ','ジュンコ','2016-08-07 12:42:48.354498','2016-08-07 12:42:48.354498');
INSERT INTO `customers` VALUES(573,'ryuma@mekiki.ne.jp','ryuma@mekiki.ne.jp','$2a$10$JCSpScijmTHTdPN0CEOHr.HCWn3xK7OtyVtibIT9SiOYbmaPPBZ7u','中山','隆麿','ナカヤマ','リュウマ','2016-08-07 19:48:13.976177','2016-08-07 19:48:13.976177');
INSERT INTO `customers` VALUES(574,'mayumariko@aol.com','mayumariko@aol.com','$2a$10$w3etl991dEMm3UA6e5zKFe/1NmCH9X4Vk7gukq.fwIkUAfiG/w2hW','村田','マユコ','ムラタ','マユコ','2016-08-07 21:17:28.041528','2016-08-07 21:17:28.041528');
INSERT INTO `customers` VALUES(575,'mandm-isono@ac.auone-net.jp','mandm-isono@ac.auone-net.jp','$2a$10$oZf7EBZDifhnPQkOktyD/OcY4LzM3lciso.mCCZb/sd3Wza8d/e2m','磯野','未夏','イソノ','ミカ','2016-08-07 23:21:20.179690','2016-08-07 23:21:20.179690');
INSERT INTO `customers` VALUES(576,'y.kawashima1201@gmail.com','y.kawashima1201@gmail.com','$2a$10$WEvdOw/rGT1WunoqoGahTOU59vtFcDmoJ97Jglq4pbJCek.pCMsji','川島','ゆきお','カワシマ','ユキオ','2016-08-07 23:35:01.076641','2016-08-07 23:35:01.076641');
INSERT INTO `customers` VALUES(577,'ai.hayashi884@gmail.com','ai.hayashi884@gmail.com','$2a$10$4cnN1kL32NYxQP4KqV6Zy.gtWcoy0xooYaDerM6Vw1Ue6UXcqp5i2','林','愛','ハヤシ','アイ','2016-08-08 01:19:07.888256','2016-08-08 01:19:07.888256');
INSERT INTO `customers` VALUES(578,'leftyfox@gmail.com','leftyfox@gmail.com','$2a$10$RIXTe/jeG1b/.N7AdJJgNe71ecwie7jN9kD5TeO70/Dlxt1CSrvi.','平田','佳史','ヒラタ','ヨシフミ','2016-08-08 01:34:56.878603','2016-08-08 01:34:56.878603');
INSERT INTO `customers` VALUES(579,'chiaki.arase@gmail.com','chiaki.arase@gmail.com','$2a$10$L0w0Chx5oWuVBSk7e0HnieEpCKBWEdJ2tusXNCryO7AQXq5sA/.2O','荒瀬','千秋','アラセ','チアキ','2016-08-08 03:13:38.170467','2016-08-08 03:13:38.170467');
INSERT INTO `customers` VALUES(580,'daisyfresh2138@diary.ocn.ne.jp','daisyfresh2138@diary.ocn.ne.jp','$2a$10$uABST.aSdqEcZr/REWsIYulbRooCbP077wWLhuvIs.oTOlDbAblHi','中山','かんな','ナカヤマ','カンナ','2016-08-08 05:33:33.764630','2016-08-08 05:33:33.764630');
INSERT INTO `customers` VALUES(581,'ashra.r.t.kyo.710@zeus.eonet.ne.jp','ashra.r.t.kyo.710@zeus.eonet.ne.jp','$2a$10$GpvF2oKkS1C9J6N8ZwTdn.roQ7BTH99wRrmSIT8g2iXmd4hiqHi2C','辻','良子','ツジ','リョウコ','2016-08-08 07:42:34.636007','2016-08-08 07:42:34.636007');
INSERT INTO `customers` VALUES(582,'souda3poniikou@softbank.ne.jp','souda3poniikou@softbank.ne.jp','$2a$10$R3SiRZs/Bs819xI48Oy.outcHJjoOIiHIYeclfo497bQjC/llDgO6','荒木','秀子','アラキ','ヒデコ','2016-08-08 08:36:02.952192','2016-08-08 08:36:02.952192');
INSERT INTO `customers` VALUES(583,'artemisitsuko125@gmail.com','artemisitsuko125@gmail.com','$2a$10$ShHvqj4vNr3GLOrQNhT9xuVrwUx.FoOjtvx.XxICfIwaVvTFWe79a','村石','いつ子','ムライシ','イツコ','2016-08-08 08:37:50.484780','2016-08-08 08:37:50.484780');
INSERT INTO `customers` VALUES(584,'eisuke.y1027@gmail.com','eisuke.y1027@gmail.com','$2a$10$vsoNwyj.7SpmsZh/EvPnpOWxymwIv82GULtU9IjUYQMx2Aaz.YVd2','山見','英介','ヤマミ','エイスケ','2016-08-08 08:42:48.740489','2016-08-08 08:42:48.740489');
INSERT INTO `customers` VALUES(585,'makishimoken@gmail.com','makishimoken@gmail.com','$2a$10$edDX20oHXsLKedDguipY0uV0If5ng1ceyLStyMIJltupXt0WSHg9i','今西','道子','イマニシ','ミチコ','2016-08-08 13:40:22.741259','2016-08-08 13:40:22.741259');
INSERT INTO `customers` VALUES(586,'zzzz-zizi26@docomo.ne.jp','zzzz-zizi26@docomo.ne.jp','$2a$10$84.Z/V5ARPI/Cr7PuTWdZuV/Y7q7kK9x2BrxBGvSOEn5JO7PJFZzS','定時','知子','サダトキ','トモコ','2016-08-08 13:55:12.173169','2016-08-08 13:55:12.173169');
INSERT INTO `customers` VALUES(587,'douzenyoga160@gmail.com','douzenyoga160@gmail.com','$2a$10$qWuCJFH/.aiOjMhzKq.V6OtPLROH4ZYBMddrOUoSady6wMuHjO99C','西口','章子','ニシグチ','アキコ','2016-08-08 21:45:57.659977','2016-08-08 21:45:57.659977');
INSERT INTO `customers` VALUES(588,'schwester6833@gmail.com','schwester6833@gmail.com','$2a$10$NVkwCjbYe6sjB4TqvJXHpecDPe56nMwh0TqO2h3Ivnh5UyW0vuke2','羽太','千春','ハブタ','チハル','2016-08-08 22:43:29.759683','2016-08-08 22:43:29.759683');
INSERT INTO `customers` VALUES(589,'mar.1120-hik@ezweb.ne.jp','mar.1120-hik@ezweb.ne.jp','$2a$10$G3aS1uvp3oOsfzoCKF7nJepuEhEVGWAOgB39nCinU.ws8gDE37w0e','高橋','ひかり','タカハシ','ヒカリ','2016-08-08 23:50:32.242379','2016-08-08 23:50:32.242379');
INSERT INTO `customers` VALUES(590,'lapi.laz777@gmail.com','lapi.laz777@gmail.com','$2a$10$6XEPQBn2C/.17qiJET4PhO6XD5GjmBU9caybRaPwjd/OfNL8o62aK','宮崎','由美','ミヤザキ','ユミ','2016-08-09 07:57:32.686969','2016-08-09 07:57:32.686969');
INSERT INTO `customers` VALUES(591,'hibari.vv@ezweb.ne.jp','hibari.vv@ezweb.ne.jp','$2a$10$wkSnBZDAP0Yv1Vyv5Y9DlepMb1MZ3/8WKR/D/I/W45TqRF7gIvEDa','高須賀','いずみ','タカスカ','イズミ','2016-08-09 15:34:10.427829','2016-08-09 15:34:10.427829');
INSERT INTO `customers` VALUES(592,'tt_trenton@yahoo.co.uk','tt_trenton@yahoo.co.uk','$2a$10$BxADJ88NZqFxFeYnScpsK.cFoZMNjLFhlcvz6cjaTId685H1yyL9S','土井','としこ','ドイ','トシコ','2016-08-09 22:09:08.916240','2016-08-09 22:09:08.916240');
INSERT INTO `customers` VALUES(593,'toishilx425@ezweb.nejp','toishilx425@ezweb.nejp','$2a$10$YObWkEwKAcq33vuRmyMfQulnvKr1cf9HL0lR/9RhCXWMLeFe5agIm','登石','泉','トイシ','イズミ','2016-08-09 23:37:50.530823','2016-08-09 23:37:50.530823');
INSERT INTO `customers` VALUES(594,'toishilx425@ezweb.ne.jp','toishilx425@ezweb.ne.jp','$2a$10$usXFzwif7YB8wOe47zgsteuVUYb8ls4xsYoOsZneSHZybjm/GGIvC','登石','泉','トイシ','イズミ','2016-08-09 23:38:20.325898','2016-08-09 23:38:20.325898');
INSERT INTO `customers` VALUES(595,'kellykaori57@gmail.com','kellykaori57@gmail.com','$2a$10$gfdzzhRnn5C/jU1DAcVW.OpS6ejhAMh2yDSQU6TDyk4f0l5KM.75y','ケリー','佳織','ケリー','カオリ','2016-08-10 20:53:46.423512','2016-08-10 20:53:46.423512');
INSERT INTO `customers` VALUES(596,'lucky.papa.0358@gmail.com','lucky.papa.0358@gmail.com','$2a$10$7RqDKO9hWYNrl9qTSwQJFePHFVJwzVJM/uI9ynQJmCkPdWo/IlO7S','小山','真弘','コヤマ','マサヒロ','2016-08-10 21:14:47.175339','2016-08-10 21:14:47.175339');
INSERT INTO `customers` VALUES(597,'riei0116@ezweb.ne.jp','riei0116@ezweb.ne.jp','$2a$10$q4146nI7gSbdhkrHPg4XaO/JU/6k7DyjnFnz5vW37T2KZv3I9OEme','稲田','理恵子','イナダ','リエコ','2016-08-11 10:02:44.849452','2016-08-11 10:02:44.849452');
INSERT INTO `customers` VALUES(598,'twink.merrymuu@icloud.com','twink.merrymuu@icloud.com','$2a$10$WJE25FXoPIpVnoHTped4R..1wMpsbQTflYEMn8os/mve/20kaq7Fu','関口','絢子','セキグチジュンコ','twink.merrymuu@icloud.com','2016-08-12 07:43:06.691411','2016-08-12 07:43:06.691411');
INSERT INTO `customers` VALUES(599,'myk5rydm@i.softbank.jp','myk5rydm@i.softbank.jp','$2a$10$jKiPqEihRnnfQxNmmvSGGOUibl6fPAucv/ZRe1RINCOEIzXlAXb32','鈴木','麻衣子','スズキ','マイコ','2016-08-12 18:08:02.716269','2016-08-12 18:08:02.716269');
INSERT INTO `customers` VALUES(600,'gmphfx7s@sf.commufa.jp','gmphfx7s@sf.commufa.jp','$2a$10$SV87zLja7F0E7oQEL8T5CuyTJqAXe8AW6SYaa/NBDJJkHNxlTVjgy','大石','康弘','オオイシ','ヤスヒロ','2016-08-12 18:31:27.910684','2016-08-12 18:31:27.910684');
INSERT INTO `customers` VALUES(601,'nanasukeandpotiko@gmail.com','nanasukeandpotiko@gmail.com','$2a$10$ndVmfvByDvFFlzpgHh5POugAL7xRpPA7q5VZCO21ZtKeav18UO28S','村田','千草','ムラタ','チグサ','2016-08-14 00:16:26.335013','2016-08-14 00:16:26.335013');
INSERT INTO `customers` VALUES(602,'rewards-room@ezweb.ne.jp','rewards-room@ezweb.ne.jp','$2a$10$TQHFWWIOUuBdBvd6/XFRJ.hhaYfeCI.lJx5vuoejhRmoQZf4ST8Vy','梶本 ','知美','カジモト','トモミ','2016-08-14 05:40:25.393197','2016-08-14 05:40:25.393197');
INSERT INTO `customers` VALUES(603,'konos914@hotmail.co.jp','konos914@hotmail.co.jp','$2a$10$g57BWKFhVLPgFKqwT.TgoeNpuz9LdihaXz/k4O3IGt1MkKyX.BbeS','河野','祥子','コウノ','サチコ','2016-08-15 00:52:30.886325','2016-08-15 00:52:30.886325');
INSERT INTO `customers` VALUES(604,'jjroom0415@live.jp','jjroom0415@live.jp','$2a$10$DINvRMhL054JN3IV.wnfZ.6MRyGqxbpn.LeAAHy8EQMltTK86wjWm','吉澤','雅之','ヨシザワ','マサユキ','2016-08-15 09:09:05.334822','2016-08-15 09:09:05.334822');
INSERT INTO `customers` VALUES(605,'daisy12@docomo.ne.jp','daisy12@docomo.ne.jp','$2a$10$QwJ0Z6mt1YHYHEgAGw16xuRa7vbVWHZ7r1Zu94Cvns/cG2aeyPq.m','松田','典子','マツダ','ノリコ','2016-08-15 10:19:51.363805','2016-08-15 10:19:51.363805');
INSERT INTO `customers` VALUES(606,'shoko_mikawa1114@yahoo.co.jp','shoko_mikawa1114@yahoo.co.jp','$2a$10$Qgh5LpQx/t5YiN0adOpe9O7Fpg79dVohBnCXqRcJXmWr.LKfKF0gi','三河','祥子','ミカワ','ショウコ','2016-08-15 11:28:47.094134','2016-08-15 11:28:47.094134');
INSERT INTO `customers` VALUES(607,'yamahe_ikoune@yahoo.co.jp','yamahe_ikoune@yahoo.co.jp','$2a$10$27H4CMEhMrSjFv/Gjc5eZeZy.2JVaB3qIcB5w8ty1YwGnL9Eku5g.','菊地','乃愛','キクチ','ノア','2016-08-15 20:37:58.647982','2016-08-15 20:37:58.647982');
INSERT INTO `customers` VALUES(608,'eiko.s.kohara@gmail.com','eiko.s.kohara@gmail.com','$2a$10$sPMjmBPO84bhD1R4h4PGYOeaK7CqHwqrbNUvBOGftlrgvXPL1FYo6','重見','英子','シゲミ','エイコ','2016-08-15 21:21:24.701967','2016-08-15 21:21:24.701967');
INSERT INTO `customers` VALUES(609,'tajmahalsaori@gmail.com','tajmahalsaori@gmail.com','$2a$10$Q11S3FiCjxT9ngGShNV2c.e7oiBYJ8IJtF3G5U14uEWdozP6SoilW','田島','彩央李','タジマ','サオリ','2016-08-16 02:36:26.643511','2016-08-16 02:36:26.643511');
INSERT INTO `customers` VALUES(610,'minimomonga20002000@gmail.com','minimomonga20002000@gmail.com','$2a$10$CZHKNOYFb1/Jg31hbYu7wuOmrXRVofzKMM4A6j0Wh.PobRujxD6Eq','森田','哲弘','モリタ','アキヒロ','2016-08-16 05:11:30.322430','2016-08-16 05:11:30.322430');
INSERT INTO `customers` VALUES(611,'yse.ingk03@gmail.com','yse.ingk03@gmail.com','$2a$10$8CFOd6vCMXdsqorxbFUy4.xKp94u5S8royH0qd6G8zT108MwQKRsa','稲垣','よしえ','イナガキ','ヨシエ','2016-08-16 08:56:29.395825','2016-08-16 08:56:29.395825');
INSERT INTO `customers` VALUES(612,'teturou76@gmail.com','teturou76@gmail.com','$2a$10$lUGkha9Q.4HubrUtP5n1B.LZeJ.dcgTG5V7UBs9Qn5an7kdzpiQ3.','岩木','秀倫','イワキ','ヒデトシ','2016-08-16 10:40:31.408424','2016-08-16 10:40:31.408424');
INSERT INTO `customers` VALUES(613,'ms1230@docomo.ne.jp','ms1230@docomo.ne.jp','$2a$10$l7mGIDq9KFQPLcU0VENpyu4dBi0IMasSMJeMAVwsgZGQcUjo1eOKy','柴尾','佑子','シバオ','ユウコ','2016-08-16 13:37:33.452874','2016-08-16 13:37:33.452874');
INSERT INTO `customers` VALUES(614,'mmimirucan@yahoo.co.jp','mmimirucan@yahoo.co.jp','$2a$10$iVBYmAbgNXsLhNff6a1E5eJo9Uk9SdAXWvILYZtWA59rlLBkts2Jm','柴尾','佑子','シバオ','ユウコ','2016-08-16 13:51:06.724609','2016-08-16 13:51:06.724609');
INSERT INTO `customers` VALUES(615,'takatsuki@lunaworks.jp','takatsuki@lunaworks.jp','$2a$10$zTFPbFtMmMrDSPhi9eVDCeU29Az90aHqaIgD4YplfUtbdCB5CBSj.','高月','美樹','タカツキ','ミキ','2016-08-16 23:01:38.922859','2016-08-16 23:01:38.922859');
INSERT INTO `customers` VALUES(616,'ouchigohan.teshigoto@gmail.com','ouchigohan.teshigoto@gmail.com','$2a$10$HVpWGXv5FDZYQGGOkPLvUOpZgTaZD3vaV2x3/iAEdGsLvT/lyhhvO','矢野','嘉恵','ヤノ','カエ','2016-08-18 00:52:32.533580','2016-08-18 00:52:32.533580');
INSERT INTO `customers` VALUES(617,'raitaro416@gmail.com','raitaro416@gmail.com','$2a$10$ni6n4vffp1uR6dh7xiuebu9q6/VCKUhQ7cxVfdGRVXV7hi6dyoXiC','大熊','真理子','オオクマ','マリコ','2016-08-18 01:42:02.253100','2016-08-18 01:42:02.253100');
INSERT INTO `customers` VALUES(618,'yutosatomi@gmail.com','yutosatomi@gmail.com','$2a$10$wh87lSgaT3r2pDDjryv2a.7bMaKyT/hpBfm9e1dwRFRTHc1i6x6zO','浅野','さと美','アサノ','サトミ','2016-08-18 01:58:54.355820','2016-08-18 01:58:54.355820');
INSERT INTO `customers` VALUES(619,'sato-yu.to@yahoo.ne.jp','sato-yu.to@yahoo.ne.jp','$2a$10$NJO8HpZ.MUxGpwBRoeGiCek1EcMVf81uX.irGPDsnCfQKMnRNGR9u','浅野','さと美','アサノ','サトミ','2016-08-18 02:00:30.972654','2016-08-18 02:00:30.972654');
INSERT INTO `customers` VALUES(620,'potoko00@gmail.com','potoko00@gmail.com','$2a$10$tmfZcGLR4ruvxR9b3Dz3y.P5Fd7SOyW7e6fISboxRROeXvSAP5g0W','才善','浩','サイゼン','ヒロシ','2016-08-18 05:26:57.058535','2016-08-18 05:26:57.058535');
INSERT INTO `customers` VALUES(621,'tsune71@hotmail.com','tsune71@hotmail.com','$2a$10$Dc2QtVv2fQeRXn2ZkJMlPu/kIImKai.OAOznLQ1kjnp9HqHMeLZTa','赤井','恒子','あかい','つねこ','2016-08-18 14:12:02.083179','2016-08-18 14:12:02.083179');
INSERT INTO `customers` VALUES(624,'slowakamil@gmail.com','slowakamil@gmail.com','$2a$10$1Zt3gv1dSrOt5utBYYuzTOvOKRGlT/Ym835s4CrBB7YxruDz4NtWK','大坪','まど佳','オオツボ','マドカ','2016-08-19 06:48:49.425266','2016-08-19 06:48:49.425266');
INSERT INTO `customers` VALUES(625,'mabo19694457@docomo.ne.jp','mabo19694457@docomo.ne.jp','$2a$10$/rHTJrGWParTgjLuGDkln.psCZzaqIXDIFey13xhupGFN5EfEOmPC','島田','雅昭','シマダ','マサアキ','2016-08-20 04:00:28.009178','2016-08-20 04:00:28.009178');
INSERT INTO `customers` VALUES(626,'masachan_aaa@yahoo.co.jp','masachan_aaa@yahoo.co.jp','$2a$10$jslx43zFsdyWHmWYuYJoe.GNj1ELwmfs2K.hgZ2HomXUCuhrmGuii','市川','正人','イチカワ','マサト','2016-08-20 10:13:49.600560','2016-08-20 10:13:49.600560');
INSERT INTO `customers` VALUES(627,'tmrn2002@yahoo.co.jp','tmrn2002@yahoo.co.jp','$2a$10$4nCRkrZXtF4a1QNzejfEZu9W7oJ5lZDxyalF1RXP87AesqApjFj3C','丸二','外茂子','マルニ','トモコ','2016-08-20 12:41:32.827787','2016-08-20 12:41:32.827787');
INSERT INTO `customers` VALUES(628,'honokaya333@gmail.com','honokaya333@gmail.com','$2a$10$tP8z7V2TbKhNDWVzy32Lu.a8.69DuVWf3893SNmGOD6Q2bj5A.XNa','大木','雅代','オオキ','マサヨ','2016-08-20 12:54:22.328237','2016-08-20 12:54:22.328237');
INSERT INTO `customers` VALUES(629,'7.tjatp@gmail.com','7.tjatp@gmail.com','$2a$10$lXpGh6Pyk8yRpMv5efwfvufXjT.SkrWFu96YF6u3gBY4QMPKSVOpG','中山','綾菜','ナカヤマ','アヤナ','2016-08-20 13:28:05.174394','2016-08-20 13:28:05.174394');
INSERT INTO `customers` VALUES(630,'skawazu-nmz01@memoad.jp','skawazu-nmz01@memoad.jp','$2a$10$lGMo4t2NirHgdgJdQaMh5.q8MulOOI/lgoLq4Pru90ExMt55sY/r2','河津','成幸','カワヅ','シゲユキ','2016-08-20 20:41:29.738257','2016-08-20 20:41:29.738257');
INSERT INTO `customers` VALUES(631,'rosso.p.azzuro-tomo.mk@ezweb.ne.jp','rosso.p.azzuro-tomo.mk@ezweb.ne.jp','$2a$10$s9.TP28bedk9KNzzAxpxT.Uo/4viAHcHKFKf3IiVFfglmdLL0y65.','仲西','美紀','ナカニシ','ミキ','2016-08-21 03:23:26.163675','2016-08-21 03:23:26.163675');
INSERT INTO `customers` VALUES(632,'Iizuna.sizentiyujouin@gmail.com','iizuna.sizentiyujouin@gmail.com','$2a$10$kgaCOB5R6R0pf2ADf5Vz9urqe3Lrop2eE/1.4X3PwOtoiGSNym4Wu','大関','文夫','オオゼキ','フミオ','2016-08-21 05:38:44.463781','2016-08-21 05:38:44.463781');
INSERT INTO `customers` VALUES(633,'ruriel.go.go.go@gmail.com','ruriel.go.go.go@gmail.com','$2a$10$JwAXaIn5.OEaMnQJnNpfG.yGmS2DjszlxWIy8bFlXED4TkxKKyGyG','児島','由紀恵','コジマ','ユキエ','2016-08-21 07:47:04.448221','2016-08-21 07:47:04.448221');
INSERT INTO `customers` VALUES(634,'satomi-matoba@ares.eonet.ne.jp','satomi-matoba@ares.eonet.ne.jp','$2a$10$0J9Sb2l0pyUxuAc0HiDKM.wr0sV.KVH25AXKQliDsCBdVINrY6Mo6','的場','里美','マトバ','サトミ','2016-08-21 09:29:18.597974','2016-08-21 09:29:18.597974');
INSERT INTO `customers` VALUES(635,'iwa554@yahoo.co.jp','iwa554@yahoo.co.jp','$2a$10$S3RDmhjV1i5eDVHpuSVwNOLtctrY.7COS1G7koGlpQRwHfwZ8UEoG','平野','良香','ヒラノ','ﾘｮｳｶ','2016-08-21 12:50:32.185211','2016-08-21 12:50:32.185211');
INSERT INTO `customers` VALUES(636,'kira.kira.naritai@ezweb.ne.jp','kira.kira.naritai@ezweb.ne.jp','$2a$10$PY7nY3oSOWa32VdyuP0KW.vZ.SJdsgh.nMxjFtvADjaHMbw1WvBEW','児玉','良子','コダマ','リョウコ','2016-08-21 16:46:15.335049','2016-08-21 16:46:15.335049');
INSERT INTO `customers` VALUES(637,'y.0714-sakijapln@docomo.ne.jp','y.0714-sakijapln@docomo.ne.jp','$2a$10$7EVtGOZ9fPqBrzHLiT2SX.ElNg9EvAbzOdRqFwPz52AJPlFfeKSyu','坂本','沙希子','サカモト','サキコ','2016-08-22 02:00:41.488685','2016-08-22 02:00:41.488685');
INSERT INTO `customers` VALUES(638,'topaztopaz263@hotmail.com','topaztopaz263@hotmail.com','$2a$10$8uRG0pKFzlGYAN6XgjTCCuNOWWWBIOY0.JO4nCwR5j8d852jMsq12','小澤','宏美','オザワ','ヒロミ','2016-08-22 02:50:20.106479','2016-08-22 02:50:20.106479');
INSERT INTO `customers` VALUES(639,'kmatsuoka6@gmail.com','kmatsuoka6@gmail.com','$2a$10$.fNQa20uLA1I3qNHypIPLeH6jx1L/Xf7MlhA8OGvP2BRNTtcu.5Xi','松岡','和幸','マツオカ','カズユキ','2016-08-22 10:19:47.241773','2016-08-22 10:19:47.241773');
INSERT INTO `customers` VALUES(640,'vegeqsai931@gmail.com','vegeqsai931@gmail.com','$2a$10$sNWXADjGLd1qpu4WLMoeReUjhkuSyCODm7Xf4yAyVzc/hJC3AqJhi','大久保','千恵子','オオクボ','チエコ','2016-08-22 18:54:59.556824','2016-08-22 18:54:59.556824');
INSERT INTO `customers` VALUES(641,'jaime_u@yahoo.co.jp','jaime_u@yahoo.co.jp','$2a$10$OgY6Vd3.Lf35KBY0gtwwqOFxquV3X1oGEo3OsKYcvc55mkpD5W7Le','浦辺','紀','ウラベ','ハジメ','2016-08-22 21:10:49.693367','2016-08-22 21:10:49.693367');
INSERT INTO `customers` VALUES(642,'tagami@remedy-garden.co.jp','tagami@remedy-garden.co.jp','$2a$10$NGDCTNqV56FQeX2OgVhho.qDti1vKYVC5vg57EUJEweoT1rQzif9S','田上','玲子','タガミ','レイコ','2016-08-23 03:51:54.090090','2016-08-23 03:51:54.090090');
INSERT INTO `customers` VALUES(643,'koara.asa@gmail.com','koara.asa@gmail.com','$2a$10$xBeDMd1V3WakPpluaJbqT.ZPgf9weCG9hkrKYgroZObhrIG/8gR8G','松村','麻子','マツムラ','アサコ','2016-08-23 05:48:15.187802','2016-08-23 05:48:15.187802');
INSERT INTO `customers` VALUES(644,'futotake2115@ezweb.ne.jp','futotake2115@ezweb.ne.jp','$2a$10$gKVea88wjf8Lzq/2qsblt.eaHDzR4Je.O/7QQjBGX0cy5CIm3ZSo2','丹野','眞由美','タンノ','マユミ','2016-08-23 05:56:10.832537','2016-08-23 05:56:10.832537');
INSERT INTO `customers` VALUES(645,'ihs.saito@gmail.com','ihs.saito@gmail.com','$2a$10$R1YKIB9FADvVmZdRXBjZc.dfKcTVgKcJkpy2L40D6Wr2gMJunjq9G','齋藤','優','サイトウ','マサル','2016-08-24 07:47:15.202308','2016-08-24 07:47:15.202308');
INSERT INTO `customers` VALUES(646,'shachoochisato@gmail.com','shachoochisato@gmail.com','$2a$10$e4M99g59gcg18bOsV4SHsOkd6r/f.xBl8lXKzjGELhonuYeJ6ZNqO','神田','千里','カンダ','チサト','2016-08-25 02:43:04.297972','2016-08-25 02:43:04.297972');
INSERT INTO `customers` VALUES(647,'h.souda73100123@gmail.com','h.souda73100123@gmail.com','$2a$10$KFUwUDfpVj8YVlq6O56miexw1gvNNUyn.yBqbJ2XH0YLjmBjIr9ZW','渡邉','ひふみ','ワタナベ','ヒフミ','2016-08-25 02:50:37.069045','2016-08-25 02:50:37.069045');
INSERT INTO `customers` VALUES(648,'iwano@fudo-design.co.jp','iwano@fudo-design.co.jp','$2a$10$YuBJX6l/1c5AsbcLEJmbzOVjZUCkdQH72hawJwhQed.I8BwmBR4.S','岩野','功','イワノ','コウ','2016-08-25 05:09:38.184456','2016-08-25 05:09:38.184456');
INSERT INTO `customers` VALUES(649,'hokke.1hou.jun.ji46@dream.ocn.ne.jp','hokke.1hou.jun.ji46@dream.ocn.ne.jp','$2a$10$IsmFU/lNUIr5PEB9F8JVwuO9iu.WNityrJ896qoPyZKd2n5ql/Tm.','西谷','義堂','ニシタニ','ギドウ','2016-08-25 06:38:35.434010','2016-08-25 06:38:35.434010');
INSERT INTO `customers` VALUES(650,'gtmks@a.email.ne.jp','gtmks@a.email.ne.jp','$2a$10$Lla5wY5eIPE79fIR62HQA.JYWx14YDZ/SXzdjma7j4cGJRz0Ah4eW','鈴木','徳子','スズキ','ノリコ','2016-08-25 09:02:14.385140','2016-08-25 09:02:14.385140');
INSERT INTO `customers` VALUES(651,'ZVS00444@nifty.ne.jp','zvs00444@nifty.ne.jp','$2a$10$fM8rPdRZCLVKL/rvxwf2k.G.uJ738buJ8jCl.9g0LS7B26Tj2zjmG','湯山','ひろみ','ユヤマ','ヒロミ','2016-08-25 12:19:54.594268','2016-08-25 12:19:54.594268');
INSERT INTO `customers` VALUES(652,'mint.condition.ca@gmail.com','mint.condition.ca@gmail.com','$2a$10$k4VpzxtwnJOaG4qB452zd..ZCLQ64ZLFcnoO.vo.J4KZ4tK5RraAa','浅井','千穂','アサイ','チホ','2016-08-26 00:32:51.269025','2016-08-26 00:32:51.269025');
INSERT INTO `customers` VALUES(653,'yumiko933759@hotmail.co.jp','yumiko933759@hotmail.co.jp','$2a$10$f24g4X3h/xtiVtpuL2bpQeSmKLCdHXygUVwt0Lb9jovbcZVfQ2Dzm','中村','弓子','ナカムラ','ユミコ','2016-08-26 22:06:48.777115','2016-08-26 22:06:48.777115');
INSERT INTO `customers` VALUES(654,'maria_a_vida_vivida@yahoo.co.jp','maria_a_vida_vivida@yahoo.co.jp','$2a$10$8c9csDPIzNkSrE8mE0DGY.aDTDWHyhUFlnfC307xbAK1/Vv7CkCm.','寒河江','真理','サガエ','マリ','2016-08-27 09:37:31.542405','2016-08-27 09:37:31.542405');
INSERT INTO `customers` VALUES(655,'junko3368@yahoo.co.jp','junko3368@yahoo.co.jp','$2a$10$v5cyvqtiLsuNX1ZUt0BJQ.gFkG33754gOSP6q93D7pJzfnDaRBDNO','狩野','潤子','カノウ','ジュンコ','2016-08-27 14:07:54.402285','2016-08-27 14:07:54.402285');
INSERT INTO `customers` VALUES(656,'sono@mbf.nifty.com','sono@mbf.nifty.com','$2a$10$a3W2YzPuQsSge4QPyrUpeOJ70F0i9nzFcO4V3aCYSGhO6.bJb..A.','宗野','政美','ソウノ','マサミ','2016-08-27 22:32:56.484675','2016-08-27 22:32:56.484675');
INSERT INTO `customers` VALUES(657,'mimosakame@gmail.com','mimosakame@gmail.com','$2a$10$cezGKE401yWyLtVAYRcZZONEs0saGaWYZgqIo.VdCNyQCgDyleSEG','笹川','亜紀','ササガワ','アキ','2016-08-29 00:45:58.556170','2016-08-29 00:45:58.556170');
INSERT INTO `customers` VALUES(658,'hanaam65@yahoo.co.jp','hanaam65@yahoo.co.jp','$2a$10$Jn.EFY1QMtaSvhCpGPKK1O8dL8WQy4CrlaYFOeDx.yY/yWGyiWBYu','渡部','直子','ワタナベ','ナオコ','2016-08-29 05:54:05.796886','2016-08-29 05:54:05.796886');
INSERT INTO `customers` VALUES(659,'nahokoma@gmail.com','nahokoma@gmail.com','$2a$10$mIQbYZxIbW579dhYhZax4uwzkKHNZhO3I4tkhruRekyCFgnpNrOxu','松岡','奈保子','マツオカ','ナホコ','2016-08-29 10:47:40.602216','2016-08-29 10:47:40.602216');
INSERT INTO `customers` VALUES(660,'dm2-ftpv@joetsu.ne.jp','dm2-ftpv@joetsu.ne.jp','$2a$10$4YCM9ITQRMk9wxRKSvYzm.smV6EgIB.rwGF2lCg3BUqfgOqD25TRS','長谷川','唯夫','ハセガワ','タダオ','2016-08-29 23:36:28.355150','2016-08-29 23:36:28.355150');
INSERT INTO `customers` VALUES(661,'maa591122@ezweb.ne.jp','maa591122@ezweb.ne.jp','$2a$10$yul9D9HTmwac/yaItZoj3O6bupoHULevK/b9e5yC6kclxTqVSwje6','加藤','鞠奈','カトウ','マリナ','2016-08-30 06:00:33.305425','2016-08-30 06:00:33.305425');
INSERT INTO `customers` VALUES(662,'s.chiharu.5555@ezweb.ne.jp','s.chiharu.5555@ezweb.ne.jp','$2a$10$Lqc1lrXwtK4pNsy9q0SdGOOjk6U9ETATVCORm9fuLhEffp6H65P.2','白根','千春','シラネ','チハル','2016-08-30 06:33:20.387058','2016-08-30 06:33:20.387058');
INSERT INTO `customers` VALUES(663,'haruka19860814.20141019@ezweb.ne.jp','haruka19860814.20141019@ezweb.ne.jp','$2a$10$pHXaSD7Vs1II7/u9YUJko.MrSeKG4TxEcU.5bYkem74mnJ7vzEBke','伊藤','はるか','イトウ','ハルカ','2016-08-30 07:15:17.700208','2016-08-30 07:15:17.700208');
INSERT INTO `customers` VALUES(664,'mokketyumu@gmail.com','mokketyumu@gmail.com','$2a$10$t/culDDU7MbCrh5QbxCbEu0uBFiolgs8o4ZE9OBhKz1ZZL7JoJ/fG','久米原','祐子','クメハラ','ユウコ','2016-08-31 01:34:01.585035','2016-08-31 01:34:01.585035');
INSERT INTO `customers` VALUES(665,'i.am.yoko-ishiwata@docomo.ne.jp','i.am.yoko-ishiwata@docomo.ne.jp','$2a$10$NuPYbljC0S25WH4lAZPhrOVLEq0bhth5RDc6NRxY9TQpTFdxjITH6','鈴木','陽子','スズキ','ヨウコ','2016-08-31 03:25:21.137068','2016-08-31 03:25:21.137068');
INSERT INTO `customers` VALUES(666,'mikaron1228@yahoo.co.jp','mikaron1228@yahoo.co.jp','$2a$10$o8iiI/hRgZShPS2k0HMzx.d0PvAqQEe/YjfbbYdafVrrzr0rjxsbG','桑子','美香','クワコ','ミカ','2016-08-31 04:02:42.521752','2016-08-31 04:02:42.521752');
INSERT INTO `customers` VALUES(667,'yosanico526@gmail.com','yosanico526@gmail.com','$2a$10$ezF2oZLlSr/JuZxlTnmR4OOSqNnCGGMdErWe6SiU46hYHdrx/NKP6','大屋','温子','オオヤ','アツコ','2016-08-31 22:58:59.332972','2016-08-31 22:58:59.332972');
INSERT INTO `customers` VALUES(668,'dctthanks@excite.co.jp','dctthanks@excite.co.jp','$2a$10$1WXxF2czA.8WBbq2K84n1.NsoB1bWOb1rjjWXS8aLRMQC/MLtcAMq','土橋','涼子','ツチハシ','リョウコ','2016-09-01 05:52:18.216028','2016-09-01 05:52:18.216028');
INSERT INTO `customers` VALUES(669,'boardrider.28@gmail.com','boardrider.28@gmail.com','$2a$10$HylAW.yMKGBhkDsTD.TsWOevhikZURGnvzCYFuN08lEul.XLVXYce','林','高行','ハヤシ','タカユキ','2016-09-02 05:13:57.984213','2016-09-02 05:13:57.984213');
INSERT INTO `customers` VALUES(670,'kazumi.yoshikawa@tohmatsu.co.jp','kazumi.yoshikawa@tohmatsu.co.jp','$2a$10$UJI0xtzt7xNOMBQMSWepxu27exkEJF0KWdbL0jVH9Pnmu1HDSl2xe','吉川','和美','ヨシカワ','カズミ','2016-09-02 07:31:30.456407','2016-09-02 07:31:30.456407');
INSERT INTO `customers` VALUES(671,'pu_sa_n_su_ki@yahoo.co.jp','pu_sa_n_su_ki@yahoo.co.jp','$2a$10$mkF4sSPayTBkmwuNOenvOOYprV0znYbp671R4fK02mCbL./4OeNm6','山口','忠祐','ヤマグチ','タダスケ','2016-09-02 08:34:00.267767','2016-09-02 08:34:00.267767');
INSERT INTO `customers` VALUES(672,'tomomi-lips730@docomo.ne.jp','tomomi-lips730@docomo.ne.jp','$2a$10$52oTNnaulmvbaEjSJQvNReRQ2k5WZSqs2IK.MXzyRCqXoO6ifbZwi','斎藤','朋美','サイトウ','朋美','2016-09-03 00:26:24.693488','2016-09-03 00:26:24.693488');
INSERT INTO `customers` VALUES(673,'sayche0730@gmail.com','sayche0730@gmail.com','$2a$10$JOAkDdnSzZ9GIzxfMejl6ekjiQi5puIVA/Fzm2gV6nps0tk4ABq5y','斎藤','朋美','サイトウ','朋美','2016-09-03 00:27:30.847522','2016-09-03 00:27:30.847522');
INSERT INTO `customers` VALUES(674,'hideakitakahashi@test.com','hideakitakahashi@test.com','$2a$10$WGANuftqX.FQEFD5JuPW4uaS4Qlp9yeaNvhskVkEyCSg6zBaE5NMG','テスト','テスト','テスト','テスト','2016-09-03 01:41:05.828050','2016-09-03 01:41:05.828050');
INSERT INTO `customers` VALUES(675,'angin94@ezweb.ne.jp','angin94@ezweb.ne.jp','$2a$10$OOG3PcdMBEmjiCpceBx4..u0gV0btmMtY9810eUz8LORBKlyuULeu','山田','明和','ヤマダ','アキカズ','2016-09-03 08:24:45.976677','2016-09-03 08:24:45.976677');
INSERT INTO `customers` VALUES(676,'howtuki@gmail.com','howtuki@gmail.com','$2a$10$l1J5CyJ6du4S/RMTI929t.DHCNSQ4vpyxqqIqjrjl/06gxT/yvd36','大在家','久美','オオザイケ','クミ','2016-09-03 08:47:04.278083','2016-09-03 08:47:04.278083');
INSERT INTO `customers` VALUES(677,'adorablephoto@i.softbank.jp','adorablephoto@i.softbank.jp','$2a$10$qbJtLqf8L51Qr96MSDKDrOTsHsrYCG7q5meTB95JWYBjNtBRaY5X.','いこま','よしこ','','','2016-09-03 15:25:56.821289','2016-09-03 15:25:56.821289');
INSERT INTO `customers` VALUES(678,'mignon-chien-02.10@ezweb.ne.jp','mignon-chien-02.10@ezweb.ne.jp','$2a$10$0u.IskIfQvL2eSNduxvEdOxiIQcbNNT1/sn7BfgyXO/h5f7lBOjkS','溝渕','恵美','ミゾブチ','ヨシミ','2016-09-04 07:36:22.889799','2016-09-04 07:36:22.889799');
INSERT INTO `customers` VALUES(679,'miraidou0408@gmail.com','miraidou0408@gmail.com','$2a$10$WBhiSd58rJBV6VUj3//lse95RDJUKhrDlP.XkNNw5XgH7DJXCaRW6','飯島','未来','イイジマ','ミライ','2016-09-04 13:00:08.543970','2016-09-04 13:00:08.543970');
INSERT INTO `customers` VALUES(680,'yasuo1184@yahoo.co.jp','yasuo1184@yahoo.co.jp','$2a$10$9.EQoVObq7Q68gDJ8zmG3ONlkFsJlcg8oBgM7zPyFNjNTQeUK8ao6','室田','保雄','ムロタ','ヤスオ','2016-09-05 09:06:12.209917','2016-09-05 09:06:12.209917');
INSERT INTO `customers` VALUES(681,'yoko.an3accidental15meeting@ezweb.ne.jp','yoko.an3accidental15meeting@ezweb.ne.jp','$2a$10$lRIUl0i0Slj3oo6.slfrIeFQzwXif6peHtoNFtLM7g21IqQ3Ys6L6','平澤','容子','ヒラサワ','ヨウコ','2016-09-05 12:21:14.769776','2016-09-05 12:21:14.769776');
INSERT INTO `customers` VALUES(682,'1114yoko0923@gmail.com','1114yoko0923@gmail.com','$2a$10$H6FGl1HIkqLUir.H6xGRVuWuo6au7V9IsQkDn5QL5PUV9n0zKYTHe','平澤','容子','ヒラサワ','ヨウコ','2016-09-05 12:26:42.310891','2016-09-05 12:26:42.310891');
INSERT INTO `customers` VALUES(683,'yumikon_kon511@yahoo.co.jp','yumikon_kon511@yahoo.co.jp','$2a$10$O25SQ05.0OSFRTRWJqJbgunNU1EVgBj.vS779JJ8Mg8jgZlhtXd6m','西古屋','由美子','ニシゴヤ','ユミコ','2016-09-06 01:02:33.657482','2016-09-06 01:02:33.657482');
INSERT INTO `customers` VALUES(684,'hatase@ma-ll.com','hatase@ma-ll.com','$2a$10$TmGMHD4GBaX01PkO1ypIt.9mTZxNCGI/5.A4Wl2EsSQ.eULJ7oJGi','畑瀬','久美子','ハタセ','クミコ','2016-09-06 03:12:38.409747','2016-09-06 03:12:38.409747');
INSERT INTO `customers` VALUES(685,'atohs.m+nv@gmail.com','atohs.m+nv@gmail.com','$2a$10$JgQTiokhu/CVLgcSaIybWOVkDtccNEXgfwuKKwWxJhDYnsUuzYU3y','水上','翔太','ミズカミ','ショウタ','2016-09-06 03:13:39.329964','2016-09-06 03:13:39.329964');
INSERT INTO `customers` VALUES(686,'iloveboou@yahoo.co.jp','iloveboou@yahoo.co.jp','$2a$10$CceVM5.Ebc9FGLuw7C4Sq.SS4aCfdcreu00GRFL40f00TIaIL1fGe','荒木','淑子','アラキ','ヨシコ','2016-09-06 03:21:26.599899','2016-09-06 03:21:26.599899');
INSERT INTO `customers` VALUES(687,'siksty.crazy@gmail.com','siksty.crazy@gmail.com','$2a$10$PDy9d2To2EDy7ftwnNAqSu9JlOtqIs/ob8G.b0QcouYZ4Qv/4oSxS','長谷川','淳','ハセガワ','ジュン','2016-09-06 03:26:31.923462','2016-09-06 03:26:31.923462');
INSERT INTO `customers` VALUES(688,'nobma1154@yahoo.co.jp','nobma1154@yahoo.co.jp','$2a$10$WH6BsSc4vVg/2kRtxWiFjOp0wn3M5MJKdmnivJWNW4czJ5TTb2xWC','京極','真由美','キョウゴク','マユミ','2016-09-06 04:46:49.610005','2016-09-06 04:46:49.610005');
INSERT INTO `customers` VALUES(689,'m-kamiya@builnet.co.jp','m-kamiya@builnet.co.jp','$2a$10$ZmxPuI/XTwGIDYh/MfLP2OXVFjKWSc6J8wazVfx.wx4IRMpqH//gm','神谷','周実','カミヤ','メグミ','2016-09-06 05:05:36.354351','2016-09-06 05:05:36.354351');
INSERT INTO `customers` VALUES(690,'team-mk.image@ezweb.ne.jp','team-mk.image@ezweb.ne.jp','$2a$10$2pYzPDnSm2WUgTQjy11NQObtRExaZKAwrZKqtZY8szpxuont/f4C6','木村','光男','キムラ','ミツオ','2016-09-06 12:39:04.810643','2016-09-06 12:39:04.810643');
INSERT INTO `customers` VALUES(691,'kazu.3129@ezweb.ne.jp','kazu.3129@ezweb.ne.jp','$2a$10$pdPJFeBQ2rYI8t3957Sn4.BfgBhPtVKfxQiPiKgmMPiPh/xbg6HoK','山中','和代','ヤマナカ','カズヨ','2016-09-06 16:20:41.512766','2016-09-06 16:20:41.512766');
INSERT INTO `customers` VALUES(692,'raga.raja.583@gmail.com','raga.raja.583@gmail.com','$2a$10$vazZ4OFw5LegYf.YrdIZzumGOjcuSClY0cLccFJyJ8y15n7a3TEPS','山口','真弘','ヤマグチ','シンコウ','2016-09-06 16:51:22.432114','2016-09-06 16:51:22.432114');
INSERT INTO `customers` VALUES(693,'xxxicecandyxxx@ezweb.ne.jp','xxxicecandyxxx@ezweb.ne.jp','$2a$10$KkqTt/VGQw3v7nJC/eeMZu1dz3N6u8gfd.tnzSXllmzhLIKppNYwO','大井','ゆか','オオイ','ユカ','2016-09-07 01:19:01.764058','2016-09-07 01:19:01.764058');
INSERT INTO `customers` VALUES(694,'cafecapu@gmail.com','cafecapu@gmail.com','$2a$10$zzyEBTqgHZEBsVJMnbVc6./FrGvzSCouxBx7px0KDpmfdreZcJ24.','大滝','知里','オオタキ','チサト','2016-09-07 02:08:42.085286','2016-09-07 02:08:42.085286');
INSERT INTO `customers` VALUES(695,'satoh@tokyo.email.ne.jp','satoh@tokyo.email.ne.jp','$2a$10$.f3TxKBckt6/y/ZqmdNOpOmZEqtNdr0ghqHblAjpqRK7GAKsSyw0O','さとうつよし','サトウ','ツヨシ','satoh@tokyo.email.ne.jp','2016-09-07 02:39:04.452290','2016-09-07 02:39:04.452290');
INSERT INTO `customers` VALUES(696,'cc-taka@ezweb.ne.jp','cc-taka@ezweb.ne.jp','$2a$10$CtGPKNgMmfqierqEfvDEfu5CcHEV4DTiiZgE11tsaBzPTVKadiarq','古田','隆司','ふるた','たかし','2016-09-07 05:06:33.048535','2016-09-07 05:06:33.048535');
INSERT INTO `customers` VALUES(697,'a.h.s.platinumdragon@gmail.com','a.h.s.platinumdragon@gmail.com','$2a$10$xH6FZrkM8XRrs/3YTM.tpO/oBWwvIsdcdDzN7InEUk3eoBgeGMXV2','菅野','早由利','カンノ','サユリ','2016-09-07 05:39:28.316551','2016-09-07 05:39:28.316551');
INSERT INTO `customers` VALUES(698,'rin15015021@gmail.com','rin15015021@gmail.com','$2a$10$yaVZwBqMUOF552/uM1r3Eu76jDrblDDPhOeRCKNqsz.pQthI6alzi','斉藤','倫子','サイトウ','ノリコ','2016-09-07 06:44:12.039032','2016-09-07 06:44:12.039032');
INSERT INTO `customers` VALUES(699,'ohiodestination@gmail.com','ohiodestination@gmail.com','$2a$10$lyJz0q6/6.NvnWuSHT9pG.BvYGFN2J9TQUXysiAleYVQc3QUUWKEq','大友','明生','オオトモ','アキオ','2016-09-07 13:14:04.700724','2016-09-07 13:14:04.700724');
INSERT INTO `customers` VALUES(700,'ammers.u3@gmail.com','ammers.u3@gmail.com','$2a$10$YCwdSzkFwIrpUbpG/iVk9erFx9hQM2UT/CwzerA1yVJMxRalvX0BK','Yamada','Ami','ヤマダ','アミ','2016-09-08 00:18:26.385817','2016-09-08 00:18:26.385817');
INSERT INTO `customers` VALUES(701,'tadizuyan@yahoo.co.jp','tadizuyan@yahoo.co.jp','$2a$10$0UEim7CwlzGRJOQ7dLzhCOWuo9FzLZu09TN.cQ10xU5CJkg9oFVpO','泉谷','正','イズタニ','タダシ','2016-09-08 00:58:11.118003','2016-09-08 00:58:11.118003');
INSERT INTO `customers` VALUES(702,'tadizu@gmail.com','tadizu@gmail.com','$2a$10$KM8u5cyD43x2oaGdOx.qyu0ajoTpQW9rPZkV86duIS3R/89ROqVUq','泉谷','正','イズタニ','タダシ','2016-09-08 01:03:40.785792','2016-09-08 01:03:40.785792');
INSERT INTO `customers` VALUES(703,'gayatriyoga_shizuoka@yahoo.co.jp','gayatriyoga_shizuoka@yahoo.co.jp','$2a$10$XkgA7ga0n69DEOnkjgQ2KOHBU0nsAQFDiw3o3QLm0MhDWnoqc1CKm','山本','優紀','ヤマモト','ユウキ','2016-09-08 04:42:35.628515','2016-09-08 04:42:35.628515');
INSERT INTO `customers` VALUES(704,'k.nitta0413@gmail.com','k.nitta0413@gmail.com','$2a$10$zM0lzru/9lqmef69dynCnuFJQ6BIzHLK3V62./cgz5itZCn19pzFS','新田','一成','ニッタ','カズナリ','2016-09-08 13:22:03.572483','2016-09-08 13:22:03.572483');
INSERT INTO `customers` VALUES(705,'kurashima.kojun@gmai.com','kurashima.kojun@gmai.com','$2a$10$mIOMbTUT6b03ijgrQ9aX2uWGfpow5fSAjmbr7b9Rmlw.mcwfpdhaW','倉島','弘順','クラシマ','コウジュン','2016-09-09 06:03:29.433296','2016-09-09 06:03:29.433296');
INSERT INTO `customers` VALUES(706,'Kenta.Suzuki1014@gmail.com','kenta.suzuki1014@gmail.com','$2a$10$mhpWWdvVW/h6t0bT0dPYv.flsDsCZ61mfhmckq7hO0CgrLHPW2IvW','鈴木','健太','スズキ','ケンタ','2016-09-09 09:02:38.300542','2016-09-09 09:02:38.300542');
INSERT INTO `customers` VALUES(707,'from.ytms@gmail.com','from.ytms@gmail.com','$2a$10$7JCkg2PowVyLVX21osSxkucfVuML3zVnNzaoKt9HnSKsYfYA4tKs2','高橋','さくら','タカハシ','サクラ','2016-09-09 10:29:13.410059','2016-09-09 10:29:13.410059');
INSERT INTO `customers` VALUES(708,'kurukuru_cherry@yahoo.co.jp','kurukuru_cherry@yahoo.co.jp','$2a$10$IvYB8kfz.1/5ZvPZjc8Qd.uFsMr3tz8cMxuAhobw6LwZKzmVE1bKa','平山','ゆき','ヒラヤマ','ユキ','2016-09-09 11:02:43.025359','2016-09-09 11:02:43.025359');
INSERT INTO `customers` VALUES(709,'ohanachan1023@gmail.com','ohanachan1023@gmail.com','$2a$10$mharqQSXThKXLCqcTRD9peUV6qTx0L0afXYOk5LEFikwiOW5xTQBi','伊勢','恵',' イセ','メグミ','2016-09-09 21:30:10.758948','2016-09-09 21:30:10.758948');
INSERT INTO `customers` VALUES(710,'maminco@hotmail.co.jp','maminco@hotmail.co.jp','$2a$10$8ZWQIXTWZcJrQdZESoM/5OOXpsDKFFsBUfupwGAbJjMNmKgllOdoi','高瀬','真由美','タカセ','マユミ','2016-09-09 22:58:42.293888','2016-09-09 22:58:42.293888');
INSERT INTO `customers` VALUES(712,'waka.hml@gmail.com','waka.hml@gmail.com','$2a$10$G3rwWTppDYRoTYHrnlEQc.SVYtVjsxUsELhF/I3L3IElE4zA6Yy.S','やぎぬま','わかこ','ヤギヌマ','ワカコ','2016-09-10 08:30:04.958730','2016-09-10 08:30:04.958730');
INSERT INTO `customers` VALUES(713,'candyrock723@yahoo.co.jp','candyrock723@yahoo.co.jp','$2a$10$zYRUt.VyhQimwpfQo38aP.3Tjm6o.ZwYhKuTWn9A499gSETeh/UfW','谷','菜摘','タニ','ナツミ','2016-09-10 13:08:44.308839','2016-09-10 13:08:44.308839');
INSERT INTO `customers` VALUES(714,'ingenu119@i.softbank.jp','ingenu119@i.softbank.jp','$2a$10$PskChs3IUZnkv28VXGPJI.hWBPWzgPQVLoAN2D4dVZxglBs5DA46m','筒井','眞奈美','ツツイ','マナミ','2016-09-10 22:34:59.197404','2016-09-10 22:34:59.197404');
INSERT INTO `customers` VALUES(715,'inancuru7@softbank.ne.jp','inancuru7@softbank.ne.jp','$2a$10$RhfV6LwJfJsb65oHADYRCOnzu7dL2XD56Lx9stu6SU/XEI8ssKwzG','小黒','和可代','オグロ','ワカヨ','2016-09-11 00:10:44.223705','2016-09-11 00:10:44.223705');
INSERT INTO `customers` VALUES(716,'fururu802@gmail.com','fururu802@gmail.com','$2a$10$Pjc6/UDSCtdlIQEm./2Tu.FUjmc4UPz5JNtnXf6N5bMhREx9o.KKK','田所','英里子','タドコロ','エリコ','2016-09-11 01:32:34.332422','2016-09-11 01:32:34.332422');
INSERT INTO `customers` VALUES(717,'kumagaiyouhei@gmail.com','kumagaiyouhei@gmail.com','$2a$10$fWs86JB9Gt/fS821wdNd9u0jM.SBJaUmc708WNB.w2Sy1pr1FIc7K','熊谷','洋平','クマガイ','ヨウヘイ','2016-09-11 01:50:08.899884','2016-09-11 01:50:08.899884');
INSERT INTO `customers` VALUES(718,'yoheikumagai@gmail.com','yoheikumagai@gmail.com','$2a$10$QWxAAdMwyY0eXbBef8asjeVsZM8EYjO1FDqKJd5ATxlcpc/vP2Ndm','熊谷','洋平','クマガイ','ヨウヘイ','2016-09-11 01:55:03.741461','2016-09-11 01:55:03.741461');
INSERT INTO `customers` VALUES(719,'harumi.o.hikari@docomo.ne.jp','harumi.o.hikari@docomo.ne.jp','$2a$10$sZJtchaES56jYzaCLLBdOuVC11So4Ogr3uOeaS5UAzhkzcsDCKUZ6','小澤','春美','オザワ','ハルミ','2016-09-11 04:40:44.584826','2016-09-11 04:40:44.584826');
INSERT INTO `customers` VALUES(720,'naonao-mi@i.softbank.jp','naonao-mi@i.softbank.jp','$2a$10$nVM1i9jpBkVZ4N/UwUp7CeAMN.Ep1yxrn9pYXqCxqfFLsK6CwyDWy','原 ','尚美','ハラ','ナオミ','2016-09-11 07:53:23.354721','2016-09-11 07:53:23.354721');
INSERT INTO `customers` VALUES(721,'saitou_kosei@yahoo.co.jp','saitou_kosei@yahoo.co.jp','$2a$10$VzhpOKCgFlbjvio7ntDK9O4jgEKpa/247lwKU1WtlBCwQUab.4fju','佐藤','周生','サトウ','シュウセイ','2016-09-12 04:29:20.719319','2016-09-12 04:29:20.719319');
INSERT INTO `customers` VALUES(722,'yshikam@orlab.o.jp','yshikam@orlab.o.jp','$2a$10$8qSB8LsOAJOrIfF5XT66hutGvTVjaJDbRibaNPmCdiAOcFmNcp//2','鹿間','康文','シカマ','ヤスフミ','2016-09-12 05:15:24.883527','2016-09-12 05:15:24.883527');
INSERT INTO `customers` VALUES(723,'rsp65602@nifty.com','rsp65602@nifty.com','$2a$10$5cgtIdlDmoSmlkVrsAFoo.kEPZ94kxQBfug...rVWT1r97PiOn4.S','秦','まりえ','ハタ','マリエ','2016-09-12 16:39:43.427781','2016-09-12 16:39:43.427781');
INSERT INTO `customers` VALUES(724,'brmasepia@yahoo.co.jp','brmasepia@yahoo.co.jp','$2a$10$bHcAh4ejk/6CAkcRP7Poz.4/EsiVLhwpCTrlfpHN0f57zrFxlc9ga','山城　','幸子','ヤマシロ','サチコ','2016-09-13 02:49:38.075024','2016-09-13 02:49:38.075024');
INSERT INTO `customers` VALUES(725,'ajisaicafe@mac.com','ajisaicafe@mac.com','$2a$10$9On/AFyoqVvfME9X6UK44e45I690I5fPgHIw4sMeoWLLTsJpUcApG','新妻','美法','ニイヅマ','ミノリ','2016-09-13 11:01:04.306259','2016-09-13 11:01:04.306259');
INSERT INTO `customers` VALUES(726,'masayonpil@gmail.com','masayonpil@gmail.com','$2a$10$Mt2UXZU6cWeOXBYB8nZbAu8V10e8oX2Za3SHzBTkjKnXFWYAmLuL2','菊川','真代','キクカワ','マサヨ','2016-09-13 15:30:29.756227','2016-09-13 15:30:29.756227');
INSERT INTO `customers` VALUES(727,'akarin-katsunon-1024@i.softbank.jp','akarin-katsunon-1024@i.softbank.jp','$2a$10$DomvN.G1V/GP23oZrDfIMulKVZfmhMw7iw.pDm0jnCJGqSglPP5dS','横井','朱里','ヨコイ','アカリ','2016-09-13 22:38:39.807834','2016-09-13 22:38:39.807834');
INSERT INTO `customers` VALUES(728,'tokiyo.nishijima@gmail.com','tokiyo.nishijima@gmail.com','$2a$10$wfwvkPuRE88tzjHqdV2TZ.UhNyqp0h9qUYWC.3lXTCU6cpCe36fMi','西嶋','訓余','ニシジマ','トキヨ','2016-09-13 23:21:15.967020','2016-09-13 23:21:15.967020');
INSERT INTO `customers` VALUES(729,'invisible_mother@yahoo.co.jp','invisible_mother@yahoo.co.jp','$2a$10$tGPHwfHsgJnvW88XC3eM6Owz89z3WCQI8HTvchO98lJ0mz2vv/YcK','渡邊','賢治','ワタナベ','ケンジ','2016-09-14 04:24:39.652853','2016-09-14 04:24:39.652853');
INSERT INTO `customers` VALUES(730,'harupo2006@yahoo.co.jp','harupo2006@yahoo.co.jp','$2a$10$c87/joxRHpJrYefl593/eed9lmUCT7T/uRjFGZ6eI2302SKMOL/Da','日吉　','すずか','ヒヨシ','スズカ','2016-09-16 01:43:25.167020','2016-09-16 01:43:25.167020');
INSERT INTO `customers` VALUES(731,'snwappen@yahoo.co.jp','snwappen@yahoo.co.jp','$2a$10$F9heIPuPdqMAMuWncbLaBu5qYhvX6MERk7d/qhF8r5SThwqPHjMXC','坂田','尚樹','サカタ','ナオキ','2016-09-17 18:02:53.853881','2016-09-17 18:02:53.853881');
INSERT INTO `customers` VALUES(732,'noel.miryam@gmail.com','noel.miryam@gmail.com','$2a$10$RnGQJHKHRXtU5xRhcv4HwuusCwoq6utnJ5r8fFALPdbLvPHdOiSN6','足立','陽子','アダチ','ヨウコ','2016-09-17 21:08:33.647426','2016-09-17 21:08:33.647426');
INSERT INTO `customers` VALUES(733,'nadayogi@live.jp','nadayogi@live.jp','$2a$10$.tD2uUwTZh6z8WbVpJ6Tc.nV6Roxr/asFDdNgpfAPfeBXHVeiZt1y','島崎','和志','シマザキ','カズユキ','2016-09-17 22:28:39.398674','2016-09-17 22:28:39.398674');
INSERT INTO `customers` VALUES(734,'kaorinaroma@gmail.com','kaorinaroma@gmail.com','$2a$10$FXWk.iIYpoAENmtPqCmu9eArrQJfE9R56e7WyMgd/9z77nrzPT2se','橋本','かおり','ハシモト','カオリ','2016-09-17 23:27:31.134351','2016-09-17 23:27:31.134351');
INSERT INTO `customers` VALUES(735,'shirodon0706@gmail.com','shirodon0706@gmail.com','$2a$10$LPTBX7bECG24jWEDD0mrr.E1saMos9IpulIjmsL6N18b8UYuVaj.C','笹川','史郎','ササガワ','シロウ','2016-09-18 04:57:12.856840','2016-09-18 04:57:12.856840');
INSERT INTO `customers` VALUES(736,'pokapokafarm567@gmail.com','pokapokafarm567@gmail.com','$2a$10$erAVRA0zOEnFSo1Mhg8mwuWfGdewOJipcYFRIGvGmgl4hzCOUyjim','櫛田','寒平','クシダ','カンペイ','2016-09-19 02:22:16.034949','2016-09-19 02:22:16.034949');
INSERT INTO `customers` VALUES(737,'corecurrency@gmail.com','corecurrency@gmail.com','$2a$10$/Tc4nX4OJdMad86mqbJKDukqAtYJzbG7Mkol6tnXUorG/vool.gRO','池城','安敏','イケシロ','ヤストシ','2016-09-19 05:29:13.538935','2016-09-19 05:29:13.538935');
INSERT INTO `customers` VALUES(738,'blue-eagle1717@ezweb.ne.jp','blue-eagle1717@ezweb.ne.jp','$2a$10$.9ayWOPIFDyhE0poQdBcdu4zeNQY4ej38C.yElftx2SpfOtfJW0km','伊東','エミナ','イトウ','エミナ','2016-09-19 07:52:51.711329','2016-09-19 07:52:51.711329');
INSERT INTO `customers` VALUES(739,'udamikio@gmail.com','udamikio@gmail.com','$2a$10$z/EKmPSWoXnIYv16v0K.4eEdyeS4VxKK2m9H.NaqORL45iBalPsoq','宇田','幹夫','ウダ','ミキオ','2016-09-19 13:24:22.376182','2016-09-19 13:24:22.376182');
INSERT INTO `customers` VALUES(740,'aromasoraumi@ezweb.ne.jp','aromasoraumi@ezweb.ne.jp','$2a$10$Hgwu4QRlsrHPOIvCOGyoqOWGNfl24rMfSSl.ab8VQUlbtnCCAbqqu','来島','正子','クルシマ','マサコ','2016-09-19 14:28:40.023086','2016-09-19 14:28:40.023086');
INSERT INTO `customers` VALUES(741,'sachiko_k_412@yahoo.co.jp','sachiko_k_412@yahoo.co.jp','$2a$10$Vs9vaNDcNFLoYuHxawV64Ow6EnPgOnZaOcIsRCcqrq51urfMM./6S','富田','幸子','トミタ','サチコ','2016-09-20 12:27:23.832088','2016-09-20 12:27:23.832088');
INSERT INTO `customers` VALUES(742,'sukuinofune@i.softbank.jp','sukuinofune@i.softbank.jp','$2a$10$kaorhdIcr54wB5iXv9vl4OV3hGSPHJIEbLJPViDQMBin027/MLZ0a','佐藤','布美子','サトウ','フミコ','2016-09-22 00:44:38.250038','2016-09-22 00:44:38.250038');
INSERT INTO `customers` VALUES(743,'beeoo.i@icloud.com','beeoo.i@icloud.com','$2a$10$PWuXTy7ZSW4VDrjotecTxupkiI9C8zS4AtJaQfEiXf2HGBj4n5ATe','山嵜','舞','ヤマザキ','マイ','2016-09-22 02:57:48.849543','2016-09-22 02:57:48.849543');
INSERT INTO `customers` VALUES(744,'ptomomik@me.com','ptomomik@me.com','$2a$10$ZS.FnY3WwHQfJ06gU6hBJ.nK.h.Vx28yl9TjaTQvgdY9L16b5CIpK','北里','智美','キタザト','トモミ','2016-09-22 07:17:34.655815','2016-09-22 07:17:34.655815');
INSERT INTO `customers` VALUES(745,'shusaku.takahashi@gmail.com','shusaku.takahashi@gmail.com','$2a$10$IRsahoBqr0v2jTjGnhX6S.1BtpLDWp8.nDTJK6R7txPNFQkJAFUfe','高橋','修作','タカハシ','シュウサク','2016-09-22 13:11:47.335768','2016-09-22 13:11:47.335768');
INSERT INTO `customers` VALUES(746,'atenasio@gmail.com','atenasio@gmail.com','$2a$10$IE8lNZJtaY/tsDv0.b4pre49GZk3QKAG/DcZjce59IgC3fw7SAAZa','Atenasio','Chris','アテナシオ','クリス','2016-09-22 19:36:42.137743','2016-09-22 19:36:42.137743');
INSERT INTO `customers` VALUES(747,'ayae.pure.method@gmail.com','ayae.pure.method@gmail.com','$2a$10$nSSLxKKl5H/WWhfC574aIOONIzj7NaVLTvG9JkBG8Bc1rTt/uuQ5W','高木','礼衣','タカギ','アヤエ','2016-09-23 04:53:59.189870','2016-09-23 04:53:59.189870');
INSERT INTO `customers` VALUES(748,'yuka.skmt@gmail.com','yuka.skmt@gmail.com','$2a$10$hHb1dpXJAfFM0lIIkmB/6ucazT2zsg7f0zBIVpWck.QLHxIJylO1O','森脇','優子','モリワキ','ユウコ','2016-09-26 23:48:09.312805','2016-09-26 23:48:09.312805');
INSERT INTO `customers` VALUES(749,'erimiku0609@gmail.com','erimiku0609@gmail.com','$2a$10$nGdVc/3WBDbz.gaAJvGGG.B3J3R/kEgNnMIbuaRFI6pNe4q0I0v72','御厨','絵理','ミクリヤ','エリ','2016-09-27 09:56:48.744383','2016-09-27 09:56:48.744383');
INSERT INTO `customers` VALUES(750,'tokimayu118iameri@gmail.com','tokimayu118iameri@gmail.com','$2a$10$qykFp4yc9q7c3Cz9YvyhEuONFrWbpe..wPVA7Oa5RT/beyP/hbZLS','水本','旬代','ミズモト','トキヨ','2016-09-28 06:37:36.625822','2016-09-28 06:37:36.625822');
INSERT INTO `customers` VALUES(751,'tokimayu118iameri@ezweb.ne.jp','tokimayu118iameri@ezweb.ne.jp','$2a$10$iMpG3Act1fTpe4skUSz3FOZSlyhhYb6GQvD.yMPnUPQzRE8BQJX76','水本','旬代','ミズモト','トキヨ','2016-09-28 06:39:06.707504','2016-09-28 06:39:06.707504');
INSERT INTO `customers` VALUES(752,'toklmatsu161@gmail.com','toklmatsu161@gmail.com','$2a$10$Qy/9ikRWLDG51a/APa/4geenHvm6vaemVp4oIDBmvwDL9Dc889Qg6','水本','旬代','ミズモト','トキヨ','2016-09-28 07:01:49.750317','2016-09-28 07:01:49.750317');
INSERT INTO `customers` VALUES(753,'Hidemi-inoue@ymobile.ne.jp','hidemi-inoue@ymobile.ne.jp','$2a$10$Ro8YtF7rE/H.tfGNUrKdSOnq5Jp2XKcFhTauVCxJaqRo/yg5nEBbC','井上','英生','イノウエ','ヒデミ','2016-09-29 13:23:04.430249','2016-09-29 13:23:04.430249');
INSERT INTO `customers` VALUES(754,'lenmugi@gmail.com','lenmugi@gmail.com','$2a$10$GTRiudlwm8snIOOfNPuRfuih/bodU/pVifumJ27mLAE.SRCPaRXXO','小倉','勝豊','オグラ','カツトヨ','2016-09-30 07:42:33.455355','2016-09-30 07:42:33.455355');
INSERT INTO `customers` VALUES(755,'mokkeyyumu@gmail.com','mokkeyyumu@gmail.com','$2a$10$vj9Gy3rRCUClMO4zloXBmuCRTqF6hkiLWbicHBvZsHwGGsfHBdE4e','久米原','祐子','クメハラ','ユウコ','2016-09-30 10:17:35.412977','2016-09-30 10:17:35.412977');
INSERT INTO `customers` VALUES(756,'ami.a2030@gmail.com','ami.a2030@gmail.com','$2a$10$4xQBmjQRA0fvFV2Hoff6quY.OXdTH4/XU/kQkDH1sUgW9FS32/oCS','浅倉','亜美','アサクラ','アミ','2016-09-30 10:43:54.962276','2016-09-30 10:43:54.962276');
INSERT INTO `customers` VALUES(757,'emimama3010@icloud.com','emimama3010@icloud.com','$2a$10$9WXrOzhVL3z5gPUBIv7wjesotIhZ0mGYzFnUoFzJfHqAaLHtlTe4K','赤松','庄二','アカマツ','ショウジ','2016-10-01 13:19:10.525391','2016-10-01 13:19:10.525391');
INSERT INTO `customers` VALUES(758,'jyakotenn@gmail.com','jyakotenn@gmail.com','$2a$10$tmF8peCqltJVn.cMX.IBJ.hiGWYLK7fUdUGxP7IzCjos.RuEwcbdm','野々村','佳周','ノノムラ','ヨシチカ','2016-10-01 13:38:08.751982','2016-10-01 13:38:08.751982');
INSERT INTO `customers` VALUES(759,'ezaeza1978@gmail.com','ezaeza1978@gmail.com','$2a$10$zZLbSHNCY5aGQNMV.GkGVextDaISH8LGYx/31Jlo03yy7iwpPJ8ru','江崎','好哲','エザキ','ヨシアキ','2016-10-02 04:16:34.325540','2016-10-02 04:16:34.325540');
INSERT INTO `customers` VALUES(760,'junkoogle@gmail.com','junkoogle@gmail.com','$2a$10$m7qDOlWhkoAU15YzYdVNyOCTbcCYyF3c/GJptVpmX9tatEMuN28Ba','中川','純子','ナカガワ','ジュンコ','2016-10-02 08:00:07.979343','2016-10-02 08:00:07.979343');
INSERT INTO `customers` VALUES(761,'alohammy@gmail.com','alohammy@gmail.com','$2a$10$yU3v/Yn6fPP5XuxRhsS3p.Q7RbC2/pB6covZeEQtJ01eB8d1XI/e2','濱松','美佳','ハママツ','ミカ','2016-10-02 09:36:05.098434','2016-10-02 09:36:05.098434');
INSERT INTO `customers` VALUES(762,'melenaleo_meow@yahoo.co.jp','melenaleo_meow@yahoo.co.jp','$2a$10$XPB4XcGOBqVTJkuGdQD6kORMftamRdmjn3QuDBImm5KzocvZMXIUm','片山','愛子','カタヤマ','アイコ','2016-10-03 00:53:50.704968','2016-10-03 00:53:50.704968');
INSERT INTO `customers` VALUES(763,'nekonochii@gmail.com','nekonochii@gmail.com','$2a$10$rNIeo4LFf2G9gd025iypRuAnnQ4.ysjhV4crUtNx1P0/JKUvgfLQO','鈴木','美由紀','スズキ','ミユキ','2016-10-03 11:15:34.070787','2016-10-03 11:15:34.070787');
INSERT INTO `customers` VALUES(764,'kamatasyouten@gmail.com','kamatasyouten@gmail.com','$2a$10$iBgFiIqx6N.VBc5CCRCDA.WKUV/yeHG5IdyezU/j0N41szJHBeJBC','鎌田','香里','カマタ','カオリ','2016-10-03 11:33:39.912479','2016-10-03 11:33:39.912479');
INSERT INTO `customers` VALUES(765,'liveyuko54@hotmail.com','liveyuko54@hotmail.com','$2a$10$Fzu3HlzGS8nvw.7fcRMHxe6XDfuhZg79tqGHy9GSEpD6AbGulAUWe','金澤','裕子','カナザワ','ユウコ','2016-10-03 18:35:28.493155','2016-10-03 18:35:28.493155');
INSERT INTO `customers` VALUES(766,'mahalon76@gmail.com','mahalon76@gmail.com','$2a$10$KOGNYE6YYt4J7/p6xuw0eeKdhKXAd5sbviY7olK7R0qGYLAPp.6Nq','長谷川','博美','ハセガワ','ヒロミ','2016-10-04 09:01:43.390239','2016-10-04 09:01:43.390239');
INSERT INTO `customers` VALUES(767,'rikabear_4690@yahoo.co.jp','rikabear_4690@yahoo.co.jp','$2a$10$4z1Cm3Q4ZeQIOMewh95JQuJHlDbDYXqwPsvI8o8HT7XN.geXL7Pya','池本','里香','イケモト','リカ','2016-10-04 23:37:20.631084','2016-10-04 23:37:20.631084');
INSERT INTO `customers` VALUES(768,'yukako1217@hotmail.co.jp','yukako1217@hotmail.co.jp','$2a$10$iTiWVEgj233AtCrzggksieK7J9fkC2wjnEnFUjBw4VOuMqRsoen32','三嶋','まり','ミシマ','マリ','2016-10-05 05:07:41.810093','2016-10-05 05:07:41.810093');
INSERT INTO `customers` VALUES(769,'casarin@gmail.com','casarin@gmail.com','$2a$10$ickSnJqxQ12G7UmGt0OtXutmKO3A0ZJEEuPt5U/fzamPXKWRePqg2','宮崎','昌子','ミヤザキ','ショウコ','2016-10-05 23:07:01.302415','2016-10-05 23:07:01.302415');
INSERT INTO `customers` VALUES(770,'sasanomi321cb@yahoo.co.jp','sasanomi321cb@yahoo.co.jp','$2a$10$M/Bat0Krsa2dzn6gkWaNJe6LHWoChAWR5/95KJdqO1c5ofmdPTFqC','筧','由香里','カケヒ','ユカリ','2016-10-06 02:39:51.015395','2016-10-06 02:39:51.015395');
INSERT INTO `customers` VALUES(771,'sacchin_2012.04-sep24@ezweb.ne.jp','sacchin_2012.04-sep24@ezweb.ne.jp','$2a$10$pf1ZD7C9lAJ.Wtnjto4CN.erpXffKkCuV.YuFHyHxwWHodajWMpNW','梅本','さとみ','ウメモト','サトミ','2016-10-06 13:34:22.943314','2016-10-06 13:34:22.943314');
INSERT INTO `customers` VALUES(772,'my485749@gmail.com','my485749@gmail.com','$2a$10$Vj7ov4hmxvuEUOackohrNuyVEgNta7xAljeEkNGAqIGr/rKXIp6zK','吉田','雅美','ヨシダ','マサミ','2016-10-07 06:59:12.112967','2016-10-07 06:59:12.112967');
INSERT INTO `customers` VALUES(773,'ti.tuann_oonisitakijirou@ezweb.ne.jp','ti.tuann_oonisitakijirou@ezweb.ne.jp','$2a$10$HjFRGxenr7GjtGQTDvHtU.r63Kr6b1oSmgG1jd2JksYYIQyJ6zFWq','柳瀬','竜也','ヤナセ','タツヤ','2016-10-07 11:16:31.013628','2016-10-07 11:16:31.013628');
INSERT INTO `customers` VALUES(774,'t-m-k-r-t-m-k-0-8-11@docomo.ne.jp','t-m-k-r-t-m-k-0-8-11@docomo.ne.jp','$2a$10$BaFGzvKcjH60NYKlFJCzGO1mDd6sg3MDE9aqpEqAs9dBf7ieslAZi','中村','智子','ナカムラ','トモコ','2016-10-07 11:50:03.705934','2016-10-07 11:50:03.705934');
INSERT INTO `customers` VALUES(775,'naho.tsujimoto@i.softbank.jo','naho.tsujimoto@i.softbank.jo','$2a$10$4RGKdPWtZU4NgaNPtT0g/u88kHxMzQac2AQCU5smMKbzjqhyYHFsC','辻本','菜穂','ツジモト','ナホ','2016-10-07 15:03:41.312214','2016-10-07 15:03:41.312214');
INSERT INTO `customers` VALUES(776,'naho.tsujimoto@i.softbank.jp','naho.tsujimoto@i.softbank.jp','$2a$10$nwXXky5hIAeay9AypEiXS.SPiLmuz1lEcs8VoSBinj0BJcr2igiza','辻本','菜穂','ツジモト','ナホ','2016-10-07 15:13:20.079260','2016-10-07 15:13:20.079260');
INSERT INTO `customers` VALUES(777,'cancan.kanami.thank.you@gmail.com','cancan.kanami.thank.you@gmail.com','$2a$10$ZC6lAxfoc0k5jGcS.9xB8.Dx5PomlOR/udxsapr5WufkuNrsiZ8F6','齋藤','佳奈美','サイトウ','カナミ','2016-10-07 16:33:13.591593','2016-10-07 16:33:13.591593');
INSERT INTO `customers` VALUES(778,'meccha_eeyan@yahoo.co.jp','meccha_eeyan@yahoo.co.jp','$2a$10$jgnsoceS806MBOyniIH1aOWAQAgxqFVNNfo8HzXD5U0Ijo3nx3AaC','下里','ゆかり','シモザト','ユカリ','2016-10-08 02:59:25.369843','2016-10-08 02:59:25.369843');
INSERT INTO `customers` VALUES(779,'akinaimagawa@gmail.com','akinaimagawa@gmail.com','$2a$10$Dea9JszsBKidfkkUd4VYhenO2LNEfR4zNK8sstU9GOAs9EG.KlLV2','大矢','秋奈','オオヤ','アキナ','2016-10-08 07:03:57.482235','2016-10-08 07:03:57.482235');
INSERT INTO `customers` VALUES(780,'psychoanalyze1970@yahoo.co.jp','psychoanalyze1970@yahoo.co.jp','$2a$10$GjlQkwtZLJM51oVMGmbJNeKqB9NQ0Un1EwPcfbHtzk.2RU.gx/9HO','丸山','大幸','マルヤマ','マサユキ','2016-10-08 13:09:42.967531','2016-10-08 13:09:42.967531');
INSERT INTO `customers` VALUES(781,'neko.daisuki200330@gmail.com','neko.daisuki200330@gmail.com','$2a$10$5.c/D/SVSBRrzd8ob4MOye9nM79HXM5mbI/r5uIBfuTPHA8vmVrzq','室谷','好美','ムロヤ','ヨシミ','2016-10-09 14:31:18.156311','2016-10-09 14:31:18.156311');
INSERT INTO `customers` VALUES(782,'yukimitsukihara@gmail.com','yukimitsukihara@gmail.com','$2a$10$DzK2oQ4GpnOH4izHh63XqOs7PKUjctUMBpXPJlquI47SuvUNaA6OK','木原','透光','キハラ','ユキミツ','2016-10-10 03:45:31.025744','2016-10-10 03:45:31.025744');
INSERT INTO `customers` VALUES(783,'ysugeta@live.jp','ysugeta@live.jp','$2a$10$VnDK4IqkMYKDsxyHLdtuMeBQLO8L1JvKKahhYTABdf9w2fTqX0fNq','菅田','由紀子','スゲタ','ユキコ','2016-10-10 04:22:36.941274','2016-10-10 04:22:36.941274');
INSERT INTO `customers` VALUES(784,'marush0381@yahoo.co.jp','marush0381@yahoo.co.jp','$2a$10$Qm8YoU4M2cdDcf4q.vXgbOP8DOV4lQwweKmtt/waO/9Aa0F5qz7cW','荘加','晴美','ショウカ','ハルミ','2016-10-10 07:02:13.490129','2016-10-10 07:02:13.490129');
INSERT INTO `customers` VALUES(785,'cocoro_k@hotmail.com','cocoro_k@hotmail.com','$2a$10$6G9TzttUI50FCdyq6jgZsOQRDakpcnSOULTVpYeIcAVqmNYVyy8qa','楠生','薫','クスバエ','カオル','2016-10-10 10:52:02.126919','2016-10-10 10:52:02.126919');
INSERT INTO `customers` VALUES(786,'moo_moo_.15900@softbank.ne.jp','moo_moo_.15900@softbank.ne.jp','$2a$10$fKjPotOQOWxYoa5Ui3iPl.VFSekKLCSGj.ICab0jPGbUBwKGSUJGm','朝比奈','遥','アサヒナ','ハルカ','2016-10-11 13:29:07.391681','2016-10-11 13:29:07.391681');
INSERT INTO `customers` VALUES(787,'haruichi75@yahoo.co.jp','haruichi75@yahoo.co.jp','$2a$10$c58PDpAh72Bxhfjoy6u0pOzz8P/Q1h8YBeZMgh5D82fbUy8pbAxR6','石神','愛理','イシガミ','アイリ','2016-10-12 01:08:20.825517','2016-10-12 01:08:20.825517');
INSERT INTO `customers` VALUES(788,'wwwarrawww@gmail.com','wwwarrawww@gmail.com','$2a$10$AOPyEYvnBkdQXauoWi4ifuxwfoqwCpQLVU7PPW/ODOTQp/8vwYL2C','渡辺','あみ','ワタナベ','アミ','2016-10-12 05:32:07.389502','2016-10-12 05:32:07.389502');
INSERT INTO `customers` VALUES(789,'hanshinmetalics.kawai@gmail.com','hanshinmetalics.kawai@gmail.com','$2a$10$/aV/jOU7vkdk8l4j8PLAyuj3cLRQcj3y123xgWLYPJFP6n4Kg1mlm','河合','敏彦','カワイ','トシヒコ','2016-10-12 15:34:06.161379','2016-10-12 15:34:06.161379');
INSERT INTO `customers` VALUES(790,'kw1113ni@gmail.com','kw1113ni@gmail.com','$2a$10$rIv.v/sjKjWARN5E6dCEq.FJYSv5hndi31GsASaV1W7XpkTlA3PQe','石上','和','イシガミ','ノドカ','2016-10-13 13:30:59.026846','2016-10-13 13:30:59.026846');
INSERT INTO `customers` VALUES(791,'mybowmt29@gmail.com','mybowmt29@gmail.com','$2a$10$iow4ZP93lLB79t1RttOm/.fVzf6MBsF0mwh/Fwoqb8eYf0uL3JPaC','小林','茉衣','コバヤシ','マイ','2016-10-14 02:11:28.662231','2016-10-14 02:11:28.662231');
INSERT INTO `customers` VALUES(792,'tsutsui2212005@yahoo.co.jp','tsutsui2212005@yahoo.co.jp','$2a$10$YwdOMxJcLqDFsH6R2.vTe.l3uO5UER83mvETlqzAnbcwQuuAmHO3i','筒井','ツツイ','雅裕ら','マサヒロ','2016-10-15 01:50:29.233411','2016-10-15 01:50:29.233411');
INSERT INTO `customers` VALUES(793,'aosora.calmplus@gmail.com','aosora.calmplus@gmail.com','$2a$10$5UGbde67JL32tTl9cSja/uIp8lH/yluUiwXCrUp6xLZOywGeL07aa','筒井','眞奈美','ツツイ','マナミ','2016-10-15 03:12:04.604369','2016-10-15 03:12:04.604369');
INSERT INTO `customers` VALUES(794,'keiko.c@nifty.com','keiko.c@nifty.com','$2a$10$BXsYjbuNt0b6O1FmgqDJd.xuDWTZT09rbl4kScXFQIKmh.RAdUKSO','千葉','佳子','チバ','ケイコ','2016-10-15 08:06:36.034749','2016-10-15 08:06:36.034749');
INSERT INTO `customers` VALUES(795,'yuko.nina.shou.max@ezweb.ne.jp','yuko.nina.shou.max@ezweb.ne.jp','$2a$10$sd5eYcIN6o6x2npQdqkYreqqRTFQclr3WFAVIfAvcCvXw.0KSLHvy','橋本','裕子','ハシモト','ユウコ','2016-10-15 15:28:32.459769','2016-10-15 15:28:32.459769');
INSERT INTO `customers` VALUES(796,'yukin@aioros.ocn.ne.jp','yukin@aioros.ocn.ne.jp','$2a$10$MgxSD.N.KHfuF3ZKzl4tpuC3d6k1KXIe7aSe6RTY4oY.LWWX2Iw0m','池田','有紀','イケダ','ユキ','2016-10-15 19:45:19.557658','2016-10-15 19:45:19.557658');
INSERT INTO `customers` VALUES(797,'sobunnep@bh.wakwak.com','sobunnep@bh.wakwak.com','$2a$10$urcNcVy1gvKl.YLxFW/brecJLsGTxue5bLpf6VIy/uJmNYUExTf9W','田中','春美','タナカ','ハルミ','2016-10-17 04:53:29.442228','2016-10-17 04:53:29.442228');
INSERT INTO `customers` VALUES(799,'ndizijp@yahoo.co.jp','ndizijp@yahoo.co.jp','$2a$10$W.OOGTkU0zTaK/kmVlx6q.B8HqCPdvwDcKKTODG7S/cPMH.kxKDO2','加藤　','順子','カトウ','ジュンコ','2016-10-18 02:40:24.375807','2016-10-18 02:40:24.375807');
INSERT INTO `customers` VALUES(800,'mai.kaneko31@gmail.com','mai.kaneko31@gmail.com','$2a$10$Hq7kv2KBTzgcmG1Z8Fbt5.68fxv4nx.9AFihnXGbzOvJHFUcRqNQ.','金子','麻衣','カネコ','マイ','2016-10-19 15:48:35.977395','2016-10-19 15:48:35.977395');
INSERT INTO `customers` VALUES(801,'luckeypipi@gmail.com','luckeypipi@gmail.com','$2a$10$OZf67.Q6MMBAEcLBf5K6uuMRfMxYjPrly4T8SK9B5EVi4bYMqkl3S','重信','晶子','シゲノブ','ショウコ','2016-10-19 18:14:30.397410','2016-10-19 18:14:30.397410');
INSERT INTO `customers` VALUES(802,'tmk@h-tao.jp','tmk@h-tao.jp','$2a$10$rzc59htbmUCGzqm0wH.UaO1GE6Ppjaopo0tiAZorkjfPAtYL/aJ3.','山崎','智子','ヤマザキ','トモコ','2016-10-21 05:08:28.836531','2016-10-21 05:08:28.836531');
INSERT INTO `customers` VALUES(803,'takayuki_maeda@me.com','takayuki_maeda@me.com','$2a$10$oXcdD67oi/F6V/0Hb5DIleESMNkeST5zUp6aaOJDzIXUP0c2Hh2gm','前田','崇之','マエダ','タカユキ','2016-10-21 12:27:16.857191','2016-10-21 12:27:16.857191');
INSERT INTO `customers` VALUES(804,'myoshu@communitylink.jp','myoshu@communitylink.jp','$2a$10$oeiu4AtZZzXjEIdqUQrwBuRmj5GMwmcvR6jFHEbIVROnutTRoTIw.','明主','那生','ミョウシュ','ナオ','2016-10-21 13:19:57.807024','2016-10-21 13:19:57.807024');
INSERT INTO `customers` VALUES(805,'lab.chitohito@gmail.com','lab.chitohito@gmail.com','$2a$10$ul/fu7SYG4gnS96OH2.82uDx8ODLCr3zXyCadTRNOegfWVfVbbJGW','加藤','ちひと','カトウ','チヒト','2016-10-29 15:09:27.708658','2016-10-29 15:09:27.708658');
INSERT INTO `customers` VALUES(806,'chihito8@gmail.com','chihito8@gmail.com','$2a$10$Ppw1kRxtqgUwC8.jLX58mONzmy1/ZMA3VoMmBG549ycdu6Rv528Jq','加藤','ちひと','カトウ','チヒト','2016-10-29 15:10:23.000441','2016-10-29 15:10:23.000441');
INSERT INTO `customers` VALUES(807,'chiemi@s.zaq.jp','chiemi@s.zaq.jp','$2a$10$pIFIMUFbXLtER.Av4MGiKu6P1sYtpbdLXt71wpAQ4QifJhkEOWIDC','佐藤','智恵美','サトウ','チエミ','2016-10-29 22:31:41.565756','2016-10-29 22:31:41.565756');
INSERT INTO `customers` VALUES(808,'aki39.m@gmail.com','aki39.m@gmail.com','$2a$10$AtN2bYRu1gp82yTS8YDp4.4F07RgZvQHwUEoSKiaZTZ5LvibGqEyS','森山','晃吉','モリヤマ','アキヨシ','2016-11-01 01:29:52.999117','2016-11-01 01:29:52.999117');
INSERT INTO `customers` VALUES(809,'nakasone@addition.co.jp','nakasone@addition.co.jp','$2a$10$iB0fPOQdZc7nVA3B/zG10eq5vi5Hwy4vm9ry.7kcn1q8ourZVaQNa','仲宗根','望','ナカソネ','ノゾミ','2016-11-08 07:38:14.207345','2016-11-08 07:38:14.207345');
INSERT INTO `customers` VALUES(810,'nakasone@tsukuru.or.jp','nakasone@tsukuru.or.jp','$2a$10$CU80aN9dtcbIfklVbQvCyu09qVhzlZmqIfwZojcexiAkJEonP2mCa','仲宗根','望','ナカソネ','ノゾミ','2016-11-08 07:39:17.720193','2016-11-08 07:39:17.720193');
INSERT INTO `customers` VALUES(811,'yoshiyasu.kaji@gmail.com','yoshiyasu.kaji@gmail.com','$2a$10$PvIVh.YzxRtynm4ZENqQuu.JGFoni13XkcyvFYhOo4LWC5KprtUW2','梶','佳靖','カジ','ヨシヤス','2016-11-08 10:03:35.249743','2016-11-08 10:03:35.249743');
INSERT INTO `customers` VALUES(812,'yuki.fatema@gmail.com','yuki.fatema@gmail.com','$2a$10$AvubjDCBzx4tKxd0P85vgO4WGNmmqCfebiQxi1fXsvq3HeaEiOKxO','市川','ゆきえ','イチカワ','ユキエ','2016-11-11 03:02:38.271164','2016-11-11 03:02:38.271164');
INSERT INTO `customers` VALUES(813,'reiko.2.25.freedom@i.softbank.jp','reiko.2.25.freedom@i.softbank.jp','$2a$10$LPVC1TYlgSROSvDcd6u0nu35k2EnU2Z9s76k3k83lZWRfx1PGFulu','細山','玲子','ホソヤマ','レイコ','2016-11-12 13:54:17.886752','2016-11-12 13:54:17.886752');
INSERT INTO `customers` VALUES(814,'yoshi_katsuki@hotmail.com','yoshi_katsuki@hotmail.com','$2a$10$/vFatFs0VmuNz9nj/jnICe9CB2zYvNaLKbhTKZroGoZrEy54lwgSS','香月','克公','カツキ','ヨシタダ','2016-11-13 10:57:17.290315','2016-11-13 10:57:17.290315');
INSERT INTO `customers` VALUES(815,'maya-tana.6812@gaia.eonet.ne.jp','maya-tana.6812@gaia.eonet.ne.jp','$2a$10$gKi/0uyW5cVtQmDsaKnlse8bgIVh6vaskn5lpxiP1zoaQz/WiSycG','田中','リエコ','タナカ','リエコ','2016-11-16 09:17:25.757754','2016-11-16 09:17:25.757754');
INSERT INTO `customers` VALUES(816,'ma_reitan_chi_pee@yahoo.co.jp','ma_reitan_chi_pee@yahoo.co.jp','$2a$10$FKMCr3pOyzFmNqNj7rdErOVklVHMxIR2YjadKy3kJyYvJkbVmpGTi','横澤','知恵香','ヨコサワ','チエカ','2016-11-24 14:10:54.205765','2016-11-24 14:10:54.205765');
INSERT INTO `customers` VALUES(817,'mamikikuchi228@yahoo.co.jp','mamikikuchi228@yahoo.co.jp','$2a$10$IkqLkeWRVJTYaZtNL4mmXOr0eU7vRpRkW5WAQdpv3qKjR6kcxS58W','戸川','真実','トガワ','マミ','2016-11-26 02:28:20.826336','2016-11-26 02:28:20.826336');
INSERT INTO `customers` VALUES(818,'mamikikuchi200@yahoo.co.jp','mamikikuchi200@yahoo.co.jp','$2a$10$U/XyOdhyBmlVa51cK9wL1uzmUVPbVh7urWIiRzr9OADCm9WP/l2uq','戸川','真実','トガワ','マミ','2016-11-26 02:33:40.548726','2016-11-26 02:33:40.548726');
INSERT INTO `customers` VALUES(819,'mamikikuchi220@yahoo.co.jp','mamikikuchi220@yahoo.co.jp','$2a$10$LRi/EwaWoW.4PyIGLTjnE.7f3DHVKQpckz2ap7.scsv20/STPS6rG','戸川','真実','トガワ','マミ','2016-11-26 02:41:33.762267','2016-11-26 02:41:33.762267');
INSERT INTO `customers` VALUES(820,'chirika2005@yahoo.co.jp','chirika2005@yahoo.co.jp','$2a$10$tvKRCuW4D/RMtOkg20TqqOgX1MTKQ7/XzzGOdZueNaUJ5lVg2Bsxq','川越','千恵','カワゴエ','チエ','2016-12-11 13:21:57.420355','2016-12-11 13:21:57.420355');
INSERT INTO `customers` VALUES(821,'mahou@maia.eonet.ne.jp','mahou@maia.eonet.ne.jp','$2a$10$Zc/Rnvvbcla748ouDOAEaeA6Z04ZHBr/xV/RZwPK7U3Elf.Od.k7a','中上','保雄','ナカガミ','ヤスオ','2016-12-13 06:37:19.874812','2016-12-13 06:37:19.874812');
INSERT INTO `customers` VALUES(822,'shenron2115@gmail.com','shenron2115@gmail.com','$2a$10$TVRDpRtBVVysDdvh5caBYOabdm2a86gSbBpz2m5znQ8m/9HonsXGy','市村','文香','イチムラ','フミカ','2016-12-16 14:41:23.086417','2016-12-16 14:41:23.086417');
INSERT INTO `customers` VALUES(823,'fish36343@yahoo.co.jp','fish36343@yahoo.co.jp','$2a$10$oBozeLRK1jbFCnEbBBiUJ.cCoNRc2scBAnnJ3LpzgP5hvNZsTTvzu','安井','由起馨','ヤスイ','ユキコ','2016-12-19 12:23:30.145990','2016-12-19 12:23:30.145990');
INSERT INTO `customers` VALUES(824,'f.julianestini@gmail.com','f.julianestini@gmail.com','$2a$10$EoUxVwtqmVrez/73H28A8OSE/J/LanvVguyoCi6GnUcILAZE211N.','織田','順一','オダ','ジュンイチ','2016-12-20 05:09:05.768588','2016-12-20 05:09:05.768588');
INSERT INTO `customers` VALUES(825,'foodstyle.revo@gmail.com','foodstyle.revo@gmail.com','$2a$10$S0D0gB2Eo9VJy1Kuw85Ry.gJDBfVktW.xjYH1k2ohrKVMQ96GYdaa','成定','真一','ナリサダ','シンイチ','2016-12-21 02:52:09.830988','2016-12-21 02:52:09.830988');
INSERT INTO `customers` VALUES(826,'junko1012s@softbank.ne.jp','junko1012s@softbank.ne.jp','$2a$10$P2yCg4Y/pM24s4AR8sMiJO1.DoRp.hBlZHxqh2FFs55kM0m4fSA0C','下條','純子','シモジョウ','ジュンコ','2016-12-22 05:24:51.092890','2016-12-22 05:24:51.092890');
INSERT INTO `customers` VALUES(827,'urayosh@gmail.com','urayosh@gmail.com','$2a$10$FqkTBQqBljt8PqDHH4hAHuVFSyb5MHIpaT3qidP6SVLyV1l0Dlaoe','山田','昌功','ヤマダ','マサヨシ','2016-12-22 05:59:35.520284','2016-12-22 05:59:35.520284');
INSERT INTO `customers` VALUES(828,'yoga-clip@i.softbank.jp','yoga-clip@i.softbank.jp','$2a$10$0UBkTLouxJS8yvH8UhB8YO1jNjxUmYSYzzFj13XOjGbDKzyJYl7ya','高畑','ひとみ','タカハタ','ヒトミ','2016-12-27 04:18:46.483344','2016-12-27 04:18:46.483344');
INSERT INTO `customers` VALUES(829,'jfvynms4281rt@hotmail.com','jfvynms4281rt@hotmail.com','$2a$10$qu9BOHWgvlyVXWB8De3uu.p7snzXc2smZY3rwgyCxXLlPG6P9w6N6','Barnypok','Barnypok','Barnypok','Barnypok','2016-12-28 21:58:45.496736','2016-12-28 21:58:45.496736');
INSERT INTO `customers` VALUES(830,'coocoopcoo@gmail.com','coocoopcoo@gmail.com','$2a$10$lWKLIXr0GsbUX9B/C0LtZeFbHX13YLV6crAjP/z8nS5w3j7FcnbYu','田中','公平','田中','コウヘイ','2017-01-01 15:55:12.461444','2017-01-01 15:55:12.461444');
INSERT INTO `customers` VALUES(831,'white-bird.818@ezweb.ne.jp','white-bird.818@ezweb.ne.jp','$2a$10$KSYLHnEnPZCJ.aXBWo7Wq.q7mMii8bcuG/Nw2D0tpRTyFDAMhw0Va','渡邊','百合子','ワタナベ','ユリコ','2017-01-05 11:38:11.317334','2017-01-05 11:38:11.317334');
INSERT INTO `customers` VALUES(832,'lunaomi@i.softbank.jp','lunaomi@i.softbank.jp','$2a$10$IqfUP/sLs83fsvXfQIFPDOnYvHdrLkvYo4CGlQzyjUMwT/DMKYzq2','市山','奈緒美','イチヤマ','ナオミ','2017-01-08 12:47:59.290280','2017-01-08 12:47:59.290280');
INSERT INTO `customers` VALUES(833,'toshi-1205-tommykrn@song.ocn.ne.jp','toshi-1205-tommykrn@song.ocn.ne.jp','$2a$10$KrntJAMstijTWd7iioFW5uW24OGjnbUVn4THsdx4oop6JpE0Knaqa','伊藤','年尾','イトウ','トシオ','2017-01-10 09:01:29.269408','2017-01-10 09:01:29.269408');
INSERT INTO `customers` VALUES(834,'mondesign11@gmail.com','mondesign11@gmail.com','$2a$10$Kju3J2VM/8qjB/6Tia3Bru6oFf.pOU8ezGrzGOFGR7JpN1HHL7ET2','楓','紋子','モミジ','アヤコ','2017-01-10 12:46:16.691026','2017-01-10 12:46:16.691026');
INSERT INTO `customers` VALUES(835,'nanayamamot@gmail.com','nanayamamot@gmail.com','$2a$10$QomuJ2SnxteBPiZr.WBxXOWD5Vs1z.Mt5bpK/gk186PD/aAhYSH4y','山本','菜々','ヤマモト','ナナ','2017-01-14 15:19:56.995408','2017-01-14 15:19:56.995408');
INSERT INTO `customers` VALUES(836,'nanah11371787@docomo.ne.jp','nanah11371787@docomo.ne.jp','$2a$10$iOnUMvAI1mbLDg.A.kOJyOrn81wMGs0HiCfvhr4RwSEn81N7ZsWMS','山本','菜々','ヤマモト','ナナ','2017-01-14 15:22:00.142053','2017-01-14 15:22:00.142053');
INSERT INTO `customers` VALUES(837,'tomohiromori0213@gmail.com','tomohiromori0213@gmail.com','$2a$10$xBe.K9qW9MPBxfv0kyhAxuYevziPxltWturEIQU/8wYwckejZDUBy','森','友宏','モリ','トモヒロ','2017-01-15 03:11:35.312261','2017-01-15 03:11:35.312261');
INSERT INTO `customers` VALUES(838,'ay_gray@hotmail.co.jp','ay_gray@hotmail.co.jp','$2a$10$ZlKDJScTshk0ZWEHOBnWdenrxoDM5.F1zG547BekEk0Pdi2abxilO','矢野','輝','ヤノ','アキラ','2017-01-16 01:33:46.673241','2017-01-16 01:33:46.673241');
INSERT INTO `customers` VALUES(839,'sea.mie.814@gmail.com','sea.mie.814@gmail.com','$2a$10$0r8vZMZMW3ntTzlmb7YQh.5aLiI0wn3dKYbhOgDL9KeayLQLDvtqW','田中','美穂','タナカ','ミホ','2017-01-17 00:29:32.984218','2017-01-17 00:29:32.984218');
INSERT INTO `customers` VALUES(840,'t.inadu@141company.co.jp','t.inadu@141company.co.jp','$2a$10$IrWKa0FblFmWs1Lvzoux1e79ApEI7nzXX7YLg5iZb4SYRgQoLbDH2','稲津','龍夫','イナヅ','タツオ','2017-01-18 01:48:52.082105','2017-01-18 01:48:52.082105');
INSERT INTO `customers` VALUES(841,'tamago-mail@ezweb.ne.jp','tamago-mail@ezweb.ne.jp','$2a$10$BLjBJRouOhlxrrKEsMXE2OKZkfS9CmmnfYJQb6.FWiJjwDmPsRace','山田','佳子','ヤマダ','ケイコ','2017-01-23 03:10:24.769161','2017-01-23 03:10:24.769161');
INSERT INTO `customers` VALUES(842,'syoutyu-in@i.softbank.jp','syoutyu-in@i.softbank.jp','$2a$10$yha8zfsVpUC80.Su9pb/VOnLTc0Bf81cRDOlO72T5U.t4jtREAvLS','松田','洋一','まつだ','よういち','2017-01-23 03:28:00.930881','2017-01-23 03:28:00.930881');
INSERT INTO `customers` VALUES(843,'ka3t-sghr@outlook.jp','ka3t-sghr@outlook.jp','$2a$10$HBiAJjrb/xUYyqE0r1v8VO57otJI/43TrcChjzocvYoOND5CaNgtq','菅原','鈴子','スガハラ','スズコ','2017-01-24 09:37:04.657504','2017-01-24 09:37:04.657504');
INSERT INTO `customers` VALUES(844,'nigo225@gmail.com','nigo225@gmail.com','$2a$10$8GuHP/OYBiQ93W7GmAkgvuB9mEqLufLkNUyvSzq1u.PlT/nceOLHS','上原　','隆','ウエハラ','リュウ','2017-01-27 01:18:34.799324','2017-01-27 01:18:34.799324');
INSERT INTO `customers` VALUES(845,'samurai999ken@gmail.com','samurai999ken@gmail.com','$2a$10$phrFJXFTmyOUsHkxgu01c.s2KVMZPGzfhTOtGmF/oQLhoBKh2Okfi','松田','憲','マツダ','ケン','2017-01-27 11:40:10.602930','2017-01-27 11:40:10.602930');
INSERT INTO `customers` VALUES(846,'beautifulbranch.4@gmail.com','beautifulbranch.4@gmail.com','$2a$10$ykdm2BdfSC8f8WxY8FVSbefRToGO0jm3vkPNKd44Hb2r6odhj/oC6','藤山','美枝','フジヤマ','ミキ','2017-02-03 12:31:42.703467','2017-02-03 12:31:42.703467');
INSERT INTO `customers` VALUES(847,'naomasu33@gmail.com','naomasu33@gmail.com','$2a$10$gaTSMjHG0tA0QJkW2dFOOucJj.Qdb4/BtrShpcD7KyGQz6CZCeDq6','masuda','naohiko','マスダ','ナオヒコ','2017-02-05 00:25:39.933948','2017-02-05 00:25:39.933948');
INSERT INTO `customers` VALUES(848,'uran.yumiko@nifty.com','uran.yumiko@nifty.com','$2a$10$7TsjeKE1OEz0qkbaHAv6qewYMdNBTggYpoirZg5zsieBe.HBpccFC','畑中','由美子','ハタナカ','ユミコ','2017-02-05 05:49:34.219635','2017-02-05 05:49:34.219635');
INSERT INTO `customers` VALUES(849,'yamnippon@yahoo.co.jp','yamnippon@yahoo.co.jp','$2a$10$Yat5imI0jTIHSuxBYfZzJeEDzsoX/fnOSbDsmnuiKeW/0KJgQMy62','西村','里実','ニシムラ','サトミ','2017-02-05 12:47:46.175770','2017-02-05 12:47:46.175770');
INSERT INTO `customers` VALUES(850,'onishi@priroda.jp','onishi@priroda.jp','$2a$10$CVi7gOfxAXRYyl7b81SFHOYvPEQYTXc/nPVelZejqEXkXEf81MmxG','大西','千晶','オオニシ','チアキ','2017-02-06 03:53:01.197692','2017-02-06 03:53:01.197692');
INSERT INTO `customers` VALUES(851,'jun5523jun@ymobile.ne.jp','jun5523jun@ymobile.ne.jp','$2a$10$G3AMHMUZiLoZx5PHujA09..zS.ZYxbjWmbPkvudvvWTuBSWQospty','比留川','順子','ヒルカワ','ジュンコ','2017-02-07 14:56:15.021645','2017-02-07 14:56:15.021645');
INSERT INTO `customers` VALUES(852,'ishigurotomoe@gmail.com','ishigurotomoe@gmail.com','$2a$10$lzD0bETXtTzzY.MxmbvXhuOHbd72nKgkBkTdob.hpwD2RlJfpb6tK','石黒','智絵','イシグロ','トモエ','2017-02-08 13:20:25.060835','2017-02-08 13:20:25.060835');
INSERT INTO `customers` VALUES(853,'marie036r@aol.com','marie036r@aol.com','$2a$10$75a7RqBqptvKRdrdPkmTV..klsCQcUfJNjt.tO2awlBhDqxxwiiC2','景山','ルミ子','カゲヤマ','ルミコ','2017-02-09 01:25:55.048923','2017-02-09 01:25:55.048923');
CREATE TABLE `addresses` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `customer_id` integer NOT NULL, `postal_code` varchar(255) NOT NULL, `prefecture` varchar(255) NOT NULL, `city` varchar(255) NOT NULL, `address1` varchar(255) NOT NULL, `address2` varchar(255) NOT NULL, `company_name` varchar(255) DEFAULT '' NOT NULL, `division_name` varchar(255) DEFAULT '' NOT NULL, `type` varchar(255), `created_at` datetime, `updated_at` datetime, `order_id` integer, `phone` varchar(255));
INSERT INTO `addresses` VALUES(1,2,'6694312','兵庫県','丹波市市島町北奥','555','','','',NULL,'2015-10-04 13:48:10.506330','2015-10-20 12:01:55.042342',NULL,'09017352078');
INSERT INTO `addresses` VALUES(2,20,'6148327','京都府','八幡市橋本栗ヶ田に','26-204','','','',NULL,'2015-10-20 11:51:55.010649','2015-10-20 11:51:55.010649',NULL,'09050103972');
INSERT INTO `addresses` VALUES(3,20,'6148327','京都府','八幡市橋本栗ヶ谷','26-204','','','',NULL,'2015-10-20 11:53:08.438587','2015-10-20 11:53:08.438587',NULL,'09050103972');
INSERT INTO `addresses` VALUES(4,28,'4630037','','','','','','',NULL,'2015-11-04 13:34:48.566947','2015-11-04 13:34:48.566947',NULL,'');
INSERT INTO `addresses` VALUES(5,28,'4630037','愛知県','名古屋市天子田','1-1801-1','','','',NULL,'2015-11-04 13:37:36.573172','2015-11-04 13:37:36.573172',NULL,'052-771-1832');
INSERT INTO `addresses` VALUES(6,23,'3310063','埼玉県','さいたま市プラザ','49-8','','','',NULL,'2015-11-11 06:39:53.127547','2015-11-11 06:39:53.127547',NULL,'08013080137');
INSERT INTO `addresses` VALUES(7,23,'3310063','埼玉県','さいたま市西区','49-8','','','',NULL,'2015-11-11 06:41:39.088584','2015-11-11 06:41:39.088584',NULL,'08013080137');
INSERT INTO `addresses` VALUES(8,23,'3310063','埼玉県','さいたま市西区プラザ','49-8','','','',NULL,'2015-11-11 10:23:03.097437','2015-11-11 10:23:03.097437',NULL,'08013080137');
INSERT INTO `addresses` VALUES(9,1,'6694312','兵庫県','丹波市市島町北奥','555','','','',NULL,'2015-11-12 03:11:43.207676','2015-11-12 03:11:43.207676',NULL,'09017352078');
INSERT INTO `addresses` VALUES(10,171,'1760021','東京都','練馬区貫井','4-17-3','ツインホームズ102','','',NULL,'2016-02-02 14:20:33.763830','2016-02-02 14:20:33.763830',NULL,'09060245341');
INSERT INTO `addresses` VALUES(11,116,'1860004','東京都','国立市','中3-11-1','クリオレミントン 1301','','',NULL,'2016-02-06 08:24:29.059795','2016-02-06 08:24:29.059795',NULL,'08055320817');
INSERT INTO `addresses` VALUES(12,202,'9402111','新潟県','長岡市三ツ郷屋','2-4-5','ヴィラアンジェA101','','',NULL,'2016-02-09 04:57:06.773169','2016-02-09 04:57:06.773169',NULL,'08010062643');
INSERT INTO `addresses` VALUES(13,194,'6212600','京都府','京都市伏見区東組町','703-1','エスリード伏見桃山1-702','','',NULL,'2016-02-10 11:01:05.356516','2016-02-10 11:01:05.356516',NULL,'0756212600');
INSERT INTO `addresses` VALUES(14,41,'1580082','東京都','世田谷区等々力','2-18-15','','','',NULL,'2016-02-19 01:50:06.905124','2016-02-19 01:50:06.905124',NULL,'0337034070');
INSERT INTO `addresses` VALUES(15,226,'3591116','','','','','','',NULL,'2016-02-23 06:03:51.675050','2016-02-23 06:03:51.675050',NULL,'');
INSERT INTO `addresses` VALUES(16,226,'3591116','埼玉県','所沢市東町','15-5','ひかり荘201','','',NULL,'2016-02-23 06:04:47.533743','2016-02-23 06:04:47.533743',NULL,'09049488467');
INSERT INTO `addresses` VALUES(17,156,'3360017','埼玉県','さいたま市南区南浦和','2-6-16-404','','','',NULL,'2016-03-08 06:17:20.713860','2016-03-08 06:17:20.713860',NULL,'0488832357');
INSERT INTO `addresses` VALUES(18,156,'3360017','埼玉県','さいたま市南区南浦和','2-6-13-404','','','',NULL,'2016-03-08 06:17:52.123780','2016-03-08 06:17:52.123780',NULL,'0488832357');
INSERT INTO `addresses` VALUES(19,254,'1800023','東京都','武蔵野市境南町','4-21-5','','','',NULL,'2016-03-18 03:57:17.714044','2016-03-18 03:57:17.714044',NULL,'0422302905');
INSERT INTO `addresses` VALUES(20,303,'1610034','東京都','新宿区上落合','3-15-11','コーポエルム203','','',NULL,'2016-03-28 07:28:56.890680','2016-03-28 07:28:56.890680',NULL,'09014240258');
INSERT INTO `addresses` VALUES(21,216,'6068172','京都府','京都市左京区一乗寺河原田町','29-3','','','',NULL,'2016-03-28 09:32:15.459853','2016-03-28 09:32:15.459853',NULL,'');
INSERT INTO `addresses` VALUES(22,310,'1540014','東京都','世田谷区','新町2-32-6','','','',NULL,'2016-04-01 22:26:28.786735','2016-04-01 22:26:28.786735',NULL,'0334395255');
INSERT INTO `addresses` VALUES(23,241,'2240034','神奈川県','横浜市都筑区勝田町','829-1-205','グリーンステージ','','',NULL,'2016-04-02 00:36:18.182290','2016-04-02 00:36:18.182290',NULL,'08055359393');
INSERT INTO `addresses` VALUES(24,316,'4091502','山梨県','北杜市大泉町谷戸','8652','','','',NULL,'2016-04-02 23:51:50.306577','2016-04-02 23:51:50.306577',NULL,'0551381406');
INSERT INTO `addresses` VALUES(25,336,'1200005','東京都','足立区綾瀬','2-13-17','','','',NULL,'2016-04-06 01:01:30.440506','2016-04-06 01:01:30.440506',NULL,'03-3604-1050');
INSERT INTO `addresses` VALUES(26,354,'1790075','東京都','練馬区高松5丁目','6-21-406','ライオンズ光が丘オーセンティックハウス','','',NULL,'2016-04-06 10:05:16.051961','2016-04-06 10:05:16.051961',NULL,'09055983444');
INSERT INTO `addresses` VALUES(27,320,'6590091','兵庫県','芦屋市','東山町14-18','坂の一番上 芝原様方','','',NULL,'2016-04-08 14:07:27.322753','2016-06-03 04:35:23.336263',NULL,'0797200510');
INSERT INTO `addresses` VALUES(28,341,'0368171','青森県','弘前市取上','1-14-2','','','',NULL,'2016-04-18 13:29:41.240568','2016-04-18 13:29:41.240568',NULL,'08031442380');
INSERT INTO `addresses` VALUES(29,393,'6210002','京都府','亀岡市千歳町','千歳垣内山2-4','','','',NULL,'2016-04-29 02:33:27.752415','2016-04-29 02:33:27.752415',NULL,'0771-25-1444');
INSERT INTO `addresses` VALUES(30,197,'1520034','東京都','目黒区緑が丘','1-16-5','kakudai 201号室','','',NULL,'2016-05-02 00:14:13.290652','2016-05-02 00:14:13.290652',NULL,'08041257074');
INSERT INTO `addresses` VALUES(31,396,'6995502','島根県','鹿足郡吉賀町','田野原738','','','',NULL,'2016-05-02 04:44:37.870671','2016-05-02 04:44:37.870671',NULL,'+818054255475');
INSERT INTO `addresses` VALUES(32,398,'1410033','東京都','品川区西品川','1-7-7','ウッドビレッヂ201','','',NULL,'2016-05-08 10:46:51.317368','2016-05-08 10:46:51.317368',NULL,'09072530290');
INSERT INTO `addresses` VALUES(33,405,'0660017','北海道','千歳市日の出5丁目','14-5','','','',NULL,'2016-05-11 10:19:55.839776','2016-05-11 10:19:55.839776',NULL,'08060707832');
INSERT INTO `addresses` VALUES(34,405,'0660017','北海道','千歳市日の出','5-14-5','','','',NULL,'2016-05-11 10:20:59.768900','2016-05-11 10:20:59.768900',NULL,'08060707832');
INSERT INTO `addresses` VALUES(35,7,'1430024','東京都','大田区中央','5-24-7-203','','','',NULL,'2016-05-12 02:05:17.457107','2016-05-12 02:05:17.457107',NULL,'09024106867');
INSERT INTO `addresses` VALUES(36,100,'2220003','','横浜市港北区大曽根','2-25-5-104','ライブタウン綱島','','',NULL,'2016-05-13 00:23:41.983176','2016-05-13 00:24:37.913403',NULL,'0455480787');
INSERT INTO `addresses` VALUES(37,435,'1020081','東京都','千代田区四番町','9-8','小田急麹町マンション707','','',NULL,'2016-05-14 01:37:03.927856','2016-05-14 01:37:03.927856',NULL,'07026235340');
INSERT INTO `addresses` VALUES(38,423,'1070052','東京都','港区赤坂','9-6-30-404','','','',NULL,'2016-05-14 02:04:21.701203','2016-05-14 02:04:21.701203',NULL,'080-5083-4164');
INSERT INTO `addresses` VALUES(39,126,'1810012','東京都','三鷹市','上連雀4-26-32','財部荘202','','',NULL,'2016-05-14 11:59:48.085400','2016-05-14 11:59:48.085400',NULL,'09042030044');
INSERT INTO `addresses` VALUES(40,432,'7670033','香川県','三豊市三野町','吉津甲372','','','',NULL,'2016-05-19 22:17:47.027290','2016-05-19 22:18:33.564617',NULL,'08055247351');
INSERT INTO `addresses` VALUES(41,462,'6890354','鳥取県','鳥取市気高町睦逢','730','鳥取らっきょう本舗内','','',NULL,'2016-06-11 21:58:29.029190','2016-06-11 21:58:29.029190',NULL,'09082489383');
INSERT INTO `addresses` VALUES(42,463,'6650044','兵庫県','宝塚市末成町','27-5','','','',NULL,'2016-06-12 08:25:50.349689','2016-06-12 08:25:50.349689',NULL,'09083267809');
INSERT INTO `addresses` VALUES(43,302,'1530053','東京都','目黒区','五本木3-25-6-202','stella学芸大学','','',NULL,'2016-06-22 22:31:03.235762','2016-06-22 22:31:03.235762',NULL,'08014708966');
INSERT INTO `addresses` VALUES(44,472,'6570844','兵庫県','神戸市灘区都通','2-1-18','パレス東洋神戸6号館412','','',NULL,'2016-06-24 07:23:53.299544','2016-06-24 07:23:53.299544',NULL,'09098792993');
INSERT INTO `addresses` VALUES(45,252,'9030804','沖縄県','那覇市首里石嶺町','4-185-7','ルミエール石嶺203','','',NULL,'2016-06-24 09:29:07.616492','2016-06-24 09:29:33.161755',NULL,'09097861307');
INSERT INTO `addresses` VALUES(46,473,'6570844','兵庫県','神戸市灘区都通','2-1-18','パレス東洋神戸6号館412','','',NULL,'2016-06-24 10:23:35.351173','2016-06-24 10:23:35.351173',NULL,'09098792993');
INSERT INTO `addresses` VALUES(47,475,'7000945','岡山県','岡山市南区新保','698-2-2-705','','','',NULL,'2016-06-25 23:55:38.730977','2016-06-25 23:55:38.730977',NULL,'07064915566');
INSERT INTO `addresses` VALUES(48,28,'5410054','大阪府','中央区南本町','1番8号','創建本町ビル3階','','',NULL,'2016-06-30 08:42:09.234032','2016-06-30 08:42:09.234032',NULL,'0662267055');
INSERT INTO `addresses` VALUES(49,493,'1700002','東京都','豊島区巣鴨','3-25-13','チェリーハイム天野302','','',NULL,'2016-07-02 19:11:13.199392','2016-07-02 19:11:13.199392',NULL,'09092247874');
INSERT INTO `addresses` VALUES(50,508,'1700002','東京都','豊島区巣鴨','4-18-5','ルーチェ巣鴨102','','',NULL,'2016-07-12 23:51:05.990060','2016-07-12 23:51:05.990060',NULL,'09056030570');
INSERT INTO `addresses` VALUES(51,425,'5370024','大阪府','大阪市東成区東小橋','1-16-5','原ビル','','',NULL,'2016-07-16 18:35:01.127167','2016-07-16 18:35:01.127167',NULL,'09078863696');
INSERT INTO `addresses` VALUES(52,425,'5370024','大阪府','大阪市東成区東小橋','1-16-5','原ビル','','',NULL,'2016-07-16 18:35:10.338883','2016-07-16 18:35:10.338883',NULL,'09078863696');
INSERT INTO `addresses` VALUES(53,520,'2470071','神奈川県','鎌倉市玉縄','2-21-10','','','',NULL,'2016-07-30 14:40:18.837724','2016-07-30 14:40:18.837724',NULL,'0467-43-5313');
INSERT INTO `addresses` VALUES(54,553,'1130022','東京都','文京区千駄木5-17-4','101','','','',NULL,'2016-08-06 14:19:27.153521','2016-08-06 14:19:27.153521',NULL,'08063497993');
INSERT INTO `addresses` VALUES(55,581,'6060024','京都府','京都市左京区','岩倉花園町137-1','','','',NULL,'2016-08-08 07:53:31.811378','2016-08-08 07:53:31.811378',NULL,'0757116040');
INSERT INTO `addresses` VALUES(56,528,'2994105','千葉県','茂原市弓渡','1189-12','','','',NULL,'2016-08-08 13:48:03.176731','2016-08-08 13:48:03.176731',NULL,'0475348175');
INSERT INTO `addresses` VALUES(57,600,'4228017','静岡県','静岡市駿河区大谷','430-13','','','',NULL,'2016-08-12 18:48:56.442228','2016-08-12 18:48:56.442228',NULL,'09080748035');
INSERT INTO `addresses` VALUES(58,607,'3400022','埼玉県','草加市瀬崎','3-38-3','コンフォリア谷塚805','','',NULL,'2016-08-15 20:48:24.045175','2016-08-15 20:48:24.045175',NULL,'080-4708-1207');
INSERT INTO `addresses` VALUES(59,604,'2310045','神奈川県','横浜市中区伊勢佐木町','4-112','','','',NULL,'2016-08-16 00:29:42.835764','2016-08-16 00:29:42.835764',NULL,'0452420307');
INSERT INTO `addresses` VALUES(60,611,'1920361','東京都','八王子市越野','22-22','','','',NULL,'2016-08-16 09:02:16.206004','2016-08-16 09:02:16.206004',NULL,'09065156854');
INSERT INTO `addresses` VALUES(61,614,'6068335','京都府','京都市左京区岡崎天王町','61-1','ヴィラ岡崎304','','',NULL,'2016-08-16 14:16:39.490669','2016-08-16 14:16:39.490669',NULL,'09030316938');
INSERT INTO `addresses` VALUES(62,1,'6750101','兵庫県','加古川市平岡町新在家','587-1','','','',NULL,'2016-08-19 11:41:12.713832','2016-08-19 11:41:12.713832',NULL,'0794270350');
INSERT INTO `addresses` VALUES(63,67,'3590045','埼玉県','所沢市','美原町3-2970-39','ファミーユ美原101','','',NULL,'2016-08-26 01:12:05.151336','2016-08-26 01:13:18.152591',NULL,'09018805872');
INSERT INTO `addresses` VALUES(64,260,'1330061','東京都','江戸川区篠崎町','6-16-5','','','',NULL,'2016-08-26 12:03:25.576886','2016-08-26 12:03:25.576886',NULL,'08044115385');
INSERT INTO `addresses` VALUES(65,595,'6730023','兵庫県','明石市硯町','3-2-3-605','','','',NULL,'2016-08-30 16:45:48.878162','2016-09-05 09:18:35.570896',NULL,'09011561815');
INSERT INTO `addresses` VALUES(66,171,'1760021','東京都','練馬区貫井','4-17-3','ツインホームズ102','','',NULL,'2016-08-31 10:12:22.158627','2016-08-31 10:12:22.158627',NULL,'09060245341');
INSERT INTO `addresses` VALUES(67,678,'6570024','兵庫県','神戸市灘区楠丘町','3-11-22','','','',NULL,'2016-09-04 07:49:53.003612','2016-09-04 07:49:53.003612',NULL,'08057042443');
INSERT INTO `addresses` VALUES(68,679,'2340054','神奈川県','横浜市港南区港南台','7-16-2','','','',NULL,'2016-09-04 13:08:43.282214','2016-09-04 13:08:43.282214',NULL,'09098583798');
INSERT INTO `addresses` VALUES(69,718,'2770853','千葉県','柏市','吉野沢11-7-201','','','',NULL,'2016-09-11 02:12:57.623667','2016-10-01 08:31:08.752405',NULL,'09060476005');
INSERT INTO `addresses` VALUES(70,725,'1540002','東京都','世田谷区','下馬1-25-16','ガーデンオハナ1F','','',NULL,'2016-09-13 11:06:37.570696','2016-09-13 11:06:37.570696',NULL,'0334191456');
INSERT INTO `addresses` VALUES(71,652,'2300041','神奈川県','横浜市鶴見区潮田町','1-23-4-603','','','',NULL,'2016-09-16 03:20:26.475726','2016-09-16 03:20:26.475726',NULL,'09084220065');
INSERT INTO `addresses` VALUES(72,738,'1040054','東京都','中央区勝どき','6-3-2-2021','','','',NULL,'2016-09-19 22:23:27.382251','2016-09-19 22:23:27.382251',NULL,'07036003617');
INSERT INTO `addresses` VALUES(73,743,'3591142','埼玉県','所沢市上新井','2-56-14','','','',NULL,'2016-09-22 14:13:24.324211','2016-09-22 14:13:24.324211',NULL,'09035936120');
INSERT INTO `addresses` VALUES(74,127,'1300005','東京都','墨田区東駒形','1-9-13','','','',NULL,'2016-09-26 13:43:47.168868','2016-09-26 13:43:47.168868',NULL,'090-5548-0338');
INSERT INTO `addresses` VALUES(75,249,'1840011','東京都','東小金井市東町','1-12-10','メゾン梨里202','','',NULL,'2016-09-29 04:31:29.802735','2016-09-29 04:31:29.802735',NULL,'08065186127');
INSERT INTO `addresses` VALUES(76,766,'1130021','東京都','文京区本駒込','2-27-18-1201','','','',NULL,'2016-10-04 09:07:39.102195','2016-10-04 09:07:39.102195',NULL,'07040186599');
INSERT INTO `addresses` VALUES(77,595,'6750101','兵庫県','加古川市平岡町新在家','587-1','','','',NULL,'2016-10-05 14:07:43.184371','2016-10-05 14:07:43.184371',NULL,'0794270350');
INSERT INTO `addresses` VALUES(78,324,'3700852','群馬県','高崎市中居町二丁目','6‐31','BIOSK','','',NULL,'2016-10-07 02:14:46.718850','2016-10-07 02:14:46.718850',NULL,'0273335753');
INSERT INTO `addresses` VALUES(79,669,'2230062','神奈川県','横浜市','港北区日吉本町5-42-33','','','',NULL,'2016-10-09 17:47:57.644414','2016-10-09 17:47:57.644414',NULL,'090-4730-5959');
INSERT INTO `addresses` VALUES(80,640,'4130011','静岡県','熱海市田原本町','4ー20','','','',NULL,'2016-10-10 08:57:40.565254','2016-10-10 08:57:40.565254',NULL,'09012177989');
INSERT INTO `addresses` VALUES(81,784,'6730891','兵庫県','明石市大明石町','2-2-12','リバブル金陵402号','','',NULL,'2016-10-11 06:39:39.704838','2016-10-11 06:40:17.385423',NULL,'09012915790');
INSERT INTO `addresses` VALUES(82,796,'1400013','東京都','品川区南大井','1-6-2','アイディ品川601','','',NULL,'2016-10-15 19:52:56.725640','2016-10-15 19:52:56.725640',NULL,'08041391277');
INSERT INTO `addresses` VALUES(83,800,'2270043','神奈川県','横浜市青葉区藤が丘2丁目','35-6-202','','','',NULL,'2016-10-19 16:07:52.432083','2016-10-19 16:07:52.432083',NULL,'09022989564');
INSERT INTO `addresses` VALUES(84,807,'6540111','兵庫県','神戸市須磨区','車字菅の池1351-3','グレーシー須磨壱番館103','','',NULL,'2016-10-29 22:41:06.176742','2016-10-29 22:41:06.176742',NULL,'09062494223');
INSERT INTO `addresses` VALUES(85,815,'5730127','大阪府','枚方市津田元町','2-62-5','','','',NULL,'2016-11-16 09:25:39.656623','2016-11-16 09:25:39.656623',NULL,'0728585675');
INSERT INTO `addresses` VALUES(86,819,'2010005','東京都','狛江市岩戸南','3-2-35','','','',NULL,'2016-11-26 03:40:38.862362','2016-11-26 03:40:38.862362',NULL,'090-3533-9351');
INSERT INTO `addresses` VALUES(87,116,'3591141','埼玉県','所沢市所沢市小手指町','5-15-9','','','',NULL,'2017-01-14 22:04:13.274807','2017-01-14 22:04:13.274807',NULL,'08055320817');
INSERT INTO `addresses` VALUES(88,837,'5798024','大阪府','東大阪市南荘町','8-29','905号','','',NULL,'2017-01-15 03:20:07.037810','2017-01-15 03:20:07.037810',NULL,'09074980348');
CREATE TABLE `phones` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `customer_id` integer NOT NULL, `address_id` integer, `number` varchar(255) NOT NULL, `number_for_index` varchar(255) NOT NULL, `primary` boolean DEFAULT '0' NOT NULL, `created_at` datetime, `updated_at` datetime);
CREATE TABLE `staff_addresses` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `staff_member_id` integer DEFAULT 0 NOT NULL, `postal_code` varchar(255) DEFAULT '' NOT NULL, `prefecture` varchar(255) DEFAULT '' NOT NULL, `city` varchar(255) DEFAULT '' NOT NULL, `address1` varchar(255) DEFAULT '' NOT NULL, `address2` varchar(255) DEFAULT '' NOT NULL, `created_at` datetime, `updated_at` datetime, `latitude` float, `longitude` float);
INSERT INTO `staff_addresses` VALUES(8,2,'3703515','群馬県','高崎市','塚田町50','','2015-08-12 17:02:38.243418','2015-08-12 17:02:38.243418',36.3891944,139.0205097);
INSERT INTO `staff_addresses` VALUES(12,6,'','岡山県','瀬戸内市','232','','2015-08-12 23:56:31.234578','2015-08-12 23:56:31.234578',34.6649062,134.0928744);
INSERT INTO `staff_addresses` VALUES(23,10,'6620078','兵庫県','西宮市菊谷町','13-20','エム苦楽園103','2015-08-28 12:44:57.375127','2015-08-28 12:44:57.375127',34.7511645,135.3238296);
INSERT INTO `staff_addresses` VALUES(26,11,'6191152','京都府','木津川市加茂町','','','2015-09-01 10:50:48.022150','2015-09-01 10:50:48.022150',34.7546026,135.8692288);
INSERT INTO `staff_addresses` VALUES(29,13,'6490141','和歌山県','海南市下津町','小南417-2','','2015-09-17 08:02:43.994467','2015-09-17 08:02:43.994467',34.1274993,135.1680127);
INSERT INTO `staff_addresses` VALUES(42,15,'3890813','長野県','千曲市','若宮1305-109','','2015-09-27 02:14:09.836159','2015-09-27 02:14:09.836159',36.4950262,138.1315507);
INSERT INTO `staff_addresses` VALUES(43,9,'6694125','兵庫県','丹波市春日町','多田1050','','2015-10-02 03:16:17.086313','2015-10-02 03:16:17.086313',35.1788067,135.1175522);
INSERT INTO `staff_addresses` VALUES(48,17,'9291604','石川県','鹿島郡中能登町花見月','','','2015-10-14 11:00:45.122994','2015-10-14 11:00:45.122994',36.9971346,136.8678106);
INSERT INTO `staff_addresses` VALUES(49,1,'6694312','兵庫県','丹波市市島町北奥','555','','2015-10-18 12:47:54.004743','2015-10-18 12:47:54.004743',35.1975747,135.1718261);
INSERT INTO `staff_addresses` VALUES(52,8,'6561324','兵庫県','洲本市','五色町鮎原三野畑 577-4','','2015-11-02 08:49:53.372849','2015-11-02 08:49:53.372849',34.3889583,134.8184443);
INSERT INTO `staff_addresses` VALUES(53,7,'6100301','京都府','綴喜郡井手町','多賀東松ケ花56-1','大西ハウス','2015-11-12 03:23:10.931004','2015-11-12 03:23:10.931004',34.8189589,135.804509);
INSERT INTO `staff_addresses` VALUES(56,21,'6512302','兵庫県','神戸市西区神出町','古神','','2015-11-15 10:44:57.518586','2015-11-15 10:44:57.518586',34.7647497,135.004265);
INSERT INTO `staff_addresses` VALUES(60,4,'6191212','京都府','相楽郡和束町','釜塚牛ノ脊5-1','','2015-12-07 10:33:46.165499','2015-12-07 10:33:46.165499',34.7984179,135.9057581);
INSERT INTO `staff_addresses` VALUES(64,23,'','兵庫県','淡路市','木曽下','','2015-12-21 23:33:12.197765','2015-12-21 23:33:12.197765',34.4234441,134.8574734);
INSERT INTO `staff_addresses` VALUES(71,12,'7100132','岡山県','倉敷市','藤戸町天城1387-1','','2016-01-26 02:22:16.092007','2016-01-26 02:22:16.092007',34.5726291,133.8113515);
INSERT INTO `staff_addresses` VALUES(76,30,'','埼玉県','飯能市','','','2016-02-13 10:32:42.538545','2016-02-13 10:32:42.538545',35.8557309,139.327734);
INSERT INTO `staff_addresses` VALUES(78,5,'6561326','兵庫県','洲本市','五色町鮎原下498','','2016-02-13 11:54:36.760931','2016-02-13 11:54:36.760931',34.3997597,134.8214162);
INSERT INTO `staff_addresses` VALUES(81,31,'6220065','京都府','南丹市園部町','','','2016-02-16 05:10:12.222763','2016-02-16 05:10:12.222763',35.1029195,135.485003);
INSERT INTO `staff_addresses` VALUES(83,14,'6694312','兵庫県','丹波市市島町','北奥160','','2016-03-01 11:07:32.820715','2016-03-01 11:07:32.820715',35.2015047,135.176759);
INSERT INTO `staff_addresses` VALUES(88,33,'2240013','神奈川県','横浜市都筑区','すみれが丘17-51','','2016-03-18 13:00:59.441203','2016-03-18 13:00:59.441203',35.5683474,139.5789982);
INSERT INTO `staff_addresses` VALUES(92,32,'7014302','岡山県','瀬戸内市','牛窓町鹿忍','','2016-03-28 06:14:16.713186','2016-03-28 06:14:16.713186',34.6169781,134.1331424);
INSERT INTO `staff_addresses` VALUES(94,34,'7014302','岡山県','瀬戸内市','牛窓町','','2016-03-28 06:23:50.639909','2016-03-28 06:23:50.639909',34.6147589,134.1656125);
INSERT INTO `staff_addresses` VALUES(105,38,'0481622','北海道','虻田郡真狩村','字加野','405-7','2016-04-05 02:20:32.262033','2016-04-05 02:20:32.262033',42.7098605,140.7876073);
INSERT INTO `staff_addresses` VALUES(108,39,'0660011','北海道','千歳市','駒里2222','','2016-04-06 01:29:22.297903','2016-04-06 01:29:22.297903',42.8124229,141.7223423);
INSERT INTO `staff_addresses` VALUES(110,3,'','岡山県','瀬戸内市','牛窓町千手','','2016-05-13 04:14:05.234610','2016-05-13 04:14:05.234610',34.6122782,134.1134609);
INSERT INTO `staff_addresses` VALUES(112,40,'7670033','香川県','三豊市','三野町','','2016-05-14 08:43:56.497475','2016-05-14 08:43:56.497475',34.217996,133.7154789);
INSERT INTO `staff_addresses` VALUES(113,37,'0660005','北海道','千歳市協和','443-6','','2016-06-06 15:10:22.382467','2016-06-06 15:10:22.382467',42.8811603,141.7626994);
INSERT INTO `staff_addresses` VALUES(122,25,'6751318','兵庫県','小野市','北丘町','','2016-09-22 03:51:23.601676','2016-09-22 03:51:23.601676',34.8667783,134.9651537);
INSERT INTO `staff_addresses` VALUES(123,29,'7315114','広島県','広島市佐伯区','美鈴が丘西4丁目','','2016-11-24 11:46:16.927949','2016-11-24 11:46:16.927949',34.3976452,132.3811884);
INSERT INTO `staff_addresses` VALUES(126,19,'3150125','茨城県','石岡市','山崎3144ー17','','2016-12-09 15:11:11.439478','2016-12-09 15:11:11.439478',36.2461998,140.24908);
INSERT INTO `staff_addresses` VALUES(127,24,'6191106','京都府','木津川市','加茂町例幣部屋軒11','','2017-01-20 14:20:59.718347','2017-01-20 14:20:59.718347',34.7755476,135.8695783);
CREATE TABLE `articles` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `status` varchar(255), `created_at` datetime, `updated_at` datetime);
CREATE TABLE `microposts` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `content` varchar(255), `staff_member_id` integer, `created_at` datetime, `updated_at` datetime);
CREATE TABLE `schedules` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `harvest` varchar(255), `opening` varchar(255), `staff_member_id` integer, `harvest_date` date, `opening_date` datetime, `closing_date` datetime, `allDay` boolean, `event_url` varchar(255), `created_at` datetime, `updated_at` datetime, `image1` varchar(255), `image2` varchar(255), `image3` varchar(255));
INSERT INTO `schedules` VALUES(2,NULL,'2015年開園。自然栽培をメインに無農薬、無化学肥料(自然由来、非動物性肥料のみ使用)で淡路島の中心にある五色町鮎原村にてお野菜やお米を栽培しています。',5,NULL,'2015-08-13 00:00:00.000000',NULL,NULL,NULL,'2015-08-13 00:18:28.881153','2015-08-13 00:18:28.881153','1229886_1592311907698617_3944316995840001890_n.jpg','1422620_1594188714177603_7938594129757013137_n.jpg','11020905_1595657974030677_1141587893741918040_n.jpg');
INSERT INTO `schedules` VALUES(3,NULL,'2015年開園。自然栽培をメインに無農薬、無化学肥料(自然由来、非動物性肥料のみ使用)で淡路島の中心にある五色町鮎原村にてお野菜やお米を栽培しています。',5,NULL,'2015-08-13 00:00:00.000000','2016-03-01 00:00:00.000000',NULL,NULL,'2015-08-13 00:19:05.468607','2015-08-13 00:19:05.468607','1229886_1592311907698617_3944316995840001890_n.jpg','1422620_1594188714177603_7938594129757013137_n.jpg','11020905_1595657974030677_1141587893741918040_n.jpg');
INSERT INTO `schedules` VALUES(11,'おミカン完売いたしました☆
ご購入くださいまして、誠にありがとうござました！！',NULL,1,'2015-10-20',NULL,NULL,NULL,'','2015-10-23 01:22:41.917823','2015-10-23 01:22:41.917823','12167362_528062934024574_132700906_n__1_.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(12,NULL,'つくば山麓で、無農薬・無施肥栽培の ちいさな、ちいさな生きもの達と一緒に育てた野菜たち

万物は、多様性でバランスをとっている そんな思いで自然と向き合い、試行錯誤の連続のなか野菜を育てています。

現在、短大根・チャヨーテ・ルッコラ・ラディッシュ・紫小松菜・紫カラシナ・長ねぎを収穫中です。

畑の様子は、いわさき菜園Facebookページをご覧ください。

',19,NULL,'2015-10-26 09:00:00.000000',NULL,NULL,NULL,'2015-10-23 13:04:52.179162','2015-10-23 13:04:52.179162',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(21,NULL,'はじめまして。
タンポポ農園本多といいます。うちで定期でお届けしている宅配セットのお試しセットをご紹介させていただきます。旬のお野菜７品～を詰合せていただきました。届け曜日が１０月３０日（金曜）、１０月３１日（土曜）、１１月６日（金曜）着分を募集いたします。ご検討よろしくお願いします。
【お届けお野菜例】
・真黒なす（自家採種４年目・固定種）
・さきがけピーマン（自家採種3年目・固定種）
・打木源助大根葉（自家採種３年目・固定種）
・早生丸葉小松菜（購入種子・固定種）
・早生千筋京水菜（購入種子・固定種）
・楊貴妃白オクラ（自家採種１年目・固定種）
・黒田五寸人参まびき人参（自家採種３年目・固定種）',2,NULL,'2015-10-23 09:00:00.000000','2015-10-29 00:00:00.000000',NULL,NULL,'2015-10-25 23:36:44.684817','2015-10-25 23:36:44.684817','RIMG0705.jpg','RIMG0706.jpg','R0014462.jpg');
INSERT INTO `schedules` VALUES(23,'

油控えめで、やさしくて、ヘルシーな南インド料理。。
野菜を美味しく食べる料理をぜひ知っていただきたくイベントを開催します。ミュージシャン＆アーチストのマサラワーラーのお二人にミールス（南インドの菜食定食）を作ってもらいます！お野菜は無肥料自然栽培、インドスタイルな完全ギブアップ申告までの食べさせられ放題！

【インドユニット マサラワーラー】
インド料理を作るのが好きで好きで、いつも作りすぎてしまうのでもっと作りたい！だったら食べたい人を集めて食べてもらえばいいじゃん！ということで、店は持たずにいろんなところでインド料理を作る２人組。2011年にはタミル・ナードゥ州マハーバリプラムにてインド人にインド料理を作るイベントも！
現地の人に「おっ、いつも食ってるやつだ。」と言われて大喜び。翌日新聞沙汰になりました！インド料理ユニットというより、インドをリスペクトするコピーバンドみたいな２人組です。最近では、タミル映画に出演しちゃったり、インドのムービーダンスを踊ったりもしています。
ホームページ
http://masalawala.info/info.html

【場所】
群馬県高崎市塚田町５０
・前橋インターから車で３分
・バス（２６分）＝新前橋駅２番のりば発⇒塚田町下車徒歩３分

【料金】
どれだけ食べても３０００円！（お一人）中学生１０００円、未就学児無料！',NULL,2,NULL,NULL,NULL,NULL,'https://www.facebook.com/events/1606510976236263/','2015-10-25 23:41:43.533630','2015-10-25 23:41:43.533630','masalawalaprof.jpg','12143278_850579995039225_42702400440798137_n.jpg',NULL);
INSERT INTO `schedules` VALUES(24,NULL,'フライヤー配布開始しました⭐︎',1,NULL,'2015-10-26 01:00:00.000000','2015-10-26 23:00:00.000000',NULL,NULL,'2015-10-26 11:18:23.115422','2015-10-26 11:18:23.115422','______.jpg','______.jpg',NULL);
INSERT INTO `schedules` VALUES(27,NULL,'自然栽培・固定種で作った冬野菜セットです。
６種類〜を詰め合わせてお届けいたします。
税込２１６０円プラス送料となります。',18,NULL,'2015-11-09 08:00:00.000000',NULL,NULL,NULL,'2015-11-08 04:37:05.214161','2015-11-08 04:37:05.214161','11220801_715603641874842_2687177629961622615_n.jpg','12043092_711447812290425_3569981743093490230_n.jpg','12189841_713766205391919_3888584923023917214_n.jpg');
INSERT INTO `schedules` VALUES(28,NULL,'',18,NULL,'2015-11-08 15:00:00.000000',NULL,NULL,NULL,'2015-11-08 04:38:46.135530','2015-11-08 04:38:46.135530',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(29,NULL,'無肥料、農薬不使用の「ねずみ大根」販売開始しました⭐︎
すりおろして、薬味にも、お鍋にそのまま入れても美味しくいただけます⭐︎ぜひ賞味ください！！',1,NULL,'2015-11-27 02:00:00.000000','2015-12-03 02:00:00.000000',NULL,NULL,'2015-11-28 09:43:57.767854','2015-11-28 09:43:57.767854','IMG_0547.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(30,NULL,'自然栽培で育てた餅米のご準備ができました☆
自然の甘みをお楽しみ下さい！

無肥料
無施肥
で育てたあっさりとした餅米です。新米ですので、少な目のお水で浸水させずに、洗ってすぐにお米と同様に炊いていただくと、もちもちのおこわとしてお召し上がりいただけます★
もちろん蒸して、つけば美味しいお餅に！寒い冬の食卓にぴったりです★',1,NULL,'2015-12-06 12:00:00.000000','2015-12-31 12:00:00.000000',NULL,NULL,'2015-12-04 06:17:23.893826','2015-12-04 06:17:23.893826','image.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(41,NULL,'今まで、教わった通り、
安全と信じて代々慣行農業をしてきましたが、
自分自身体を壊してしまったことと、
子どもが生まれてきてくれたことが、
食事や自分が今まで当たり前にしてきたことを見直すきっかけになりました！

そうやって農薬の悲惨さを知って、
今は自然栽培に転換していってます！
まずはすべて自然栽培に切り換えることが目標です(^_^)！

自分にはつい甘くて、
なかなか追い込んで成長していけないぼくですが、
自然はすごくて、
肥料がなくても、
自分で根っこを伸ばして、
どんどんたくましく変わっていきます！

そうやって大地から吸い上げたエネルギーからできたお茶☆
飲んでくれた方に元気になってもらえたらうれしいです(*^^*)',24,NULL,'2016-02-08 08:00:00.000000','2016-02-27 20:00:00.000000',NULL,NULL,'2016-01-29 07:21:00.914586','2016-01-29 07:21:00.914586',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(42,'
☆自然農野菜の販売会☆

2月7日(日) 
13時～16時

 「自由空間 Slowhand」 にて！

木津川市山城町平尾西方儀38-1

『ワークショップ』
 「お茶を知ろう(^_^)！」

◎お茶美味しいお茶の入れ方
お湯の温度で味が変わる！？
 好みの味を知る！好みの味の出し方(^_^)！

◎いろんなお茶を飲み比べよう☆
緑茶も紅茶もほうじ茶も、
 実は同じ葉でぱから作られます！

◎昔は薬だったお茶！その効能！

◎慣行栽培から自然栽培へ
 ぼくが農薬をやめようと思ったワケ

参加費 １００円（お茶代含む）

『販売会』
 「自然農野菜とお茶＆こだわり素材の手作りパン」

◎農薬や化学肥料を使わずに、
 自然の力で育った野菜やお茶の販売！

スーパーと同じ価格で出してもらえるのが嬉しい(^_^)！

◎国産小麦粉、トランス脂肪酸も極力抑え、
 添加物や保存料もできるだけ使わない！
 無農薬の小豆からつくった餡や無添加のウィンナー、無農薬の抹茶と、
 食べた人が元気になるようにと、
 素材にこだわるほたはるさんの手作りパン(*^^*)！

◎静岡伊豆の国市の減農薬のいちご！
いちごやベリー類は抗がん作用もある健康食品☆

自由空間 slowhand
京都府木津川市山城町平尾西方儀38-1
電話： 0774-94-6186 
http://web1.kcn.jp/zigzag/slowhand/

開き橋の近く消防署の向かいです。


',NULL,24,'2016-02-07',NULL,NULL,NULL,'<div id=`fb-root`></div><script>(function(d, s, id) {  var js, fjs = d.getElementsByTagName(s)[0];  if (d.getElementById(id)) return;  js = d.createElement(s); js.id = id;  js.src = `//connect.facebook.net/ja_JP/sdk.js#xfbml=1&version=v2.3`;  fjs.parentNode.insertBefore(js, fjs);}(document, ''script'', ''facebook-jssdk''));</script><div class=`fb-post` data-href=`https://www.facebook.com/tokuya.yamazaki/posts/970516862996277` data-width=`500`><div class=`fb-xfbml-parse-ignore`><blockquote cite=`https://www.facebook.com/tokuya.yamazaki/posts/970516862996277`><p>&#x2606;&#x81ea;&#x7136;&#x8fb2;&#x91ce;&#x83dc;&#x306e;&#x8ca9;&#x58f2;&#x4f1a;&#x2606;2&#x6708;7&#x65e5;(&#x65e5;) 13&#x6642;&#xff5e;16&#x6642;&#x300c;&#x81ea;&#x7531;&#x7a7a;&#x9593; Slowhand&#x300d; &#x306b;&#x3066;&#xff01;&#x6728;&#x6d25;&#x5ddd;&#x5e02;&#x5c71;&#x57ce;&#x753a;&#x5e73;&#x5c3e;&#x897f;&#x65b9;&#x5100;38-1&#x300e;&#x30ef;&#x30fc;&#x30af;&#x30b7;&#x30e7;&#x30c3;&#x30d7;&#x300f;&#x300c;&#x304a;&#x8336;&#x3092;&#x77e5;&#x308d;&#x3046;(^_^)&#xff01;&#x300d;&#x25ce;&#x304a;&#x8336;&#x7f8e;&#x5473;&#x3057;&#x3044;&#x304a;&#x8336;&#x306e;&#x5165;&#x308c;&#x65b9;&#x304a;&#x6e6f;&#x306e;&#x6e29;&#x5ea6;&#x3067;&#x5473;&#x304c;&#x5909;&#x308f;...</p>Posted by <a href=`https://www.facebook.com/tokuya.yamazaki`>山崎 徳哉</a> on&nbsp;<a href=`https://www.facebook.com/tokuya.yamazaki/posts/970516862996277`>2016年1月24日</a></blockquote></div></div>','2016-01-29 07:59:55.112302','2016-01-29 07:59:55.112302',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(46,NULL,'無農薬無肥料栽培ずくなし農園です！

2016シーズン 野菜セットの販売の紹介です。
当農園は西洋野菜など珍しい野菜を中心に少量多品目で栽培しております。
内容は季節により変わりますが、お客様の要望も考慮し柔軟に対応させて頂きます。
写真は、2015シーズンの野菜セットの一例です。
生野菜中心のサラダセットや夏野菜中心、スムージー対応などお客様によって内容を変えております。
また、週に一回以上の注文で一ヶ月以上続けてご予約頂いた方には自家製味噌や自家製パンなどのお楽しみ一品をサービスしてセットに入れております。
ご注文多数の場合は、大変申し訳ありませんがお断りする場合がございます。

今年もずくなし農園の野菜セットをお楽しみください！！',15,NULL,'2016-05-07 00:00:00.000000','2016-12-14 23:00:00.000000',NULL,NULL,'2016-02-02 13:41:02.332578','2016-02-02 13:41:02.332578','2015-06-01_12.07.12-1_____.jpg','2015-06-15_12.07.25_____.jpg','2015-10-26_09.49.50_____.jpg');
INSERT INTO `schedules` VALUES(50,NULL,'はじめまして。京都の木津川市のRed Rice 自然農園です。よろしくお願いいたします。',11,NULL,'2016-02-10 00:00:00.000000',NULL,NULL,NULL,'2016-02-09 10:53:12.033025','2016-02-09 10:53:12.033025','RIMG1280.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(52,NULL,'あめつち農園
自然有機タマネギ 固定種玉の春
自然栽培タマネギ 固定種淡路中甲高黄、ノンクーラー

淡路島の中心に位置する五色町鮎原村の小豆島がよく見える自然豊かな畑で、動物性肥料、化学肥料、農薬、除草剤は一切使わずにスクスクと育てています。
あめつち農園では緑肥を利用した早生品種と無施肥、無農薬の晩生品種の２種があります。
早生品種は5月末ごろより、晩生品種は6月中旬より出荷予定です。


',5,NULL,NULL,NULL,NULL,NULL,'2016-02-12 22:35:08.460995','2016-02-12 22:35:08.460995','image.jpg','image.jpg','image.jpg');
INSERT INTO `schedules` VALUES(61,NULL,'自然栽培に転換して取り組んでいるお茶たち。
商品を追加しました！
ぜひ一度お試しください(*^_^*)',24,NULL,'2016-03-24 01:00:00.000000',NULL,NULL,NULL,'2016-03-24 12:10:18.288502','2016-03-24 12:10:18.288502','11752546_1080803308604391_7783952105871805683_n.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(62,NULL,'
日本みつばちの蜂蜜を年数をかけて熟成させたものと、日本みつばち野生群の蜜ろうとニンジンの種のオイルや桃色胡椒のオイルでつくられたリップクリームです。ムーンソープさんに大切に製品にしていただきました。ムーンソープさんはナチュラルハーモニーさんでコスメづくりの教室を開いている信頼できる石鹸とコスメ制作者さんです。美しい写真はスズキチヒロ様です。 定価1404円（税込）です。簡単な梱包と普通郵便になりますが、送料込み1,700円でお送りさせてください。2本の場合3,200円です。3本の場合4,600円です。4本の場合6,000円です。
',33,NULL,'2016-03-25 00:00:00.000000','2017-01-01 00:00:00.000000',NULL,NULL,'2016-03-24 16:11:13.713246','2016-03-24 16:11:13.713246','botanicallipbalm_carrot_01.jpg','botanicallipbalm_pinkpepper_01.jpg','moonsoap_beewax5.jpg');
INSERT INTO `schedules` VALUES(64,NULL,'',35,NULL,'2016-04-01 00:00:00.000000',NULL,NULL,NULL,'2016-03-30 13:10:27.643197','2016-03-30 13:10:27.643197',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(65,NULL,'',35,NULL,NULL,NULL,NULL,NULL,'2016-03-30 13:18:35.545750','2016-03-30 13:18:35.545750','image.jpg','image.jpg','image.jpg');
INSERT INTO `schedules` VALUES(72,NULL,'日本みつばちのはちみつを２種類、販売いたします。
野生の蜂ですからノーケミカル飼育のジャンルに入ります。
日本みつばちは、あちらこちらの小さい花から蜜を集める天才です。',33,NULL,'2016-04-08 00:00:00.000000',NULL,NULL,NULL,'2016-04-07 16:41:17.195482','2016-04-07 16:41:17.195482','______.jpg','___.jpg',NULL);
INSERT INTO `schedules` VALUES(74,NULL,'今まで送料込みの表示をしておりましたが、一律500円で統一させていただきました。表示価格を送料含まない価格にかえました。',33,NULL,NULL,NULL,NULL,NULL,'2016-04-24 00:37:47.185251','2016-04-24 00:37:47.185251',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(75,NULL,'里山農園やまぐち。
島根の西端、吉賀町の山の中から自給野菜や山の恵みのおすそわけ。',26,NULL,'2016-05-02 08:00:00.000000','2016-05-08 20:00:00.000000',NULL,NULL,'2016-04-28 21:01:53.310507','2016-04-28 21:01:53.310507','20160428_172425.jpg','20160301_225437.jpg','20150714_172404.jpg');
INSERT INTO `schedules` VALUES(76,NULL,'皆様、大変お待たせ致しました‼
平成28年度 花岡農恵園の淡路島産 玉ねぎが販売開始になりました！

・有機JAS 認証を取得した自然栽培たまねぎです。
・農薬は完全無農薬、肥料についても基本的には無肥料で栽培しています。

淡路島は気候・風土に恵まれ、おいしいたまねぎの産地です。そんなブランドたまねぎの淡路島産たまねぎですが、有機栽培のたまねぎとなると生産量の1%にも満たない程しかありません。花岡農恵園の「淡路島産有機たまねぎ」は、たまねぎが育つのに適した淡路島の風土を最大限生かし、完全無農薬で栽培した有機たまねぎです。

丹精込めて育てた玉ねぎをぜひご賞味下さい！！
 

 
',8,NULL,'2016-05-09 10:00:00.000000',NULL,NULL,NULL,'2016-05-09 00:28:55.813986','2016-05-09 00:28:55.813986','___.jpg','original-005.jpg',NULL);
INSERT INTO `schedules` VALUES(82,NULL,'夏野菜セットの準備ができました。
今夏は
絹さやエンドウ
スナップエンドウ
インゲン
枝豆
トマト
キュウリ
ナス
唐辛子
ズッキーニ
バターナッツ
ジャガイモ
ラディッシュ
などなど
出来るだけ多種の栽培を行っております。
販売は６月２０日の開始予定ですが、天候に左右されやすいのでご容赦ください。

価格は３２００円（税込・送料込み）関東地方限定とさせていただきます。
クール便にてお届けなので冬野菜セットよりも価格が高いことご理解ください。

尚、苦手な野菜がございましたらご指定ください。セットから外します。

ご予約おまちしております。


',30,NULL,'2016-06-20 00:00:00.000000','2016-09-30 00:00:00.000000',NULL,NULL,'2016-05-14 05:19:49.076965','2016-05-14 05:19:49.076965','11145006_689114327857107_8629558955850177408_n.jpg','12321197_778556515579554_2620503773555405036_n.jpg','13151681_792161477552391_8147096364621723342_n.jpg');
INSERT INTO `schedules` VALUES(83,NULL,'朝日米28年度新米。
無肥料だから米の味がそのままする。
無農薬だから玄米のまま食べても安心で美味しい。
無農薬だから米ぬかを使った料理にも最適。
ぬか漬けは言うまでもなし。
玄米での提供。',40,NULL,'2016-10-30 00:00:00.000000','2016-12-31 23:00:00.000000',NULL,NULL,'2016-05-14 06:00:55.595667','2016-05-14 06:00:55.595667','image.jpg','image.jpg','image.jpg');
INSERT INTO `schedules` VALUES(84,NULL,'黒田五寸にんじんの間引き菜、欲しい方いませんか☆
100ｇで大体50本くらいです！

【ジェノベーゼソース材料】
人参葉
オリーブオイル
ニンニク
生アーモンド
お塩少々

すべての材料をブレンダーにかけるだけです！

注文を聞いてから、直取りします☆
期間限定ですのでお早めに！',1,NULL,'2016-05-14 01:00:00.000000','2016-05-15 01:00:00.000000',NULL,NULL,'2016-05-14 11:45:27.688628','2016-05-14 11:45:27.688628','image.jpg','image.jpg','image.jpg');
INSERT INTO `schedules` VALUES(85,NULL,'奥丹波はようやく暖かく、日中は半袖でもいれるくらいになってきました☆
お野菜もこれから続々と大きくなり実りが溢れる予感がします！ズッキーニとサニーレタスをお届けします！
',14,NULL,'2016-05-20 02:00:00.000000','2016-05-30 02:00:00.000000',NULL,NULL,'2016-05-20 12:28:39.545507','2016-05-20 12:28:39.545507','13241532_1265427863485916_310617082_o.jpg','13262329_1265427830152586_390919277_o.jpg',NULL);
INSERT INTO `schedules` VALUES(87,'『会員さんになり、未来に投資しませんか？」

毎年毎年、うちの農場を支えてくれる
家族であるかぶ主さん(会員さん)

応援している農場に先行投資して
その対価として野菜で分配される
ヨーロッパのCSAという取り組みをパクって、
株主の株を野菜のかぶに変えて、

面白おかしく会員制度を始めて
今年で6年目。

今年度は、洞爺にて
ありがとう農法農業経営の
研修しながらではありますが、

一生懸命、畑と向き合う成長過程の
今日はいい天気だFARMを支えてください！

本日、かぶ主さん2016の募集締切です

会費は10800円
特典はホーリーバジルティーや黒千石大豆
などなどをお届け予定です。

野菜などの他に
畑や僕たちの成長をシェアする
フォトメールなどなどが届きますー

よろしくお願いしてます

ありがとうございます！

応募はイベントURLよりl',NULL,37,'2016-06-06',NULL,NULL,NULL,'http://www.nonno-pirasa.com/tlusi/kabu/','2016-06-06 14:55:17.535384','2016-06-06 14:55:17.535384','image.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(93,NULL,'肥料、農薬、堆肥、除草剤
一切不使用、太陽と大地の恵を一杯に受けたお野菜は、野菜本来の味がする。',31,NULL,'2016-07-10 08:00:00.000000',NULL,NULL,NULL,'2016-07-02 07:02:55.300725','2016-07-02 07:02:55.300725','image.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(94,NULL,'',31,NULL,'2016-09-01 08:00:00.000000',NULL,NULL,NULL,'2016-08-06 04:27:13.585726','2016-08-06 04:27:13.585726',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(95,'',NULL,31,NULL,NULL,NULL,NULL,'','2016-08-06 04:29:59.788294','2016-08-06 04:29:59.788294',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(97,'9月3,4日（土日）にニセコ町駅前倉庫群で開催される自然一に出店します。
野菜とシリアル・大豆のポン菓子を販売します。',NULL,38,'2016-09-03',NULL,NULL,NULL,'https://www.facebook.com/events/2064678307089690/','2016-08-13 04:45:08.417112','2016-08-13 04:45:08.417112',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(99,'札幌の地下歩行空間にてマルシェを行います。10時から18時くらいの予定です。
よろしくお願いいたします。',NULL,39,'2016-09-26',NULL,NULL,NULL,'','2016-08-23 19:31:38.770039','2016-08-23 19:31:38.770039',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(113,NULL,'朝日（玄米）の販売を開始します。5ｋｇ、10ｋｇ、25ｋｇ、30ｋｇです。お米は日本人の主食です。こだわりをもって栽培していますのでよろしくお願いします。',40,NULL,'2016-10-25 00:00:00.000000','2016-12-31 00:00:00.000000',NULL,NULL,'2016-10-10 13:28:29.128994','2016-10-10 13:28:29.128994',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(115,NULL,'',38,NULL,'2016-10-11 00:00:00.000000',NULL,NULL,NULL,'2016-10-11 00:38:48.508422','2016-10-11 00:38:48.508422','nouen_fb_cover.jpg','kale_yotei2016.jpg','daizuflower2016.jpg');
INSERT INTO `schedules` VALUES(116,NULL,'',38,NULL,'2016-10-11 00:00:00.000000',NULL,NULL,NULL,'2016-10-11 00:38:53.975230','2016-10-11 00:38:53.975230','nouen_fb_cover.jpg','kale_yotei2016.jpg','daizuflower2016.jpg');
INSERT INTO `schedules` VALUES(118,NULL,'皆様、こんばんは。

新米の季節になりました。

平成２８年度　新米販売開始！！

・有機JAS 認証を取得した田んぼで育った有機栽培米です。
・合鴨農法にて無農薬で栽培したお米です。
・肥料については、合鴨の排泄物のみで、購入した有機肥料等は一切使用していません。

 【商品情報】
 品種：キヌヒカリ

栽培地は淡路島の五色町鮎原です。
 鮎原は水気が多い地域でお米の栽培に適しており、
“鮎原米”というブランド米で人気です！！

ぜひ一度お試しください！！',8,NULL,'2016-10-20 00:00:00.000000',NULL,NULL,NULL,'2016-10-20 11:12:37.653748','2016-10-20 11:12:37.653748','IMG_5869_2_.jpg',NULL,NULL);
INSERT INTO `schedules` VALUES(119,NULL,'',42,NULL,'2016-11-21 09:00:00.000000','2017-01-31 12:00:00.000000',NULL,NULL,'2016-11-16 09:19:49.447604','2016-11-16 09:19:49.447604','IMG_8643.jpg','FullSizeRender.jpg',NULL);
INSERT INTO `schedules` VALUES(121,NULL,'',29,NULL,'2016-11-25 09:00:00.000000','2016-12-25 17:00:00.000000',NULL,NULL,'2016-11-24 11:49:16.106175','2016-11-24 11:49:16.106175','IMG_1373.jpg','IMG_1376.jpg','IMG_1368.jpg');
INSERT INTO `schedules` VALUES(122,NULL,'白菜、ターサイ、チンゲン菜人参、小松菜、かぶ 、大根収穫できてます。1000円、2000円、3000円、のセットでお送りします。',29,NULL,NULL,NULL,NULL,NULL,'2016-11-24 11:53:09.971053','2016-11-24 11:53:09.971053',NULL,NULL,NULL);
INSERT INTO `schedules` VALUES(125,NULL,'岐阜の中山間地で農業をやっています。',43,NULL,'2016-12-05 08:00:00.000000','2016-12-12 08:00:00.000000',NULL,NULL,'2016-12-04 00:01:17.013538','2016-12-04 00:01:17.013538','_DSF0793__1_.jpg','_DSF0889.jpg',NULL);
INSERT INTO `schedules` VALUES(127,NULL,'冬の鍋野菜セットの販売です。今年の白菜の出来は上々です。',36,NULL,'2016-12-20 00:00:00.000000','2017-01-10 23:00:00.000000',NULL,NULL,'2016-12-20 01:09:49.221866','2016-12-20 01:09:49.221866','023__480x640_.jpg',NULL,NULL);
CREATE TABLE `products` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `category` varchar(255) NOT NULL, `variety` varchar(255) NOT NULL, `method` varchar(255) NOT NULL, `description` text, `net` integer NOT NULL, `price` decimal(8) NOT NULL, `stock` integer NOT NULL, `staff_member_id` varchar(255), `created_at` datetime, `updated_at` datetime, `image` varchar(255), `productimg` varchar(255), `seed_rising` boolean DEFAULT '0' NOT NULL, `unit` varchar(255), `tag` varchar(255));
INSERT INTO `products` VALUES(1,'タマネギ／玉葱','ノンクーラー（固定種）','完全無肥料／農薬不使用栽培','はじめまして！！あめつちとは天地のことで、陰と陽や日と月、魂と魂、命の始まりと終わりを繰り返す事の意味が込められていて、その意味のように野菜を通じて命の循環と本当に大切なことを感じていただけたらと思い、そう名付けました。

できるだけ多くのみなさまに僕の野菜を食べて欲しい。そう願って小豆島が見える素晴らしい谷の畑に夫婦二人でたくさんの玉ねぎをはじめ、たくさん野菜の種を蒔きました。お母さんが安心して料理できるように、料理人が腕をふるって調理できるように種もこだわって、命が循環する在来種と固定種の種で。もちろん無農薬。肥料は必要なときだけでほぼ使ってないのですが、極たまに自分の畑や村の山の恵みだけでできた自然由来の非化学非動物性肥料を必要な時だけ、必要な野菜だけに使って作っています。

玉ねぎの詳細です！
あめつち玉ねぎ
無農薬、無肥料、固定種、晩生品種

MLサイズ(kg当たり6〜8個)
kg300円

Sサイズ(kg当たり8〜10個)
kg280円

2Lサイズ(kg当たり3〜4個)
kg280円

完熟釣り玉ねぎ
MLサイズ
kg320円

Sサイズ
kg300円

2Lサイズ
kg300円

ペコロス玉ねぎ(kg当たり10個以上)
kg250円

傷物かわいそう玉ねぎ(加工品にぜひ！)
kg230円

写真は上から2L、ML、S、ペコロスとなっております。

奥さんの愛ちゃんと二人、雨ニモマケズ、風ニモマケズ…一生懸命丹精こめて作ったあめつちの玉ねぎです。
少しでもたくさんの方々に食べていただきたいです！よろしくおねがいします！',10,3800,0,'5','2015-08-13 00:42:50.309287','2016-05-10 12:26:08.475190',NULL,'11020905_1595657974030677_1141587893741918040_n.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(3,'コムギ／小麦','中力全粒粉（平成28年度収穫・南部小麦）','完全無肥料／農薬不使用栽培','平成28年度収穫したての南部小麦です☆
奥丹波の清らかな水で作られた、小麦粉でパンやお好み焼きなどいかがですか？',500,700,54,'14','2015-09-22 01:14:41.009781','2017-01-06 10:31:38.515546',NULL,'_____________.jpg','0','g',NULL);
INSERT INTO `products` VALUES(4,'クリ／栗','','完全無肥料／農薬不使用栽培','自然栽培の丹波栗（植林4年目）
年頭に剪定を行い、実の大きさが更に大きくなりました！
上に民家のない谷地で作られた栗をお楽しみください！',700,700,0,'1','2015-10-06 01:06:00.272033','2016-10-11 13:16:54.025654',NULL,'11045298_1666537016965011_1899096842662623410_n.jpg','0','g',NULL);
INSERT INTO `products` VALUES(6,'エダマメ／枝豆','在来種　丹波献上黒大豆','完全無肥料／農薬不使用栽培','全国的にも有名な、丹波の黒豆枝豆です。
霧深く、豆づくりに最適な丹波の土地で
自然栽培しています。
旨味や甘みがギュッと詰まった大粒の実を
是非ご賞味下さい。
枝から外して正味１kgを、簡易包装でお届けします。',1000,1500,0,'9','2015-10-09 00:46:49.573085','2015-11-06 13:49:00.550134',NULL,'IMG_2714.jpg','1',NULL,NULL);
INSERT INTO `products` VALUES(7,'ミカン／蜜柑','夏みかん','完全無肥料／農薬不使用栽培','無肥料農薬不使用 自然栽培のおみかんです。
完熟してからもぎりたてをお送りいたします。自然な甘味とほんのりとした酸っぱさと、柔らかい皮の自然味あふれる美味しいおみかんです★',600,300,0,'1','2015-10-18 12:18:03.130507','2015-10-23 01:43:38.576484',NULL,'DSC_0012.jpg','0',NULL,NULL);
INSERT INTO `products` VALUES(8,'その他','チャヨーテ（隼人瓜）','完全無肥料／農薬不使用栽培','１個 200g～300g程度の若い実は、皮ごとサラダやピクルス、シチューや炒めもの等で美味しく召し上がって戴けます。

日本では、皮が堅くなるまで大きく育ってから収穫し、奈良漬け等の原料にされることが多いですが、メキシコ原産でチャヨーテでレシピ検索すると色々なメニューを楽しめます。
',2,1400,0,'19','2015-10-28 05:57:35.263102','2016-12-10 03:18:26.609458',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(9,'コマツナ／小松菜','紫小松菜','完全無肥料／農薬不使用栽培','抗酸化作用が期待できる、ポリフェノールのー種アントシアニンの紫の小松菜です。苦み少なくサラダで美味しい。',2,2000,0,'19','2015-10-28 15:50:49.053851','2016-12-09 16:23:18.159833',NULL,'DSC_0028.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(10,'BOX販売','短大根・チャヨーテ・ルッコラ・ラディッシュ・紫小松菜・紫カラシナ','完全無肥料／農薬不使用栽培','旬の野菜を６品目以上の詰め合わせ。合計10点以上になるよう お入れします。',4000,2100,0,'19','2015-10-28 16:38:29.636703','2015-12-04 12:12:00.457847',NULL,NULL,'1',NULL,NULL);
INSERT INTO `products` VALUES(11,'ダイコン／大根','短大根','完全無肥料／農薬不使用栽培','肉質緻密で美味しい短大根。おろしにサラダやピクルス、キムチや炒めもの、おでんなど煮物、となんでも使える万能の大根。葉付きの期間は、葉っぱも炒めたり、汁物の具などでお召し上がりください。',8,2000,0,'19','2015-10-28 16:49:56.820901','2017-01-27 01:29:35.765966',NULL,NULL,'0','kg',NULL);
INSERT INTO `products` VALUES(12,'コメ／米','ヒノヒカリ (玄米）','完全無肥料／農薬不使用栽培','【★送料無料★】【淡路島産 H28 新米 有機玄米 鴨の恵み 5ｋ】
平成28年度の有機玄米（新米）です。
品種：ヒノヒカリ
栽培地は淡路島の五色町鮎原です。
 鮎原は水気が多くてお米の栽培に適しており、
“鮎原米”というブランドで人気です！！
ぜひ一度お試しください！！

合鴨農法とは、田植えをした田んぼに合鴨を放鳥し、虫を食べてもらったり草を取ってもらったりする農法です。合鴨農法では、生まれて間もないヒナしか田んぼに放す事が出来ません。成鳥の合鴨を田んぼに放すと、稲が押し倒されてしまうからです。合鴨のヒナは虫や草を食べながら、稲とともに成長します。そうやって鴨に田んぼを助けてもらって「有機米 鴨の恵み」は、育ち実っています。虫や草をたべて育った合鴨を、最後には鴨肉(あわじ田助鴨)として頂く事になるのですが、それも`いのちの循環`として大事にしたいと思っています。',5,4300,0,'8','2015-11-02 06:30:50.425542','2017-01-29 23:49:50.148692',NULL,'20-28165_1.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(13,'コメ／米','ヒノヒカリ （玄米）','完全無肥料／農薬不使用栽培','【★送料無料★】【淡路島産 H28 新米 有機玄米 鴨の恵み 10ｋ】
平成28年度の有機玄米（新米）です。
品種：ヒノヒカリ
栽培地は淡路島の五色町鮎原です。
 鮎原は水気が多くてお米の栽培に適しており、
“鮎原米”というブランドで人気です！！
ぜひ一度お試しください！！
合鴨農法とは、田植えをした田んぼに合鴨を放鳥し、虫を食べてもらったり草を取ってもらったりする農法です。合鴨農法では、生まれて間もないヒナしか田んぼに放す事が出来ません。成鳥の合鴨を田んぼに放すと、稲が押し倒されてしまうからです。合鴨のヒナは虫や草を食べながら、稲とともに成長します。そうやって鴨に田んぼを助けてもらって「有機米 鴨の恵み」は、育ち実っています。虫や草をたべて育った合鴨を、最後には鴨肉(あわじ田助鴨)として頂く事になるのですが、それも`いのちの循環`として大事にしたいと思っています。',10,6800,0,'8','2015-11-02 06:35:44.814542','2017-01-29 23:50:37.437513',NULL,'21-28165_1_____.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(14,'コメ／米','ヒノヒカリ （精米）','完全無肥料／農薬不使用栽培','【★送料無料★】【淡路島産 H28 新米 有機精米（白米） 鴨の恵み 5ｋ】
平成28年度の有機精米（新米）です。
品種：ヒノヒカリ
栽培地は淡路島の五色町鮎原です。
 鮎原は水気が多くてお米の栽培に適しており、
“鮎原米”というブランドで人気です！！
ぜひ一度お試しください！！
合鴨農法とは、田植えをした田んぼに合鴨を放鳥し、虫を食べてもらったり草を取ってもらったりする農法です。合鴨農法では、生まれて間もないヒナしか田んぼに放す事が出来ません。成鳥の合鴨を田んぼに放すと、稲が押し倒されてしまうからです。合鴨のヒナは虫や草を食べながら、稲とともに成長します。そうやって鴨に田んぼを助けてもらって「有機米 鴨の恵み」は、育ち実っています。虫や草をたべて育った合鴨を、最後には鴨肉(あわじ田助鴨)として頂く事になるのですが、それも`いのちの循環`として大事にしたいと思っています。',5,4650,0,'8','2015-11-02 06:39:52.908642','2017-01-29 23:51:24.608930',NULL,'17-28165_1.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(15,'コメ／米','ヒノヒカリ （精米）','完全無肥料／農薬不使用栽培','【★送料無料★】【【淡路島産 H27 新米 有機精米（白米） 鴨の恵み 10ｋ】 平成27年度の有機精米（新米）です。 品種：ヒノヒカリ 栽培地は淡路島の五色町鮎原です。 鮎原は水気が多くてお米の栽培に適しており、 “鮎原米”というブランドで人気です！！ ぜひ一度お試しください！！ 合鴨農法とは、田植えをした田んぼに合鴨を放鳥し、虫を食べてもらったり草を取ってもらったりする農法です。合鴨農法では、生まれて間もないヒナしか田んぼに放す事が出来ません。成鳥の合鴨を田んぼに放すと、稲が押し倒されてしまうからです。合鴨のヒナは虫や草を食べながら、稲とともに成長します。そうやって鴨に田んぼを助けてもらって「有機米 鴨の恵み」は、育ち実っています。虫や草をたべて育った合鴨を、最後には鴨肉(あわじ田助鴨)として頂く事になるのですが、それも"いのちの循環"として大事にしたいと思っています。',10,7400,0,'8','2015-11-02 06:43:15.494654','2017-01-29 23:52:15.790941',NULL,'18-28165_1.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(16,'ダイズ／大豆','在来種　借金なし大豆','完全無肥料／農薬不使用栽培','埼玉は秩父の在来種［借金なし大豆］です。
豆どころ丹波で自然栽培・採種を３年繰り返し
今年で４年目となりました。
ショ糖の含有量が多く、加工にも向きますので
味噌づくりに最適です。
※１キロからは米袋での梱包となります。',200,300,0,'9','2015-11-06 13:59:58.584963','2015-12-02 09:31:32.632410',NULL,'IMG_3084.jpg','1',NULL,NULL);
INSERT INTO `products` VALUES(17,'BOX販売','固定種　ほうれん草・小松菜・水菜・壬生菜・ラディッシュ・紅あずまなど','完全無肥料／農薬不使用栽培','完全無農薬・化学肥料・動物性肥料も使用していません。

耕作放棄地を借り受け、
埼玉県飯能市の湖のほとりで栽培しています。

冬野菜のセットは１１月は葉物が中心ですが、
１２月からは根菜も収穫されていきます。

ご注文をお待ちしております。',2000,2000,20,'18','2015-11-08 04:45:53.260818','2015-11-08 04:45:53.260818',NULL,'12189841_713766205391919_3888584923023917214_n.jpg','1',NULL,NULL);
INSERT INTO `products` VALUES(18,'ダイコン／大根','ねずみ大根','完全無肥料／農薬不使用栽培','辛味大根の一種で「ねずみ大根」という品種です！
無肥料、農薬不使用で栽培しました⭐︎
お鍋の季節に、おろして薬味にも、そのままお鍋の具材でもお使いいただけます⭐︎
健康なお大根、ぜひご賞味ください！
※500gで、だいたい2〜3本入りです！
',500,500,0,'1','2015-11-28 09:34:51.680273','2016-02-13 09:28:58.374641',NULL,'IMG_0547.jpg','0','g',NULL);
INSERT INTO `products` VALUES(21,'モチゴメ／もち米','自然栽培餅米  羽二重餅','完全無肥料／農薬不使用栽培','自然栽培餅米
羽二重餅

無肥料
無施肥
で育てたあっさりとした餅米です。新米ですので、少な目のお水で浸水させずに、洗ってすぐにお米と同様に炊いていただくと、もちもちのおこわとしてお召し上がりいただけます★
もちろん蒸して、つけば美味しいお餅に！寒い冬の食卓にぴったりです★',1,1000,0,'1','2015-12-04 06:13:53.874396','2016-03-10 08:08:32.518994',NULL,'image.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(22,'モチゴメ／もち米','自然栽培餅米  羽二重餅','完全無肥料／農薬不使用栽培','自然栽培餅米
羽二重餅

無肥料
無施肥
で育てたあっさりとした餅米です。新米ですので、少な目のお水で浸水させずに、洗ってすぐにお米と同様に炊いていただくと、もちもちのおこわとしてお召し上がりいただけます★
もちろん蒸して、つけば美味しいお餅に！寒い冬の食卓にぴったりです★',2,2000,0,'1','2015-12-04 06:15:03.844290','2016-03-10 08:08:14.333159',NULL,'image.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(25,'コメ／米','岡山　朝日米','完全無肥料／農薬不使用栽培','今回の米は、カメムシの被害も少なくきれいでおいしいお米が採れました。味も肥料を入れた物とは、全く違ったものです。一度食べてみてください。
',10,8000,56,'12','2016-01-16 07:17:20.706798','2016-10-22 13:22:21.246972',NULL,'TS3R0678.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(27,'飲料','六条大麦 麦茶','完全無肥料／農薬不使用栽培','お湯で煮出してお飲みください。ノンカフェインで小さいお子様にもお飲みいただける、自然栽培大麦の麦茶です。',200,400,16,'1','2016-01-23 01:08:00.677563','2016-11-26 03:39:26.583267',NULL,'2015-06-29_11.20.23.jpg','0','g','pg');
INSERT INTO `products` VALUES(28,'飲料','umu coffee (大麦珈琲)','完全無肥料／農薬不使用栽培','粉末のドリップタイプです。ミルクや豆乳とも相性が合います。 ノンカフェインなので、お子様も睡眠前も安心してお召し上がりいただけます。コーヒーと同様にドリップして…エスプレッソマシンに入れる際には膨張するするので少なめに入れてください。',100,600,17,'1','2016-01-26 05:02:57.464312','2016-12-07 10:11:45.277196',NULL,'12345515_1719456848339694_3029626155387010455_n.jpg','0','g','pg');
INSERT INTO `products` VALUES(29,'乾物・粉類','山徳　紅茶','完全無肥料／農薬不使用栽培','山徳茶で初めて挑戦した紅茶です！
肥料も農薬も使わないで、
お茶の木自身が根を伸ばして大地から吸い上げたエネルギーたっぷりです(^_^)

肥料をもらわなくてもどんどん元気になるお茶の木ってすごいですねぇ！
お茶の木をみて自分も勉強です☆

なかなか自然の木のように厳しく自分を伸ばしていけなくて、
くよくよしたり、動けなかったりしますが、
そんなときは僕自身が一番お茶から元気をもらってる気がします(*^_^*)

紅茶の香りを持ちながら、
でも日本茶のようでもあり、
体の奥からあたたまるような紅茶です(^_^)！',30,500,4,'24','2016-01-29 07:42:28.948513','2016-11-16 09:23:24.909587',NULL,'11705106_1072556272762428_1017539146086846670_n.jpg','1','g','pg');
INSERT INTO `products` VALUES(30,'ハクサイ／白菜','固定種','完全無肥料／農薬不使用栽培','巻かない ボタン白菜と名ずけてます。煮込んでも崩れません、スープに、スムージーにお使いいただいて美味と好評です。無肥料、無農薬、堆肥も使わない、つち、水、太陽、微生物、種の力で育った野菜たちです。',100,100,476,'29','2016-02-02 01:05:07.108183','2016-11-23 14:26:34.470787',NULL,'image.jpg','1','g',NULL);
INSERT INTO `products` VALUES(31,'BOX販売','ずくなし農園 秋冬野菜セット 単品８０サイズ 送料無料','完全無肥料／農薬不使用栽培','季節柄、葉物中心です。サラダ用のリーフやレタスも揃ってきました！大根などもそろそろ大きくなって来ています(＾ｰ^)ノ

信州の厳しい気候で育った無肥無農薬栽培の野菜セットをあなたの元へお届けします。 当農園は少量多品目により様々な野菜を楽しめます。またお客様の要望にも柔軟に対応しますが、内容は下記を参照下さいm(_ _)m
 ずくなし農園のおいしい野菜を是非お楽しみください！

※発送は月曜日もしくは木曜日となります。内容や発送日のご要望があればお問い合わせ下さい。１箱の大きさは80サイズになります。値段は送料込みの値段です。
大変申し訳ありませんが、生鮮野菜になりますので発送地は本州と四国のみとさせて頂きます。ご了承下さい。
10/30現在の出荷可能野菜
この内から数種類になります。
大根
ラディッシュ
長ネギ 松本一本
九条太 青ネギ
下仁田ネギ
小松菜
水菜
ほうれん草
チーマディラーパ
チンゲンサイ
パセリ
イタリアンパセリ
ルッコラ
コリアンダーリーフ
レッドマスタードリーフ
セルバチコ
リーフ サラダミックス
春菊
ニンニク
赤玉葱
じゃがいも
人参各種
カボチャ各種
ハーブ各種
小豆など',80,3500,0,'15','2016-02-02 13:53:39.579133','2016-11-15 06:37:15.827112',NULL,'image.jpg','1','ml',NULL);
INSERT INTO `products` VALUES(32,'BOX販売','ずくなし農園  野菜セット 単品１００サイズ 送料無料','完全無肥料／農薬不使用栽培','信州の厳しい気候で育った無肥無農薬栽培の野菜セットをあなたの元へお届けします。 当農園は少量多品目により様々な野菜を楽しめます。またお客様の要望にも柔軟に対応し、生野菜中心や夏野菜中心、スムージー対応などやっています。
ずくなし農園のおいしい野菜を是非お楽しみください！

※発送は月曜日もしくは木曜日となります。内容や発送日のご要望があればお問い合わせ下さい。１箱の大きさは１００サイズになります。値段は送料込みの値段です。
大変申し訳ありませんが、生鮮野菜になりますので発送地は本州と四国のみとさせて頂きます。ご了承下さい。',100,5500,0,'15','2016-02-02 14:00:11.520311','2016-09-19 10:09:35.474496',NULL,'image.jpg','1','ml',NULL);
INSERT INTO `products` VALUES(38,'コメ／米','赤米','完全無肥料／農薬不使用栽培','奈良の有名な自然農をされている先生が長年育てられていた赤米です。
自家採種の籾種で育苗し、稲架掛け天日干し乾燥しました。苗も農薬、肥料を使っていません。
【赤米入りご飯の炊き方】
1合に大さじ0.5～1ほど入れて洗米し、普通のお米と同じ水加減でいつもどおり炊いてください。
赤い色が白米に移らない種類です。',200,400,7,'11','2016-02-09 10:42:55.460094','2016-11-23 14:30:35.798393',NULL,'2016020919380000.jpg','1','g',NULL);
INSERT INTO `products` VALUES(39,'コメ／米','赤米','完全無肥料／農薬不使用栽培','200g小袋と同じ赤米です。
たくさん必要な方にkg販売します。お値打ち価格です。
包装は紙の米袋になります。',1,1800,8,'11','2016-02-09 10:50:13.455038','2016-11-23 14:30:41.534605',NULL,'2016020919400000.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(41,'飲料','ビワの葉茶','完全無肥料／農薬不使用栽培','　昔から枇杷の葉の効能や健康効果は知られていますが、近年再び、枇杷の効能が注目を集めています。
　 もともとインドや中国の南部が原産地の枇杷は、お釈迦様の文献では「大薬王樹」中国では、「百薬の樹」と呼ばれており、その効能は、万病を癒す力があるとされ、昔から健康成分の宝庫として漢方や民間療法の霊薬として利用されています。

　枇杷の葉の温湿布や温灸など、枇杷の葉療法はいろいろありますが、今、特に注目を集めているのが枇杷の葉茶です。

　原材料は安心の奥丹波産を１００％使用しております。',50,500,5,'14','2016-02-16 12:37:23.400829','2017-01-05 11:40:00.336336',NULL,'image.jpg','0','g','pg');
INSERT INTO `products` VALUES(42,'サトイモ／里芋','石川早生','完全無肥料／農薬不使用栽培','ねっとりとした食感のさといもです。
煮物にも　蒸してお塩でいただいても甘みがありおいしいです
',400,350,0,'14','2016-02-16 12:48:49.188102','2016-07-09 12:25:39.929532',NULL,'image.jpg','0','g',NULL);
INSERT INTO `products` VALUES(43,'パン・ジャム','ゆずジャム','完全無肥料／農薬不使用栽培','柚ジャム
全て手作業で作りました。
砂糖 柚以外の 材料は不使用
もちろん添加物は一切入っていません。',450,400,0,'14','2016-02-16 12:57:10.513323','2016-08-16 12:39:19.730787',NULL,'image.jpg','0','g','pg');
INSERT INTO `products` VALUES(44,'飲料','どくだみ葉茶','完全無肥料／農薬不使用栽培','ドクダミ茶の効能・効果として、代表的なものに身体の毒素を排出するといった効果が挙げられ、健康面だけでなく、美容面においてもいろいろと効果があると言われています。

　また、ドクダミに含まれている〔フラボノイド類〕の働きにより毛細血管を強化する作用があることや、天然の降圧薬とも呼ばれる〔カリウム〕が豊富に含まれていることから動脈硬化や高血圧など生活習慣病の予防に繋がるといった効果が挙げられています。',20,500,8,'14','2016-02-16 13:04:13.439160','2016-10-15 19:51:13.223879',NULL,'image.jpg','0','g','pg');
INSERT INTO `products` VALUES(45,'BOX販売','すべて在来種','完全無肥料／農薬不使用栽培','旬の野菜セットを関東地方限定でお届けします。
お試しセットは初回のみ４種類〜で税込・送料込で１５００円です。

通常の野菜セットは２８００円（税込・送料込み・７種類）で販売しております。


',3,1500,35,'30','2016-02-18 22:25:31.832080','2016-10-19 16:04:44.954391',NULL,'_________.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(46,'その他','はちみつ','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','ノーケミカルで育てたみつばちからわずかに蜂蜜を採蜜しています。
無農薬の環境でミツバチを育てました。
化学物質過敏症の方々も召し上がっていただける希少なはちみつです。
',50,550,0,'33','2016-03-18 15:50:38.552973','2016-05-19 12:40:49.993931',NULL,'50g.jpg','1','g',NULL);
INSERT INTO `products` VALUES(47,'その他','はちみつ','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','ノーケミカルで育てたみつばちからわずかに蜂蜜を採蜜しています。
無農薬45年の環境でミツバチを育てました。
化学物質過敏症の方々も召し上がっていただける希少なはちみつです。
',150,1600,0,'33','2016-03-18 16:04:55.816233','2016-04-24 01:11:25.274021',NULL,'150g.jpg','0','g',NULL);
INSERT INTO `products` VALUES(48,'その他','リップクリーム（ニンジンの種）','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','一年中、口びるを守ります。
野生の日本みつばちの蜂蜜と蜜蝋を使った安心なリップクリームです。
融けないように直射日光を避けて保管してください。
天然素材で作られています。6か月以内に使い切ってください。
天然の蜜蝋ですから、寒い季節は唇の上で温め柔らかくして塗ってください。
ニンジンの種のオイルです。甘い香りがします。

',5,1404,4,'33','2016-03-18 16:12:50.210589','2016-08-16 00:31:12.350259',NULL,'botanicallipbalm_carrot_01.jpg','0','g',NULL);
INSERT INTO `products` VALUES(49,'その他','リップクリーム（ピンクペパー）','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','一年中、口びるを守ります。
野生の日本みつばちの蜂蜜と蜜蝋を使った安心なリップクリームです。
融けないように直射日光を避けて保管してください。
天然素材で作られています。6か月以内に使い切ってください。
天然の蜜蝋ですから、寒い季節は唇の上で温め柔らかくして塗ってください。
ピンクペパーとローズゼラニウムが入っています。気持ちを上げてくれます。
',5,1404,5,'33','2016-03-18 16:15:56.992787','2016-08-16 00:31:16.090933',NULL,'botanicallipbalm_pinkpepper_01.jpg','0','g',NULL);
INSERT INTO `products` VALUES(50,'乾物・粉類','自然栽培　かぶせ茶','完全無肥料／農薬不使用栽培','京都の宇治茶の主産地である山城地域の、加茂町というところでつくっています。
加茂町は宇治茶の中でも、かぶせ茶の名産地です(^_^)

かぶせ茶とは、お茶を摘み取る二週間前から、
光を遮る黒い寒冷紗を、お茶の木に「かぶせる」ところからその名前が由来しています。

光を遮ってあげることで、お茶自身が生み出すうまみにより、
あまみのあるお茶に仕上がります。

肥料も使わないのに！と驚かれるかもしれません、ぜひお試しください(^_^)',30,560,15,'24','2016-03-19 23:45:11.724417','2016-04-03 10:49:03.287318',NULL,'DSC_1721.jpg','0','g','pg');
INSERT INTO `products` VALUES(51,'乾物・粉類','自然栽培　玉露','完全無肥料／農薬不使用栽培','自然栽培に転換して、２年目にして初めてできた玉露です！

玉露とは、
茶園に壁・天井をこしらえて棚と呼ばれるものをつくって、
そこで摘み取るまでの３週間を、
日光を遮ることで、
お茶が、根っこにじっっくりじっくりうまみを閉じ込めた芽で
つくったお茶です。

うまみは強く、でもいやらしくない自然なうまみ。
飲み終えると不思議とすっきりするお茶です(^_^)

ぜひ一度お試しください☆
一度飲めば癖になるかも(*^_^*)',30,720,14,'24','2016-03-24 12:02:05.144312','2017-01-15 03:16:18.570858',NULL,'DSC_1722.jpg','1','g','pg');
INSERT INTO `products` VALUES(52,'乾物・粉類','自然栽培　抹茶','完全無肥料／農薬不使用栽培','お茶の原種である在来のお茶からつくった抹茶。

葉をひいてすべていただくお抹茶はより安全なものをいただきたいですね(^_^)

何十年も植わるお茶の木を、無農薬・無肥料に転換して、
お茶自身か根を深く張り、吸い上げたうまみでつくる抹茶は、
苦みもあるけれど、
体にすぅっと入ってきます。
泡立ちもよく、和菓子と一緒にいただけば、
さらにそのおいしさが引き立ちます(*^_^*)',30,1600,14,'24','2016-03-24 12:07:16.990059','2016-04-18 13:52:43.796071',NULL,'DSC_1549.jpg','0','g','pg');
INSERT INTO `products` VALUES(53,'缶詰・瓶詰','はちみつ（山桜）　ノーラベル','完全無肥料／農薬不使用栽培','岩手県早池峰山の山奥、美しい大地から山桜の薫り高いはちみつをお届けします。師匠のはちみつです。
',50,600,0,'33','2016-03-26 15:01:50.146202','2016-05-17 15:56:12.342772',NULL,'_.jpg','0','g','pg');
INSERT INTO `products` VALUES(55,'缶詰・瓶詰','はちみつ（山桜）　ノーラベル　２個','完全無肥料／農薬不使用栽培','50gの小瓶×2個のセットです。
美しい奥山の山桜の薫り高いはちみつです。
桜が咲き終わりましたので、すこしお安くなりました。
',50,1000,0,'33','2016-03-26 15:17:54.251888','2016-05-17 15:56:50.461329',NULL,'_.jpg','0','g','pg');
INSERT INTO `products` VALUES(56,'その他','自然栽培 煎茶','完全無肥料／農薬不使用栽培','爽やかな渋みとうまみで、
とても自然な味わいの煎茶です(*^^*)！',30,560,13,'24','2016-04-03 10:52:36.828386','2017-01-15 03:16:13.241671',NULL,'IMG_20160403_195508.jpg','0','g',NULL);
INSERT INTO `products` VALUES(57,'BOX販売','おしゃれケールセット','完全無肥料／農薬不使用栽培','おしゃれでお料理に使っておいしいケールを5品種セットしてお届けします。
無肥料無農薬で育った５品種をセットです。
近くの山はもう雪が降っていて、だんだん寒さが厳しくなって着ている北海道からお届けします。
寒くなって人間には厳しい環境ですが、ケールは寒さに備えて当分を蓄えているため日に日に甘みが増しています。
おいしい北海道産自然栽培ケールをたっぷり食卓にならべてください。
１２月第一週までの期間限定販売です。
10月中はチルド、それ以降は常温便でお届けします。
商品到着後は、冷蔵庫で保管しすみやかにお召し上がり下さい。
到着時間指定が必要な方は、購入前に質問して下さい。
nouenfarm@gmail.com

・カーリーケール
・スカーレットケール
・カーボロネロ（黒キャベツ）
・ロシアン・レッドケール
・コラードケール
',1500,3000,10000000000,'38','2016-04-04 22:40:45.954816','2016-10-11 00:29:00.853125',NULL,NULL,'1','g',NULL);
INSERT INTO `products` VALUES(58,'シリアル','PUFFED CEREAL (小麦不使用　自然栽培穀物シリアル）　2袋セット','完全無肥料／農薬不使用栽培','完全無肥料無農薬で栽培した農enファームの大麦、ライ麦、小粒大豆に北海道東川町の和合の杜（自然農）の玄米をシリアルにしました。
昔懐かしいポン菓子やドンとも呼ばれるものですが、いろんな穀物をミックスすることで楽しく食べていただくことができるのではないかと思って作りました。
大麦・大豆は在来種、玄米は「ゆきひかり」というお米アレルギーの方も食べられて、アトピー改善効果も報告されている品種を使用しています。
甘味料や保存料は一切使っていません。
忙しい朝の食卓にぴったりのシリアルです。
160gバッグを2袋お届けします。',320,1600,2,'38','2016-04-04 22:45:03.243673','2016-09-06 06:46:05.215595',NULL,'cereal_bag678482.jpg','0','g','pg');
INSERT INTO `products` VALUES(59,'ダイズ／大豆','赤大豆','完全無肥料／農薬不使用栽培','2013年、農enファーム畑で偶然一株見つかった自然発生の赤大豆（固定種・新品種）です。
黒大豆、白大豆、青大豆といった大豆を混植（同じ場所にわけずに栽培すること）していたところ、種採り用に残していた一株から赤大豆が見つかりました。
北海道では本州の赤大豆、紅大豆は育たないと言われていました。
この赤大豆を翌年の種として大切にとっておき、翌年、翌々年と栽培したところ順調に成長しました。
黒大豆の血統をもっているようで甘みがあります。
北海道産の大豆は甘みを感じるものが多いですが、その中でもおいしいと感じる大豆です。
彩り鮮やかになりますから、煮豆にもよろしいかと思います。',500,970,3,'38','2016-04-05 02:06:03.108591','2016-08-30 10:28:51.401535',NULL,'akadaizu198141.jpg','1','g',NULL);
INSERT INTO `products` VALUES(60,'ダイズ／大豆','黒千石大豆','完全無肥料／農薬不使用栽培','ご飯に混ぜるだけで彩りも味もよくなる黒千石大豆です。
北海道生まれの北海道育ち。
小豆と同じくらいのサイズの極小粒なのでご飯に混ざっていても違和感がありません。
そのままでも、フライパンでぱちぱち音がするまで炒ってからでもご飯と一緒に炊くとおいしく召し上がれます。',1,1800,0,'38','2016-04-05 02:30:53.377083','2016-08-30 10:28:41.748302',NULL,'kurosengoku.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(62,'BOX販売','ひと冬越して甘くなった人参・じゃがいもセット　各3kg','完全無肥料／農薬不使用栽培','雪の下でひと冬越すと甘くなる北海道の野菜たち。
雪の下に置いておくことで凍ってしまったりするリスクと引き換えに得られるおいしさです。
土の中で凍ってしまったり、シミができたりして3割は商品にできなくなってしまいます。
そのかわり、特にじゃがいもは甘みがどんどん増しています。
暖かくなるGWまでの限定出荷ですので、お急ぎ下さい！
人参とじゃがいも各3kgです。
じゃがいもの品種割合はこちらにお任せいただいています。
人参（横浜四寸[固定種]）
じゃがいも（キタアカリ[自家採種]/はるか）',6,3100,0,'38','2016-04-05 03:35:35.710489','2016-04-21 13:22:59.239963',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(63,'ワサビ／山葵','柿木村　トチコロビの谷の在来ワサビの元','完全無肥料／農薬不使用栽培','島根県柿木村のトチコロビ谷。
かつてワサビの全国大会でも入賞するほどのものでした。
島根の在来ワサビは他地域と違い、小さく、細く、茎にわずかな赤みがあり、芋の部分はやや褐色の緑。
味はねばり、香り、旨み、甘み、辛味それぞれに奥行きがあり、こんなおいしいワサビは他にはありません。

しかし、時代の流れで、緑色がきれいで重量のあるワサビが市場で好まれることになりました。
それだけではありません。病気も蔓延してしまいました。昭和40年代から、病気に強い
在来品種と静岡品種の島根三号が登場し、人々は価値の無い在来わさびが谷にあると
抜いて捨ててしまっていたのです。

もう純粋な「在来ワサビ」は無いといわれています。

ほとんどのワサビ谷で、改良品種（静岡のワサビなどの系統の入ったもの。）を育て、
それが交雑して、かつての在来の姿を見ることが出来なくなってしまったからです。


そんな中で、「在来しか育てていない谷がある。」という話を聞き、そのトチコロビの谷の
おじいさんに話を伺いました。

トチコロビの谷は、ワサビ谷の中でも小さく、狭いところじゃが、本当に良いワサビが出来よった。
ワサビは人が育てるものではない。そこになってくれるものじゃけの。
わしは、皆が島根三号に変えていく中、あそこの谷だけには入れんかった。
あれをほしがる人がおっての、分けてたりもしたのじゃあるが、不思議なことに、どこに植えつけても
うまいことにはいかんのい。しかしもうわしも長いことあの谷にはいっておらん。


そんなお話を聞いていたら、どうしてもこのワサビを守ってみたくなりました。

島根の谷は昭和47年の災害で多くが流れてしまい、その谷もどれほど無事なのか心配でしたが、
行ってみると、20年近く放置されているその場所には今でもワサビが自生していました。


私は大興奮で、「是非あの谷でワサビを育てさせてください。」と申し出ました。

そこからが色々な壁の始まりでした。


１つは、いざワサビを抜いて食べ比べてみると、「在来」といっても味にも見た目にも差があったことです。
これは、在来種の特徴であると思います。在来ワサビは普通は「カギ苗」と言って、ワサビの芋から出ている小さな
分結したワサビたちを「かいで」、移植します。つまり里芋やジャガイモのようなクローンたちを育てると言うことです。

これが種が出来てそこから新たに生まれるワサビたちは、多様なものになり、バラけてしまいます。

2つ目は、長年放置されていたので、風倒木や雑草などが谷に生い茂っているので、掃除をしなければならないと言うことです。


私は、かつて苗を育てていた谷の上方の山肌の土地から残していくのにふさわしい苗を選抜したり、また、匹見のバイオセンターに
預けられていたかつてのトチコロビの谷の苗を廃棄になるギリギリで手に入れる手はずを整えて、かつてのものを復活させていきたいと
思っています。


ワサビは栽培に2年かかります。少し時間がかかりますが、その間、掃除のときに沢山のワサビを抜かなければならないので、
このストーリーに共感いただける方に食べていただきたいと思っています。

特徴にばらつきのある「野良生え」ですが、彼らは全て、在来ワサビの元です。
ここで、買い支えていただくことによって必ずやかつてのワサビを最後は皆さんにお届けしたいと思います。

',200,1000,0,'26','2016-04-06 02:43:45.381596','2016-05-01 06:33:39.306033',NULL,NULL,'0','g',NULL);
INSERT INTO `products` VALUES(64,'BOX販売','山里の自給野菜のおすそ分けセット　Ｍ','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','
島根県の西端、吉賀町で自給的な農業を営む里山農園やまぐち
この土地ではじめて食べたナスがおいしすぎてなぜだろうと思いつつも、この味は全国の人に届けても自慢が出来ると思いました。
高津川と錦川の分水嶺で水源地にあたるこの地は、水が清く、冬は寒く、また原発からも遠い、食べ物を食べるにはとても良い環境が
整っていると思います。

私はこの土地で、それぞれの野菜の種を採りながら、畑と向き合っています。
農薬、化学肥料が無いこと、次の世代にも胸をはって語り継いでいけること。
そういうことを大切にしてます。ですので、マルチは一切使いません。
機械も最低限のもの。畑に使うものも近所からの地産地消です。



畑、農法の特徴
・自然農的、不耕起畑では、機械も資材も使用しない、畑の中の刈り草のマルチのみの畑　3畝。
・主な圃場では、少しずつ完全無肥料にしようと思いますが、現在、転換の目的も含めて籾殻を主に使用し、
在来の糸状菌から畑を耕してもらう方法をとっています。
・結球野菜などの豊かな土の必要なキャベツなどの野菜は　米ぬか、おから、土を混ぜたボカシを使用します。
・苗床には、藁、畑の残渣、刈り草、落ち葉を利用した自家製の苗土を使っています。


内容量
季節の野菜　5-8品目

価格
3,240円　送料別

送料
クロネコヤマト',10,3240,0,'26','2016-04-06 03:01:47.116120','2016-05-01 06:33:17.474329',NULL,NULL,'1','l',NULL);
INSERT INTO `products` VALUES(65,'缶詰・瓶詰','日本みつばちのはちみつ／ロイヤリゼリーと花粉と蜂の子エキスがはいっているはちみつ','完全無肥料／農薬不使用栽培','野生の日本みつばちが、巣の周りの自然界から蜜をあつめてきた、はちみつが入った巣ごと圧力をかけて絞ったものです。
過熱して醗酵を止めてあります。予後などにお勧めします。',150,2100,1,'33','2016-04-07 00:09:34.911639','2016-08-16 00:31:21.867865',NULL,NULL,'0','g','pg');
INSERT INTO `products` VALUES(66,'缶詰・瓶詰','日本みつばちのはちみつ','完全無肥料／農薬不使用栽培','野生のみつばちが、巣がある環境のいろいろな花から、集めてきたはちみつです。',150,2100,3,'33','2016-04-07 15:54:58.071694','2016-04-24 00:21:24.507981',NULL,NULL,'0','g','pg');
INSERT INTO `products` VALUES(70,'缶詰・瓶詰','はちみつ　霜里（さくら）　','完全無肥料／農薬不使用栽培','今年4月のはちみつです。　桜が咲いてから葉桜になるまでに、初めて採れたはちみつを、巣箱から直送いたします。',50,700,10,'33','2016-04-24 00:02:52.561321','2016-04-24 02:10:03.462485',NULL,'___.jpg','0','g','pg');
INSERT INTO `products` VALUES(71,'缶詰・瓶詰','はちみつ　霜里（さくら）','完全無肥料／農薬不使用栽培','今年4月のはちみつです。　桜が咲いてから葉桜になるまでに、初めて採れたはちみつを、巣箱から直送いたします。',150,2100,5,'33','2016-04-24 00:24:42.173127','2016-04-24 02:09:33.790655',NULL,'___.jpg','0','g','pg');
INSERT INTO `products` VALUES(72,'タケノコ／竹の子','星坂集落の竹林で育った竹の子','完全無肥料／農薬不使用栽培','島根県の西端吉賀町の、標高400ｍのわが里、星坂集落。
清流日本一に何度も選ばれている高津川の源流の里から太りのよい、孟宗竹の竹の子をご紹介します。
野菜の少ないこの時期、竹の子やワラビ、ゼンマイなどの山の幸で私たちは暮らしています。

私の住むこの集落はわずか８軒しか人が住んでおらず、この時期竹の子を掘り、竹を切る人手が不足し、山と里の協会は荒れています。私は里を守るため竹の子を掘り、少しでも地域のためになればと思っています。
購入をしていただくことで地域の環境を守ることにもつながります。

地域でも良く太っていると評判の良い寸胴のものを３ｋｇ以上分、３-４つお届けします。

もれなく灰汁抜き用の米ぬか、唐辛子、そしてささやかながら山の幸をお付けします。
（米ぬかは慣行栽培のもの、唐辛子は有機栽培のものです。重曹、塩でも代用が出来ます。使用できない方はお申し出ください。）',3,3240,11,'26','2016-04-28 08:13:53.753282','2016-05-02 04:20:00.224665',NULL,'20160428_170428.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(73,'タマネギ／玉葱','自然有機栽培玉の春 固定種','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','
自然有機栽培タマネギ 
金賞タマネギ玉の春(固定種)

緑肥を利用し、非化学非動物性無農薬で栽培しました。新タマネギですのでぜひサラダで食べていただきたいです☆スライスして空気に10分ほどさらして頂けるとなお甘くなり、もちろん加熱していただいてもとても美味しいです☆
ぜひともあめつち農園のタマネギをご贔屓によろしくお願いいたします。',10,3500,184,'5','2016-05-01 05:00:52.720288','2016-06-24 09:13:22.896309',NULL,'image.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(74,'乾物・粉類','手作りきな粉','完全無肥料／農薬不使用栽培','自然栽培の借金なし大豆100％使用。
豆本来の甘みが際立つ、とても美味しいきな粉です。
作り置きはせず、ご注文いただいてから焙煎します。
わらび餅に、おはぎに、是非お試し下さい。',100,300,0,'9','2016-05-07 11:58:20.459834','2016-10-29 23:37:52.858718',NULL,'IMG_6340.jpg','1','g','pg');
INSERT INTO `products` VALUES(75,'タマネギ／玉葱','淡路島産　玉ねぎ（小玉）','完全無肥料／農薬不使用栽培','【★送料無料★】お得な小玉サイズのたまねぎです。

 大きさはおよそ直径５ｃｍくらい、ピンポン玉よりやや大きめとなります。
 通常サイズと比べて日持ちしやすく、味はほとんど変わりません。
使い切り、小家族のお客様に人気の商品です。
小さめのサイズなのでお得な価格での限定販売となります。

・有機JAS 認証を取得した自然栽培たまねぎです。
・農薬は完全無農薬、肥料についても基本的には無肥料で栽培しています。

淡路島は気候・風土に恵まれ、おいしいたまねぎの産地です。そんなブランドたまねぎの淡路島産たまねぎですが、有機栽培のたまねぎとなると生産量の1%にも満たない程しかありません。花岡農恵園の「淡路島産有機たまねぎ」は、たまねぎが育つのに適した淡路島の風土を最大限生かし、完全無農薬で栽培した有機JAS 認証を取得した自然栽培たまねぎです。',5,3000,0,'8','2016-05-09 00:02:05.929540','2016-08-10 07:13:04.762840',NULL,'original-005.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(76,'タマネギ／玉葱','淡路島産　玉ねぎ（小玉）','完全無肥料／農薬不使用栽培','【★送料無料★】お得な小玉サイズのたまねぎです。

 大きさはおよそ直径５ｃｍくらい、ピンポン玉よりやや大きめとなります。
 通常サイズと比べて日持ちしやすく、味はほとんど変わりません。
使い切り、小家族のお客様に人気の商品です。
小さめのサイズなのでお得な価格での限定販売となります。

・有機JAS 認証を取得した自然栽培たまねぎです。
・農薬は完全無農薬、肥料についても基本的には無肥料で栽培しています。

淡路島は気候・風土に恵まれ、おいしいたまねぎの産地です。そんなブランドたまねぎの淡路島産たまねぎですが、有機栽培のたまねぎとなると生産量の1%にも満たない程しかありません。花岡農恵園の「淡路島産有機たまねぎ」は、たまねぎが育つのに適した淡路島の風土を最大限生かし、完全無農薬で栽培した有機JAS 認証を取得した自然栽培たまねぎです。',10,5000,0,'8','2016-05-09 00:06:02.366815','2016-08-10 07:13:26.047893',NULL,'___.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(77,'タマネギ／玉葱','淡路島産　玉ねぎ','完全無肥料／農薬不使用栽培','【★送料無料★】
・有機JAS 認証を取得した自然栽培たまねぎです。
・農薬は完全無農薬、肥料についても基本的には無肥料で栽培しています。


淡路島は気候・風土に恵まれ、おいしいたまねぎの産地です。

なのでブランドにもなっている淡路島産たまねぎですが、
有機栽培のたまねぎは生産量の1%にも満たない程度しかありません。

 花岡農恵園の「淡路島産有機たまねぎ」は、
たまねぎが育つのに適した淡路島の風土を最大限生かし、
完全無農薬で栽培した有機たまねぎです。


',5,4000,0,'8','2016-05-09 00:18:16.478347','2016-08-10 07:13:44.555970',NULL,'original-005.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(78,'タマネギ／玉葱','淡路島産　玉ねぎ','完全無肥料／農薬不使用栽培','【★送料無料★】
・有機JAS 認証を取得した自然栽培たまねぎです。
・農薬は完全無農薬、肥料についても基本的には無肥料で栽培しています。

淡路島は気候・風土に恵まれ、おいしいたまねぎの産地です。

なのでブランドにもなっている淡路島産たまねぎですが、
有機栽培のたまねぎは生産量の1%にも満たない程度しかありません。

 花岡農恵園の「淡路島産有機たまねぎ」は、
たまねぎが育つのに適した淡路島の風土を最大限生かし、
完全無農薬で栽培した有機たまねぎです。


',10,6000,0,'8','2016-05-09 00:20:44.308437','2016-08-10 07:14:03.174624',NULL,'___.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(80,'コメ／米','朝日（玄米）','完全無肥料／農薬不使用栽培','ご飯をは毎日食べるもの、そのご飯にこだわりをもってみませんか？

とんぎりやま農園では肥料・農薬を使わず栽培しています。
品種は朝日。水稲のなかで美味しいとされるコシヒカリやササニシキの源流となる品種です。

食べてみるとあっさりとしていてなんとなくほっとする味。
かめばかむほどほんのり甘く飽きない味が口の中に広がりつづける。
炊きたてもよいけれど、冷や飯をそのまま塩を振りかけてそのままたべる。
弁当・おにぎりに最高。

消費税・送料込み
玄米5ｋｇ　5,000円
※国内配送のみとなります。
とんぎりやま農園　https://www.facebook.com/tongiriyama/',5,5000,99,'40','2016-05-13 13:03:40.127229','2016-10-28 15:44:29.503027',NULL,'image.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(82,'ニンジン／人参','にんじんの間引き菜（黒田五寸）','完全無肥料／農薬不使用栽培','黒田五寸にんじんの間引き菜、欲しい方いませんか☆
100ｇで大体50本くらいです！

【ジェノベーゼソースの材料】
人参葉
オリーブオイル
ニンニク
生アーモンド
お塩少々

すべての材料をブレンダーにかけるだけです！

注文を聞いてから、直取りします☆
期間限定ですのでお早めに！',200,400,0,'1','2016-05-14 11:39:31.589119','2016-07-21 13:29:16.336034',NULL,'13223503_1265427806819255_890221270_o.jpg','0','g',NULL);
INSERT INTO `products` VALUES(83,'BOX販売','ずくなし農園 秋冬野菜お試しBOX 60サイズ 送料無料','完全無肥料／農薬不使用栽培','季節柄、葉物中心です。サラダ用のリーフやレタスも揃ってきました！大根などもそろそろ大きくなって来ています(＾ｰ^)ノ

信州の厳しい気候で育った無肥無農薬栽培の野菜セットをあなたの元へお届けします。 当農園は少量多品目により様々な野菜を楽しめます。またお客様の要望にも柔軟に対応しますが、内容は下記を参照下さいm(_ _)m
 ずくなし農園のおいしい野菜を是非お楽しみください！

※発送は月曜日もしくは木曜日となります。内容や発送日のご要望があればお問い合わせ下さい。１箱の大きさは60サイズになります。値段は送料込みの値段です。
大変申し訳ありませんが、生鮮野菜になりますので発送地は本州と四国のみとさせて頂きます。ご了承下さい。
10/30現在の出荷可能野菜
この内から数種類になります。
大根
ラディッシュ
長ネギ 松本一本
九条太 青ネギ
下仁田ネギ
小松菜
水菜
ほうれん草
チーマディラーパ
チンゲンサイ
パセリ
イタリアンパセリ
ルッコラ
コリアンダーリーフ
レッドマスタードリーフ
セルバチコ
リーフ サラダミックス
春菊
ニンニク
赤玉葱
じゃがいも
人参各種
カボチャ各種
ハーブ各種
小豆など',60,2800,0,'15','2016-05-14 15:57:12.764408','2016-12-03 03:41:34.383081',NULL,'image.jpg','1','ml',NULL);
INSERT INTO `products` VALUES(84,'BOX販売','ずくなし農園 野菜セット 定期便８０サイズ 送料無料','完全無肥料／農薬不使用栽培','【販売開始！！】2016/5/15以降発送予定
信州の厳しい気候で育った完全無農薬、完全無肥料栽培の野菜セットをあなたの元へお届けします。 当農園は少量多品目により様々な野菜を楽しめます。またお客様の要望にも柔軟に対応し、生野菜中心や夏野菜中心、スムージー対応などやって参りました。定期的に購入して頂けるお客様には、お楽しみとして自家製味噌や自家製パンなどのサービスも入ります。 ずくなし農園のおいしい野菜を是非お楽しみください！

※発送は月曜日もしくは木曜日のみとなります。内容や発送日のご要望があればお問い合わせ下さい。
１箱の大きさは８０サイズになります。定期便の為、月２回の発送になります。値段は送料込みの値段です。
大変申し訳ありませんが、生鮮野菜になりますので発送地は本州と四国のみとさせて頂きます。ご了承下さい。',80,6500,0,'15','2016-05-14 15:59:02.513373','2016-07-21 14:46:50.214775',NULL,'image.jpg','1','ml',NULL);
INSERT INTO `products` VALUES(88,'レタス／萵苣','サニーレタス','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','ベビーリーフのように少し大きくなり始めたばかりの
柔らかく薄い葉のサニーレタスです。
お届けした時にしんなりしていても、
水につけて、ちぎって盛り付け
冷蔵庫で食べる直前まで冷やしていただくと
しゃっきりとした食感に戻ります☆　',150,150,0,'14','2016-05-20 12:25:02.582547','2016-07-09 12:25:16.744462',NULL,'13262329_1265427830152586_390919277_o.jpg','0','g',NULL);
INSERT INTO `products` VALUES(89,'ソラマメ／空豆','自家採種5年目のソラマメ','完全無肥料／農薬不使用栽培','赤色と緑色のソラマメをお楽しみで梱包します。
茹でてお召し上がりください☆
暑くなってきた夜に、冷えたビール日本酒にとても合います！',200,300,0,'1','2016-05-20 12:35:35.270603','2016-06-30 10:15:23.401362',NULL,'13225006_1265427840152585_490064489_o.jpg','1','g',NULL);
INSERT INTO `products` VALUES(90,'ジャガイモ／馬鈴薯','デジマ','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞',' 雑味のない芋本来の旨味とモッチリした食感、一度味わうと病みつきになります。簡単に煮くずれません。',1,330,3,'36','2016-06-02 16:05:54.795794','2016-12-22 06:02:14.937123',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(92,'ケール／緑葉甘藍','自然栽培　コラードケール（ジュース・サラダ・料理兼用）　生葉 2kg','完全無肥料／農薬不使用栽培','自然栽培で育った希少なケールをお届けします。（お届け開始は7月中旬から）
ジュース用にはもちろん、サラダや加熱調理してもおいしいですよ。
幼稚園の給食にサラダとして利用していただいていますので、お子様でも食べていただけると思います。
7月から9月まではチルドでのお届けになります。
十分注意しておりますが、まれに虫が混入する場合があります。
よく洗ってからご利用下さい。
また、到着後はすみやかに冷蔵保管し、なるべく早めにお召し上がり下さい。',2,2853,9999999995,'38','2016-06-26 06:59:38.024832','2016-10-05 14:01:46.716003',NULL,'mvrrgmmgch46eupavxug4oehru_z5t65g5ds5.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(94,'オクラ／秋葵','固定種：香芯五角（自家採種4年）','完全無肥料／農薬不使用栽培','オクラが大好きなのでオクラを作り続けています。自分が食べて美味いと思うものを分かち合いたいそんな気持ちで作っています。一袋の種から始まり今ではこの株はあの株の子孫だなとか。できの悪いやつはあの株の子供か。なんてことを考えながら収穫していると子育てと同じような気持ちになってきます。肥料を使用していないので土の中の微生物が活性化して去年よりさらに生育がよくオクラそのものも美味しいものが出来上がっています。一度お試しください。
※約80g（オクラ7，8本）の小袋10～11袋（合計重量が800g）、梱包はダンポールに詰めてクール便での配送となります。',800,1800,0,'40','2016-06-29 15:01:08.540636','2016-08-08 13:49:47.017198',NULL,NULL,'1','g',NULL);
INSERT INTO `products` VALUES(95,'ニンニク／大蒜','ずくなし農園 ニンニク ホワイト六片 1キロ 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬で３年目のニンニクです。
高級品種のホワイト六片種
香りが良く味もしっかりしています！
約２０個入り
送料無料',1,5500,0,'15','2016-07-10 17:04:48.019048','2016-10-17 00:51:35.856348',NULL,'image.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(96,'ニンニク／大蒜','ずくなし農園 ニンニク ホワイト六片 1キロ はねだし 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬で３年目のニンニクです。
高級品種のホワイト六片種
香りが良く味もしっかりしています！
種蒔き用にも使えます。
はねだし約２５個入り
送料無料',1,4500,0,'15','2016-07-10 17:07:15.133185','2016-10-20 22:48:26.528386',NULL,'image.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(97,'タマネギ／玉葱','ずくなし農園 玉葱 ５キロ 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬２年目の玉葱です。
少し小ぶりですが、身がしまって味もしっかり食べ応えある玉葱です！
ドレッシングなどにもお使い下さい。',5,3500,0,'15','2016-07-10 17:16:51.268660','2016-10-11 05:12:03.569208',NULL,'image.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(98,'タマネギ／玉葱','ずくなし農園 玉葱 ５キロ はねだし 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬２年目の玉葱です。
はねだし品で小ぶりですが、身がしまって味もしっかり食べ応えある玉葱です！
ドレッシングなどにもお使い下さい。',5,2500,0,'15','2016-07-10 17:20:14.377793','2016-10-18 13:08:10.209237',NULL,'image.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(99,'タマネギ／玉葱','SALE！ずくなし農園 赤玉葱 ５キロ 送料無料','完全無肥料／農薬不使用栽培','色鮮やかな赤玉葱です。
甘味があり歯ごたえもシャキシャキ美味しい赤玉葱です！
サラダなどにお使い下さい。',5,3500,0,'15','2016-07-10 17:24:50.273606','2016-11-06 13:49:17.956516',NULL,'image.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(100,'タマネギ／玉葱','SALE！ずくなし農園 赤玉葱 ５キロ はねだし 送料無料','完全無肥料／農薬不使用栽培','色鮮やかな赤玉葱です。
はねだし品につき小ぶりですが、甘味があり歯ごたえもシャキシャキ美味しい赤玉葱です！
サラダなどにお使い下さい。',5,2500,0,'15','2016-07-10 17:28:08.243425','2016-11-06 13:48:52.750253',NULL,'image.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(101,'ジャガイモ／馬鈴薯','ヨーデル','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','ホクホク系で粘質のある品種でマッシュポテトやコロッケに最適です☆
熟成すると甘さが増します。
ヨーデルは日本人で初めてのジャガイモの育種家、俵正彦氏が作り出した驚異のジャガイモ品種です。
種芋生産は国の規定検疫により厳しく作付場所、品種が管理されていますが、その統制下でたくましく育成された努力の選抜品種です！',500,350,0,'14','2016-07-11 09:00:02.881178','2016-09-27 02:18:33.422191',NULL,'13647020_1305557186139650_332264759_o.jpg','1','g',NULL);
INSERT INTO `products` VALUES(102,'ジャガイモ／馬鈴薯','さゆみむらさき','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','長崎県の育種家、俵 正彦さんがつくった品種で、肉質は程よい柔らかさ、身の色は淡い黄色です！
貯蔵性に優れた品種で、多めの購入にも適しています☆
',500,350,49,'14','2016-07-14 03:29:35.410821','2016-11-23 14:31:45.110409',NULL,'13633333_1305557046139664_925518678_o.jpg','1','g',NULL);
INSERT INTO `products` VALUES(103,'ジャガイモ／馬鈴薯','【ジャガイモ 6品種】 食べくらべセット','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','めずらしいジャガイモ6品種の食べくらべセットです！
品種による肉質や、色、味などの違いをお楽しみいただけます！
・サユミムラサキ
・コバン
・ヨーデル
・ひこぼし
・ポラリス
・タワラムラサキ

各1〜2個ずつ程度

',1500,1000,0,'14','2016-07-14 03:43:53.409488','2016-09-27 02:17:55.950117',NULL,'13646732_1305557846139584_997877068_o.jpg','0','g',NULL);
INSERT INTO `products` VALUES(104,'コムギ／小麦','シロガネ小麦（薄力・全粒粉）','完全無肥料／農薬不使用栽培','平成28年度収穫の薄力・全粒粉（シロガネ小麦）のご準備が整いました。
天婦羅の衣やお菓子など、様々なお料理にオススメの小麦粉です☆
無肥料、無農薬ですので安心、安全！
この機会にどうぞ☆',500,700,10,'1','2016-07-21 13:22:44.000885','2016-10-06 16:19:41.812070',NULL,'IMG_1403.jpg','0','g',NULL);
INSERT INTO `products` VALUES(105,'BOX販売','【送料無料】すべて固定種','完全無肥料／農薬不使用栽培','【送料無料】9月限定　自然栽培野菜土付きセット
ニンニク（最小玉15g以上）200g　　
じゃがいも　　　　　　 　5㎏ 
人参 　　　　　　　　　　1㎏
送料込み　3,500円です。
人参とジャガイモの畑は　除草剤、肥料、農薬使用後3年が過ぎました。
赤クローバーと草を栄養分として微生物たちが土地を肥えさせる方法で育てています。
ニンニクは耕作放棄地を開墾し　2年目の畑
春先まで除草を行い　草に覆われ眠る
自然の循環に合わせ栽培したものです。
',6,3500,0,'39','2016-08-18 06:51:08.753025','2016-09-13 23:16:48.965545',NULL,'14060483_586248894887037_1959627143_o.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(106,'ジャガイモ／馬鈴薯','【送料無料】自家採種','完全無肥料／農薬不使用栽培','【送料無料】自家採種のジャガイモです！
じゃがいもは自家採種したものなのでいろんな品種が混ざることがあります。
自然栽培に転換後、3年が過ぎた畑で育ちました。
赤クローバーや草たちと共存しながらも　光の優位性は確保するお世話をしました。
',10,3800,0,'39','2016-08-18 06:55:25.101079','2016-09-13 23:16:22.914706',NULL,'14059938_586248971553696_549945431_o.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(107,'ケール／緑葉甘藍','自然栽培　コラードケール（ジュース・サラダ・料理兼用）　生葉 4kg','完全無肥料／農薬不使用栽培','ジュースやスムージーを作るのに最適なコラードケール4kgをお届けします。

大手のジュース専用品種とは異なり、料理に使ってもおいしくいただけるコラードケールです。

肥料も農薬も使わず、自然に近い状態の畑の中で、ケール自身の力で育ったケールです。

ハウス栽培と違い、太陽の光をしっかり浴びて育ちましたので、栄養価も高くなっているはずです。

生育初期には虫に食べられる割合が多かったのですが、現在、自己免疫力や修復力が高まってきれいなケール生葉が穫れるようになってきました。

ジュースだけでなく、ケールチップスやお料理にも使いたい方向けのお得なコースです。',4,4358,10000000000,'38','2016-09-06 06:40:36.255217','2016-09-06 06:44:08.763489',NULL,'IMG_20160723_090656.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(108,'ジャガイモ／馬鈴薯','ずくなし農園 ジャガイモ 1.5kg シャドークイーン 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬のジャガイモ
中身は鮮やかな紫色のシャドークイーンです！
ポテトサラダやマッシュポテトにすると綺麗です。',1500,2000,0,'15','2016-09-09 14:25:36.148723','2016-10-11 05:06:35.017870',NULL,'image.jpg','1','g',NULL);
INSERT INTO `products` VALUES(109,'ニンニク／大蒜','ずくなし農園 ニンニク ホワイト六片 500g 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬で３年目のニンニクです。
高級品種のホワイト六片種
香りが良く味もしっかりしています！
約１０個入り
送料無料',500,3000,0,'15','2016-09-16 12:46:57.888108','2016-10-20 22:49:26.949568',NULL,'image.jpg','1','g',NULL);
INSERT INTO `products` VALUES(110,'飲料','ホーリーバジルティー','完全無肥料／農薬不使用栽培','香って、飲んで、ココロもキレイにするホーリーバジル茶です。

１０g入り。

北海道千歳市にある「今日はいい天気だFARM」で自然栽培で育てられたホーリーバジル茶（乾燥）です。
種まきから、収穫、乾燥、パック詰めまで一つづつ丁寧に手作業で行っています。

愛情と芳醇な香りがたっぷりつまったホーリーバジル茶をお届けします！


～ホーリーバジルとは～
インドの伝統療法（アーユルヴェーダ）に使われていた大気を浄化する医薬同源の万能ハーブです。

シソ科の仲間で、他の種類や品種と交雑しやすいことから、種類は150種以上にのぼるとされていますが、
今日はいい天気だFARMさんでは、その中でも　第一人者　大矢泰司氏が品種固定した真正の「オーヤトゥルシ―」を栽培しています。

～効能～　
ガン・ストレス・放射線障害・咳・風邪・熱・歯痛・頭痛・喘息・下痢・心臓病・リウマチ・皮膚病・美容などに有効とされ、呼吸器系にはとても効果を発揮する、とインド伝統療法では伝えられています。

～飲み方～
1.1リットルの水に1～2gのホーリーバジルを入れて火にかけます。
2.お湯が沸騰してから2～3分煮出します。
3.熱々をカップに注いだら、すぐに飲まずに、
　湯気を鼻から吸い込みホーリーバジルの香りを鼻と喉で感じたら飲みます。
4.出がらしは肉料理やサラダに混ぜて食べたり、布などに包んでお風呂に浮かべ入浴剤にもできます。',10,1080,30,'37','2016-09-16 13:35:39.733713','2016-09-27 04:10:53.548932',NULL,'image.jpg','1','g','pg');
INSERT INTO `products` VALUES(111,'BOX販売','ジャガイモ（アンデスレッド）','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','【送料無料】
ジャガイモ（アンデスレッド）5kgのボックス宅配です！

',5,4000,0,'25','2016-09-22 09:37:46.418090','2016-09-22 09:37:46.418090',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(112,'ジャガイモ／馬鈴薯','ずくなし農園 じゃがいも各種セット 2.5kg 送料無料','完全無肥料／農薬不使用栽培','ずくなし農園 じゃがいも各種セット 2.5kgです！
無肥無農薬栽培のじゃがいも、品種は色々詰め合わせです。
キタアカリ
シェリー
グランドペチカ
シャドークイーン
ノーザンルビー
ホッカイコガネ
ドラゴンレッドなど

',2500,2800,0,'15','2016-09-25 04:23:08.941043','2016-10-29 15:15:55.362083',NULL,'IMG_5670.jpg','1','g',NULL);
INSERT INTO `products` VALUES(113,'ニンニク／大蒜','ずくなし農園 種蒔き用ニンニク バラ 1kg 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬で2年目のニンニクです。
高級品種のホワイト六片種
香りが良く味もしっかりしています！
バラしてありますので、種蒔き用にお使い下さい。
もちろん料理にも使えます。
送料無料',1,3500,0,'15','2016-10-02 13:17:10.766259','2016-12-03 03:41:52.971230',NULL,'IMG_5706.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(115,'エダマメ／枝豆','SALE！ずくなし農園 枝豆 2kg 青バタor黒豆or秘伝他 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬2年目の枝豆です。
品種は秘伝になります。
大粒で甘く美味しい枝豆です！

',2,3000,0,'15','2016-10-02 14:11:19.307897','2016-10-20 22:42:09.760724',NULL,'IMG_5702.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(116,'エダマメ／枝豆','SALE！ずくなし農園 枝豆 1kg 青バタor黒豆or秘伝他 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬2年目の枝豆です。
品種は秘伝になります。
大粒で甘く美味しい枝豆です！
',1,2000,0,'15','2016-10-02 14:35:45.650906','2016-10-20 22:42:29.275781',NULL,'IMG_5702.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(117,'ニンニク／大蒜','ずくなし農園 種蒔き用ニンニク バラ 500g 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬で2年目のニンニクです。
高級品種のホワイト六片種
香りが良く味もしっかりしています！
バラしてありますので、種蒔き用にお使い下さい。
もちろん料理にも使えます。
送料無料',500,2000,0,'15','2016-10-05 13:15:10.914704','2016-12-03 03:42:05.824879',NULL,'IMG_5760.jpg','1','g',NULL);
INSERT INTO `products` VALUES(118,'コメ／米','朝日（玄米）','完全無肥料／農薬不使用栽培','ご飯をは毎日食べるもの、そのご飯にこだわりをもってみませんか？

とんぎりやま農園では肥料・農薬を使わず栽培しています。
品種は朝日。水稲のなかで美味しいとされるコシヒカリやササニシキの源流となる品種です。

食べてみるとあっさりとしていてなんとなくほっとする味。
かめばかむほどほんのり甘く飽きない味が口の中に広がりつづける。
炊きたてもよいけれど、冷や飯をそのまま塩を振りかけてそのままたべる。
弁当・おにぎりに最高。

消費税・送料込み
玄米10ｋｇ　9,000円
※国内配送のみとなります。
とんぎりやま農園　https://www.facebook.com/tongiriyama/',10,9000,100,'40','2016-10-10 13:08:44.283958','2016-10-28 15:45:10.079469',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(119,'コメ／米','朝日（玄米）','完全無肥料／農薬不使用栽培','ご飯をは毎日食べるもの、そのご飯にこだわりをもってみませんか？

とんぎりやま農園では肥料・農薬を使わず栽培しています。
品種は朝日。水稲のなかで美味しいとされるコシヒカリやササニシキの源流となる品種です。

食べてみるとあっさりとしていてなんとなくほっとする味。
かめばかむほどほんのり甘く飽きない味が口の中に広がりつづける。
炊きたてもよいけれど、冷や飯をそのまま塩を振りかけてそのままたべる。
弁当・おにぎりに最高。

消費税・送料込み
玄米25ｋｇ　20,000円
※国内配送のみとなります。
とんぎりやま農園　https://www.facebook.com/tongiriyama/',25,20000,30,'40','2016-10-10 13:10:31.512979','2016-10-28 15:45:40.364870',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(120,'コメ／米','朝日（玄米）','完全無肥料／農薬不使用栽培','ご飯をは毎日食べるもの、そのご飯にこだわりをもってみませんか？

とんぎりやま農園では肥料・農薬を使わず栽培しています。
品種は朝日。水稲のなかで美味しいとされるコシヒカリやササニシキの源流となる品種です。

食べてみるとあっさりとしていてなんとなくほっとする味。
かめばかむほどほんのり甘く飽きない味が口の中に広がりつづける。
炊きたてもよいけれど、冷や飯をそのまま塩を振りかけてそのままたべる。
弁当・おにぎりに最高。

消費税・送料込み
玄米30ｋｇ　24,000円
※国内配送のみとなります。
とんぎりやま農園　https://www.facebook.com/tongiriyama/',30,24000,30,'40','2016-10-10 13:11:52.835972','2016-10-28 15:46:01.935007',NULL,NULL,'1','kg',NULL);
INSERT INTO `products` VALUES(121,'BOX販売','自然栽培根菜セット（ダイコン・カブ・ニンジン）','完全無肥料／農薬不使用栽培','自然栽培で作った根菜野菜セットです。自然豊かな淡路島で育てた美味しい野菜です。
10年以上耕作放棄されていた畑を借りうけ、とてもふかふかで微生物の多い畑です。
目の前に広がる海からの潮風のおかげで、風味と旨みの豊かな野菜が育ちました。',1,1000,10,'42','2016-11-16 09:34:26.397286','2017-01-13 04:22:32.218547',NULL,'IMG_8643.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(122,'ダイコン／大根','味いちばん','完全無肥料／農薬不使用栽培','肉質緻密で美味しい短大根の２色セット。

紫色はポリフェノールの紫。抗酸化作用が期待できます。ポン酢をかけるとさらに鮮やかな赤紫色に。食卓を彩ります。',4,1000,0,'19','2016-12-09 14:49:32.428088','2017-02-09 03:30:26.307926',NULL,'DSC_0732.jpg','0','kg',NULL);
INSERT INTO `products` VALUES(123,'サトイモ／里芋','土垂','完全無肥料／農薬不使用栽培','皮ごと蒸すか茹でるかするだけで絶品の里芋に育ってくれました。

初めて自家採種して無施肥で育てたときは、１株に出来る芋数は少なく、小さいのばっかりでした。その中から少しでも形良く大きい芋を種芋にして、水分を欲しがる里芋に畑の中でも良さそうな場所を探し、保水性の高まる植え方の工夫をし、草に負けやすい幼苗期は何度も草を取りようやく育ってくれました。',2,1200,3,'19','2016-12-10 04:12:26.252267','2017-01-13 04:25:31.975488',NULL,'DSC_0741.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(124,'BOX販売','白菜、葱、大根、カブ、人参、ホウレン草、菊菜またはみず菜、じゃが芋','農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞','冬の鍋野菜詰め合わせです。内容は白菜１玉、葱（中型）３本、人参３本、大根１本、カブ（中型）３個、ホウレン草１束、みず菜１束または菊菜１束どちらか一方、じゃが芋800ｇです。
今年の白菜は上出来です。味も格別市販の白菜と比べても見劣りしません。先代４８年私１６年の技術の粋を結集して作り上げました。完全無農薬ですので少し虫はついていますが、水洗いするだけで簡単に落とせます。
限定の少量販売ですのでお早めにお買い求めください。
なお年末年始はお届けが遅れる可能性がございます。予めご了承ください。
発送までの５日程度いただくことがございます。
',7,3200,3,'36','2016-12-18 02:59:25.821654','2016-12-21 02:26:41.053679',NULL,'023.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(125,'ダイズ／大豆','ずくなし農園 信州産丹波黒豆 1kg 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬',1,2000,10,'15','2016-12-26 18:11:03.097606','2017-01-31 14:54:50.787886',NULL,'IMG_6590.jpg','1','kg',NULL);
INSERT INTO `products` VALUES(126,'ダイズ／大豆','ずくなし農園 西山大豆(ナカセンナリ) 1kg 送料無料','完全無肥料／農薬不使用栽培','無肥無農薬',1,1500,10,'15','2016-12-26 18:16:19.637140','2017-01-31 14:54:23.595476',NULL,'IMG_6592.jpg','1','kg',NULL);
CREATE TABLE `line_items` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `product_id` integer, `cart_id` integer, `created_at` datetime, `updated_at` datetime, `quantity` integer DEFAULT 1, `order_id` integer, `address_id` integer);
INSERT INTO `line_items` VALUES(4,7,51,'2015-10-18 15:08:54.506508','2015-10-18 15:15:29.795850',3,NULL,NULL);
INSERT INTO `line_items` VALUES(5,7,NULL,'2015-10-20 11:48:29.595761','2015-10-20 12:45:24.117887',2,2,NULL);
INSERT INTO `line_items` VALUES(6,7,NULL,'2015-10-20 12:01:35.651375','2015-10-20 12:02:23.343723',1,1,NULL);
INSERT INTO `line_items` VALUES(7,7,NULL,'2015-10-20 12:44:49.252126','2015-10-21 08:17:15.166977',2,3,NULL);
INSERT INTO `line_items` VALUES(8,10,NULL,'2015-11-04 13:33:24.843020','2015-11-04 13:38:49.004927',1,4,NULL);
INSERT INTO `line_items` VALUES(9,12,NULL,'2015-11-04 13:48:15.067562','2015-11-04 13:48:56.055752',1,5,NULL);
INSERT INTO `line_items` VALUES(14,10,NULL,'2015-11-11 10:05:55.426255','2015-11-11 10:08:06.131985',1,6,NULL);
INSERT INTO `line_items` VALUES(20,14,NULL,'2015-11-12 03:10:26.500938','2015-11-12 03:12:38.171040',3,7,NULL);
INSERT INTO `line_items` VALUES(21,12,NULL,'2015-11-12 03:10:38.246512','2015-11-12 03:12:38.172611',1,7,NULL);
INSERT INTO `line_items` VALUES(23,16,135,'2015-11-14 06:33:33.069294','2015-11-14 06:33:33.069294',1,NULL,NULL);
INSERT INTO `line_items` VALUES(24,10,60,'2015-11-16 01:46:05.937645','2015-11-16 01:46:05.937645',1,NULL,NULL);
INSERT INTO `line_items` VALUES(26,16,129,'2015-11-20 05:30:10.317142','2015-11-20 05:30:33.795786',5,NULL,NULL);
INSERT INTO `line_items` VALUES(27,16,NULL,'2015-11-25 13:28:30.092944','2015-12-02 09:32:42.245771',13,8,NULL);
INSERT INTO `line_items` VALUES(29,10,184,'2015-12-04 12:12:00.761414','2015-12-04 12:12:00.761414',1,NULL,NULL);
INSERT INTO `line_items` VALUES(30,21,NULL,'2015-12-06 07:00:59.857479','2015-12-08 10:12:37.858463',3,9,NULL);
INSERT INTO `line_items` VALUES(31,18,NULL,'2015-12-06 07:01:26.045335','2015-12-08 10:12:37.861183',2,9,NULL);
INSERT INTO `line_items` VALUES(32,22,NULL,'2015-12-10 14:41:29.406111','2015-12-10 14:48:43.125983',2,10,NULL);
INSERT INTO `line_items` VALUES(33,18,NULL,'2015-12-10 14:41:38.017240','2015-12-10 14:48:43.128913',1,10,NULL);
INSERT INTO `line_items` VALUES(34,18,191,'2015-12-31 07:40:56.179082','2015-12-31 07:40:56.179082',1,NULL,NULL);
INSERT INTO `line_items` VALUES(37,11,308,'2016-01-31 07:12:36.698828','2016-01-31 07:12:36.698828',1,NULL,NULL);
INSERT INTO `line_items` VALUES(38,12,314,'2016-01-31 07:16:02.492251','2016-01-31 07:16:02.492251',1,NULL,NULL);
INSERT INTO `line_items` VALUES(39,28,350,'2016-01-31 15:17:36.043297','2016-01-31 15:17:36.043297',1,NULL,NULL);
INSERT INTO `line_items` VALUES(40,29,353,'2016-01-31 15:18:27.903426','2016-01-31 15:18:27.903426',1,NULL,NULL);
INSERT INTO `line_items` VALUES(47,29,452,'2016-02-06 08:22:28.359772','2016-02-06 08:22:56.071128',2,NULL,NULL);
INSERT INTO `line_items` VALUES(48,29,492,'2016-02-08 10:50:54.612306','2016-02-08 10:50:54.612306',1,NULL,NULL);
INSERT INTO `line_items` VALUES(49,29,NULL,'2016-02-09 04:54:43.475367','2016-02-09 04:58:03.534158',2,11,NULL);
INSERT INTO `line_items` VALUES(50,37,NULL,'2016-02-10 10:56:39.355734','2016-02-10 11:03:54.064003',1,12,NULL);
INSERT INTO `line_items` VALUES(53,37,NULL,'2016-02-10 11:33:30.766226','2016-02-10 11:35:06.156031',1,13,NULL);
INSERT INTO `line_items` VALUES(54,28,NULL,'2016-02-10 11:43:04.513772','2016-02-10 11:45:47.402776',3,14,NULL);
INSERT INTO `line_items` VALUES(55,38,509,'2016-02-10 11:46:40.631129','2016-02-10 11:46:42.620392',2,NULL,NULL);
INSERT INTO `line_items` VALUES(57,37,NULL,'2016-02-10 14:59:57.152178','2016-02-10 15:02:41.017967',1,15,NULL);
INSERT INTO `line_items` VALUES(59,18,524,'2016-02-13 00:32:53.441553','2016-02-13 00:32:53.441553',1,NULL,NULL);
INSERT INTO `line_items` VALUES(60,22,529,'2016-02-14 03:39:25.822379','2016-02-14 03:39:25.822379',1,NULL,NULL);
INSERT INTO `line_items` VALUES(62,28,549,'2016-02-17 20:55:39.447753','2016-02-17 20:55:53.609097',4,NULL,NULL);
INSERT INTO `line_items` VALUES(64,45,560,'2016-02-19 00:16:36.018434','2016-02-19 00:16:36.018434',1,NULL,NULL);
INSERT INTO `line_items` VALUES(65,45,561,'2016-02-19 01:49:12.923936','2016-02-19 01:49:12.923936',1,NULL,NULL);
INSERT INTO `line_items` VALUES(66,38,562,'2016-02-19 05:59:42.564661','2016-02-19 05:59:42.564661',1,NULL,NULL);
INSERT INTO `line_items` VALUES(67,45,NULL,'2016-02-19 09:23:18.216807','2016-02-19 09:25:49.834976',1,16,NULL);
INSERT INTO `line_items` VALUES(68,29,NULL,'2016-02-20 04:53:20.149593','2016-02-20 04:54:28.684083',1,17,NULL);
INSERT INTO `line_items` VALUES(69,45,NULL,'2016-02-23 06:03:29.735714','2016-02-23 06:06:39.701525',1,18,NULL);
INSERT INTO `line_items` VALUES(78,12,588,'2016-02-24 15:28:34.432059','2016-02-24 15:28:34.432059',1,NULL,NULL);
INSERT INTO `line_items` VALUES(79,45,617,'2016-03-08 06:15:26.274069','2016-03-08 06:15:26.274069',1,NULL,NULL);
INSERT INTO `line_items` VALUES(80,41,659,'2016-03-17 15:23:36.752292','2016-03-17 15:23:36.752292',1,NULL,NULL);
INSERT INTO `line_items` VALUES(81,44,659,'2016-03-17 15:23:41.944731','2016-03-17 15:23:41.944731',1,NULL,NULL);
INSERT INTO `line_items` VALUES(82,42,659,'2016-03-17 15:24:11.531228','2016-03-17 15:24:11.531228',1,NULL,NULL);
INSERT INTO `line_items` VALUES(83,30,660,'2016-03-17 23:32:24.456320','2016-03-17 23:32:24.456320',1,NULL,NULL);
INSERT INTO `line_items` VALUES(85,45,NULL,'2016-03-18 03:55:10.831107','2016-03-24 02:20:00.793020',1,20,NULL);
INSERT INTO `line_items` VALUES(87,38,NULL,'2016-03-21 02:56:15.907056','2016-03-21 02:58:03.056681',2,19,NULL);
INSERT INTO `line_items` VALUES(88,47,NULL,'2016-03-22 05:31:06.532777','2016-03-25 13:13:54.660431',1,21,NULL);
INSERT INTO `line_items` VALUES(89,48,NULL,'2016-03-22 05:31:20.127501','2016-03-25 13:13:54.662182',1,21,NULL);
INSERT INTO `line_items` VALUES(90,28,168,'2016-03-23 06:28:00.218748','2016-03-23 06:28:00.218748',1,NULL,NULL);
INSERT INTO `line_items` VALUES(91,55,NULL,'2016-03-28 07:27:35.463620','2016-03-28 07:33:09.693330',1,22,NULL);
INSERT INTO `line_items` VALUES(92,29,767,'2016-03-28 09:31:10.398701','2016-03-28 09:31:10.398701',1,NULL,NULL);
INSERT INTO `line_items` VALUES(93,45,770,'2016-03-28 09:36:05.798253','2016-03-28 09:36:05.798253',1,NULL,NULL);
INSERT INTO `line_items` VALUES(94,55,787,'2016-03-31 11:18:20.226036','2016-03-31 11:18:20.226036',1,NULL,NULL);
INSERT INTO `line_items` VALUES(95,53,NULL,'2016-04-01 22:10:51.052713','2016-04-01 22:28:06.357479',1,23,NULL);
INSERT INTO `line_items` VALUES(96,53,789,'2016-04-01 23:04:04.425327','2016-04-01 23:04:11.577693',2,NULL,NULL);
INSERT INTO `line_items` VALUES(97,53,NULL,'2016-04-02 00:33:56.170716','2016-04-02 00:40:04.751626',1,24,NULL);
INSERT INTO `line_items` VALUES(100,55,NULL,'2016-04-02 23:47:58.631428','2016-04-02 23:53:25.221119',2,25,NULL);
INSERT INTO `line_items` VALUES(101,47,NULL,'2016-04-02 23:48:44.435131','2016-04-02 23:53:25.222793',1,25,NULL);
INSERT INTO `line_items` VALUES(104,46,NULL,'2016-04-06 00:54:50.531138','2016-04-06 01:06:40.418320',1,26,NULL);
INSERT INTO `line_items` VALUES(105,55,NULL,'2016-04-06 00:55:07.412825','2016-04-06 01:06:40.420105',2,26,NULL);
INSERT INTO `line_items` VALUES(106,59,NULL,'2016-04-06 10:03:02.147432','2016-04-06 10:10:52.452292',2,27,NULL);
INSERT INTO `line_items` VALUES(110,13,NULL,'2016-04-08 14:06:21.193987','2016-04-08 14:08:40.962527',1,28,NULL);
INSERT INTO `line_items` VALUES(114,52,1057,'2016-04-18 13:52:43.835254','2016-04-18 13:52:43.835254',1,NULL,NULL);
INSERT INTO `line_items` VALUES(117,57,1062,'2016-04-18 14:02:39.745671','2016-04-18 14:02:39.745671',1,NULL,NULL);
INSERT INTO `line_items` VALUES(118,58,1062,'2016-04-18 14:02:45.384185','2016-04-18 14:02:45.384185',1,NULL,NULL);
INSERT INTO `line_items` VALUES(120,42,1096,'2016-04-29 02:31:59.456594','2016-04-29 02:31:59.456594',1,NULL,NULL);
INSERT INTO `line_items` VALUES(121,3,NULL,'2016-05-02 00:13:29.358779','2016-05-02 00:19:10.403059',1,29,NULL);
INSERT INTO `line_items` VALUES(122,72,1114,'2016-05-02 04:20:00.292945','2016-05-02 04:20:00.292945',1,NULL,NULL);
INSERT INTO `line_items` VALUES(123,28,1115,'2016-05-02 04:38:07.456108','2016-05-02 04:38:07.456108',1,NULL,NULL);
INSERT INTO `line_items` VALUES(125,13,NULL,'2016-05-07 05:46:44.472216','2016-05-07 05:49:39.105111',1,30,NULL);
INSERT INTO `line_items` VALUES(127,45,NULL,'2016-05-08 10:03:50.097526','2016-05-08 10:51:31.363684',1,31,NULL);
INSERT INTO `line_items` VALUES(129,73,1161,'2016-05-11 10:18:25.257520','2016-05-11 10:18:25.257520',1,NULL,NULL);
INSERT INTO `line_items` VALUES(131,41,1165,'2016-05-12 02:03:34.355370','2016-05-12 02:03:42.579002',4,NULL,NULL);
INSERT INTO `line_items` VALUES(133,75,NULL,'2016-05-12 10:13:48.461792','2016-05-12 10:16:18.280675',1,32,NULL);
INSERT INTO `line_items` VALUES(135,77,NULL,'2016-05-12 12:07:19.290999','2016-05-12 12:13:08.602784',1,33,NULL);
INSERT INTO `line_items` VALUES(137,73,NULL,'2016-05-13 00:22:20.005048','2016-05-13 00:27:09.765973',1,34,NULL);
INSERT INTO `line_items` VALUES(140,45,NULL,'2016-05-14 01:35:06.467447','2016-05-14 01:39:00.922061',1,35,NULL);
INSERT INTO `line_items` VALUES(141,3,NULL,'2016-05-14 02:03:07.029352','2016-05-14 02:06:11.683970',1,36,NULL);
INSERT INTO `line_items` VALUES(142,45,NULL,'2016-05-14 05:23:01.138838','2016-08-26 13:25:47.989148',1,69,NULL);
INSERT INTO `line_items` VALUES(143,82,NULL,'2016-05-14 11:58:06.591168','2016-05-14 12:00:58.485703',2,37,NULL);
INSERT INTO `line_items` VALUES(146,45,1334,'2016-05-17 05:51:43.797847','2016-05-17 05:51:43.797847',1,NULL,NULL);
INSERT INTO `line_items` VALUES(150,45,1363,'2016-05-20 02:11:18.027953','2016-05-20 02:11:18.027953',1,NULL,NULL);
INSERT INTO `line_items` VALUES(155,73,1105,'2016-05-28 06:59:56.112325','2016-05-28 07:00:06.759903',2,NULL,NULL);
INSERT INTO `line_items` VALUES(156,73,NULL,'2016-05-29 02:40:55.732744','2016-05-29 02:47:04.273422',1,38,NULL);
INSERT INTO `line_items` VALUES(157,83,1288,'2016-05-29 02:55:04.974332','2016-05-29 02:55:04.974332',1,NULL,NULL);
INSERT INTO `line_items` VALUES(158,13,NULL,'2016-06-03 04:34:21.809788','2016-06-03 04:36:51.307478',1,39,NULL);
INSERT INTO `line_items` VALUES(160,78,NULL,'2016-06-05 01:02:39.902180','2016-06-05 01:10:40.062254',1,40,NULL);
INSERT INTO `line_items` VALUES(166,13,NULL,'2016-06-10 01:57:22.324538','2016-06-10 02:00:21.314058',1,41,NULL);
INSERT INTO `line_items` VALUES(167,75,NULL,'2016-06-10 01:57:26.333844','2016-06-10 02:00:21.315696',1,41,NULL);
INSERT INTO `line_items` VALUES(170,73,1435,'2016-06-11 22:01:39.600315','2016-06-11 22:01:43.225083',2,NULL,NULL);
INSERT INTO `line_items` VALUES(172,90,1436,'2016-06-12 08:22:32.765418','2016-06-12 08:22:40.892186',8,NULL,NULL);
INSERT INTO `line_items` VALUES(176,83,1415,'2016-06-22 22:28:20.316322','2016-06-22 22:28:20.316322',1,NULL,NULL);
INSERT INTO `line_items` VALUES(178,84,1462,'2016-06-24 07:16:35.852332','2016-06-24 07:16:35.852332',1,NULL,NULL);
INSERT INTO `line_items` VALUES(179,73,NULL,'2016-06-24 09:13:22.923776','2016-06-24 09:34:38.097089',1,42,NULL);
INSERT INTO `line_items` VALUES(180,84,NULL,'2016-06-24 10:21:53.385821','2016-06-24 10:25:38.023167',1,43,NULL);
INSERT INTO `line_items` VALUES(181,28,1476,'2016-06-24 15:00:52.579649','2016-06-24 15:00:52.579649',1,NULL,NULL);
INSERT INTO `line_items` VALUES(182,25,1485,'2016-06-25 23:29:16.803646','2016-06-25 23:29:16.803646',1,NULL,NULL);
INSERT INTO `line_items` VALUES(184,13,NULL,'2016-06-25 23:37:07.570550','2016-06-26 00:05:08.945186',1,44,NULL);
INSERT INTO `line_items` VALUES(185,31,NULL,'2016-06-26 12:45:06.453768','2016-06-26 12:46:19.975809',1,45,NULL);
INSERT INTO `line_items` VALUES(188,78,NULL,'2016-06-30 08:20:55.699432','2016-06-30 08:47:30.687436',1,46,NULL);
INSERT INTO `line_items` VALUES(190,3,NULL,'2016-07-01 09:59:37.496977','2016-07-01 10:01:25.203542',5,47,NULL);
INSERT INTO `line_items` VALUES(191,75,1535,'2016-07-02 01:49:51.811915','2016-07-02 01:49:51.811915',1,NULL,NULL);
INSERT INTO `line_items` VALUES(192,15,1535,'2016-07-02 01:49:56.166327','2016-07-02 01:49:56.166327',1,NULL,NULL);
INSERT INTO `line_items` VALUES(194,31,NULL,'2016-07-02 19:06:27.669165','2016-07-02 19:14:47.109391',1,48,NULL);
INSERT INTO `line_items` VALUES(196,57,1069,'2016-07-12 00:47:42.317798','2016-07-12 00:47:42.317798',1,NULL,NULL);
INSERT INTO `line_items` VALUES(197,83,NULL,'2016-07-12 23:43:57.691319','2016-07-12 23:52:12.360651',1,49,NULL);
INSERT INTO `line_items` VALUES(201,3,NULL,'2016-07-16 18:26:30.159192','2016-07-16 18:35:52.578264',1,50,NULL);
INSERT INTO `line_items` VALUES(205,84,NULL,'2016-07-21 14:46:50.313547','2016-07-21 14:49:39.439993',1,51,NULL);
INSERT INTO `line_items` VALUES(206,57,947,'2016-07-21 22:19:52.224096','2016-07-21 22:19:52.224096',1,NULL,NULL);
INSERT INTO `line_items` VALUES(207,31,NULL,'2016-07-30 14:38:55.961839','2016-07-30 14:42:04.394845',1,52,NULL);
INSERT INTO `line_items` VALUES(210,3,1703,'2016-08-02 09:33:02.907430','2016-08-02 09:33:02.907430',1,NULL,NULL);
INSERT INTO `line_items` VALUES(211,104,NULL,'2016-08-04 06:09:11.170589','2016-08-10 02:39:27.096847',1,56,NULL);
INSERT INTO `line_items` VALUES(212,78,NULL,'2016-08-04 11:54:27.920878','2016-08-04 11:58:50.415558',1,53,NULL);
INSERT INTO `line_items` VALUES(213,101,1717,'2016-08-06 10:39:37.081221','2016-08-06 10:39:37.081221',1,NULL,NULL);
INSERT INTO `line_items` VALUES(214,11,1718,'2016-08-06 10:40:49.367005','2016-08-06 10:40:49.367005',1,NULL,NULL);
INSERT INTO `line_items` VALUES(215,27,1722,'2016-08-06 14:08:24.222877','2016-08-06 14:08:24.222877',1,NULL,NULL);
INSERT INTO `line_items` VALUES(216,104,1729,'2016-08-06 22:13:04.699974','2016-08-06 22:13:04.699974',1,NULL,NULL);
INSERT INTO `line_items` VALUES(217,27,1729,'2016-08-06 22:13:13.357266','2016-08-06 22:13:13.357266',1,NULL,NULL);
INSERT INTO `line_items` VALUES(218,28,1729,'2016-08-06 22:13:23.293759','2016-08-06 22:13:23.293759',1,NULL,NULL);
INSERT INTO `line_items` VALUES(219,58,1730,'2016-08-06 22:15:29.364690','2016-08-06 22:15:29.364690',1,NULL,NULL);
INSERT INTO `line_items` VALUES(220,98,1731,'2016-08-06 22:17:05.726060','2016-08-06 22:17:05.726060',1,NULL,NULL);
INSERT INTO `line_items` VALUES(221,94,1325,'2016-08-07 23:52:20.266461','2016-08-07 23:52:20.266461',1,NULL,NULL);
INSERT INTO `line_items` VALUES(222,31,NULL,'2016-08-08 07:52:07.552449','2016-08-08 08:05:42.069471',1,54,NULL);
INSERT INTO `line_items` VALUES(224,75,NULL,'2016-08-08 13:45:32.790678','2016-08-08 13:48:50.590704',1,55,NULL);
INSERT INTO `line_items` VALUES(226,38,1769,'2016-08-09 15:03:51.035131','2016-08-09 15:03:51.035131',1,NULL,NULL);
INSERT INTO `line_items` VALUES(227,39,1769,'2016-08-09 15:04:02.192784','2016-08-09 15:04:02.192784',1,NULL,NULL);
INSERT INTO `line_items` VALUES(229,58,NULL,'2016-08-12 18:47:06.031168','2016-08-12 19:10:19.505218',1,57,NULL);
INSERT INTO `line_items` VALUES(230,45,NULL,'2016-08-15 20:46:53.639548','2016-08-15 20:51:44.188395',1,58,NULL);
INSERT INTO `line_items` VALUES(235,41,NULL,'2016-08-16 00:27:55.313034','2016-08-16 00:33:10.185056',3,60,NULL);
INSERT INTO `line_items` VALUES(236,44,NULL,'2016-08-16 00:27:58.319135','2016-08-16 00:33:10.186661',3,60,NULL);
INSERT INTO `line_items` VALUES(237,48,NULL,'2016-08-16 00:31:12.376303','2016-08-16 00:32:04.014551',1,59,NULL);
INSERT INTO `line_items` VALUES(238,49,NULL,'2016-08-16 00:31:16.117238','2016-08-16 00:32:04.016216',1,59,NULL);
INSERT INTO `line_items` VALUES(239,65,NULL,'2016-08-16 00:31:21.894864','2016-08-16 00:32:04.017699',1,59,NULL);
INSERT INTO `line_items` VALUES(240,103,NULL,'2016-08-16 09:01:05.087105','2016-08-16 09:08:38.634624',1,61,NULL);
INSERT INTO `line_items` VALUES(241,3,NULL,'2016-08-16 09:11:11.679982','2016-08-16 09:18:30.615126',1,62,NULL);
INSERT INTO `line_items` VALUES(245,83,NULL,'2016-08-16 14:39:55.358792','2016-08-16 14:41:03.710293',1,63,NULL);
INSERT INTO `line_items` VALUES(246,83,1834,'2016-08-16 14:52:50.551420','2016-08-16 14:52:50.551420',1,NULL,NULL);
INSERT INTO `line_items` VALUES(247,98,NULL,'2016-08-17 00:06:52.594307','2016-08-17 00:09:30.838071',1,64,NULL);
INSERT INTO `line_items` VALUES(249,31,NULL,'2016-08-19 05:42:28.710419','2016-08-19 05:43:55.614372',1,65,NULL);
INSERT INTO `line_items` VALUES(252,104,1894,'2016-08-20 08:39:28.787201','2016-09-16 11:11:33.582428',2,NULL,NULL);
INSERT INTO `line_items` VALUES(261,105,NULL,'2016-08-21 09:08:42.894350','2016-08-21 13:44:17.380374',1,66,NULL);
INSERT INTO `line_items` VALUES(262,28,1922,'2016-08-22 02:09:39.999709','2016-08-22 02:09:39.999709',1,NULL,NULL);
INSERT INTO `line_items` VALUES(263,74,1924,'2016-08-22 02:12:55.205057','2016-08-22 02:12:55.205057',1,NULL,NULL);
INSERT INTO `line_items` VALUES(264,38,1925,'2016-08-22 02:13:22.093561','2016-08-22 02:13:22.093561',1,NULL,NULL);
INSERT INTO `line_items` VALUES(265,3,1926,'2016-08-22 02:13:55.246555','2016-08-22 02:13:55.246555',1,NULL,NULL);
INSERT INTO `line_items` VALUES(266,56,1927,'2016-08-22 02:14:59.248223','2016-08-22 02:14:59.248223',1,NULL,NULL);
INSERT INTO `line_items` VALUES(268,105,NULL,'2016-08-22 17:20:43.252425','2016-08-23 01:57:51.220822',1,67,NULL);
INSERT INTO `line_items` VALUES(269,106,1936,'2016-08-24 07:49:20.790068','2016-08-24 07:49:20.790068',1,NULL,NULL);
INSERT INTO `line_items` VALUES(270,45,1949,'2016-08-26 00:37:11.568884','2016-08-26 00:37:11.568884',1,NULL,NULL);
INSERT INTO `line_items` VALUES(273,97,NULL,'2016-08-26 01:09:52.210428','2016-08-26 01:14:04.530494',1,68,NULL);
INSERT INTO `line_items` VALUES(279,105,1967,'2016-08-27 09:44:52.940729','2016-08-27 09:44:52.940729',1,NULL,NULL);
INSERT INTO `line_items` VALUES(280,83,1969,'2016-08-27 09:48:35.636653','2016-08-27 09:48:35.636653',1,NULL,NULL);
INSERT INTO `line_items` VALUES(282,30,1977,'2016-08-29 00:56:51.740145','2016-08-29 00:59:28.042955',5,NULL,NULL);
INSERT INTO `line_items` VALUES(284,45,1996,'2016-08-30 06:05:54.456913','2016-08-30 06:05:54.456913',1,NULL,NULL);
INSERT INTO `line_items` VALUES(286,31,NULL,'2016-08-30 16:44:10.692639','2016-08-30 16:47:55.597446',1,70,NULL);
INSERT INTO `line_items` VALUES(287,103,2012,'2016-09-01 13:09:40.212667','2016-09-01 13:10:05.684744',4,NULL,NULL);
INSERT INTO `line_items` VALUES(289,83,NULL,'2016-09-02 08:38:44.102051','2016-09-02 08:41:31.988270',1,71,NULL);
INSERT INTO `line_items` VALUES(290,25,2019,'2016-09-02 08:45:16.551749','2016-09-02 08:45:16.551749',1,NULL,NULL);
INSERT INTO `line_items` VALUES(293,105,NULL,'2016-09-04 07:45:12.243280','2016-09-04 07:53:11.400645',1,72,NULL);
INSERT INTO `line_items` VALUES(294,98,NULL,'2016-09-04 07:59:11.268303','2016-09-04 08:01:26.165837',1,73,NULL);
INSERT INTO `line_items` VALUES(295,45,NULL,'2016-09-04 13:07:22.323670','2016-09-04 13:09:38.866258',1,74,NULL);
INSERT INTO `line_items` VALUES(297,92,NULL,'2016-09-05 09:04:06.906033','2016-09-05 09:20:37.601555',1,75,NULL);
INSERT INTO `line_items` VALUES(301,29,1057,'2016-09-06 12:15:33.312625','2016-09-06 12:15:33.312625',1,NULL,NULL);
INSERT INTO `line_items` VALUES(302,56,1057,'2016-09-06 12:16:09.840602','2016-09-06 12:16:09.840602',1,NULL,NULL);
INSERT INTO `line_items` VALUES(303,106,2073,'2016-09-07 00:19:58.687765','2016-09-07 00:20:13.460174',3,NULL,NULL);
INSERT INTO `line_items` VALUES(306,83,NULL,'2016-09-12 13:32:50.749611','2016-09-12 13:35:30.000740',1,76,NULL);
INSERT INTO `line_items` VALUES(307,105,NULL,'2016-09-13 11:05:11.325786','2016-09-13 11:08:35.376541',1,77,NULL);
INSERT INTO `line_items` VALUES(308,31,NULL,'2016-09-13 11:11:49.469116','2016-09-13 11:13:29.991455',1,78,NULL);
INSERT INTO `line_items` VALUES(309,98,NULL,'2016-09-13 11:12:05.510048','2016-09-13 11:13:29.993199',1,78,NULL);
INSERT INTO `line_items` VALUES(312,92,2140,'2016-09-16 03:17:15.573145','2016-09-16 03:17:15.573145',1,NULL,NULL);
INSERT INTO `line_items` VALUES(315,98,NULL,'2016-09-19 22:17:57.321319','2016-09-20 01:01:39.754551',1,79,NULL);
INSERT INTO `line_items` VALUES(316,31,2169,'2016-09-22 12:20:08.604773','2016-09-22 12:20:08.604773',1,NULL,NULL);
INSERT INTO `line_items` VALUES(317,45,NULL,'2016-09-22 14:04:16.144891','2016-09-22 16:18:45.395122',1,80,NULL);
INSERT INTO `line_items` VALUES(318,38,2174,'2016-09-22 19:43:24.454329','2016-09-22 19:43:24.454329',1,NULL,NULL);
INSERT INTO `line_items` VALUES(319,31,NULL,'2016-09-25 08:19:59.601190','2016-09-25 08:22:43.141277',1,81,NULL);
INSERT INTO `line_items` VALUES(321,83,NULL,'2016-09-26 13:40:31.354690','2016-09-26 13:45:11.797255',1,82,NULL);
INSERT INTO `line_items` VALUES(323,45,NULL,'2016-09-29 04:25:50.188566','2016-09-29 04:35:07.109237',1,83,NULL);
INSERT INTO `line_items` VALUES(324,4,2211,'2016-09-29 13:29:03.839233','2016-09-29 13:37:10.382643',3,NULL,NULL);
INSERT INTO `line_items` VALUES(325,27,2211,'2016-09-29 13:29:27.167554','2016-09-29 13:29:27.167554',1,NULL,NULL);
INSERT INTO `line_items` VALUES(326,104,2211,'2016-09-29 13:31:44.483666','2016-09-29 13:31:44.483666',1,NULL,NULL);
INSERT INTO `line_items` VALUES(327,41,2213,'2016-09-29 13:34:39.331480','2016-09-29 13:34:39.331480',1,NULL,NULL);
INSERT INTO `line_items` VALUES(328,3,2213,'2016-09-29 13:34:59.750137','2016-09-29 13:34:59.750137',1,NULL,NULL);
INSERT INTO `line_items` VALUES(329,108,NULL,'2016-10-01 08:28:10.675443','2016-10-01 08:31:30.155670',1,84,NULL);
INSERT INTO `line_items` VALUES(330,83,2228,'2016-10-03 00:57:42.336990','2016-10-03 00:57:42.336990',1,NULL,NULL);
INSERT INTO `line_items` VALUES(333,30,2250,'2016-10-04 09:06:48.600458','2016-10-04 09:07:00.670328',3,NULL,NULL);
INSERT INTO `line_items` VALUES(334,92,2253,'2016-10-04 09:13:34.835336','2016-10-04 09:13:34.835336',1,NULL,NULL);
INSERT INTO `line_items` VALUES(335,9,2251,'2016-10-04 09:16:23.902395','2016-10-04 09:16:23.902395',1,NULL,NULL);
INSERT INTO `line_items` VALUES(336,9,2132,'2016-10-04 14:24:55.600429','2016-10-04 14:24:55.600429',1,NULL,NULL);
INSERT INTO `line_items` VALUES(337,92,NULL,'2016-10-05 14:01:46.755709','2016-10-05 14:09:27.929367',1,85,NULL);
INSERT INTO `line_items` VALUES(339,104,NULL,'2016-10-06 16:19:41.843713','2016-10-06 16:37:08.770188',1,86,NULL);
INSERT INTO `line_items` VALUES(341,113,2271,'2016-10-07 02:13:22.566953','2016-10-07 02:13:22.566953',1,NULL,NULL);
INSERT INTO `line_items` VALUES(342,45,NULL,'2016-10-09 17:46:52.177983','2016-10-09 17:50:32.062826',1,87,NULL);
INSERT INTO `line_items` VALUES(346,117,NULL,'2016-10-10 08:54:21.122698','2016-10-10 08:58:27.240741',1,88,NULL);
INSERT INTO `line_items` VALUES(347,80,1516,'2016-10-10 13:40:43.454774','2016-10-10 13:40:43.454774',1,NULL,NULL);
INSERT INTO `line_items` VALUES(348,117,NULL,'2016-10-11 02:22:44.654117','2016-10-11 02:24:42.560356',1,89,NULL);
INSERT INTO `line_items` VALUES(349,4,NULL,'2016-10-11 06:37:45.093005','2016-10-11 06:42:24.022597',2,90,NULL);
INSERT INTO `line_items` VALUES(351,83,NULL,'2016-10-13 01:07:25.028969','2016-10-13 01:13:33.768243',1,91,NULL);
INSERT INTO `line_items` VALUES(354,9,2328,'2016-10-15 19:49:51.820227','2016-10-15 19:49:51.820227',1,NULL,NULL);
INSERT INTO `line_items` VALUES(355,41,NULL,'2016-10-15 19:50:56.190249','2016-10-15 19:54:57.502580',1,92,NULL);
INSERT INTO `line_items` VALUES(356,44,NULL,'2016-10-15 19:51:08.698888','2016-10-15 19:54:57.504380',2,92,NULL);
INSERT INTO `line_items` VALUES(358,98,2334,'2016-10-18 13:08:10.235608','2016-10-18 13:08:10.235608',1,NULL,NULL);
INSERT INTO `line_items` VALUES(359,30,2339,'2016-10-19 15:31:12.954130','2016-10-19 15:31:12.954130',1,NULL,NULL);
INSERT INTO `line_items` VALUES(360,30,2342,'2016-10-19 15:59:01.061726','2016-10-19 15:59:01.061726',1,NULL,NULL);
INSERT INTO `line_items` VALUES(361,45,NULL,'2016-10-19 16:04:44.982749','2016-10-19 16:10:17.157891',1,93,NULL);
INSERT INTO `line_items` VALUES(363,25,2350,'2016-10-21 13:15:14.260442','2016-10-21 13:15:14.260442',1,NULL,NULL);
INSERT INTO `line_items` VALUES(364,28,2004,'2016-10-21 13:28:20.279554','2016-10-21 13:28:20.279554',1,NULL,NULL);
INSERT INTO `line_items` VALUES(368,12,NULL,'2016-10-29 22:37:54.978487','2016-10-29 22:42:01.670336',1,94,NULL);
INSERT INTO `line_items` VALUES(369,74,NULL,'2016-10-29 23:05:28.126855','2016-10-29 23:28:15.147925',1,96,NULL);
INSERT INTO `line_items` VALUES(370,29,NULL,'2016-10-29 23:25:26.868882','2016-10-29 23:26:15.887243',1,95,NULL);
INSERT INTO `line_items` VALUES(372,31,NULL,'2016-10-30 14:13:20.722507','2016-10-30 14:15:16.593180',1,97,NULL);
INSERT INTO `line_items` VALUES(373,83,NULL,'2016-11-10 14:19:23.125322','2016-11-10 14:22:28.342545',1,98,NULL);
INSERT INTO `line_items` VALUES(374,29,NULL,'2016-11-16 09:22:38.507370','2016-11-16 09:28:09.432045',5,99,NULL);
INSERT INTO `line_items` VALUES(378,39,2390,'2016-11-23 14:30:41.914607','2016-11-23 14:30:41.914607',1,NULL,NULL);
INSERT INTO `line_items` VALUES(379,102,2391,'2016-11-23 14:31:45.140551','2016-11-23 14:31:45.140551',1,NULL,NULL);
INSERT INTO `line_items` VALUES(380,41,2391,'2016-11-23 14:32:09.816390','2016-11-23 14:32:09.816390',1,NULL,NULL);
INSERT INTO `line_items` VALUES(381,90,2394,'2016-11-23 14:41:40.490229','2016-11-23 14:41:40.490229',1,NULL,NULL);
INSERT INTO `line_items` VALUES(382,121,2396,'2016-11-23 14:43:46.998559','2016-11-23 14:43:46.998559',1,NULL,NULL);
INSERT INTO `line_items` VALUES(384,12,NULL,'2016-11-26 03:38:22.691747','2016-11-26 03:43:06.260032',1,100,NULL);
INSERT INTO `line_items` VALUES(385,27,2408,'2016-11-26 03:39:26.605407','2016-11-26 03:39:26.605407',1,NULL,NULL);
INSERT INTO `line_items` VALUES(387,121,2416,'2016-12-04 00:12:50.102804','2016-12-04 00:12:50.102804',1,NULL,NULL);
INSERT INTO `line_items` VALUES(388,28,2418,'2016-12-07 10:11:32.049529','2016-12-07 10:11:45.356383',2,NULL,NULL);
INSERT INTO `line_items` VALUES(390,90,2439,'2016-12-22 06:02:15.006216','2016-12-22 06:02:15.006216',1,NULL,NULL);
INSERT INTO `line_items` VALUES(391,41,2442,'2017-01-05 11:39:35.308407','2017-01-05 11:40:00.356918',2,NULL,NULL);
INSERT INTO `line_items` VALUES(392,3,NULL,'2017-01-06 10:31:38.550876','2017-01-06 10:32:20.032612',1,101,NULL);
INSERT INTO `line_items` VALUES(394,121,2449,'2017-01-13 04:22:14.753513','2017-01-13 04:22:32.243335',2,NULL,NULL);
INSERT INTO `line_items` VALUES(398,12,1267,'2017-01-13 04:24:49.230499','2017-01-13 04:24:49.230499',1,NULL,NULL);
INSERT INTO `line_items` VALUES(399,13,NULL,'2017-01-14 22:01:58.567223','2017-01-15 05:40:08.181032',1,103,NULL);
INSERT INTO `line_items` VALUES(401,51,NULL,'2017-01-15 03:16:18.607314','2017-01-15 03:22:39.461413',1,102,NULL);
INSERT INTO `line_items` VALUES(402,11,2472,'2017-01-27 01:29:31.182820','2017-01-27 01:29:35.792476',3,NULL,NULL);
INSERT INTO `line_items` VALUES(403,122,2472,'2017-01-27 01:29:43.823543','2017-01-27 01:29:43.823543',1,NULL,NULL);
CREATE TABLE `tests` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `created_at` datetime, `updated_at` datetime);
CREATE TABLE `carts` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `created_at` datetime, `updated_at` datetime, `staff_member_id` integer, `customer_id` integer);
INSERT INTO `carts` VALUES(1,'2015-08-12 23:16:23.905113','2015-08-12 23:16:23.905113',4,2);
INSERT INTO `carts` VALUES(3,'2015-08-13 10:20:43.268616','2015-08-13 10:20:43.268616',4,1);
INSERT INTO `carts` VALUES(4,'2015-08-17 10:36:07.409336','2015-08-17 10:36:07.409336',2,1);
INSERT INTO `carts` VALUES(5,'2015-08-17 11:05:23.105066','2015-08-17 11:05:23.105066',6,2);
INSERT INTO `carts` VALUES(6,'2015-08-17 11:05:27.646703','2015-08-17 11:05:27.646703',7,2);
INSERT INTO `carts` VALUES(8,'2015-08-17 11:05:31.783472','2015-08-17 11:05:31.783472',3,2);
INSERT INTO `carts` VALUES(13,'2015-08-21 11:32:11.786796','2015-08-21 11:32:11.786796',6,4);
INSERT INTO `carts` VALUES(14,'2015-08-22 07:39:26.530044','2015-08-22 07:39:26.530044',6,1);
INSERT INTO `carts` VALUES(15,'2015-08-28 03:58:16.341604','2015-08-28 03:58:16.341604',4,5);
INSERT INTO `carts` VALUES(16,'2015-08-28 03:59:17.521879','2015-08-28 03:59:17.521879',7,5);
INSERT INTO `carts` VALUES(17,'2015-08-28 04:01:14.018589','2015-08-28 04:01:14.018589',5,5);
INSERT INTO `carts` VALUES(18,'2015-08-28 04:25:39.767702','2015-08-28 04:25:39.767702',9,2);
INSERT INTO `carts` VALUES(19,'2015-08-28 07:28:07.014185','2015-08-28 07:28:07.014185',5,6);
INSERT INTO `carts` VALUES(21,'2015-09-01 10:58:25.616174','2015-09-01 10:58:25.616174',11,2);
INSERT INTO `carts` VALUES(22,'2015-09-06 02:59:58.277060','2015-09-06 02:59:58.277060',10,2);
INSERT INTO `carts` VALUES(23,'2015-09-22 01:24:02.651138','2015-09-22 01:24:02.651138',14,2);
INSERT INTO `carts` VALUES(24,'2015-09-27 12:43:14.559366','2015-09-27 12:43:14.559366',15,11);
INSERT INTO `carts` VALUES(25,'2015-09-27 12:57:58.926059','2015-09-27 12:57:58.926059',15,12);
INSERT INTO `carts` VALUES(26,'2015-09-28 09:33:52.267914','2015-09-28 09:33:52.267914',15,2);
INSERT INTO `carts` VALUES(27,'2015-09-30 00:54:36.539264','2015-09-30 00:54:36.539264',15,13);
INSERT INTO `carts` VALUES(28,'2015-10-01 07:22:26.912784','2015-10-01 07:22:26.912784',15,6);
INSERT INTO `carts` VALUES(31,'2015-10-07 12:10:33.199387','2015-10-07 12:10:33.199387',2,15);
INSERT INTO `carts` VALUES(32,'2015-10-07 12:10:58.212894','2015-10-07 12:10:58.212894',11,15);
INSERT INTO `carts` VALUES(34,'2015-10-08 22:40:18.203510','2015-10-08 22:40:18.203510',15,5);
INSERT INTO `carts` VALUES(35,'2015-10-08 22:41:51.444178','2015-10-08 22:41:51.444178',11,5);
INSERT INTO `carts` VALUES(36,'2015-10-08 22:42:12.038231','2015-10-08 22:42:12.038231',10,5);
INSERT INTO `carts` VALUES(37,'2015-10-09 16:04:15.898783','2015-10-09 16:04:15.898783',15,16);
INSERT INTO `carts` VALUES(38,'2015-10-11 09:33:35.224194','2015-10-11 09:33:35.224194',15,17);
INSERT INTO `carts` VALUES(39,'2015-10-11 09:56:49.834038','2015-10-11 09:56:49.834038',6,17);
INSERT INTO `carts` VALUES(40,'2015-10-11 09:57:43.136916','2015-10-11 09:57:43.136916',8,17);
INSERT INTO `carts` VALUES(41,'2015-10-14 10:51:29.784399','2015-10-14 10:51:29.784399',17,2);
INSERT INTO `carts` VALUES(42,'2015-10-15 01:19:14.929022','2015-10-15 01:19:14.929022',11,18);
INSERT INTO `carts` VALUES(43,'2015-10-15 01:22:14.039546','2015-10-15 01:22:14.039546',7,18);
INSERT INTO `carts` VALUES(44,'2015-10-15 01:23:56.822289','2015-10-15 01:23:56.822289',4,18);
INSERT INTO `carts` VALUES(45,'2015-10-15 01:25:09.351327','2015-10-15 01:25:09.351327',8,18);
INSERT INTO `carts` VALUES(46,'2015-10-15 01:25:45.166724','2015-10-15 01:25:45.166724',6,18);
INSERT INTO `carts` VALUES(47,'2015-10-15 08:04:35.866846','2015-10-15 08:04:35.866846',13,2);
INSERT INTO `carts` VALUES(48,'2015-10-15 12:51:38.620205','2015-10-15 12:51:38.620205',15,10);
INSERT INTO `carts` VALUES(49,'2015-10-15 12:53:13.620671','2015-10-15 12:53:13.620671',9,10);
INSERT INTO `carts` VALUES(51,'2015-10-18 15:08:18.816466','2015-10-18 15:08:18.816466',1,19);
INSERT INTO `carts` VALUES(52,'2015-10-18 15:16:37.696150','2015-10-18 15:16:37.696150',15,19);
INSERT INTO `carts` VALUES(54,'2015-10-20 11:40:03.075171','2015-10-20 11:40:03.075171',15,20);
INSERT INTO `carts` VALUES(56,'2015-10-22 00:12:05.693756','2015-10-22 00:12:05.693756',1,6);
INSERT INTO `carts` VALUES(57,'2015-10-22 11:40:40.501772','2015-10-22 11:40:40.501772',1,5);
INSERT INTO `carts` VALUES(58,'2015-10-23 01:24:29.237459','2015-10-23 01:24:29.237459',1,2);
INSERT INTO `carts` VALUES(59,'2015-10-23 02:16:01.958851','2015-10-23 02:16:01.958851',1,11);
INSERT INTO `carts` VALUES(60,'2015-10-24 04:58:14.037193','2015-10-24 04:58:14.037193',19,2);
INSERT INTO `carts` VALUES(61,'2015-10-26 13:10:44.324350','2015-10-26 13:10:44.324350',2,23);
INSERT INTO `carts` VALUES(64,'2015-10-26 13:19:32.059795','2015-10-26 13:19:32.059795',15,24);
INSERT INTO `carts` VALUES(65,'2015-10-26 13:19:45.619812','2015-10-26 13:19:45.619812',1,24);
INSERT INTO `carts` VALUES(66,'2015-10-26 13:41:07.813864','2015-10-26 13:41:07.813864',2,24);
INSERT INTO `carts` VALUES(67,'2015-10-26 21:55:14.840352','2015-10-26 21:55:14.840352',2,25);
INSERT INTO `carts` VALUES(68,'2015-10-26 21:55:39.300294','2015-10-26 21:55:39.300294',15,25);
INSERT INTO `carts` VALUES(69,'2015-10-26 21:56:05.870928','2015-10-26 21:56:05.870928',1,25);
INSERT INTO `carts` VALUES(70,'2015-10-28 11:06:19.630218','2015-10-28 11:06:19.630218',1,26);
INSERT INTO `carts` VALUES(72,'2015-10-28 12:34:26.565127','2015-10-28 12:34:26.565127',2,22);
INSERT INTO `carts` VALUES(73,'2015-10-28 12:34:36.035136','2015-10-28 12:34:36.035136',15,22);
INSERT INTO `carts` VALUES(74,'2015-10-28 12:34:43.303472','2015-10-28 12:34:43.303472',19,22);
INSERT INTO `carts` VALUES(76,'2015-10-31 02:51:00.015426','2015-10-31 02:51:00.015426',2,2);
INSERT INTO `carts` VALUES(77,'2015-11-02 06:04:47.793720','2015-11-02 06:04:47.793720',8,27);
INSERT INTO `carts` VALUES(78,'2015-11-02 06:05:06.797153','2015-11-02 06:05:06.797153',2,27);
INSERT INTO `carts` VALUES(79,'2015-11-02 06:13:43.877537','2015-11-02 06:13:43.877537',19,27);
INSERT INTO `carts` VALUES(80,'2015-11-02 06:14:06.010353','2015-11-02 06:14:06.010353',15,27);
INSERT INTO `carts` VALUES(81,'2015-11-03 14:11:45.841669','2015-11-03 14:11:45.841669',19,25);
INSERT INTO `carts` VALUES(82,'2015-11-03 14:12:25.154207','2015-11-03 14:12:25.154207',8,25);
INSERT INTO `carts` VALUES(84,'2015-11-04 04:54:57.465998','2015-11-04 04:54:57.465998',2,28);
INSERT INTO `carts` VALUES(87,'2015-11-04 13:36:34.388783','2015-11-04 13:36:34.388783',NULL,NULL);
INSERT INTO `carts` VALUES(89,'2015-11-04 21:12:02.197806','2015-11-04 21:12:02.197806',8,29);
INSERT INTO `carts` VALUES(90,'2015-11-05 12:20:13.868151','2015-11-05 12:20:13.868151',6,30);
INSERT INTO `carts` VALUES(91,'2015-11-05 12:35:54.800542','2015-11-05 12:35:54.800542',15,28);
INSERT INTO `carts` VALUES(92,'2015-11-05 12:37:46.574479','2015-11-05 12:37:46.574479',15,30);
INSERT INTO `carts` VALUES(93,'2015-11-05 12:38:14.056195','2015-11-05 12:38:14.056195',13,30);
INSERT INTO `carts` VALUES(94,'2015-11-05 12:38:44.368729','2015-11-05 12:38:44.368729',19,28);
INSERT INTO `carts` VALUES(95,'2015-11-06 03:37:40.843015','2015-11-06 03:37:40.843015',2,5);
INSERT INTO `carts` VALUES(96,'2015-11-06 03:37:53.360043','2015-11-06 03:37:53.360043',8,5);
INSERT INTO `carts` VALUES(97,'2015-11-06 03:38:57.615404','2015-11-06 03:38:57.615404',19,5);
INSERT INTO `carts` VALUES(98,'2015-11-06 05:08:33.282750','2015-11-06 05:08:33.282750',15,31);
INSERT INTO `carts` VALUES(99,'2015-11-06 05:09:24.508513','2015-11-06 05:09:24.508513',19,31);
INSERT INTO `carts` VALUES(101,'2015-11-06 14:05:53.088984','2015-11-06 14:05:53.088984',9,5);
INSERT INTO `carts` VALUES(103,'2015-11-08 08:50:37.273191','2015-11-08 08:50:37.273191',5,23);
INSERT INTO `carts` VALUES(104,'2015-11-09 03:56:33.608098','2015-11-09 03:56:33.608098',2,6);
INSERT INTO `carts` VALUES(105,'2015-11-09 15:16:31.980021','2015-11-09 15:16:31.980021',1,32);
INSERT INTO `carts` VALUES(106,'2015-11-10 01:56:37.625206','2015-11-10 01:56:37.625206',9,28);
INSERT INTO `carts` VALUES(107,'2015-11-10 06:25:44.372591','2015-11-10 06:25:44.372591',9,33);
INSERT INTO `carts` VALUES(108,'2015-11-10 06:26:27.072237','2015-11-10 06:26:27.072237',1,33);
INSERT INTO `carts` VALUES(109,'2015-11-10 06:28:15.047476','2015-11-10 06:28:15.047476',10,33);
INSERT INTO `carts` VALUES(110,'2015-11-10 06:29:40.830059','2015-11-10 06:29:40.830059',11,33);
INSERT INTO `carts` VALUES(111,'2015-11-10 06:30:19.410831','2015-11-10 06:30:19.410831',6,33);
INSERT INTO `carts` VALUES(112,'2015-11-10 06:45:06.959021','2015-11-10 06:45:06.959021',15,33);
INSERT INTO `carts` VALUES(113,'2015-11-10 06:46:46.321512','2015-11-10 06:46:46.321512',2,33);
INSERT INTO `carts` VALUES(114,'2015-11-10 06:48:20.111187','2015-11-10 06:48:20.111187',17,33);
INSERT INTO `carts` VALUES(115,'2015-11-10 06:49:30.217746','2015-11-10 06:49:30.217746',7,33);
INSERT INTO `carts` VALUES(116,'2015-11-10 06:50:21.976336','2015-11-10 06:50:21.976336',4,33);
INSERT INTO `carts` VALUES(117,'2015-11-10 06:50:43.089018','2015-11-10 06:50:43.089018',13,33);
INSERT INTO `carts` VALUES(118,'2015-11-11 05:34:47.349056','2015-11-11 05:34:47.349056',18,2);
INSERT INTO `carts` VALUES(124,'2015-11-12 09:43:21.521420','2015-11-12 09:43:21.521420',19,23);
INSERT INTO `carts` VALUES(127,'2015-11-12 14:02:24.706855','2015-11-12 14:02:24.706855',17,1);
INSERT INTO `carts` VALUES(129,'2015-11-12 23:43:11.062679','2015-11-12 23:43:11.062679',9,23);
INSERT INTO `carts` VALUES(130,'2015-11-13 23:20:16.828121','2015-11-13 23:20:16.828121',8,10);
INSERT INTO `carts` VALUES(131,'2015-11-13 23:20:57.342582','2015-11-13 23:20:57.342582',19,10);
INSERT INTO `carts` VALUES(132,'2015-11-13 23:21:33.199947','2015-11-13 23:21:33.199947',2,10);
INSERT INTO `carts` VALUES(133,'2015-11-13 23:21:36.979558','2015-11-13 23:21:36.979558',1,10);
INSERT INTO `carts` VALUES(134,'2015-11-13 23:49:03.084351','2015-11-13 23:49:03.084351',19,32);
INSERT INTO `carts` VALUES(135,'2015-11-14 06:29:56.036948','2015-11-14 06:29:56.036948',9,6);
INSERT INTO `carts` VALUES(136,'2015-11-14 06:40:52.942478','2015-11-14 06:40:52.942478',8,34);
INSERT INTO `carts` VALUES(137,'2015-11-14 06:41:21.553015','2015-11-14 06:41:21.553015',1,34);
INSERT INTO `carts` VALUES(138,'2015-11-14 06:41:46.429223','2015-11-14 06:41:46.429223',19,34);
INSERT INTO `carts` VALUES(139,'2015-11-14 06:42:26.186871','2015-11-14 06:42:26.186871',2,35);
INSERT INTO `carts` VALUES(140,'2015-11-14 06:42:35.007658','2015-11-14 06:42:35.007658',8,35);
INSERT INTO `carts` VALUES(141,'2015-11-14 06:42:43.697524','2015-11-14 06:42:43.697524',9,34);
INSERT INTO `carts` VALUES(142,'2015-11-14 06:42:53.661940','2015-11-14 06:42:53.661940',9,35);
INSERT INTO `carts` VALUES(143,'2015-11-14 06:43:03.710239','2015-11-14 06:43:03.710239',15,35);
INSERT INTO `carts` VALUES(144,'2015-11-14 06:43:09.562387','2015-11-14 06:43:09.562387',19,35);
INSERT INTO `carts` VALUES(145,'2015-11-14 06:43:42.039711','2015-11-14 06:43:42.039711',15,34);
INSERT INTO `carts` VALUES(146,'2015-11-15 15:05:00.918973','2015-11-15 15:05:00.918973',8,24);
INSERT INTO `carts` VALUES(147,'2015-11-15 15:05:20.200396','2015-11-15 15:05:20.200396',9,24);
INSERT INTO `carts` VALUES(148,'2015-11-15 15:05:34.769180','2015-11-15 15:05:34.769180',19,24);
INSERT INTO `carts` VALUES(149,'2015-11-16 01:44:34.552265','2015-11-16 01:44:34.552265',8,2);
INSERT INTO `carts` VALUES(151,'2015-11-18 12:47:51.503794','2015-11-18 12:47:51.503794',9,11);
INSERT INTO `carts` VALUES(152,'2015-11-18 12:48:01.670222','2015-11-18 12:48:01.670222',8,11);
INSERT INTO `carts` VALUES(153,'2015-11-18 12:48:10.687660','2015-11-18 12:48:10.687660',2,11);
INSERT INTO `carts` VALUES(154,'2015-11-18 12:48:17.097333','2015-11-18 12:48:17.097333',19,11);
INSERT INTO `carts` VALUES(156,'2015-11-19 00:58:44.549419','2015-11-19 00:58:44.549419',9,36);
INSERT INTO `carts` VALUES(157,'2015-11-20 12:50:51.486406','2015-11-20 12:50:51.486406',8,37);
INSERT INTO `carts` VALUES(158,'2015-11-21 08:19:10.736150','2015-11-21 08:19:10.736150',8,39);
INSERT INTO `carts` VALUES(159,'2015-11-23 06:12:59.566711','2015-11-23 06:12:59.566711',2,40);
INSERT INTO `carts` VALUES(160,'2015-11-24 06:07:42.256493','2015-11-24 06:07:42.256493',8,9);
INSERT INTO `carts` VALUES(161,'2015-11-25 03:47:35.400749','2015-11-25 03:47:35.400749',2,41);
INSERT INTO `carts` VALUES(162,'2015-11-25 03:48:12.463009','2015-11-25 03:48:12.463009',8,41);
INSERT INTO `carts` VALUES(163,'2015-11-25 03:50:09.990388','2015-11-25 03:50:09.990388',15,41);
INSERT INTO `carts` VALUES(164,'2015-11-25 03:50:34.161496','2015-11-25 03:50:34.161496',19,41);
INSERT INTO `carts` VALUES(166,'2015-11-30 03:47:47.564173','2015-11-30 03:47:47.564173',15,42);
INSERT INTO `carts` VALUES(167,'2015-11-30 03:47:51.565022','2015-11-30 03:47:51.565022',19,42);
INSERT INTO `carts` VALUES(168,'2015-11-30 03:48:20.013430','2015-11-30 03:48:20.013430',1,42);
INSERT INTO `carts` VALUES(169,'2015-11-30 03:48:54.562777','2015-11-30 03:48:54.562777',2,42);
INSERT INTO `carts` VALUES(170,'2015-11-30 07:55:12.644761','2015-11-30 07:55:12.644761',9,42);
INSERT INTO `carts` VALUES(171,'2015-11-30 07:55:22.657735','2015-11-30 07:55:22.657735',8,42);
INSERT INTO `carts` VALUES(174,'2015-12-01 22:37:55.858908','2015-12-01 22:37:55.858908',14,28);
INSERT INTO `carts` VALUES(175,'2015-12-03 10:03:48.490791','2015-12-03 10:03:48.490791',9,1);
INSERT INTO `carts` VALUES(176,'2015-12-03 10:13:13.011653','2015-12-03 10:13:13.011653',21,1);
INSERT INTO `carts` VALUES(177,'2015-12-04 00:51:37.449253','2015-12-04 00:51:37.449253',9,22);
INSERT INTO `carts` VALUES(178,'2015-12-04 00:55:46.657587','2015-12-04 00:55:46.657587',1,22);
INSERT INTO `carts` VALUES(179,'2015-12-04 05:34:08.233933','2015-12-04 05:34:08.233933',2,45);
INSERT INTO `carts` VALUES(180,'2015-12-04 05:35:26.414433','2015-12-04 05:35:26.414433',15,45);
INSERT INTO `carts` VALUES(181,'2015-12-04 05:36:49.072682','2015-12-04 05:36:49.072682',8,45);
INSERT INTO `carts` VALUES(182,'2015-12-04 12:10:23.760069','2015-12-04 12:10:23.760069',2,46);
INSERT INTO `carts` VALUES(183,'2015-12-04 12:10:38.938806','2015-12-04 12:10:38.938806',8,46);
INSERT INTO `carts` VALUES(184,'2015-12-04 12:11:02.904468','2015-12-04 12:11:02.904468',19,46);
INSERT INTO `carts` VALUES(185,'2015-12-04 12:16:45.032010','2015-12-04 12:16:45.032010',18,46);
INSERT INTO `carts` VALUES(186,'2015-12-04 12:55:12.813296','2015-12-04 12:55:12.813296',14,5);
INSERT INTO `carts` VALUES(187,'2015-12-04 13:02:35.361977','2015-12-04 13:02:35.361977',21,5);
INSERT INTO `carts` VALUES(188,'2015-12-07 10:26:32.202127','2015-12-07 10:26:32.202127',11,50);
INSERT INTO `carts` VALUES(189,'2015-12-07 10:27:45.743052','2015-12-07 10:27:45.743052',4,50);
INSERT INTO `carts` VALUES(190,'2015-12-07 10:30:00.109738','2015-12-07 10:30:00.109738',9,50);
INSERT INTO `carts` VALUES(191,'2015-12-08 10:28:54.448370','2015-12-08 10:28:54.448370',1,48);
INSERT INTO `carts` VALUES(192,'2015-12-08 13:59:08.181817','2015-12-08 13:59:08.181817',2,48);
INSERT INTO `carts` VALUES(194,'2015-12-11 04:23:21.881621','2015-12-11 04:23:21.881621',1,9);
INSERT INTO `carts` VALUES(195,'2015-12-12 05:29:48.349691','2015-12-12 05:29:48.349691',9,9);
INSERT INTO `carts` VALUES(196,'2015-12-12 05:30:35.737022','2015-12-12 05:30:35.737022',2,9);
INSERT INTO `carts` VALUES(197,'2015-12-12 05:33:15.522399','2015-12-12 05:33:15.522399',19,9);
INSERT INTO `carts` VALUES(198,'2015-12-12 05:33:59.256955','2015-12-12 05:33:59.256955',15,9);
INSERT INTO `carts` VALUES(199,'2015-12-14 13:12:12.684271','2015-12-14 13:12:12.684271',1,53);
INSERT INTO `carts` VALUES(200,'2015-12-14 13:53:36.483429','2015-12-14 13:53:36.483429',21,53);
INSERT INTO `carts` VALUES(201,'2015-12-14 13:54:29.520841','2015-12-14 13:54:29.520841',7,53);
INSERT INTO `carts` VALUES(202,'2015-12-14 13:55:15.905160','2015-12-14 13:55:15.905160',17,53);
INSERT INTO `carts` VALUES(203,'2015-12-18 11:39:39.317597','2015-12-18 11:39:39.317597',10,22);
INSERT INTO `carts` VALUES(204,'2015-12-21 05:51:09.094013','2015-12-21 05:51:09.094013',8,57);
INSERT INTO `carts` VALUES(205,'2015-12-21 16:33:48.292503','2015-12-21 16:33:48.292503',2,59);
INSERT INTO `carts` VALUES(207,'2015-12-25 17:05:02.536145','2015-12-25 17:05:02.536145',1,59);
INSERT INTO `carts` VALUES(208,'2015-12-26 23:23:05.101074','2015-12-26 23:23:05.101074',24,63);
INSERT INTO `carts` VALUES(209,'2015-12-29 07:36:04.194446','2015-12-29 07:36:04.194446',15,64);
INSERT INTO `carts` VALUES(210,'2015-12-29 07:36:18.958704','2015-12-29 07:36:18.958704',8,64);
INSERT INTO `carts` VALUES(211,'2015-12-29 07:36:43.812228','2015-12-29 07:36:43.812228',1,64);
INSERT INTO `carts` VALUES(212,'2015-12-31 11:47:10.301016','2015-12-31 11:47:10.301016',1,67);
INSERT INTO `carts` VALUES(213,'2015-12-31 11:47:47.114663','2015-12-31 11:47:47.114663',2,67);
INSERT INTO `carts` VALUES(214,'2015-12-31 11:47:52.264345','2015-12-31 11:47:52.264345',8,67);
INSERT INTO `carts` VALUES(216,'2015-12-31 11:48:46.189742','2015-12-31 11:48:46.189742',19,67);
INSERT INTO `carts` VALUES(217,'2015-12-31 11:57:52.860141','2015-12-31 11:57:52.860141',17,67);
INSERT INTO `carts` VALUES(218,'2015-12-31 13:55:38.575292','2015-12-31 13:55:38.575292',13,69);
INSERT INTO `carts` VALUES(219,'2015-12-31 16:10:00.121530','2015-12-31 16:10:00.121530',11,73);
INSERT INTO `carts` VALUES(220,'2015-12-31 16:15:16.897582','2015-12-31 16:15:16.897582',8,73);
INSERT INTO `carts` VALUES(221,'2015-12-31 20:37:25.621201','2015-12-31 20:37:25.621201',2,75);
INSERT INTO `carts` VALUES(222,'2016-01-01 11:42:54.969442','2016-01-01 11:42:54.969442',8,78);
INSERT INTO `carts` VALUES(223,'2016-01-01 11:43:08.794209','2016-01-01 11:43:08.794209',15,78);
INSERT INTO `carts` VALUES(224,'2016-01-01 11:43:14.248530','2016-01-01 11:43:14.248530',1,78);
INSERT INTO `carts` VALUES(225,'2016-01-01 11:43:31.876667','2016-01-01 11:43:31.876667',2,78);
INSERT INTO `carts` VALUES(226,'2016-01-01 16:07:18.710941','2016-01-01 16:07:18.710941',1,80);
INSERT INTO `carts` VALUES(227,'2016-01-01 16:46:42.583550','2016-01-01 16:46:42.583550',1,79);
INSERT INTO `carts` VALUES(228,'2016-01-01 16:47:59.683191','2016-01-01 16:47:59.683191',2,79);
INSERT INTO `carts` VALUES(230,'2016-01-02 13:33:14.828715','2016-01-02 13:33:14.828715',1,88);
INSERT INTO `carts` VALUES(231,'2016-01-02 13:34:07.042382','2016-01-02 13:34:07.042382',8,88);
INSERT INTO `carts` VALUES(232,'2016-01-02 13:34:27.662939','2016-01-02 13:34:27.662939',19,88);
INSERT INTO `carts` VALUES(233,'2016-01-02 13:34:45.299973','2016-01-02 13:34:45.299973',15,88);
INSERT INTO `carts` VALUES(234,'2016-01-02 13:35:58.327605','2016-01-02 13:35:58.327605',2,88);
INSERT INTO `carts` VALUES(235,'2016-01-03 07:22:22.303183','2016-01-03 07:22:22.303183',1,89);
INSERT INTO `carts` VALUES(236,'2016-01-03 07:23:40.074339','2016-01-03 07:23:40.074339',2,89);
INSERT INTO `carts` VALUES(237,'2016-01-03 07:26:18.260387','2016-01-03 07:26:18.260387',8,89);
INSERT INTO `carts` VALUES(238,'2016-01-04 01:40:29.987847','2016-01-04 01:40:29.987847',1,95);
INSERT INTO `carts` VALUES(239,'2016-01-04 04:24:05.651587','2016-01-04 04:24:05.651587',1,92);
INSERT INTO `carts` VALUES(240,'2016-01-04 06:52:52.913516','2016-01-04 06:52:52.913516',1,98);
INSERT INTO `carts` VALUES(241,'2016-01-04 06:53:53.088157','2016-01-04 06:53:53.088157',2,98);
INSERT INTO `carts` VALUES(242,'2016-01-04 06:56:17.617964','2016-01-04 06:56:17.617964',8,98);
INSERT INTO `carts` VALUES(243,'2016-01-04 06:56:34.164269','2016-01-04 06:56:34.164269',15,98);
INSERT INTO `carts` VALUES(244,'2016-01-04 06:56:54.238321','2016-01-04 06:56:54.238321',19,98);
INSERT INTO `carts` VALUES(245,'2016-01-04 07:22:11.647475','2016-01-04 07:22:11.647475',18,98);
INSERT INTO `carts` VALUES(246,'2016-01-04 08:17:13.320390','2016-01-04 08:17:13.320390',24,97);
INSERT INTO `carts` VALUES(247,'2016-01-04 08:18:56.539783','2016-01-04 08:18:56.539783',15,97);
INSERT INTO `carts` VALUES(248,'2016-01-04 08:22:02.155422','2016-01-04 08:22:02.155422',8,97);
INSERT INTO `carts` VALUES(249,'2016-01-04 08:23:19.490151','2016-01-04 08:23:19.490151',2,97);
INSERT INTO `carts` VALUES(250,'2016-01-04 08:23:27.010331','2016-01-04 08:23:27.010331',1,97);
INSERT INTO `carts` VALUES(251,'2016-01-04 08:23:56.586489','2016-01-04 08:23:56.586489',19,97);
INSERT INTO `carts` VALUES(252,'2016-01-06 02:09:23.262215','2016-01-06 02:09:23.262215',19,99);
INSERT INTO `carts` VALUES(253,'2016-01-06 02:11:29.389219','2016-01-06 02:11:29.389219',1,99);
INSERT INTO `carts` VALUES(254,'2016-01-06 02:11:52.017583','2016-01-06 02:11:52.017583',2,99);
INSERT INTO `carts` VALUES(255,'2016-01-06 02:11:57.660751','2016-01-06 02:11:57.660751',8,99);
INSERT INTO `carts` VALUES(256,'2016-01-06 02:12:13.086033','2016-01-06 02:12:13.086033',12,99);
INSERT INTO `carts` VALUES(257,'2016-01-06 02:12:17.457925','2016-01-06 02:12:17.457925',15,99);
INSERT INTO `carts` VALUES(258,'2016-01-06 03:47:13.709145','2016-01-06 03:47:13.709145',12,24);
INSERT INTO `carts` VALUES(260,'2016-01-09 15:50:27.548554','2016-01-09 15:50:27.548554',15,92);
INSERT INTO `carts` VALUES(261,'2016-01-10 18:04:00.083150','2016-01-10 18:04:00.083150',21,101);
INSERT INTO `carts` VALUES(262,'2016-01-13 01:12:30.316021','2016-01-13 01:12:30.316021',12,42);
INSERT INTO `carts` VALUES(263,'2016-01-13 06:12:27.100874','2016-01-13 06:12:27.100874',2,104);
INSERT INTO `carts` VALUES(265,'2016-01-13 06:14:16.638089','2016-01-13 06:14:16.638089',8,105);
INSERT INTO `carts` VALUES(266,'2016-01-14 22:50:07.280376','2016-01-14 22:50:07.280376',1,106);
INSERT INTO `carts` VALUES(267,'2016-01-15 01:39:58.428772','2016-01-15 01:39:58.428772',1,107);
INSERT INTO `carts` VALUES(268,'2016-01-15 01:40:13.027065','2016-01-15 01:40:13.027065',2,107);
INSERT INTO `carts` VALUES(269,'2016-01-15 01:40:19.056271','2016-01-15 01:40:19.056271',8,107);
INSERT INTO `carts` VALUES(270,'2016-01-15 01:40:23.589223','2016-01-15 01:40:23.589223',12,107);
INSERT INTO `carts` VALUES(271,'2016-01-15 01:40:26.430335','2016-01-15 01:40:26.430335',15,107);
INSERT INTO `carts` VALUES(272,'2016-01-15 01:40:28.846829','2016-01-15 01:40:28.846829',19,107);
INSERT INTO `carts` VALUES(273,'2016-01-15 02:36:10.892252','2016-01-15 02:36:10.892252',1,57);
INSERT INTO `carts` VALUES(274,'2016-01-15 11:59:46.762708','2016-01-15 11:59:46.762708',1,108);
INSERT INTO `carts` VALUES(275,'2016-01-15 13:14:00.235208','2016-01-15 13:14:00.235208',12,23);
INSERT INTO `carts` VALUES(276,'2016-01-17 07:43:43.950841','2016-01-17 07:43:43.950841',1,110);
INSERT INTO `carts` VALUES(277,'2016-01-17 07:47:15.306782','2016-01-17 07:47:15.306782',2,110);
INSERT INTO `carts` VALUES(278,'2016-01-18 10:08:53.591769','2016-01-18 10:08:53.591769',8,111);
INSERT INTO `carts` VALUES(279,'2016-01-18 10:09:57.732453','2016-01-18 10:09:57.732453',6,111);
INSERT INTO `carts` VALUES(280,'2016-01-18 12:50:33.079040','2016-01-18 12:50:33.079040',24,57);
INSERT INTO `carts` VALUES(281,'2016-01-19 07:52:09.053645','2016-01-19 07:52:09.053645',29,23);
INSERT INTO `carts` VALUES(282,'2016-01-19 22:11:51.927089','2016-01-19 22:11:51.927089',12,67);
INSERT INTO `carts` VALUES(283,'2016-01-21 03:44:14.091388','2016-01-21 03:44:14.091388',8,110);
INSERT INTO `carts` VALUES(285,'2016-01-21 05:17:49.844841','2016-01-21 05:17:49.844841',3,1);
INSERT INTO `carts` VALUES(286,'2016-01-28 07:38:29.994889','2016-01-28 07:38:29.994889',12,98);
INSERT INTO `carts` VALUES(287,'2016-01-28 07:38:55.026118','2016-01-28 07:38:55.026118',29,98);
INSERT INTO `carts` VALUES(288,'2016-01-31 05:38:34.032307','2016-01-31 05:38:34.032307',2,118);
INSERT INTO `carts` VALUES(289,'2016-01-31 05:38:46.388318','2016-01-31 05:38:46.388318',1,118);
INSERT INTO `carts` VALUES(290,'2016-01-31 05:39:48.304132','2016-01-31 05:39:48.304132',8,118);
INSERT INTO `carts` VALUES(291,'2016-01-31 05:40:07.112030','2016-01-31 05:40:07.112030',12,118);
INSERT INTO `carts` VALUES(292,'2016-01-31 05:40:18.061104','2016-01-31 05:40:18.061104',24,118);
INSERT INTO `carts` VALUES(293,'2016-01-31 05:40:28.299035','2016-01-31 05:40:28.299035',29,118);
INSERT INTO `carts` VALUES(294,'2016-01-31 05:52:24.981107','2016-01-31 05:52:24.981107',1,117);
INSERT INTO `carts` VALUES(295,'2016-01-31 05:55:19.863987','2016-01-31 05:55:19.863987',8,117);
INSERT INTO `carts` VALUES(296,'2016-01-31 05:57:05.048201','2016-01-31 05:57:05.048201',29,117);
INSERT INTO `carts` VALUES(297,'2016-01-31 05:57:23.455625','2016-01-31 05:57:23.455625',2,117);
INSERT INTO `carts` VALUES(298,'2016-01-31 06:04:53.984707','2016-01-31 06:04:53.984707',19,117);
INSERT INTO `carts` VALUES(299,'2016-01-31 06:21:24.706352','2016-01-31 06:21:24.706352',24,119);
INSERT INTO `carts` VALUES(300,'2016-01-31 06:21:37.780634','2016-01-31 06:21:37.780634',19,119);
INSERT INTO `carts` VALUES(301,'2016-01-31 07:04:25.424829','2016-01-31 07:04:25.424829',1,120);
INSERT INTO `carts` VALUES(302,'2016-01-31 07:04:50.934849','2016-01-31 07:04:50.934849',8,120);
INSERT INTO `carts` VALUES(303,'2016-01-31 07:05:02.074042','2016-01-31 07:05:02.074042',12,120);
INSERT INTO `carts` VALUES(304,'2016-01-31 07:05:06.678799','2016-01-31 07:05:06.678799',15,120);
INSERT INTO `carts` VALUES(305,'2016-01-31 07:05:09.597220','2016-01-31 07:05:09.597220',19,120);
INSERT INTO `carts` VALUES(306,'2016-01-31 07:05:24.211476','2016-01-31 07:05:24.211476',24,120);
INSERT INTO `carts` VALUES(307,'2016-01-31 07:05:30.260660','2016-01-31 07:05:30.260660',29,120);
INSERT INTO `carts` VALUES(308,'2016-01-31 07:12:08.027318','2016-01-31 07:12:08.027318',19,121);
INSERT INTO `carts` VALUES(309,'2016-01-31 07:12:24.700299','2016-01-31 07:12:24.700299',1,122);
INSERT INTO `carts` VALUES(310,'2016-01-31 07:13:07.860990','2016-01-31 07:13:07.860990',8,122);
INSERT INTO `carts` VALUES(311,'2016-01-31 07:13:31.931211','2016-01-31 07:13:31.931211',12,122);
INSERT INTO `carts` VALUES(312,'2016-01-31 07:13:43.090570','2016-01-31 07:13:43.090570',15,122);
INSERT INTO `carts` VALUES(313,'2016-01-31 07:13:52.980632','2016-01-31 07:13:52.980632',19,122);
INSERT INTO `carts` VALUES(314,'2016-01-31 07:15:52.724504','2016-01-31 07:15:52.724504',8,121);
INSERT INTO `carts` VALUES(315,'2016-01-31 07:21:30.940150','2016-01-31 07:21:30.940150',24,122);
INSERT INTO `carts` VALUES(316,'2016-01-31 07:21:43.902777','2016-01-31 07:21:43.902777',29,122);
INSERT INTO `carts` VALUES(317,'2016-01-31 07:49:42.953829','2016-01-31 07:49:42.953829',1,123);
INSERT INTO `carts` VALUES(318,'2016-01-31 07:50:50.045539','2016-01-31 07:50:50.045539',8,123);
INSERT INTO `carts` VALUES(319,'2016-01-31 07:51:26.022777','2016-01-31 07:51:26.022777',12,123);
INSERT INTO `carts` VALUES(320,'2016-01-31 08:12:48.992133','2016-01-31 08:12:48.992133',8,125);
INSERT INTO `carts` VALUES(321,'2016-01-31 08:13:13.845126','2016-01-31 08:13:13.845126',24,10);
INSERT INTO `carts` VALUES(322,'2016-01-31 08:35:44.277458','2016-01-31 08:35:44.277458',1,128);
INSERT INTO `carts` VALUES(323,'2016-01-31 12:54:25.541816','2016-01-31 12:54:25.541816',12,25);
INSERT INTO `carts` VALUES(324,'2016-01-31 12:54:56.450767','2016-01-31 12:54:56.450767',29,25);
INSERT INTO `carts` VALUES(325,'2016-01-31 12:55:12.477611','2016-01-31 12:55:12.477611',24,25);
INSERT INTO `carts` VALUES(326,'2016-01-31 13:05:09.171069','2016-01-31 13:05:09.171069',24,23);
INSERT INTO `carts` VALUES(327,'2016-01-31 13:09:25.088367','2016-01-31 13:09:25.088367',10,136);
INSERT INTO `carts` VALUES(328,'2016-01-31 13:09:43.152001','2016-01-31 13:09:43.152001',12,136);
INSERT INTO `carts` VALUES(329,'2016-01-31 13:25:00.706897','2016-01-31 13:25:00.706897',1,100);
INSERT INTO `carts` VALUES(330,'2016-01-31 13:27:31.443268','2016-01-31 13:27:31.443268',8,100);
INSERT INTO `carts` VALUES(331,'2016-01-31 13:31:06.504007','2016-01-31 13:31:06.504007',2,100);
INSERT INTO `carts` VALUES(332,'2016-01-31 13:31:36.903815','2016-01-31 13:31:36.903815',12,100);
INSERT INTO `carts` VALUES(333,'2016-01-31 13:33:55.391042','2016-01-31 13:33:55.391042',29,100);
INSERT INTO `carts` VALUES(334,'2016-01-31 13:36:47.803977','2016-01-31 13:36:47.803977',15,100);
INSERT INTO `carts` VALUES(335,'2016-01-31 13:39:48.500494','2016-01-31 13:39:48.500494',15,139);
INSERT INTO `carts` VALUES(336,'2016-01-31 13:40:02.905895','2016-01-31 13:40:02.905895',1,139);
INSERT INTO `carts` VALUES(337,'2016-01-31 13:41:03.470859','2016-01-31 13:41:03.470859',2,139);
INSERT INTO `carts` VALUES(338,'2016-01-31 13:41:09.554696','2016-01-31 13:41:09.554696',8,139);
INSERT INTO `carts` VALUES(339,'2016-01-31 13:42:02.457761','2016-01-31 13:42:02.457761',12,139);
INSERT INTO `carts` VALUES(340,'2016-01-31 13:42:17.045028','2016-01-31 13:42:17.045028',19,139);
INSERT INTO `carts` VALUES(341,'2016-01-31 13:42:41.854620','2016-01-31 13:42:41.854620',24,139);
INSERT INTO `carts` VALUES(342,'2016-01-31 13:43:09.602493','2016-01-31 13:43:09.602493',29,139);
INSERT INTO `carts` VALUES(343,'2016-01-31 14:06:32.843932','2016-01-31 14:06:32.843932',15,141);
INSERT INTO `carts` VALUES(344,'2016-01-31 14:06:59.280789','2016-01-31 14:06:59.280789',17,141);
INSERT INTO `carts` VALUES(345,'2016-01-31 14:08:09.312900','2016-01-31 14:08:09.312900',12,141);
INSERT INTO `carts` VALUES(346,'2016-01-31 14:18:11.510359','2016-01-31 14:18:11.510359',22,117);
INSERT INTO `carts` VALUES(347,'2016-01-31 14:20:20.635963','2016-01-31 14:20:20.635963',11,117);
INSERT INTO `carts` VALUES(348,'2016-01-31 14:37:44.805180','2016-01-31 14:37:44.805180',2,143);
INSERT INTO `carts` VALUES(349,'2016-01-31 15:07:58.565864','2016-01-31 15:07:58.565864',16,10);
INSERT INTO `carts` VALUES(350,'2016-01-31 15:17:05.505097','2016-01-31 15:17:05.505097',1,146);
INSERT INTO `carts` VALUES(351,'2016-01-31 15:17:48.235639','2016-01-31 15:17:48.235639',8,146);
INSERT INTO `carts` VALUES(352,'2016-01-31 15:18:03.619311','2016-01-31 15:18:03.619311',12,146);
INSERT INTO `carts` VALUES(353,'2016-01-31 15:18:16.421904','2016-01-31 15:18:16.421904',24,146);
INSERT INTO `carts` VALUES(355,'2016-01-31 15:30:45.453762','2016-01-31 15:30:45.453762',12,147);
INSERT INTO `carts` VALUES(356,'2016-02-01 00:44:22.604978','2016-02-01 00:44:22.604978',29,149);
INSERT INTO `carts` VALUES(357,'2016-02-01 00:45:28.318102','2016-02-01 00:45:28.318102',12,149);
INSERT INTO `carts` VALUES(358,'2016-02-01 00:56:12.693183','2016-02-01 00:56:12.693183',12,150);
INSERT INTO `carts` VALUES(359,'2016-02-01 02:26:11.837684','2016-02-01 02:26:11.837684',24,42);
INSERT INTO `carts` VALUES(360,'2016-02-01 02:26:41.712533','2016-02-01 02:26:41.712533',29,42);
INSERT INTO `carts` VALUES(361,'2016-02-01 02:32:52.366695','2016-02-01 02:32:52.366695',12,151);
INSERT INTO `carts` VALUES(362,'2016-02-01 02:34:19.229442','2016-02-01 02:34:19.229442',11,151);
INSERT INTO `carts` VALUES(363,'2016-02-01 02:48:06.879947','2016-02-01 02:48:06.879947',1,132);
INSERT INTO `carts` VALUES(364,'2016-02-01 02:49:00.230514','2016-02-01 02:49:00.230514',2,132);
INSERT INTO `carts` VALUES(365,'2016-02-01 02:49:10.591583','2016-02-01 02:49:10.591583',8,132);
INSERT INTO `carts` VALUES(366,'2016-02-01 02:49:19.959961','2016-02-01 02:49:19.959961',12,132);
INSERT INTO `carts` VALUES(367,'2016-02-01 02:49:31.511215','2016-02-01 02:49:31.511215',19,132);
INSERT INTO `carts` VALUES(368,'2016-02-01 02:50:09.836493','2016-02-01 02:50:09.836493',24,132);
INSERT INTO `carts` VALUES(369,'2016-02-01 02:50:17.616221','2016-02-01 02:50:17.616221',29,132);
INSERT INTO `carts` VALUES(370,'2016-02-01 05:12:36.980984','2016-02-01 05:12:36.980984',8,152);
INSERT INTO `carts` VALUES(371,'2016-02-01 05:13:21.637047','2016-02-01 05:13:21.637047',19,152);
INSERT INTO `carts` VALUES(372,'2016-02-01 05:13:31.929417','2016-02-01 05:13:31.929417',15,152);
INSERT INTO `carts` VALUES(373,'2016-02-01 05:13:36.465601','2016-02-01 05:13:36.465601',12,152);
INSERT INTO `carts` VALUES(374,'2016-02-01 05:13:46.541503','2016-02-01 05:13:46.541503',2,152);
INSERT INTO `carts` VALUES(375,'2016-02-01 05:13:51.431384','2016-02-01 05:13:51.431384',1,152);
INSERT INTO `carts` VALUES(376,'2016-02-01 09:17:45.899559','2016-02-01 09:17:45.899559',8,149);
INSERT INTO `carts` VALUES(377,'2016-02-01 09:18:28.008192','2016-02-01 09:18:28.008192',1,149);
INSERT INTO `carts` VALUES(378,'2016-02-01 10:32:34.131590','2016-02-01 10:32:34.131590',1,135);
INSERT INTO `carts` VALUES(379,'2016-02-01 11:40:16.876456','2016-02-01 11:40:16.876456',2,135);
INSERT INTO `carts` VALUES(380,'2016-02-01 11:40:37.666638','2016-02-01 11:40:37.666638',8,135);
INSERT INTO `carts` VALUES(381,'2016-02-01 11:42:03.854313','2016-02-01 11:42:03.854313',29,135);
INSERT INTO `carts` VALUES(382,'2016-02-01 12:23:38.044957','2016-02-01 12:23:38.044957',8,159);
INSERT INTO `carts` VALUES(383,'2016-02-01 12:23:59.845063','2016-02-01 12:23:59.845063',2,159);
INSERT INTO `carts` VALUES(384,'2016-02-01 12:24:09.706612','2016-02-01 12:24:09.706612',19,159);
INSERT INTO `carts` VALUES(385,'2016-02-01 12:24:30.663463','2016-02-01 12:24:30.663463',24,159);
INSERT INTO `carts` VALUES(386,'2016-02-01 12:24:43.833027','2016-02-01 12:24:43.833027',29,159);
INSERT INTO `carts` VALUES(387,'2016-02-01 12:24:56.844893','2016-02-01 12:24:56.844893',29,158);
INSERT INTO `carts` VALUES(388,'2016-02-01 12:24:59.859646','2016-02-01 12:24:59.859646',1,159);
INSERT INTO `carts` VALUES(389,'2016-02-01 12:25:34.187548','2016-02-01 12:25:34.187548',12,159);
INSERT INTO `carts` VALUES(390,'2016-02-01 12:26:08.624922','2016-02-01 12:26:08.624922',15,159);
INSERT INTO `carts` VALUES(391,'2016-02-01 13:21:33.002400','2016-02-01 13:21:33.002400',16,117);
INSERT INTO `carts` VALUES(392,'2016-02-02 01:05:05.895157','2016-02-02 01:05:05.895157',15,125);
INSERT INTO `carts` VALUES(393,'2016-02-02 01:05:11.668681','2016-02-02 01:05:11.668681',19,125);
INSERT INTO `carts` VALUES(394,'2016-02-02 01:05:35.962318','2016-02-02 01:05:35.962318',24,125);
INSERT INTO `carts` VALUES(395,'2016-02-02 01:05:51.933452','2016-02-02 01:05:51.933452',1,125);
INSERT INTO `carts` VALUES(396,'2016-02-02 01:06:02.976096','2016-02-02 01:06:02.976096',12,125);
INSERT INTO `carts` VALUES(397,'2016-02-02 04:09:44.994164','2016-02-02 04:09:44.994164',2,166);
INSERT INTO `carts` VALUES(398,'2016-02-02 04:10:24.273688','2016-02-02 04:10:24.273688',15,166);
INSERT INTO `carts` VALUES(399,'2016-02-02 07:04:02.441233','2016-02-02 07:04:02.441233',24,171);
INSERT INTO `carts` VALUES(400,'2016-02-02 07:21:38.514998','2016-02-02 07:21:38.514998',12,127);
INSERT INTO `carts` VALUES(402,'2016-02-02 07:30:25.813511','2016-02-02 07:30:25.813511',1,127);
INSERT INTO `carts` VALUES(403,'2016-02-02 11:46:18.936407','2016-02-02 11:46:18.936407',2,172);
INSERT INTO `carts` VALUES(404,'2016-02-02 11:46:36.504090','2016-02-02 11:46:36.504090',15,172);
INSERT INTO `carts` VALUES(405,'2016-02-02 13:30:50.849321','2016-02-02 13:30:50.849321',1,173);
INSERT INTO `carts` VALUES(406,'2016-02-02 13:31:32.420264','2016-02-02 13:31:32.420264',2,173);
INSERT INTO `carts` VALUES(407,'2016-02-02 13:31:37.351344','2016-02-02 13:31:37.351344',8,173);
INSERT INTO `carts` VALUES(408,'2016-02-02 13:32:00.071209','2016-02-02 13:32:00.071209',12,173);
INSERT INTO `carts` VALUES(409,'2016-02-02 13:32:08.064345','2016-02-02 13:32:08.064345',15,173);
INSERT INTO `carts` VALUES(410,'2016-02-02 13:32:11.808445','2016-02-02 13:32:11.808445',19,173);
INSERT INTO `carts` VALUES(411,'2016-02-02 13:32:29.071309','2016-02-02 13:32:29.071309',24,173);
INSERT INTO `carts` VALUES(412,'2016-02-02 13:32:39.558772','2016-02-02 13:32:39.558772',29,173);
INSERT INTO `carts` VALUES(413,'2016-02-02 14:16:41.207125','2016-02-02 14:16:41.207125',2,171);
INSERT INTO `carts` VALUES(414,'2016-02-02 14:16:47.830374','2016-02-02 14:16:47.830374',8,171);
INSERT INTO `carts` VALUES(415,'2016-02-02 14:17:22.821376','2016-02-02 14:17:22.821376',15,171);
INSERT INTO `carts` VALUES(416,'2016-02-02 14:17:44.609496','2016-02-02 14:17:44.609496',19,171);
INSERT INTO `carts` VALUES(418,'2016-02-02 14:22:10.864462','2016-02-02 14:22:10.864462',12,171);
INSERT INTO `carts` VALUES(419,'2016-02-02 14:22:21.931856','2016-02-02 14:22:21.931856',1,171);
INSERT INTO `carts` VALUES(422,'2016-02-02 14:48:43.373583','2016-02-02 14:48:43.373583',15,174);
INSERT INTO `carts` VALUES(423,'2016-02-02 23:24:11.897080','2016-02-02 23:24:11.897080',2,176);
INSERT INTO `carts` VALUES(424,'2016-02-02 23:24:17.422442','2016-02-02 23:24:17.422442',1,176);
INSERT INTO `carts` VALUES(425,'2016-02-02 23:25:23.197936','2016-02-02 23:25:23.197936',24,176);
INSERT INTO `carts` VALUES(426,'2016-02-02 23:25:35.549273','2016-02-02 23:25:35.549273',12,176);
INSERT INTO `carts` VALUES(427,'2016-02-02 23:25:47.642430','2016-02-02 23:25:47.642430',8,176);
INSERT INTO `carts` VALUES(428,'2016-02-02 23:26:04.443448','2016-02-02 23:26:04.443448',29,176);
INSERT INTO `carts` VALUES(429,'2016-02-03 12:02:09.067434','2016-02-03 12:02:09.067434',1,179);
INSERT INTO `carts` VALUES(430,'2016-02-03 12:03:45.961228','2016-02-03 12:03:45.961228',8,179);
INSERT INTO `carts` VALUES(431,'2016-02-03 12:04:01.041346','2016-02-03 12:04:01.041346',24,179);
INSERT INTO `carts` VALUES(432,'2016-02-03 12:08:18.609275','2016-02-03 12:08:18.609275',2,179);
INSERT INTO `carts` VALUES(433,'2016-02-03 12:08:26.399786','2016-02-03 12:08:26.399786',12,179);
INSERT INTO `carts` VALUES(434,'2016-02-03 12:08:42.516824','2016-02-03 12:08:42.516824',15,179);
INSERT INTO `carts` VALUES(435,'2016-02-03 12:09:17.199254','2016-02-03 12:09:17.199254',19,179);
INSERT INTO `carts` VALUES(436,'2016-02-03 12:09:29.293256','2016-02-03 12:09:29.293256',29,179);
INSERT INTO `carts` VALUES(437,'2016-02-03 12:33:19.763732','2016-02-03 12:33:19.763732',2,180);
INSERT INTO `carts` VALUES(438,'2016-02-03 12:34:47.429604','2016-02-03 12:34:47.429604',8,180);
INSERT INTO `carts` VALUES(439,'2016-02-04 03:37:21.690291','2016-02-04 03:37:21.690291',12,5);
INSERT INTO `carts` VALUES(440,'2016-02-04 03:38:24.082616','2016-02-04 03:38:24.082616',24,5);
INSERT INTO `carts` VALUES(441,'2016-02-04 04:58:57.935322','2016-02-04 04:58:57.935322',2,136);
INSERT INTO `carts` VALUES(443,'2016-02-05 05:24:27.322268','2016-02-05 05:24:27.322268',15,1);
INSERT INTO `carts` VALUES(444,'2016-02-05 07:27:44.406961','2016-02-05 07:27:44.406961',8,128);
INSERT INTO `carts` VALUES(445,'2016-02-05 07:28:21.383878','2016-02-05 07:28:21.383878',12,128);
INSERT INTO `carts` VALUES(446,'2016-02-06 08:15:14.599734','2016-02-06 08:15:14.599734',1,116);
INSERT INTO `carts` VALUES(447,'2016-02-06 08:16:19.541072','2016-02-06 08:16:19.541072',2,116);
INSERT INTO `carts` VALUES(449,'2016-02-06 08:17:10.421786','2016-02-06 08:17:10.421786',12,116);
INSERT INTO `carts` VALUES(450,'2016-02-06 08:17:21.040747','2016-02-06 08:17:21.040747',15,116);
INSERT INTO `carts` VALUES(451,'2016-02-06 08:18:23.924134','2016-02-06 08:18:23.924134',19,116);
INSERT INTO `carts` VALUES(452,'2016-02-06 08:18:42.582169','2016-02-06 08:18:42.582169',24,116);
INSERT INTO `carts` VALUES(453,'2016-02-06 08:19:09.372083','2016-02-06 08:19:09.372083',29,116);
INSERT INTO `carts` VALUES(454,'2016-02-06 13:24:29.128193','2016-02-06 13:24:29.128193',18,1);
INSERT INTO `carts` VALUES(455,'2016-02-06 14:15:36.306576','2016-02-06 14:15:36.306576',8,188);
INSERT INTO `carts` VALUES(456,'2016-02-06 14:15:51.084311','2016-02-06 14:15:51.084311',19,188);
INSERT INTO `carts` VALUES(457,'2016-02-06 14:16:41.938385','2016-02-06 14:16:41.938385',15,188);
INSERT INTO `carts` VALUES(458,'2016-02-06 14:18:04.998708','2016-02-06 14:18:04.998708',12,188);
INSERT INTO `carts` VALUES(459,'2016-02-06 14:18:11.349140','2016-02-06 14:18:11.349140',2,188);
INSERT INTO `carts` VALUES(460,'2016-02-07 05:51:56.366096','2016-02-07 05:51:56.366096',29,189);
INSERT INTO `carts` VALUES(461,'2016-02-07 05:52:26.708019','2016-02-07 05:52:26.708019',1,189);
INSERT INTO `carts` VALUES(462,'2016-02-07 05:52:52.208174','2016-02-07 05:52:52.208174',2,189);
INSERT INTO `carts` VALUES(463,'2016-02-07 05:52:58.919631','2016-02-07 05:52:58.919631',8,189);
INSERT INTO `carts` VALUES(464,'2016-02-07 05:53:11.050114','2016-02-07 05:53:11.050114',12,189);
INSERT INTO `carts` VALUES(465,'2016-02-07 05:53:18.138763','2016-02-07 05:53:18.138763',15,189);
INSERT INTO `carts` VALUES(466,'2016-02-07 05:54:00.264831','2016-02-07 05:54:00.264831',19,189);
INSERT INTO `carts` VALUES(467,'2016-02-07 05:54:34.634609','2016-02-07 05:54:34.634609',24,189);
INSERT INTO `carts` VALUES(468,'2016-02-07 07:10:51.907910','2016-02-07 07:10:51.907910',1,190);
INSERT INTO `carts` VALUES(469,'2016-02-07 07:11:19.017709','2016-02-07 07:11:19.017709',2,190);
INSERT INTO `carts` VALUES(470,'2016-02-07 07:11:25.548254','2016-02-07 07:11:25.548254',8,190);
INSERT INTO `carts` VALUES(471,'2016-02-07 07:11:46.026012','2016-02-07 07:11:46.026012',12,190);
INSERT INTO `carts` VALUES(472,'2016-02-07 07:11:51.467219','2016-02-07 07:11:51.467219',15,190);
INSERT INTO `carts` VALUES(473,'2016-02-07 07:13:16.868984','2016-02-07 07:13:16.868984',19,190);
INSERT INTO `carts` VALUES(474,'2016-02-07 07:13:25.691136','2016-02-07 07:13:25.691136',24,190);
INSERT INTO `carts` VALUES(475,'2016-02-07 20:38:38.279373','2016-02-07 20:38:38.279373',13,191);
INSERT INTO `carts` VALUES(476,'2016-02-07 20:40:34.892368','2016-02-07 20:40:34.892368',2,191);
INSERT INTO `carts` VALUES(477,'2016-02-08 04:20:36.818256','2016-02-08 04:20:36.818256',2,192);
INSERT INTO `carts` VALUES(478,'2016-02-08 05:20:06.468993','2016-02-08 05:20:06.468993',1,193);
INSERT INTO `carts` VALUES(479,'2016-02-08 05:20:18.947253','2016-02-08 05:20:18.947253',24,193);
INSERT INTO `carts` VALUES(480,'2016-02-08 08:25:09.045280','2016-02-08 08:25:09.045280',1,29);
INSERT INTO `carts` VALUES(481,'2016-02-08 08:25:50.818466','2016-02-08 08:25:50.818466',2,29);
INSERT INTO `carts` VALUES(482,'2016-02-08 08:25:56.303547','2016-02-08 08:25:56.303547',12,29);
INSERT INTO `carts` VALUES(483,'2016-02-08 08:26:12.536228','2016-02-08 08:26:12.536228',15,29);
INSERT INTO `carts` VALUES(484,'2016-02-08 08:27:13.099221','2016-02-08 08:27:13.099221',24,29);
INSERT INTO `carts` VALUES(485,'2016-02-08 08:27:24.063877','2016-02-08 08:27:24.063877',29,29);
INSERT INTO `carts` VALUES(486,'2016-02-08 09:27:26.094279','2016-02-08 09:27:26.094279',12,195);
INSERT INTO `carts` VALUES(487,'2016-02-08 09:28:01.604154','2016-02-08 09:28:01.604154',15,195);
INSERT INTO `carts` VALUES(488,'2016-02-08 10:47:44.732921','2016-02-08 10:47:44.732921',2,26);
INSERT INTO `carts` VALUES(489,'2016-02-08 10:47:52.109206','2016-02-08 10:47:52.109206',8,26);
INSERT INTO `carts` VALUES(490,'2016-02-08 10:49:35.997343','2016-02-08 10:49:35.997343',12,26);
INSERT INTO `carts` VALUES(491,'2016-02-08 10:49:55.161572','2016-02-08 10:49:55.161572',19,26);
INSERT INTO `carts` VALUES(492,'2016-02-08 10:50:17.974099','2016-02-08 10:50:17.974099',24,26);
INSERT INTO `carts` VALUES(493,'2016-02-08 10:52:05.548233','2016-02-08 10:52:05.548233',29,26);
INSERT INTO `carts` VALUES(494,'2016-02-09 00:00:11.937539','2016-02-09 00:00:11.937539',24,198);
INSERT INTO `carts` VALUES(495,'2016-02-09 00:12:34.214528','2016-02-09 00:12:34.214528',24,199);
INSERT INTO `carts` VALUES(496,'2016-02-09 01:35:47.253385','2016-02-09 01:35:47.253385',1,136);
INSERT INTO `carts` VALUES(497,'2016-02-09 01:36:39.922579','2016-02-09 01:36:39.922579',8,136);
INSERT INTO `carts` VALUES(498,'2016-02-09 01:37:48.440585','2016-02-09 01:37:48.440585',15,136);
INSERT INTO `carts` VALUES(499,'2016-02-09 01:39:03.574518','2016-02-09 01:39:03.574518',19,136);
INSERT INTO `carts` VALUES(500,'2016-02-09 01:39:23.949488','2016-02-09 01:39:23.949488',24,136);
INSERT INTO `carts` VALUES(501,'2016-02-09 01:39:30.726722','2016-02-09 01:39:30.726722',29,136);
INSERT INTO `carts` VALUES(502,'2016-02-09 01:41:38.805957','2016-02-09 01:41:38.805957',24,200);
INSERT INTO `carts` VALUES(503,'2016-02-09 01:41:45.400242','2016-02-09 01:41:45.400242',19,200);
INSERT INTO `carts` VALUES(504,'2016-02-09 01:41:53.474860','2016-02-09 01:41:53.474860',29,200);
INSERT INTO `carts` VALUES(507,'2016-02-10 11:00:32.061804','2016-02-10 11:00:32.061804',NULL,NULL);
INSERT INTO `carts` VALUES(509,'2016-02-10 11:38:07.522852','2016-02-10 11:38:07.522852',11,23);
INSERT INTO `carts` VALUES(511,'2016-02-10 11:46:04.829623','2016-02-10 11:46:04.829623',1,23);
INSERT INTO `carts` VALUES(513,'2016-02-10 13:16:43.884609','2016-02-10 13:16:43.884609',29,128);
INSERT INTO `carts` VALUES(514,'2016-02-10 22:35:46.812832','2016-02-10 22:35:46.812832',8,32);
INSERT INTO `carts` VALUES(515,'2016-02-10 22:36:40.749880','2016-02-10 22:36:40.749880',11,32);
INSERT INTO `carts` VALUES(516,'2016-02-10 22:36:55.828612','2016-02-10 22:36:55.828612',24,32);
INSERT INTO `carts` VALUES(517,'2016-02-10 22:50:07.550361','2016-02-10 22:50:07.550361',15,32);
INSERT INTO `carts` VALUES(518,'2016-02-12 12:36:00.321609','2016-02-12 12:36:00.321609',30,1);
INSERT INTO `carts` VALUES(519,'2016-02-12 14:40:27.420196','2016-02-12 14:40:27.420196',15,210);
INSERT INTO `carts` VALUES(520,'2016-02-12 14:40:53.087499','2016-02-12 14:40:53.087499',2,210);
INSERT INTO `carts` VALUES(521,'2016-02-12 14:41:01.032768','2016-02-12 14:41:01.032768',12,210);
INSERT INTO `carts` VALUES(522,'2016-02-12 15:23:23.319542','2016-02-12 15:23:23.319542',11,25);
INSERT INTO `carts` VALUES(524,'2016-02-13 00:32:45.016027','2016-02-13 00:32:45.016027',1,212);
INSERT INTO `carts` VALUES(525,'2016-02-13 16:45:08.562821','2016-02-13 16:45:08.562821',19,213);
INSERT INTO `carts` VALUES(526,'2016-02-13 22:15:43.441803','2016-02-13 22:15:43.441803',1,214);
INSERT INTO `carts` VALUES(527,'2016-02-14 00:18:43.831964','2016-02-14 00:18:43.831964',5,215);
INSERT INTO `carts` VALUES(528,'2016-02-14 00:21:27.893331','2016-02-14 00:21:27.893331',21,215);
INSERT INTO `carts` VALUES(529,'2016-02-14 03:32:30.980835','2016-02-14 03:32:30.980835',1,216);
INSERT INTO `carts` VALUES(530,'2016-02-14 12:34:26.151833','2016-02-14 12:34:26.151833',12,219);
INSERT INTO `carts` VALUES(531,'2016-02-14 12:35:17.612652','2016-02-14 12:35:17.612652',1,219);
INSERT INTO `carts` VALUES(532,'2016-02-14 12:36:02.342428','2016-02-14 12:36:02.342428',8,219);
INSERT INTO `carts` VALUES(533,'2016-02-14 12:37:12.158657','2016-02-14 12:37:12.158657',24,219);
INSERT INTO `carts` VALUES(534,'2016-02-14 12:37:50.663864','2016-02-14 12:37:50.663864',29,219);
INSERT INTO `carts` VALUES(535,'2016-02-14 13:36:23.938270','2016-02-14 13:36:23.938270',17,219);
INSERT INTO `carts` VALUES(536,'2016-02-14 13:38:23.594805','2016-02-14 13:38:23.594805',6,219);
INSERT INTO `carts` VALUES(537,'2016-02-15 08:45:48.209612','2016-02-15 08:45:48.209612',8,203);
INSERT INTO `carts` VALUES(538,'2016-02-15 08:47:51.793033','2016-02-15 08:47:51.793033',15,203);
INSERT INTO `carts` VALUES(539,'2016-02-15 13:01:12.585560','2016-02-15 13:01:12.585560',11,123);
INSERT INTO `carts` VALUES(540,'2016-02-15 13:03:26.784558','2016-02-15 13:03:26.784558',24,123);
INSERT INTO `carts` VALUES(541,'2016-02-15 13:04:12.828595','2016-02-15 13:04:12.828595',29,123);
INSERT INTO `carts` VALUES(542,'2016-02-16 08:07:18.498405','2016-02-16 08:07:18.498405',2,220);
INSERT INTO `carts` VALUES(543,'2016-02-16 08:08:04.237420','2016-02-16 08:08:04.237420',15,220);
INSERT INTO `carts` VALUES(544,'2016-02-16 08:10:03.741427','2016-02-16 08:10:03.741427',24,220);
INSERT INTO `carts` VALUES(545,'2016-02-16 08:46:40.050851','2016-02-16 08:46:40.050851',31,1);
INSERT INTO `carts` VALUES(547,'2016-02-17 14:45:58.834152','2016-02-17 14:45:58.834152',9,222);
INSERT INTO `carts` VALUES(548,'2016-02-17 20:52:43.225689','2016-02-17 20:52:43.225689',4,222);
INSERT INTO `carts` VALUES(549,'2016-02-17 20:54:00.148338','2016-02-17 20:54:00.148338',1,222);
INSERT INTO `carts` VALUES(552,'2016-02-17 20:57:56.882665','2016-02-17 20:57:56.882665',12,222);
INSERT INTO `carts` VALUES(553,'2016-02-17 20:58:52.272695','2016-02-17 20:58:52.272695',14,222);
INSERT INTO `carts` VALUES(555,'2016-02-17 21:41:05.697134','2016-02-17 21:41:05.697134',24,222);
INSERT INTO `carts` VALUES(556,'2016-02-18 10:18:10.722755','2016-02-18 10:18:10.722755',11,116);
INSERT INTO `carts` VALUES(557,'2016-02-18 12:46:32.267298','2016-02-18 12:46:32.267298',9,116);
INSERT INTO `carts` VALUES(558,'2016-02-18 12:48:17.624326','2016-02-18 12:48:17.624326',30,116);
INSERT INTO `carts` VALUES(559,'2016-02-18 14:22:53.057879','2016-02-18 14:22:53.057879',30,10);
INSERT INTO `carts` VALUES(560,'2016-02-19 00:16:11.334332','2016-02-19 00:16:11.334332',30,223);
INSERT INTO `carts` VALUES(561,'2016-02-19 01:48:47.178378','2016-02-19 01:48:47.178378',30,41);
INSERT INTO `carts` VALUES(562,'2016-02-19 05:59:32.214092','2016-02-19 05:59:32.214092',11,186);
INSERT INTO `carts` VALUES(563,'2016-02-19 08:19:55.532484','2016-02-19 08:19:55.532484',1,225);
INSERT INTO `carts` VALUES(564,'2016-02-19 08:20:38.141688','2016-02-19 08:20:38.141688',2,225);
INSERT INTO `carts` VALUES(565,'2016-02-19 08:21:04.742057','2016-02-19 08:21:04.742057',8,225);
INSERT INTO `carts` VALUES(566,'2016-02-19 08:21:52.738429','2016-02-19 08:21:52.738429',15,225);
INSERT INTO `carts` VALUES(567,'2016-02-19 08:22:37.836360','2016-02-19 08:22:37.836360',19,225);
INSERT INTO `carts` VALUES(568,'2016-02-19 08:22:51.491255','2016-02-19 08:22:51.491255',29,225);
INSERT INTO `carts` VALUES(569,'2016-02-19 08:23:04.439084','2016-02-19 08:23:04.439084',30,225);
INSERT INTO `carts` VALUES(570,'2016-02-19 09:29:38.414033','2016-02-19 09:29:38.414033',30,23);
INSERT INTO `carts` VALUES(571,'2016-02-19 21:51:15.113453','2016-02-19 21:51:15.113453',11,24);
INSERT INTO `carts` VALUES(574,'2016-02-20 09:51:03.413175','2016-02-20 09:51:03.413175',8,20);
INSERT INTO `carts` VALUES(575,'2016-02-20 09:55:15.536126','2016-02-20 09:55:15.536126',24,20);
INSERT INTO `carts` VALUES(576,'2016-02-20 23:33:13.866726','2016-02-20 23:33:13.866726',5,226);
INSERT INTO `carts` VALUES(577,'2016-02-20 23:35:23.563293','2016-02-20 23:35:23.563293',1,226);
INSERT INTO `carts` VALUES(578,'2016-02-21 23:29:28.905533','2016-02-21 23:29:28.905533',30,171);
INSERT INTO `carts` VALUES(579,'2016-02-21 23:30:31.165395','2016-02-21 23:30:31.165395',11,171);
INSERT INTO `carts` VALUES(587,'2016-02-24 15:24:20.377171','2016-02-24 15:24:20.377171',1,87);
INSERT INTO `carts` VALUES(588,'2016-02-24 15:25:29.061817','2016-02-24 15:25:29.061817',8,87);
INSERT INTO `carts` VALUES(589,'2016-02-24 15:29:56.579059','2016-02-24 15:29:56.579059',11,87);
INSERT INTO `carts` VALUES(590,'2016-02-24 15:31:09.354533','2016-02-24 15:31:09.354533',12,87);
INSERT INTO `carts` VALUES(591,'2016-02-24 15:31:32.362226','2016-02-24 15:31:32.362226',15,87);
INSERT INTO `carts` VALUES(592,'2016-02-27 04:37:50.649206','2016-02-27 04:37:50.649206',1,230);
INSERT INTO `carts` VALUES(593,'2016-02-27 04:38:49.409465','2016-02-27 04:38:49.409465',12,230);
INSERT INTO `carts` VALUES(595,'2016-02-29 09:45:35.217006','2016-02-29 09:45:35.217006',11,28);
INSERT INTO `carts` VALUES(596,'2016-02-29 09:46:19.003560','2016-02-29 09:46:19.003560',12,28);
INSERT INTO `carts` VALUES(597,'2016-02-29 09:49:19.462678','2016-02-29 09:49:19.462678',29,28);
INSERT INTO `carts` VALUES(598,'2016-02-29 09:49:55.643923','2016-02-29 09:49:55.643923',30,28);
INSERT INTO `carts` VALUES(599,'2016-03-01 02:53:36.932411','2016-03-01 02:53:36.932411',14,227);
INSERT INTO `carts` VALUES(600,'2016-03-01 02:54:01.862046','2016-03-01 02:54:01.862046',1,227);
INSERT INTO `carts` VALUES(601,'2016-03-01 02:59:28.132470','2016-03-01 02:59:28.132470',12,227);
INSERT INTO `carts` VALUES(602,'2016-03-01 03:04:01.219990','2016-03-01 03:04:01.219990',11,227);
INSERT INTO `carts` VALUES(603,'2016-03-01 05:09:53.071289','2016-03-01 05:09:53.071289',11,42);
INSERT INTO `carts` VALUES(605,'2016-03-02 15:36:01.615073','2016-03-02 15:36:01.615073',30,226);
INSERT INTO `carts` VALUES(606,'2016-03-07 11:51:55.571718','2016-03-07 11:51:55.571718',14,171);
INSERT INTO `carts` VALUES(607,'2016-03-08 06:08:04.887003','2016-03-08 06:08:04.887003',1,156);
INSERT INTO `carts` VALUES(608,'2016-03-08 06:08:59.725953','2016-03-08 06:08:59.725953',2,156);
INSERT INTO `carts` VALUES(609,'2016-03-08 06:09:06.223981','2016-03-08 06:09:06.223981',8,156);
INSERT INTO `carts` VALUES(610,'2016-03-08 06:09:32.275010','2016-03-08 06:09:32.275010',11,156);
INSERT INTO `carts` VALUES(611,'2016-03-08 06:09:53.165335','2016-03-08 06:09:53.165335',12,156);
INSERT INTO `carts` VALUES(612,'2016-03-08 06:09:59.833836','2016-03-08 06:09:59.833836',14,156);
INSERT INTO `carts` VALUES(613,'2016-03-08 06:10:21.054531','2016-03-08 06:10:21.054531',15,156);
INSERT INTO `carts` VALUES(614,'2016-03-08 06:12:37.248964','2016-03-08 06:12:37.248964',19,156);
INSERT INTO `carts` VALUES(615,'2016-03-08 06:14:01.669484','2016-03-08 06:14:01.669484',24,156);
INSERT INTO `carts` VALUES(616,'2016-03-08 06:14:09.995819','2016-03-08 06:14:09.995819',29,156);
INSERT INTO `carts` VALUES(617,'2016-03-08 06:14:50.169818','2016-03-08 06:14:50.169818',30,156);
INSERT INTO `carts` VALUES(618,'2016-03-10 09:05:16.070913','2016-03-10 09:05:16.070913',1,237);
INSERT INTO `carts` VALUES(619,'2016-03-10 09:07:56.214354','2016-03-10 09:07:56.214354',8,237);
INSERT INTO `carts` VALUES(620,'2016-03-10 09:08:46.620517','2016-03-10 09:08:46.620517',12,237);
INSERT INTO `carts` VALUES(621,'2016-03-10 09:12:21.475730','2016-03-10 09:12:21.475730',29,237);
INSERT INTO `carts` VALUES(622,'2016-03-10 09:18:36.534076','2016-03-10 09:18:36.534076',24,237);
INSERT INTO `carts` VALUES(623,'2016-03-12 11:19:08.854211','2016-03-12 11:19:08.854211',30,25);
INSERT INTO `carts` VALUES(624,'2016-03-13 05:13:47.978563','2016-03-13 05:13:47.978563',30,239);
INSERT INTO `carts` VALUES(625,'2016-03-14 06:57:57.872532','2016-03-14 06:57:57.872532',1,74);
INSERT INTO `carts` VALUES(626,'2016-03-15 02:12:41.801905','2016-03-15 02:12:41.801905',1,240);
INSERT INTO `carts` VALUES(627,'2016-03-15 02:16:22.524610','2016-03-15 02:16:22.524610',2,240);
INSERT INTO `carts` VALUES(628,'2016-03-15 02:17:55.220627','2016-03-15 02:17:55.220627',8,240);
INSERT INTO `carts` VALUES(629,'2016-03-15 02:19:39.814015','2016-03-15 02:19:39.814015',11,240);
INSERT INTO `carts` VALUES(630,'2016-03-15 02:21:21.041664','2016-03-15 02:21:21.041664',12,240);
INSERT INTO `carts` VALUES(631,'2016-03-15 02:22:57.688105','2016-03-15 02:22:57.688105',14,240);
INSERT INTO `carts` VALUES(632,'2016-03-15 02:25:00.390087','2016-03-15 02:25:00.390087',15,240);
INSERT INTO `carts` VALUES(633,'2016-03-15 02:26:56.758097','2016-03-15 02:26:56.758097',19,240);
INSERT INTO `carts` VALUES(634,'2016-03-15 02:29:10.688156','2016-03-15 02:29:10.688156',24,240);
INSERT INTO `carts` VALUES(635,'2016-03-15 02:30:15.050715','2016-03-15 02:30:15.050715',29,240);
INSERT INTO `carts` VALUES(636,'2016-03-15 02:31:24.041904','2016-03-15 02:31:24.041904',30,240);
INSERT INTO `carts` VALUES(637,'2016-03-15 04:24:52.389467','2016-03-15 04:24:52.389467',1,241);
INSERT INTO `carts` VALUES(638,'2016-03-15 14:07:28.468564','2016-03-15 14:07:28.468564',5,235);
INSERT INTO `carts` VALUES(639,'2016-03-15 14:08:20.963310','2016-03-15 14:08:20.963310',1,235);
INSERT INTO `carts` VALUES(640,'2016-03-16 10:50:18.746533','2016-03-16 10:50:18.746533',14,116);
INSERT INTO `carts` VALUES(641,'2016-03-16 13:14:09.207587','2016-03-16 13:14:09.207587',24,1);
INSERT INTO `carts` VALUES(642,'2016-03-16 23:03:10.792335','2016-03-16 23:03:10.792335',14,186);
INSERT INTO `carts` VALUES(643,'2016-03-17 10:16:15.958829','2016-03-17 10:16:15.958829',12,244);
INSERT INTO `carts` VALUES(644,'2016-03-17 10:18:39.217953','2016-03-17 10:18:39.217953',1,244);
INSERT INTO `carts` VALUES(645,'2016-03-17 10:23:48.767114','2016-03-17 10:23:48.767114',30,244);
INSERT INTO `carts` VALUES(646,'2016-03-17 10:25:26.103972','2016-03-17 10:25:26.103972',11,244);
INSERT INTO `carts` VALUES(647,'2016-03-17 10:26:24.664432','2016-03-17 10:26:24.664432',15,244);
INSERT INTO `carts` VALUES(648,'2016-03-17 10:28:53.837751','2016-03-17 10:28:53.837751',24,244);
INSERT INTO `carts` VALUES(649,'2016-03-17 10:31:08.789911','2016-03-17 10:31:08.789911',29,244);
INSERT INTO `carts` VALUES(650,'2016-03-17 10:33:39.696093','2016-03-17 10:33:39.696093',18,244);
INSERT INTO `carts` VALUES(651,'2016-03-17 10:34:32.047947','2016-03-17 10:34:32.047947',8,244);
INSERT INTO `carts` VALUES(652,'2016-03-17 10:38:35.338942','2016-03-17 10:38:35.338942',19,244);
INSERT INTO `carts` VALUES(653,'2016-03-17 10:39:26.722582','2016-03-17 10:39:26.722582',9,244);
INSERT INTO `carts` VALUES(654,'2016-03-17 10:40:22.639510','2016-03-17 10:40:22.639510',5,244);
INSERT INTO `carts` VALUES(655,'2016-03-17 13:36:25.653755','2016-03-17 13:36:25.653755',2,163);
INSERT INTO `carts` VALUES(656,'2016-03-17 13:36:33.720696','2016-03-17 13:36:33.720696',1,163);
INSERT INTO `carts` VALUES(657,'2016-03-17 13:37:37.497032','2016-03-17 13:37:37.497032',15,163);
INSERT INTO `carts` VALUES(658,'2016-03-17 15:20:57.741767','2016-03-17 15:20:57.741767',11,237);
INSERT INTO `carts` VALUES(659,'2016-03-17 15:22:10.512158','2016-03-17 15:22:10.512158',14,237);
INSERT INTO `carts` VALUES(660,'2016-03-17 23:32:04.663348','2016-03-17 23:32:04.663348',29,186);
INSERT INTO `carts` VALUES(661,'2016-03-18 00:53:20.832562','2016-03-18 00:53:20.832562',1,249);
INSERT INTO `carts` VALUES(662,'2016-03-18 00:53:38.708478','2016-03-18 00:53:38.708478',2,249);
INSERT INTO `carts` VALUES(663,'2016-03-18 00:53:46.105923','2016-03-18 00:53:46.105923',8,249);
INSERT INTO `carts` VALUES(664,'2016-03-18 00:53:54.195424','2016-03-18 00:53:54.195424',11,249);
INSERT INTO `carts` VALUES(665,'2016-03-18 00:54:00.264454','2016-03-18 00:54:00.264454',12,249);
INSERT INTO `carts` VALUES(666,'2016-03-18 00:54:06.895745','2016-03-18 00:54:06.895745',14,249);
INSERT INTO `carts` VALUES(667,'2016-03-18 00:54:25.837851','2016-03-18 00:54:25.837851',15,249);
INSERT INTO `carts` VALUES(668,'2016-03-18 00:55:52.690770','2016-03-18 00:55:52.690770',19,249);
INSERT INTO `carts` VALUES(669,'2016-03-18 00:56:09.884513','2016-03-18 00:56:09.884513',24,249);
INSERT INTO `carts` VALUES(670,'2016-03-18 00:56:16.789156','2016-03-18 00:56:16.789156',29,249);
INSERT INTO `carts` VALUES(673,'2016-03-18 01:09:20.855872','2016-03-18 01:09:20.855872',30,159);
INSERT INTO `carts` VALUES(674,'2016-03-18 01:44:18.517099','2016-03-18 01:44:18.517099',12,252);
INSERT INTO `carts` VALUES(675,'2016-03-18 01:44:40.955194','2016-03-18 01:44:40.955194',11,252);
INSERT INTO `carts` VALUES(676,'2016-03-18 01:45:22.275201','2016-03-18 01:45:22.275201',8,252);
INSERT INTO `carts` VALUES(677,'2016-03-18 02:04:23.213706','2016-03-18 02:04:23.213706',14,252);
INSERT INTO `carts` VALUES(678,'2016-03-18 02:05:19.320366','2016-03-18 02:05:19.320366',29,252);
INSERT INTO `carts` VALUES(679,'2016-03-18 02:06:39.643000','2016-03-18 02:06:39.643000',30,252);
INSERT INTO `carts` VALUES(680,'2016-03-18 02:09:03.771053','2016-03-18 02:09:03.771053',1,238);
INSERT INTO `carts` VALUES(681,'2016-03-18 02:09:38.414126','2016-03-18 02:09:38.414126',8,238);
INSERT INTO `carts` VALUES(682,'2016-03-18 02:11:10.174152','2016-03-18 02:11:10.174152',11,238);
INSERT INTO `carts` VALUES(683,'2016-03-18 02:11:26.833484','2016-03-18 02:11:26.833484',14,238);
INSERT INTO `carts` VALUES(684,'2016-03-18 02:12:14.600150','2016-03-18 02:12:14.600150',12,238);
INSERT INTO `carts` VALUES(685,'2016-03-18 02:12:38.111024','2016-03-18 02:12:38.111024',24,238);
INSERT INTO `carts` VALUES(686,'2016-03-18 02:15:49.963733','2016-03-18 02:15:49.963733',29,238);
INSERT INTO `carts` VALUES(687,'2016-03-18 02:29:11.086828','2016-03-18 02:29:11.086828',14,258);
INSERT INTO `carts` VALUES(688,'2016-03-18 03:16:41.812796','2016-03-18 03:16:41.812796',1,260);
INSERT INTO `carts` VALUES(689,'2016-03-18 03:17:25.495262','2016-03-18 03:17:25.495262',12,260);
INSERT INTO `carts` VALUES(690,'2016-03-18 03:17:43.186897','2016-03-18 03:17:43.186897',15,260);
INSERT INTO `carts` VALUES(691,'2016-03-18 03:18:52.540888','2016-03-18 03:18:52.540888',24,260);
INSERT INTO `carts` VALUES(692,'2016-03-18 03:18:57.444231','2016-03-18 03:18:57.444231',29,260);
INSERT INTO `carts` VALUES(693,'2016-03-18 03:20:47.800026','2016-03-18 03:20:47.800026',14,260);
INSERT INTO `carts` VALUES(694,'2016-03-18 03:21:13.315788','2016-03-18 03:21:13.315788',11,260);
INSERT INTO `carts` VALUES(695,'2016-03-18 03:21:42.894323','2016-03-18 03:21:42.894323',2,260);
INSERT INTO `carts` VALUES(697,'2016-03-18 03:36:20.388131','2016-03-18 03:36:20.388131',1,262);
INSERT INTO `carts` VALUES(698,'2016-03-18 03:37:13.151451','2016-03-18 03:37:13.151451',2,262);
INSERT INTO `carts` VALUES(699,'2016-03-18 03:37:21.774523','2016-03-18 03:37:21.774523',8,262);
INSERT INTO `carts` VALUES(700,'2016-03-18 03:38:13.052089','2016-03-18 03:38:13.052089',14,262);
INSERT INTO `carts` VALUES(701,'2016-03-18 03:38:31.169683','2016-03-18 03:38:31.169683',15,262);
INSERT INTO `carts` VALUES(703,'2016-03-18 03:56:45.060900','2016-03-18 03:56:45.060900',NULL,NULL);
INSERT INTO `carts` VALUES(704,'2016-03-18 08:08:27.801366','2016-03-18 08:08:27.801366',1,274);
INSERT INTO `carts` VALUES(705,'2016-03-18 08:09:33.698711','2016-03-18 08:09:33.698711',12,274);
INSERT INTO `carts` VALUES(706,'2016-03-18 08:13:58.570975','2016-03-18 08:13:58.570975',2,274);
INSERT INTO `carts` VALUES(707,'2016-03-18 09:29:54.908893','2016-03-18 09:29:54.908893',1,277);
INSERT INTO `carts` VALUES(708,'2016-03-18 09:30:19.530110','2016-03-18 09:30:19.530110',8,277);
INSERT INTO `carts` VALUES(709,'2016-03-18 09:30:45.354431','2016-03-18 09:30:45.354431',14,277);
INSERT INTO `carts` VALUES(710,'2016-03-18 09:31:09.297957','2016-03-18 09:31:09.297957',29,277);
INSERT INTO `carts` VALUES(711,'2016-03-18 09:31:33.557088','2016-03-18 09:31:33.557088',15,277);
INSERT INTO `carts` VALUES(712,'2016-03-18 09:32:08.676966','2016-03-18 09:32:08.676966',24,277);
INSERT INTO `carts` VALUES(713,'2016-03-18 09:32:21.282963','2016-03-18 09:32:21.282963',12,277);
INSERT INTO `carts` VALUES(714,'2016-03-18 10:43:43.237198','2016-03-18 10:43:43.237198',12,279);
INSERT INTO `carts` VALUES(715,'2016-03-18 13:08:44.086911','2016-03-18 13:08:44.086911',15,284);
INSERT INTO `carts` VALUES(717,'2016-03-18 13:20:35.109642','2016-03-18 13:20:35.109642',29,284);
INSERT INTO `carts` VALUES(718,'2016-03-18 15:58:03.946492','2016-03-18 15:58:03.946492',11,219);
INSERT INTO `carts` VALUES(719,'2016-03-18 16:00:49.401755','2016-03-18 16:00:49.401755',14,219);
INSERT INTO `carts` VALUES(720,'2016-03-18 16:22:37.423457','2016-03-18 16:22:37.423457',33,186);
INSERT INTO `carts` VALUES(721,'2016-03-19 02:43:13.841556','2016-03-19 02:43:13.841556',8,290);
INSERT INTO `carts` VALUES(722,'2016-03-19 11:56:19.739735','2016-03-19 11:56:19.739735',11,100);
INSERT INTO `carts` VALUES(723,'2016-03-19 11:56:31.363574','2016-03-19 11:56:31.363574',14,100);
INSERT INTO `carts` VALUES(724,'2016-03-19 11:57:16.152701','2016-03-19 11:57:16.152701',19,100);
INSERT INTO `carts` VALUES(725,'2016-03-19 11:57:49.637632','2016-03-19 11:57:49.637632',24,100);
INSERT INTO `carts` VALUES(726,'2016-03-19 11:57:59.580467','2016-03-19 11:57:59.580467',30,100);
INSERT INTO `carts` VALUES(727,'2016-03-20 06:09:10.873013','2016-03-20 06:09:10.873013',29,295);
INSERT INTO `carts` VALUES(728,'2016-03-20 10:52:03.637365','2016-03-20 10:52:03.637365',17,296);
INSERT INTO `carts` VALUES(729,'2016-03-20 10:52:31.276155','2016-03-20 10:52:31.276155',15,296);
INSERT INTO `carts` VALUES(730,'2016-03-20 11:20:57.220072','2016-03-20 11:20:57.220072',12,296);
INSERT INTO `carts` VALUES(731,'2016-03-20 11:21:19.013677','2016-03-20 11:21:19.013677',29,296);
INSERT INTO `carts` VALUES(732,'2016-03-20 15:49:09.112791','2016-03-20 15:49:09.112791',33,1);
INSERT INTO `carts` VALUES(734,'2016-03-23 04:49:17.258382','2016-03-23 04:49:17.258382',1,254);
INSERT INTO `carts` VALUES(735,'2016-03-23 06:26:44.097831','2016-03-23 06:26:44.097831',14,42);
INSERT INTO `carts` VALUES(736,'2016-03-25 00:58:40.813921','2016-03-25 00:58:40.813921',1,297);
INSERT INTO `carts` VALUES(737,'2016-03-25 14:57:18.767832','2016-03-25 14:57:18.767832',33,28);
INSERT INTO `carts` VALUES(738,'2016-03-25 15:14:36.499058','2016-03-25 15:14:36.499058',33,23);
INSERT INTO `carts` VALUES(739,'2016-03-27 01:51:10.292211','2016-03-27 01:51:10.292211',30,299);
INSERT INTO `carts` VALUES(740,'2016-03-27 01:53:22.238072','2016-03-27 01:53:22.238072',15,299);
INSERT INTO `carts` VALUES(741,'2016-03-27 01:56:25.458263','2016-03-27 01:56:25.458263',33,299);
INSERT INTO `carts` VALUES(742,'2016-03-27 01:57:00.603625','2016-03-27 01:57:00.603625',1,299);
INSERT INTO `carts` VALUES(743,'2016-03-27 01:57:18.891532','2016-03-27 01:57:18.891532',19,299);
INSERT INTO `carts` VALUES(744,'2016-03-27 01:57:42.914762','2016-03-27 01:57:42.914762',29,299);
INSERT INTO `carts` VALUES(745,'2016-03-27 01:57:51.236274','2016-03-27 01:57:51.236274',24,299);
INSERT INTO `carts` VALUES(746,'2016-03-27 01:58:05.765629','2016-03-27 01:58:05.765629',12,299);
INSERT INTO `carts` VALUES(747,'2016-03-27 20:52:17.780113','2016-03-27 20:52:17.780113',19,301);
INSERT INTO `carts` VALUES(748,'2016-03-27 20:53:27.286345','2016-03-27 20:53:27.286345',15,301);
INSERT INTO `carts` VALUES(749,'2016-03-27 20:54:06.694354','2016-03-27 20:54:06.694354',12,301);
INSERT INTO `carts` VALUES(750,'2016-03-27 20:54:39.332730','2016-03-27 20:54:39.332730',14,301);
INSERT INTO `carts` VALUES(751,'2016-03-28 00:38:12.670657','2016-03-28 00:38:12.670657',1,302);
INSERT INTO `carts` VALUES(752,'2016-03-28 00:38:33.234927','2016-03-28 00:38:33.234927',2,302);
INSERT INTO `carts` VALUES(753,'2016-03-28 00:38:39.222968','2016-03-28 00:38:39.222968',8,302);
INSERT INTO `carts` VALUES(754,'2016-03-28 00:38:45.763553','2016-03-28 00:38:45.763553',11,302);
INSERT INTO `carts` VALUES(755,'2016-03-28 00:38:51.999106','2016-03-28 00:38:51.999106',24,302);
INSERT INTO `carts` VALUES(756,'2016-03-28 00:39:03.011744','2016-03-28 00:39:03.011744',29,302);
INSERT INTO `carts` VALUES(757,'2016-03-28 00:39:09.669701','2016-03-28 00:39:09.669701',30,302);
INSERT INTO `carts` VALUES(758,'2016-03-28 00:39:36.221262','2016-03-28 00:39:36.221262',33,302);
INSERT INTO `carts` VALUES(760,'2016-03-28 05:19:41.596838','2016-03-28 05:19:41.596838',30,303);
INSERT INTO `carts` VALUES(761,'2016-03-28 05:19:52.462560','2016-03-28 05:19:52.462560',24,303);
INSERT INTO `carts` VALUES(762,'2016-03-28 05:20:09.134142','2016-03-28 05:20:09.134142',14,303);
INSERT INTO `carts` VALUES(763,'2016-03-28 05:20:38.573702','2016-03-28 05:20:38.573702',2,303);
INSERT INTO `carts` VALUES(764,'2016-03-28 05:20:55.913568','2016-03-28 05:20:55.913568',1,303);
INSERT INTO `carts` VALUES(765,'2016-03-28 05:21:05.417190','2016-03-28 05:21:05.417190',8,303);
INSERT INTO `carts` VALUES(766,'2016-03-28 07:28:11.035135','2016-03-28 07:28:11.035135',NULL,NULL);
INSERT INTO `carts` VALUES(767,'2016-03-28 09:31:03.729412','2016-03-28 09:31:03.729412',24,216);
INSERT INTO `carts` VALUES(768,'2016-03-28 09:33:11.905261','2016-03-28 09:33:11.905261',19,216);
INSERT INTO `carts` VALUES(769,'2016-03-28 09:34:35.255683','2016-03-28 09:34:35.255683',8,216);
INSERT INTO `carts` VALUES(770,'2016-03-28 09:35:39.115621','2016-03-28 09:35:39.115621',30,216);
INSERT INTO `carts` VALUES(771,'2016-03-28 10:24:45.380015','2016-03-28 10:24:45.380015',12,304);
INSERT INTO `carts` VALUES(772,'2016-03-28 10:24:55.456162','2016-03-28 10:24:55.456162',14,304);
INSERT INTO `carts` VALUES(773,'2016-03-28 10:25:18.562676','2016-03-28 10:25:18.562676',29,304);
INSERT INTO `carts` VALUES(774,'2016-03-28 10:25:25.915901','2016-03-28 10:25:25.915901',30,304);
INSERT INTO `carts` VALUES(775,'2016-03-28 10:25:31.699942','2016-03-28 10:25:31.699942',33,304);
INSERT INTO `carts` VALUES(776,'2016-03-28 13:26:13.709406','2016-03-28 13:26:13.709406',15,306);
INSERT INTO `carts` VALUES(777,'2016-03-29 08:55:32.354620','2016-03-29 08:55:32.354620',1,270);
INSERT INTO `carts` VALUES(778,'2016-03-29 08:56:46.363917','2016-03-29 08:56:46.363917',8,270);
INSERT INTO `carts` VALUES(779,'2016-03-29 09:03:35.645670','2016-03-29 09:03:35.645670',11,270);
INSERT INTO `carts` VALUES(781,'2016-03-29 13:42:14.058664','2016-03-29 13:42:14.058664',33,5);
INSERT INTO `carts` VALUES(782,'2016-03-30 01:58:03.633538','2016-03-30 01:58:03.633538',30,307);
INSERT INTO `carts` VALUES(783,'2016-03-30 01:58:40.552356','2016-03-30 01:58:40.552356',15,307);
INSERT INTO `carts` VALUES(784,'2016-03-30 03:17:49.896451','2016-03-30 03:17:49.896451',33,116);
INSERT INTO `carts` VALUES(785,'2016-03-30 13:01:35.352558','2016-03-30 13:01:35.352558',2,308);
INSERT INTO `carts` VALUES(786,'2016-03-30 15:38:53.673160','2016-03-30 15:38:53.673160',35,1);
INSERT INTO `carts` VALUES(787,'2016-03-31 11:00:56.446230','2016-03-31 11:00:56.446230',33,309);
INSERT INTO `carts` VALUES(789,'2016-04-01 23:02:12.288619','2016-04-01 23:02:12.288619',33,311);
INSERT INTO `carts` VALUES(791,'2016-04-02 01:09:22.775486','2016-04-02 01:09:22.775486',33,312);
INSERT INTO `carts` VALUES(792,'2016-04-02 01:13:21.854568','2016-04-02 01:13:21.854568',1,312);
INSERT INTO `carts` VALUES(793,'2016-04-02 01:14:21.478169','2016-04-02 01:14:21.478169',30,312);
INSERT INTO `carts` VALUES(794,'2016-04-02 11:26:30.298665','2016-04-02 11:26:30.298665',33,315);
INSERT INTO `carts` VALUES(797,'2016-04-03 06:30:41.338762','2016-04-03 06:30:41.338762',1,317);
INSERT INTO `carts` VALUES(798,'2016-04-03 06:30:55.586464','2016-04-03 06:30:55.586464',2,317);
INSERT INTO `carts` VALUES(799,'2016-04-03 06:30:58.951723','2016-04-03 06:30:58.951723',8,317);
INSERT INTO `carts` VALUES(800,'2016-04-03 06:31:08.851923','2016-04-03 06:31:08.851923',11,317);
INSERT INTO `carts` VALUES(801,'2016-04-03 06:31:14.128226','2016-04-03 06:31:14.128226',12,317);
INSERT INTO `carts` VALUES(802,'2016-04-03 06:31:21.777658','2016-04-03 06:31:21.777658',14,317);
INSERT INTO `carts` VALUES(803,'2016-04-03 06:31:29.138395','2016-04-03 06:31:29.138395',15,317);
INSERT INTO `carts` VALUES(804,'2016-04-03 06:31:44.455936','2016-04-03 06:31:44.455936',19,317);
INSERT INTO `carts` VALUES(805,'2016-04-03 06:31:52.618259','2016-04-03 06:31:52.618259',24,317);
INSERT INTO `carts` VALUES(806,'2016-04-03 06:32:00.792121','2016-04-03 06:32:00.792121',29,317);
INSERT INTO `carts` VALUES(807,'2016-04-03 06:32:04.797081','2016-04-03 06:32:04.797081',30,317);
INSERT INTO `carts` VALUES(808,'2016-04-03 06:32:18.185014','2016-04-03 06:32:18.185014',33,317);
INSERT INTO `carts` VALUES(809,'2016-04-03 10:09:34.758867','2016-04-03 10:09:34.758867',37,319);
INSERT INTO `carts` VALUES(810,'2016-04-03 10:51:25.459463','2016-04-03 10:51:25.459463',29,319);
INSERT INTO `carts` VALUES(811,'2016-04-04 01:37:37.842675','2016-04-04 01:37:37.842675',33,241);
INSERT INTO `carts` VALUES(813,'2016-04-04 05:14:09.169725','2016-04-04 05:14:09.169725',1,320);
INSERT INTO `carts` VALUES(814,'2016-04-04 05:14:51.487858','2016-04-04 05:14:51.487858',14,320);
INSERT INTO `carts` VALUES(815,'2016-04-04 05:15:34.327224','2016-04-04 05:15:34.327224',19,320);
INSERT INTO `carts` VALUES(816,'2016-04-04 05:15:57.281193','2016-04-04 05:15:57.281193',24,320);
INSERT INTO `carts` VALUES(817,'2016-04-04 05:16:22.723454','2016-04-04 05:16:22.723454',29,320);
INSERT INTO `carts` VALUES(818,'2016-04-04 11:35:41.526553','2016-04-04 11:35:41.526553',15,319);
INSERT INTO `carts` VALUES(819,'2016-04-04 11:36:14.332120','2016-04-04 11:36:14.332120',30,319);
INSERT INTO `carts` VALUES(820,'2016-04-04 12:37:16.806018','2016-04-04 12:37:16.806018',38,321);
INSERT INTO `carts` VALUES(821,'2016-04-04 12:38:18.044182','2016-04-04 12:38:18.044182',37,321);
INSERT INTO `carts` VALUES(822,'2016-04-04 12:40:18.950554','2016-04-04 12:40:18.950554',15,321);
INSERT INTO `carts` VALUES(823,'2016-04-04 12:42:31.014585','2016-04-04 12:42:31.014585',23,321);
INSERT INTO `carts` VALUES(824,'2016-04-04 14:00:03.940628','2016-04-04 14:00:03.940628',33,322);
INSERT INTO `carts` VALUES(825,'2016-04-05 01:26:35.399054','2016-04-05 01:26:35.399054',38,319);
INSERT INTO `carts` VALUES(826,'2016-04-05 02:04:39.285004','2016-04-05 02:04:39.285004',38,186);
INSERT INTO `carts` VALUES(827,'2016-04-05 02:05:32.114930','2016-04-05 02:05:32.114930',30,186);
INSERT INTO `carts` VALUES(828,'2016-04-05 02:06:27.787782','2016-04-05 02:06:27.787782',24,186);
INSERT INTO `carts` VALUES(829,'2016-04-05 02:08:37.236720','2016-04-05 02:08:37.236720',15,186);
INSERT INTO `carts` VALUES(830,'2016-04-05 02:23:58.480095','2016-04-05 02:23:58.480095',12,186);
INSERT INTO `carts` VALUES(831,'2016-04-05 02:24:23.878418','2016-04-05 02:24:23.878418',8,186);
INSERT INTO `carts` VALUES(832,'2016-04-05 02:25:06.151849','2016-04-05 02:25:06.151849',2,186);
INSERT INTO `carts` VALUES(833,'2016-04-05 02:25:14.889753','2016-04-05 02:25:14.889753',1,186);
INSERT INTO `carts` VALUES(834,'2016-04-05 03:14:52.633988','2016-04-05 03:14:52.633988',24,319);
INSERT INTO `carts` VALUES(835,'2016-04-05 03:16:26.226594','2016-04-05 03:16:26.226594',33,319);
INSERT INTO `carts` VALUES(836,'2016-04-05 03:24:00.506765','2016-04-05 03:24:00.506765',2,319);
INSERT INTO `carts` VALUES(837,'2016-04-05 03:24:04.307045','2016-04-05 03:24:04.307045',8,319);
INSERT INTO `carts` VALUES(838,'2016-04-05 03:24:31.791716','2016-04-05 03:24:31.791716',11,319);
INSERT INTO `carts` VALUES(839,'2016-04-05 03:26:34.407487','2016-04-05 03:26:34.407487',19,319);
INSERT INTO `carts` VALUES(840,'2016-04-05 03:26:52.850653','2016-04-05 03:26:52.850653',14,319);
INSERT INTO `carts` VALUES(841,'2016-04-05 03:26:57.647391','2016-04-05 03:26:57.647391',12,319);
INSERT INTO `carts` VALUES(842,'2016-04-05 08:00:57.045461','2016-04-05 08:00:57.045461',11,67);
INSERT INTO `carts` VALUES(843,'2016-04-05 08:01:20.320000','2016-04-05 08:01:20.320000',14,67);
INSERT INTO `carts` VALUES(844,'2016-04-05 08:02:27.120550','2016-04-05 08:02:27.120550',24,67);
INSERT INTO `carts` VALUES(845,'2016-04-05 08:02:41.083450','2016-04-05 08:02:41.083450',38,67);
INSERT INTO `carts` VALUES(846,'2016-04-05 08:54:09.758002','2016-04-05 08:54:09.758002',8,324);
INSERT INTO `carts` VALUES(847,'2016-04-05 08:54:25.292240','2016-04-05 08:54:25.292240',11,324);
INSERT INTO `carts` VALUES(848,'2016-04-05 08:54:34.131534','2016-04-05 08:54:34.131534',12,324);
INSERT INTO `carts` VALUES(849,'2016-04-05 08:54:42.004586','2016-04-05 08:54:42.004586',14,324);
INSERT INTO `carts` VALUES(851,'2016-04-05 08:55:38.510904','2016-04-05 08:55:38.510904',24,324);
INSERT INTO `carts` VALUES(852,'2016-04-05 08:55:44.562047','2016-04-05 08:55:44.562047',29,324);
INSERT INTO `carts` VALUES(853,'2016-04-05 08:55:53.421245','2016-04-05 08:55:53.421245',30,324);
INSERT INTO `carts` VALUES(854,'2016-04-05 08:56:08.389158','2016-04-05 08:56:08.389158',33,324);
INSERT INTO `carts` VALUES(855,'2016-04-05 09:15:12.314978','2016-04-05 09:15:12.314978',1,325);
INSERT INTO `carts` VALUES(856,'2016-04-05 09:15:29.280884','2016-04-05 09:15:29.280884',12,325);
INSERT INTO `carts` VALUES(857,'2016-04-05 09:15:44.001894','2016-04-05 09:15:44.001894',24,325);
INSERT INTO `carts` VALUES(858,'2016-04-05 09:15:54.630726','2016-04-05 09:15:54.630726',33,325);
INSERT INTO `carts` VALUES(860,'2016-04-05 09:29:54.947353','2016-04-05 09:29:54.947353',38,326);
INSERT INTO `carts` VALUES(861,'2016-04-05 09:38:28.283864','2016-04-05 09:38:28.283864',15,327);
INSERT INTO `carts` VALUES(862,'2016-04-05 09:39:50.233071','2016-04-05 09:39:50.233071',12,327);
INSERT INTO `carts` VALUES(863,'2016-04-05 09:41:01.109395','2016-04-05 09:41:01.109395',8,327);
INSERT INTO `carts` VALUES(864,'2016-04-05 09:42:54.366061','2016-04-05 09:42:54.366061',1,327);
INSERT INTO `carts` VALUES(865,'2016-04-05 09:44:16.613544','2016-04-05 09:44:16.613544',11,327);
INSERT INTO `carts` VALUES(866,'2016-04-05 09:44:43.750628','2016-04-05 09:44:43.750628',14,327);
INSERT INTO `carts` VALUES(867,'2016-04-05 09:45:45.054444','2016-04-05 09:45:45.054444',19,327);
INSERT INTO `carts` VALUES(868,'2016-04-05 09:46:17.843115','2016-04-05 09:46:17.843115',24,327);
INSERT INTO `carts` VALUES(869,'2016-04-05 09:46:37.674821','2016-04-05 09:46:37.674821',29,327);
INSERT INTO `carts` VALUES(870,'2016-04-05 09:46:48.615876','2016-04-05 09:46:48.615876',38,327);
INSERT INTO `carts` VALUES(871,'2016-04-05 12:49:35.296659','2016-04-05 12:49:35.296659',1,331);
INSERT INTO `carts` VALUES(872,'2016-04-05 12:50:24.668914','2016-04-05 12:50:24.668914',2,331);
INSERT INTO `carts` VALUES(873,'2016-04-05 12:50:30.214547','2016-04-05 12:50:30.214547',8,331);
INSERT INTO `carts` VALUES(874,'2016-04-05 12:50:43.299409','2016-04-05 12:50:43.299409',11,331);
INSERT INTO `carts` VALUES(875,'2016-04-05 12:51:01.381018','2016-04-05 12:51:01.381018',12,331);
INSERT INTO `carts` VALUES(876,'2016-04-05 12:51:17.744675','2016-04-05 12:51:17.744675',14,331);
INSERT INTO `carts` VALUES(877,'2016-04-05 12:52:07.239971','2016-04-05 12:52:07.239971',15,331);
INSERT INTO `carts` VALUES(878,'2016-04-05 12:52:57.059220','2016-04-05 12:52:57.059220',19,331);
INSERT INTO `carts` VALUES(879,'2016-04-05 12:53:32.898837','2016-04-05 12:53:32.898837',24,331);
INSERT INTO `carts` VALUES(880,'2016-04-05 12:54:13.143400','2016-04-05 12:54:13.143400',29,331);
INSERT INTO `carts` VALUES(881,'2016-04-05 12:54:28.495497','2016-04-05 12:54:28.495497',30,331);
INSERT INTO `carts` VALUES(882,'2016-04-05 12:54:38.193109','2016-04-05 12:54:38.193109',33,331);
INSERT INTO `carts` VALUES(883,'2016-04-05 12:56:49.780600','2016-04-05 12:56:49.780600',38,331);
INSERT INTO `carts` VALUES(884,'2016-04-05 13:12:40.511091','2016-04-05 13:12:40.511091',38,332);
INSERT INTO `carts` VALUES(885,'2016-04-05 13:25:30.576685','2016-04-05 13:25:30.576685',30,67);
INSERT INTO `carts` VALUES(886,'2016-04-05 13:30:59.056936','2016-04-05 13:30:59.056936',33,67);
INSERT INTO `carts` VALUES(887,'2016-04-05 13:31:48.216617','2016-04-05 13:31:48.216617',29,67);
INSERT INTO `carts` VALUES(888,'2016-04-05 13:52:00.750159','2016-04-05 13:52:00.750159',1,334);
INSERT INTO `carts` VALUES(889,'2016-04-05 13:52:19.770847','2016-04-05 13:52:19.770847',2,334);
INSERT INTO `carts` VALUES(890,'2016-04-05 13:52:27.786990','2016-04-05 13:52:27.786990',8,334);
INSERT INTO `carts` VALUES(891,'2016-04-05 13:52:42.908638','2016-04-05 13:52:42.908638',14,334);
INSERT INTO `carts` VALUES(892,'2016-04-05 19:45:38.945052','2016-04-05 19:45:38.945052',12,270);
INSERT INTO `carts` VALUES(893,'2016-04-05 19:46:24.251583','2016-04-05 19:46:24.251583',15,270);
INSERT INTO `carts` VALUES(894,'2016-04-05 19:48:16.260523','2016-04-05 19:48:16.260523',19,270);
INSERT INTO `carts` VALUES(895,'2016-04-05 19:49:17.669371','2016-04-05 19:49:17.669371',24,270);
INSERT INTO `carts` VALUES(896,'2016-04-05 19:49:46.637478','2016-04-05 19:49:46.637478',29,270);
INSERT INTO `carts` VALUES(898,'2016-04-05 19:55:10.870104','2016-04-05 19:55:10.870104',33,270);
INSERT INTO `carts` VALUES(899,'2016-04-06 00:54:32.418006','2016-04-06 00:54:32.418006',1,333);
INSERT INTO `carts` VALUES(901,'2016-04-06 00:55:45.308242','2016-04-06 00:55:45.308242',8,333);
INSERT INTO `carts` VALUES(902,'2016-04-06 00:56:55.477905','2016-04-06 00:56:55.477905',12,333);
INSERT INTO `carts` VALUES(903,'2016-04-06 00:57:14.576087','2016-04-06 00:57:14.576087',15,333);
INSERT INTO `carts` VALUES(904,'2016-04-06 00:57:33.882705','2016-04-06 00:57:33.882705',19,333);
INSERT INTO `carts` VALUES(905,'2016-04-06 00:58:01.340879','2016-04-06 00:58:01.340879',24,333);
INSERT INTO `carts` VALUES(906,'2016-04-06 00:58:29.114963','2016-04-06 00:58:29.114963',29,333);
INSERT INTO `carts` VALUES(907,'2016-04-06 00:58:44.426505','2016-04-06 00:58:44.426505',33,333);
INSERT INTO `carts` VALUES(908,'2016-04-06 00:58:57.633590','2016-04-06 00:58:57.633590',38,333);
INSERT INTO `carts` VALUES(909,'2016-04-06 01:07:56.677664','2016-04-06 01:07:56.677664',8,336);
INSERT INTO `carts` VALUES(910,'2016-04-06 01:08:01.169056','2016-04-06 01:08:01.169056',11,336);
INSERT INTO `carts` VALUES(911,'2016-04-06 01:15:29.309240','2016-04-06 01:15:29.309240',24,336);
INSERT INTO `carts` VALUES(912,'2016-04-06 01:15:51.901015','2016-04-06 01:15:51.901015',14,336);
INSERT INTO `carts` VALUES(913,'2016-04-06 01:16:37.023655','2016-04-06 01:16:37.023655',12,336);
INSERT INTO `carts` VALUES(914,'2016-04-06 01:16:53.452787','2016-04-06 01:16:53.452787',2,336);
INSERT INTO `carts` VALUES(915,'2016-04-06 01:17:11.913664','2016-04-06 01:17:11.913664',19,336);
INSERT INTO `carts` VALUES(916,'2016-04-06 01:17:43.558472','2016-04-06 01:17:43.558472',29,336);
INSERT INTO `carts` VALUES(917,'2016-04-06 01:18:03.713029','2016-04-06 01:18:03.713029',38,336);
INSERT INTO `carts` VALUES(918,'2016-04-06 01:19:48.982654','2016-04-06 01:19:48.982654',1,336);
INSERT INTO `carts` VALUES(920,'2016-04-06 03:04:13.803976','2016-04-06 03:04:13.803976',33,340);
INSERT INTO `carts` VALUES(921,'2016-04-06 03:07:20.795583','2016-04-06 03:07:20.795583',38,340);
INSERT INTO `carts` VALUES(922,'2016-04-06 03:09:04.079386','2016-04-06 03:09:04.079386',30,340);
INSERT INTO `carts` VALUES(923,'2016-04-06 03:09:44.840953','2016-04-06 03:09:44.840953',29,340);
INSERT INTO `carts` VALUES(924,'2016-04-06 03:10:02.460947','2016-04-06 03:10:02.460947',24,340);
INSERT INTO `carts` VALUES(925,'2016-04-06 03:10:28.191196','2016-04-06 03:10:28.191196',19,340);
INSERT INTO `carts` VALUES(927,'2016-04-06 04:49:15.791484','2016-04-06 04:49:15.791484',29,344);
INSERT INTO `carts` VALUES(928,'2016-04-06 05:38:18.655516','2016-04-06 05:38:18.655516',1,342);
INSERT INTO `carts` VALUES(929,'2016-04-06 05:38:57.041396','2016-04-06 05:38:57.041396',2,342);
INSERT INTO `carts` VALUES(930,'2016-04-06 05:39:07.743250','2016-04-06 05:39:07.743250',8,342);
INSERT INTO `carts` VALUES(931,'2016-04-06 05:39:28.138675','2016-04-06 05:39:28.138675',11,342);
INSERT INTO `carts` VALUES(932,'2016-04-06 05:39:44.142017','2016-04-06 05:39:44.142017',12,342);
INSERT INTO `carts` VALUES(933,'2016-04-06 05:40:05.856249','2016-04-06 05:40:05.856249',14,342);
INSERT INTO `carts` VALUES(934,'2016-04-06 05:40:25.175396','2016-04-06 05:40:25.175396',15,342);
INSERT INTO `carts` VALUES(935,'2016-04-06 05:45:11.378114','2016-04-06 05:45:11.378114',33,347);
INSERT INTO `carts` VALUES(936,'2016-04-06 06:05:43.576316','2016-04-06 06:05:43.576316',8,348);
INSERT INTO `carts` VALUES(937,'2016-04-06 06:06:12.354543','2016-04-06 06:06:12.354543',38,348);
INSERT INTO `carts` VALUES(938,'2016-04-06 06:06:38.626174','2016-04-06 06:06:38.626174',24,348);
INSERT INTO `carts` VALUES(939,'2016-04-06 06:06:49.525486','2016-04-06 06:06:49.525486',33,348);
INSERT INTO `carts` VALUES(940,'2016-04-06 06:07:43.346140','2016-04-06 06:07:43.346140',30,348);
INSERT INTO `carts` VALUES(941,'2016-04-06 06:07:52.981568','2016-04-06 06:07:52.981568',29,348);
INSERT INTO `carts` VALUES(942,'2016-04-06 06:07:58.623088','2016-04-06 06:07:58.623088',15,348);
INSERT INTO `carts` VALUES(943,'2016-04-06 06:08:14.568463','2016-04-06 06:08:14.568463',14,348);
INSERT INTO `carts` VALUES(944,'2016-04-06 06:08:40.029080','2016-04-06 06:08:40.029080',11,348);
INSERT INTO `carts` VALUES(945,'2016-04-06 06:08:53.576872','2016-04-06 06:08:53.576872',2,348);
INSERT INTO `carts` VALUES(946,'2016-04-06 06:08:57.448909','2016-04-06 06:08:57.448909',1,348);
INSERT INTO `carts` VALUES(947,'2016-04-06 06:41:42.882858','2016-04-06 06:41:42.882858',38,23);
INSERT INTO `carts` VALUES(950,'2016-04-06 12:06:31.670391','2016-04-06 12:06:31.670391',11,1);
INSERT INTO `carts` VALUES(951,'2016-04-06 12:51:52.205954','2016-04-06 12:51:52.205954',1,361);
INSERT INTO `carts` VALUES(952,'2016-04-06 12:52:11.674741','2016-04-06 12:52:11.674741',11,361);
INSERT INTO `carts` VALUES(953,'2016-04-06 12:52:26.084520','2016-04-06 12:52:26.084520',14,361);
INSERT INTO `carts` VALUES(954,'2016-04-06 12:52:48.317839','2016-04-06 12:52:48.317839',24,361);
INSERT INTO `carts` VALUES(955,'2016-04-06 12:53:05.237060','2016-04-06 12:53:05.237060',38,361);
INSERT INTO `carts` VALUES(956,'2016-04-06 13:12:49.596106','2016-04-06 13:12:49.596106',24,352);
INSERT INTO `carts` VALUES(957,'2016-04-06 14:32:47.192922','2016-04-06 14:32:47.192922',11,363);
INSERT INTO `carts` VALUES(958,'2016-04-06 14:34:25.355718','2016-04-06 14:34:25.355718',38,363);
INSERT INTO `carts` VALUES(959,'2016-04-06 14:34:44.937319','2016-04-06 14:34:44.937319',15,363);
INSERT INTO `carts` VALUES(960,'2016-04-06 14:36:23.466233','2016-04-06 14:36:23.466233',19,363);
INSERT INTO `carts` VALUES(961,'2016-04-06 14:37:29.960163','2016-04-06 14:37:29.960163',24,363);
INSERT INTO `carts` VALUES(962,'2016-04-06 14:37:45.539100','2016-04-06 14:37:45.539100',29,363);
INSERT INTO `carts` VALUES(963,'2016-04-06 22:31:02.951449','2016-04-06 22:31:02.951449',17,335);
INSERT INTO `carts` VALUES(964,'2016-04-06 22:33:29.128930','2016-04-06 22:33:29.128930',1,335);
INSERT INTO `carts` VALUES(965,'2016-04-07 02:03:14.429132','2016-04-07 02:03:14.429132',38,368);
INSERT INTO `carts` VALUES(966,'2016-04-07 05:20:05.945059','2016-04-07 05:20:05.945059',19,369);
INSERT INTO `carts` VALUES(967,'2016-04-07 05:20:33.722794','2016-04-07 05:20:33.722794',33,369);
INSERT INTO `carts` VALUES(968,'2016-04-07 05:20:39.850626','2016-04-07 05:20:39.850626',38,369);
INSERT INTO `carts` VALUES(969,'2016-04-07 05:20:53.814585','2016-04-07 05:20:53.814585',2,369);
INSERT INTO `carts` VALUES(970,'2016-04-07 05:21:08.303219','2016-04-07 05:21:08.303219',8,369);
INSERT INTO `carts` VALUES(971,'2016-04-07 05:21:27.562018','2016-04-07 05:21:27.562018',1,369);
INSERT INTO `carts` VALUES(972,'2016-04-07 05:22:13.531644','2016-04-07 05:22:13.531644',19,370);
INSERT INTO `carts` VALUES(973,'2016-04-07 05:23:40.567979','2016-04-07 05:23:40.567979',24,370);
INSERT INTO `carts` VALUES(974,'2016-04-07 05:24:07.766535','2016-04-07 05:24:07.766535',38,370);
INSERT INTO `carts` VALUES(975,'2016-04-07 14:20:59.310487','2016-04-07 14:20:59.310487',12,373);
INSERT INTO `carts` VALUES(976,'2016-04-07 21:22:04.792597','2016-04-07 21:22:04.792597',1,374);
INSERT INTO `carts` VALUES(977,'2016-04-07 21:22:28.756735','2016-04-07 21:22:28.756735',2,374);
INSERT INTO `carts` VALUES(978,'2016-04-07 21:22:33.916513','2016-04-07 21:22:33.916513',8,374);
INSERT INTO `carts` VALUES(979,'2016-04-07 21:23:03.438106','2016-04-07 21:23:03.438106',11,374);
INSERT INTO `carts` VALUES(980,'2016-04-07 21:23:23.060235','2016-04-07 21:23:23.060235',12,374);
INSERT INTO `carts` VALUES(981,'2016-04-07 21:23:29.720627','2016-04-07 21:23:29.720627',14,374);
INSERT INTO `carts` VALUES(982,'2016-04-07 21:24:35.179891','2016-04-07 21:24:35.179891',15,374);
INSERT INTO `carts` VALUES(983,'2016-04-07 21:26:12.180164','2016-04-07 21:26:12.180164',19,374);
INSERT INTO `carts` VALUES(984,'2016-04-07 21:26:36.301730','2016-04-07 21:26:36.301730',24,374);
INSERT INTO `carts` VALUES(985,'2016-04-07 21:26:50.161946','2016-04-07 21:26:50.161946',29,374);
INSERT INTO `carts` VALUES(986,'2016-04-07 21:27:33.438201','2016-04-07 21:27:33.438201',30,374);
INSERT INTO `carts` VALUES(987,'2016-04-07 21:28:31.837371','2016-04-07 21:28:31.837371',33,374);
INSERT INTO `carts` VALUES(988,'2016-04-07 21:28:55.709823','2016-04-07 21:28:55.709823',38,374);
INSERT INTO `carts` VALUES(989,'2016-04-07 23:11:09.743081','2016-04-07 23:11:09.743081',19,348);
INSERT INTO `carts` VALUES(990,'2016-04-08 00:14:04.570974','2016-04-08 00:14:04.570974',33,336);
INSERT INTO `carts` VALUES(991,'2016-04-08 00:58:55.861247','2016-04-08 00:58:55.861247',8,354);
INSERT INTO `carts` VALUES(992,'2016-04-08 00:59:06.917349','2016-04-08 00:59:06.917349',11,354);
INSERT INTO `carts` VALUES(993,'2016-04-08 00:59:25.813303','2016-04-08 00:59:25.813303',1,354);
INSERT INTO `carts` VALUES(994,'2016-04-08 00:59:57.121501','2016-04-08 00:59:57.121501',12,354);
INSERT INTO `carts` VALUES(995,'2016-04-08 01:00:38.865675','2016-04-08 01:00:38.865675',5,354);
INSERT INTO `carts` VALUES(996,'2016-04-08 03:58:48.915008','2016-04-08 03:58:48.915008',33,303);
INSERT INTO `carts` VALUES(997,'2016-04-08 05:16:35.972056','2016-04-08 05:16:35.972056',24,375);
INSERT INTO `carts` VALUES(998,'2016-04-08 05:17:48.197769','2016-04-08 05:17:48.197769',15,375);
INSERT INTO `carts` VALUES(999,'2016-04-08 05:18:49.340447','2016-04-08 05:18:49.340447',1,375);
INSERT INTO `carts` VALUES(1000,'2016-04-08 05:20:52.622198','2016-04-08 05:20:52.622198',5,375);
INSERT INTO `carts` VALUES(1001,'2016-04-08 05:28:47.957864','2016-04-08 05:28:47.957864',38,42);
INSERT INTO `carts` VALUES(1002,'2016-04-08 05:30:52.235181','2016-04-08 05:30:52.235181',33,42);
INSERT INTO `carts` VALUES(1003,'2016-04-08 08:50:50.324555','2016-04-08 08:50:50.324555',8,377);
INSERT INTO `carts` VALUES(1004,'2016-04-08 09:42:13.604937','2016-04-08 09:42:13.604937',24,376);
INSERT INTO `carts` VALUES(1005,'2016-04-08 09:45:23.560847','2016-04-08 09:45:23.560847',1,376);
INSERT INTO `carts` VALUES(1006,'2016-04-08 09:47:29.533245','2016-04-08 09:47:29.533245',8,376);
INSERT INTO `carts` VALUES(1007,'2016-04-08 09:50:11.322367','2016-04-08 09:50:11.322367',19,376);
INSERT INTO `carts` VALUES(1008,'2016-04-08 09:51:21.748902','2016-04-08 09:51:21.748902',38,376);
INSERT INTO `carts` VALUES(1009,'2016-04-08 09:52:55.631550','2016-04-08 09:52:55.631550',29,376);
INSERT INTO `carts` VALUES(1010,'2016-04-08 09:53:51.837725','2016-04-08 09:53:51.837725',33,376);
INSERT INTO `carts` VALUES(1012,'2016-04-08 13:06:53.956258','2016-04-08 13:06:53.956258',29,1);
INSERT INTO `carts` VALUES(1013,'2016-04-08 14:09:28.532687','2016-04-08 14:09:28.532687',38,320);
INSERT INTO `carts` VALUES(1014,'2016-04-08 14:10:33.207830','2016-04-08 14:10:33.207830',11,320);
INSERT INTO `carts` VALUES(1016,'2016-04-08 14:12:20.023082','2016-04-08 14:12:20.023082',12,320);
INSERT INTO `carts` VALUES(1018,'2016-04-09 02:42:46.187218','2016-04-09 02:42:46.187218',1,20);
INSERT INTO `carts` VALUES(1019,'2016-04-09 02:43:42.376910','2016-04-09 02:43:42.376910',11,20);
INSERT INTO `carts` VALUES(1020,'2016-04-09 02:44:43.923505','2016-04-09 02:44:43.923505',38,20);
INSERT INTO `carts` VALUES(1021,'2016-04-09 02:45:48.107126','2016-04-09 02:45:48.107126',14,20);
INSERT INTO `carts` VALUES(1023,'2016-04-11 08:02:05.518223','2016-04-11 08:02:05.518223',11,136);
INSERT INTO `carts` VALUES(1024,'2016-04-11 08:02:32.195777','2016-04-11 08:02:32.195777',14,136);
INSERT INTO `carts` VALUES(1025,'2016-04-11 08:04:26.136918','2016-04-11 08:04:26.136918',33,136);
INSERT INTO `carts` VALUES(1026,'2016-04-11 08:04:44.872295','2016-04-11 08:04:44.872295',38,136);
INSERT INTO `carts` VALUES(1027,'2016-04-12 04:12:22.996578','2016-04-12 04:12:22.996578',2,354);
INSERT INTO `carts` VALUES(1028,'2016-04-12 04:13:01.888261','2016-04-12 04:13:01.888261',14,354);
INSERT INTO `carts` VALUES(1029,'2016-04-12 04:13:55.446172','2016-04-12 04:13:55.446172',15,354);
INSERT INTO `carts` VALUES(1030,'2016-04-12 04:14:21.228120','2016-04-12 04:14:21.228120',19,354);
INSERT INTO `carts` VALUES(1031,'2016-04-12 04:14:42.847599','2016-04-12 04:14:42.847599',24,354);
INSERT INTO `carts` VALUES(1032,'2016-04-12 04:14:55.371797','2016-04-12 04:14:55.371797',29,354);
INSERT INTO `carts` VALUES(1033,'2016-04-12 04:15:07.877760','2016-04-12 04:15:07.877760',30,354);
INSERT INTO `carts` VALUES(1034,'2016-04-12 04:15:25.503317','2016-04-12 04:15:25.503317',33,354);
INSERT INTO `carts` VALUES(1035,'2016-04-12 04:15:58.148703','2016-04-12 04:15:58.148703',38,354);
INSERT INTO `carts` VALUES(1036,'2016-04-12 08:32:03.049730','2016-04-12 08:32:03.049730',15,367);
INSERT INTO `carts` VALUES(1037,'2016-04-12 08:34:20.913313','2016-04-12 08:34:20.913313',29,367);
INSERT INTO `carts` VALUES(1038,'2016-04-12 08:36:04.823749','2016-04-12 08:36:04.823749',24,367);
INSERT INTO `carts` VALUES(1039,'2016-04-12 08:36:33.578103','2016-04-12 08:36:33.578103',38,367);
INSERT INTO `carts` VALUES(1040,'2016-04-12 08:37:52.317779','2016-04-12 08:37:52.317779',1,367);
INSERT INTO `carts` VALUES(1041,'2016-04-12 08:38:21.056822','2016-04-12 08:38:21.056822',8,367);
INSERT INTO `carts` VALUES(1042,'2016-04-12 08:38:38.408456','2016-04-12 08:38:38.408456',11,367);
INSERT INTO `carts` VALUES(1043,'2016-04-12 08:38:49.452600','2016-04-12 08:38:49.452600',12,367);
INSERT INTO `carts` VALUES(1044,'2016-04-12 08:39:03.084425','2016-04-12 08:39:03.084425',14,367);
INSERT INTO `carts` VALUES(1045,'2016-04-12 13:05:45.059802','2016-04-12 13:05:45.059802',38,5);
INSERT INTO `carts` VALUES(1047,'2016-04-13 10:40:43.529143','2016-04-13 10:40:43.529143',38,362);
INSERT INTO `carts` VALUES(1048,'2016-04-13 10:41:12.806855','2016-04-13 10:41:12.806855',15,362);
INSERT INTO `carts` VALUES(1049,'2016-04-13 10:42:15.817945','2016-04-13 10:42:15.817945',24,362);
INSERT INTO `carts` VALUES(1050,'2016-04-15 07:24:04.860619','2016-04-15 07:24:04.860619',2,367);
INSERT INTO `carts` VALUES(1051,'2016-04-17 06:40:54.227819','2016-04-17 06:40:54.227819',38,171);
INSERT INTO `carts` VALUES(1052,'2016-04-17 06:41:14.317804','2016-04-17 06:41:14.317804',33,171);
INSERT INTO `carts` VALUES(1053,'2016-04-17 14:04:53.776130','2016-04-17 14:04:53.776130',2,320);
INSERT INTO `carts` VALUES(1054,'2016-04-17 14:05:47.663224','2016-04-17 14:05:47.663224',33,320);
INSERT INTO `carts` VALUES(1055,'2016-04-18 13:51:34.571938','2016-04-18 13:51:34.571938',12,341);
INSERT INTO `carts` VALUES(1057,'2016-04-18 13:52:08.609974','2016-04-18 13:52:08.609974',24,341);
INSERT INTO `carts` VALUES(1058,'2016-04-18 13:52:59.926470','2016-04-18 13:52:59.926470',33,341);
INSERT INTO `carts` VALUES(1059,'2016-04-18 13:54:28.064630','2016-04-18 13:54:28.064630',29,341);
INSERT INTO `carts` VALUES(1060,'2016-04-18 13:54:48.374544','2016-04-18 13:54:48.374544',8,341);
INSERT INTO `carts` VALUES(1061,'2016-04-18 13:55:20.913763','2016-04-18 13:55:20.913763',11,341);
INSERT INTO `carts` VALUES(1062,'2016-04-18 14:02:09.102462','2016-04-18 14:02:09.102462',38,341);
INSERT INTO `carts` VALUES(1064,'2016-04-18 19:24:16.514285','2016-04-18 19:24:16.514285',11,168);
INSERT INTO `carts` VALUES(1066,'2016-04-19 01:27:25.868530','2016-04-19 01:27:25.868530',14,112);
INSERT INTO `carts` VALUES(1067,'2016-04-19 01:28:38.873377','2016-04-19 01:28:38.873377',1,112);
INSERT INTO `carts` VALUES(1068,'2016-04-19 02:15:04.873254','2016-04-19 02:15:04.873254',24,382);
INSERT INTO `carts` VALUES(1069,'2016-04-20 00:34:04.421085','2016-04-20 00:34:04.421085',38,116);
INSERT INTO `carts` VALUES(1070,'2016-04-25 12:35:14.828172','2016-04-25 12:35:14.828172',14,341);
INSERT INTO `carts` VALUES(1071,'2016-04-25 12:36:07.287562','2016-04-25 12:36:07.287562',1,341);
INSERT INTO `carts` VALUES(1072,'2016-04-25 12:37:11.333745','2016-04-25 12:37:11.333745',19,341);
INSERT INTO `carts` VALUES(1073,'2016-04-25 12:37:58.211896','2016-04-25 12:37:58.211896',30,341);
INSERT INTO `carts` VALUES(1074,'2016-04-25 16:18:34.548626','2016-04-25 16:18:34.548626',1,389);
INSERT INTO `carts` VALUES(1075,'2016-04-25 16:25:57.132318','2016-04-25 16:25:57.132318',8,389);
INSERT INTO `carts` VALUES(1076,'2016-04-25 16:27:52.556104','2016-04-25 16:27:52.556104',11,389);
INSERT INTO `carts` VALUES(1077,'2016-04-25 16:28:51.215320','2016-04-25 16:28:51.215320',12,389);
INSERT INTO `carts` VALUES(1078,'2016-04-25 16:30:20.203172','2016-04-25 16:30:20.203172',14,389);
INSERT INTO `carts` VALUES(1079,'2016-04-25 16:37:08.057534','2016-04-25 16:37:08.057534',24,389);
INSERT INTO `carts` VALUES(1080,'2016-04-25 16:38:36.284863','2016-04-25 16:38:36.284863',29,389);
INSERT INTO `carts` VALUES(1081,'2016-04-25 16:40:36.227098','2016-04-25 16:40:36.227098',38,389);
INSERT INTO `carts` VALUES(1082,'2016-04-27 04:26:04.586406','2016-04-27 04:26:04.586406',1,390);
INSERT INTO `carts` VALUES(1083,'2016-04-27 04:27:13.725943','2016-04-27 04:27:13.725943',8,390);
INSERT INTO `carts` VALUES(1084,'2016-04-27 10:17:26.088744','2016-04-27 10:17:26.088744',12,391);
INSERT INTO `carts` VALUES(1085,'2016-04-27 10:17:44.035383','2016-04-27 10:17:44.035383',15,391);
INSERT INTO `carts` VALUES(1086,'2016-04-27 10:17:56.137041','2016-04-27 10:17:56.137041',19,391);
INSERT INTO `carts` VALUES(1087,'2016-04-27 10:18:06.819152','2016-04-27 10:18:06.819152',11,391);
INSERT INTO `carts` VALUES(1088,'2016-04-27 10:18:14.303376','2016-04-27 10:18:14.303376',33,391);
INSERT INTO `carts` VALUES(1089,'2016-04-27 10:18:43.495558','2016-04-27 10:18:43.495558',38,391);
INSERT INTO `carts` VALUES(1090,'2016-04-27 10:18:58.729927','2016-04-27 10:18:58.729927',1,391);
INSERT INTO `carts` VALUES(1091,'2016-04-27 10:19:32.437060','2016-04-27 10:19:32.437060',8,391);
INSERT INTO `carts` VALUES(1092,'2016-04-27 10:19:46.459058','2016-04-27 10:19:46.459058',14,391);
INSERT INTO `carts` VALUES(1093,'2016-04-29 02:27:02.295550','2016-04-29 02:27:02.295550',1,393);
INSERT INTO `carts` VALUES(1094,'2016-04-29 02:29:52.289116','2016-04-29 02:29:52.289116',11,393);
INSERT INTO `carts` VALUES(1095,'2016-04-29 02:30:35.456999','2016-04-29 02:30:35.456999',8,393);
INSERT INTO `carts` VALUES(1096,'2016-04-29 02:30:59.887788','2016-04-29 02:30:59.887788',14,393);
INSERT INTO `carts` VALUES(1097,'2016-04-29 02:35:10.858340','2016-04-29 02:35:10.858340',2,393);
INSERT INTO `carts` VALUES(1098,'2016-04-29 02:35:24.102991','2016-04-29 02:35:24.102991',15,393);
INSERT INTO `carts` VALUES(1099,'2016-04-29 02:36:59.807734','2016-04-29 02:36:59.807734',19,393);
INSERT INTO `carts` VALUES(1100,'2016-04-29 02:37:36.593059','2016-04-29 02:37:36.593059',24,393);
INSERT INTO `carts` VALUES(1101,'2016-04-29 02:37:48.609757','2016-04-29 02:37:48.609757',29,393);
INSERT INTO `carts` VALUES(1102,'2016-04-29 02:38:12.841301','2016-04-29 02:38:12.841301',30,393);
INSERT INTO `carts` VALUES(1103,'2016-04-29 02:38:30.361774','2016-04-29 02:38:30.361774',33,393);
INSERT INTO `carts` VALUES(1104,'2016-04-29 02:39:42.885718','2016-04-29 02:39:42.885718',38,393);
INSERT INTO `carts` VALUES(1105,'2016-04-29 02:44:51.308705','2016-04-29 02:44:51.308705',5,393);
INSERT INTO `carts` VALUES(1106,'2016-04-29 09:38:25.741086','2016-04-29 09:38:25.741086',26,1);
INSERT INTO `carts` VALUES(1107,'2016-04-30 10:05:01.801946','2016-04-30 10:05:01.801946',15,395);
INSERT INTO `carts` VALUES(1108,'2016-04-30 10:05:50.086223','2016-04-30 10:05:50.086223',2,395);
INSERT INTO `carts` VALUES(1109,'2016-05-01 07:57:04.708133','2016-05-01 07:57:04.708133',5,260);
INSERT INTO `carts` VALUES(1110,'2016-05-01 07:58:02.478097','2016-05-01 07:58:02.478097',8,260);
INSERT INTO `carts` VALUES(1111,'2016-05-01 08:01:28.184958','2016-05-01 08:01:28.184958',33,260);
INSERT INTO `carts` VALUES(1112,'2016-05-01 08:01:41.137338','2016-05-01 08:01:41.137338',38,260);
INSERT INTO `carts` VALUES(1114,'2016-05-02 04:17:50.170723','2016-05-02 04:17:50.170723',26,396);
INSERT INTO `carts` VALUES(1115,'2016-05-02 04:37:08.597238','2016-05-02 04:37:08.597238',1,396);
INSERT INTO `carts` VALUES(1116,'2016-05-02 04:44:06.830426','2016-05-02 04:44:06.830426',NULL,NULL);
INSERT INTO `carts` VALUES(1117,'2016-05-05 07:49:54.385770','2016-05-05 07:49:54.385770',26,5);
INSERT INTO `carts` VALUES(1118,'2016-05-05 11:17:08.803430','2016-05-05 11:17:08.803430',26,171);
INSERT INTO `carts` VALUES(1119,'2016-05-05 11:17:49.767842','2016-05-05 11:17:49.767842',5,171);
INSERT INTO `carts` VALUES(1121,'2016-05-07 05:20:58.494113','2016-05-07 05:20:58.494113',1,398);
INSERT INTO `carts` VALUES(1122,'2016-05-07 05:21:59.898792','2016-05-07 05:21:59.898792',19,398);
INSERT INTO `carts` VALUES(1123,'2016-05-07 05:22:27.291566','2016-05-07 05:22:27.291566',26,398);
INSERT INTO `carts` VALUES(1124,'2016-05-07 05:22:52.874726','2016-05-07 05:22:52.874726',38,398);
INSERT INTO `carts` VALUES(1125,'2016-05-07 05:38:43.417460','2016-05-07 05:38:43.417460',14,398);
INSERT INTO `carts` VALUES(1127,'2016-05-07 06:56:53.378535','2016-05-07 06:56:53.378535',15,387);
INSERT INTO `carts` VALUES(1129,'2016-05-08 10:52:34.450810','2016-05-08 10:52:34.450810',30,398);
INSERT INTO `carts` VALUES(1130,'2016-05-09 00:10:28.617654','2016-05-09 00:10:28.617654',5,29);
INSERT INTO `carts` VALUES(1131,'2016-05-09 13:21:55.806492','2016-05-09 13:21:55.806492',26,23);
INSERT INTO `carts` VALUES(1132,'2016-05-09 14:21:07.662070','2016-05-09 14:21:07.662070',9,67);
INSERT INTO `carts` VALUES(1134,'2016-05-10 12:54:46.544304','2016-05-10 12:54:46.544304',5,127);
INSERT INTO `carts` VALUES(1135,'2016-05-10 12:55:19.963599','2016-05-10 12:55:19.963599',9,127);
INSERT INTO `carts` VALUES(1136,'2016-05-10 12:56:28.743577','2016-05-10 12:56:28.743577',11,127);
INSERT INTO `carts` VALUES(1137,'2016-05-10 12:57:45.123617','2016-05-10 12:57:45.123617',24,127);
INSERT INTO `carts` VALUES(1138,'2016-05-10 13:00:12.824814','2016-05-10 13:00:12.824814',26,127);
INSERT INTO `carts` VALUES(1139,'2016-05-10 13:03:44.291339','2016-05-10 13:03:44.291339',29,127);
INSERT INTO `carts` VALUES(1140,'2016-05-10 13:05:00.953791','2016-05-10 13:05:00.953791',38,127);
INSERT INTO `carts` VALUES(1141,'2016-05-11 06:36:57.481543','2016-05-11 06:36:57.481543',5,42);
INSERT INTO `carts` VALUES(1143,'2016-05-11 08:59:28.302144','2016-05-11 08:59:28.302144',1,7);
INSERT INTO `carts` VALUES(1144,'2016-05-11 09:01:45.861647','2016-05-11 09:01:45.861647',2,7);
INSERT INTO `carts` VALUES(1146,'2016-05-11 09:12:39.502377','2016-05-11 09:12:39.502377',19,219);
INSERT INTO `carts` VALUES(1147,'2016-05-11 09:12:53.655819','2016-05-11 09:12:53.655819',26,219);
INSERT INTO `carts` VALUES(1148,'2016-05-11 09:13:37.208602','2016-05-11 09:13:37.208602',38,219);
INSERT INTO `carts` VALUES(1149,'2016-05-11 09:39:13.088142','2016-05-11 09:39:13.088142',8,405);
INSERT INTO `carts` VALUES(1150,'2016-05-11 09:40:18.722559','2016-05-11 09:40:18.722559',38,405);
INSERT INTO `carts` VALUES(1151,'2016-05-11 09:49:46.908102','2016-05-11 09:49:46.908102',5,110);
INSERT INTO `carts` VALUES(1152,'2016-05-11 09:50:14.186164','2016-05-11 09:50:14.186164',9,110);
INSERT INTO `carts` VALUES(1153,'2016-05-11 09:50:23.887269','2016-05-11 09:50:23.887269',11,110);
INSERT INTO `carts` VALUES(1154,'2016-05-11 09:50:34.361271','2016-05-11 09:50:34.361271',12,110);
INSERT INTO `carts` VALUES(1155,'2016-05-11 09:50:38.165396','2016-05-11 09:50:38.165396',14,110);
INSERT INTO `carts` VALUES(1156,'2016-05-11 09:50:51.653680','2016-05-11 09:50:51.653680',15,110);
INSERT INTO `carts` VALUES(1157,'2016-05-11 09:51:34.783459','2016-05-11 09:51:34.783459',19,110);
INSERT INTO `carts` VALUES(1158,'2016-05-11 09:51:48.000969','2016-05-11 09:51:48.000969',24,110);
INSERT INTO `carts` VALUES(1159,'2016-05-11 09:52:01.327447','2016-05-11 09:52:01.327447',26,110);
INSERT INTO `carts` VALUES(1160,'2016-05-11 09:52:09.490153','2016-05-11 09:52:09.490153',29,110);
INSERT INTO `carts` VALUES(1161,'2016-05-11 09:59:48.009148','2016-05-11 09:59:48.009148',5,405);
INSERT INTO `carts` VALUES(1162,'2016-05-11 10:00:17.761112','2016-05-11 10:00:17.761112',8,7);
INSERT INTO `carts` VALUES(1163,'2016-05-11 10:24:33.968463','2016-05-11 10:24:33.968463',11,7);
INSERT INTO `carts` VALUES(1164,'2016-05-11 10:25:07.016193','2016-05-11 10:25:07.016193',12,7);
INSERT INTO `carts` VALUES(1165,'2016-05-11 10:25:22.507867','2016-05-11 10:25:22.507867',14,7);
INSERT INTO `carts` VALUES(1166,'2016-05-11 10:26:37.218089','2016-05-11 10:26:37.218089',15,7);
INSERT INTO `carts` VALUES(1167,'2016-05-11 10:27:14.617186','2016-05-11 10:27:14.617186',19,7);
INSERT INTO `carts` VALUES(1168,'2016-05-11 10:28:23.554251','2016-05-11 10:28:23.554251',24,7);
INSERT INTO `carts` VALUES(1169,'2016-05-11 10:35:04.566961','2016-05-11 10:35:04.566961',11,408);
INSERT INTO `carts` VALUES(1170,'2016-05-11 10:58:30.601009','2016-05-11 10:58:30.601009',14,408);
INSERT INTO `carts` VALUES(1171,'2016-05-11 10:59:48.539971','2016-05-11 10:59:48.539971',9,408);
INSERT INTO `carts` VALUES(1172,'2016-05-11 11:34:42.287135','2016-05-11 11:34:42.287135',30,403);
INSERT INTO `carts` VALUES(1173,'2016-05-11 11:35:43.282453','2016-05-11 11:35:43.282453',33,403);
INSERT INTO `carts` VALUES(1174,'2016-05-11 11:36:00.930719','2016-05-11 11:36:00.930719',19,403);
INSERT INTO `carts` VALUES(1175,'2016-05-11 11:40:41.185661','2016-05-11 11:40:41.185661',15,403);
INSERT INTO `carts` VALUES(1176,'2016-05-11 14:23:50.925340','2016-05-11 14:23:50.925340',38,19);
INSERT INTO `carts` VALUES(1177,'2016-05-11 14:24:25.364704','2016-05-11 14:24:25.364704',33,19);
INSERT INTO `carts` VALUES(1178,'2016-05-11 14:25:38.577852','2016-05-11 14:25:38.577852',29,19);
INSERT INTO `carts` VALUES(1179,'2016-05-11 14:25:42.608606','2016-05-11 14:25:42.608606',30,19);
INSERT INTO `carts` VALUES(1180,'2016-05-11 15:21:40.335217','2016-05-11 15:21:40.335217',2,19);
INSERT INTO `carts` VALUES(1181,'2016-05-11 15:21:47.027903','2016-05-11 15:21:47.027903',5,19);
INSERT INTO `carts` VALUES(1182,'2016-05-11 15:21:59.589493','2016-05-11 15:21:59.589493',8,19);
INSERT INTO `carts` VALUES(1183,'2016-05-11 15:22:30.729816','2016-05-11 15:22:30.729816',9,19);
INSERT INTO `carts` VALUES(1184,'2016-05-11 15:22:46.033398','2016-05-11 15:22:46.033398',11,19);
INSERT INTO `carts` VALUES(1185,'2016-05-11 15:23:05.316406','2016-05-11 15:23:05.316406',12,19);
INSERT INTO `carts` VALUES(1186,'2016-05-11 15:23:13.615735','2016-05-11 15:23:13.615735',14,19);
INSERT INTO `carts` VALUES(1187,'2016-05-11 15:23:50.875165','2016-05-11 15:23:50.875165',19,19);
INSERT INTO `carts` VALUES(1188,'2016-05-11 15:24:14.517682','2016-05-11 15:24:14.517682',24,19);
INSERT INTO `carts` VALUES(1189,'2016-05-11 15:24:31.332903','2016-05-11 15:24:31.332903',26,19);
INSERT INTO `carts` VALUES(1190,'2016-05-11 16:43:40.584417','2016-05-11 16:43:40.584417',8,410);
INSERT INTO `carts` VALUES(1191,'2016-05-11 16:45:10.056143','2016-05-11 16:45:10.056143',1,410);
INSERT INTO `carts` VALUES(1192,'2016-05-11 16:46:47.114331','2016-05-11 16:46:47.114331',24,410);
INSERT INTO `carts` VALUES(1193,'2016-05-11 16:47:49.533620','2016-05-11 16:47:49.533620',5,410);
INSERT INTO `carts` VALUES(1194,'2016-05-11 16:48:26.066834','2016-05-11 16:48:26.066834',9,410);
INSERT INTO `carts` VALUES(1195,'2016-05-11 16:49:30.675209','2016-05-11 16:49:30.675209',11,410);
INSERT INTO `carts` VALUES(1196,'2016-05-11 16:50:28.823177','2016-05-11 16:50:28.823177',19,410);
INSERT INTO `carts` VALUES(1197,'2016-05-11 16:51:42.499303','2016-05-11 16:51:42.499303',14,410);
INSERT INTO `carts` VALUES(1198,'2016-05-11 16:52:36.179850','2016-05-11 16:52:36.179850',12,410);
INSERT INTO `carts` VALUES(1199,'2016-05-11 16:58:37.359581','2016-05-11 16:58:37.359581',26,410);
INSERT INTO `carts` VALUES(1200,'2016-05-11 20:06:29.219762','2016-05-11 20:06:29.219762',9,413);
INSERT INTO `carts` VALUES(1201,'2016-05-11 20:12:40.039245','2016-05-11 20:12:40.039245',30,413);
INSERT INTO `carts` VALUES(1202,'2016-05-11 21:12:27.791758','2016-05-11 21:12:27.791758',1,414);
INSERT INTO `carts` VALUES(1203,'2016-05-11 21:13:24.794511','2016-05-11 21:13:24.794511',5,414);
INSERT INTO `carts` VALUES(1204,'2016-05-12 01:40:19.588972','2016-05-12 01:40:19.588972',26,7);
INSERT INTO `carts` VALUES(1205,'2016-05-12 01:40:55.700604','2016-05-12 01:40:55.700604',29,7);
INSERT INTO `carts` VALUES(1206,'2016-05-12 01:41:15.951905','2016-05-12 01:41:15.951905',30,7);
INSERT INTO `carts` VALUES(1207,'2016-05-12 01:41:25.205389','2016-05-12 01:41:25.205389',33,7);
INSERT INTO `carts` VALUES(1208,'2016-05-12 01:42:35.352626','2016-05-12 01:42:35.352626',38,7);
INSERT INTO `carts` VALUES(1209,'2016-05-12 01:49:20.911120','2016-05-12 01:49:20.911120',9,418);
INSERT INTO `carts` VALUES(1210,'2016-05-12 01:49:54.031881','2016-05-12 01:49:54.031881',5,418);
INSERT INTO `carts` VALUES(1211,'2016-05-12 01:50:58.996953','2016-05-12 01:50:58.996953',8,418);
INSERT INTO `carts` VALUES(1212,'2016-05-12 02:06:21.776348','2016-05-12 02:06:21.776348',5,7);
INSERT INTO `carts` VALUES(1213,'2016-05-12 02:06:36.850054','2016-05-12 02:06:36.850054',9,7);
INSERT INTO `carts` VALUES(1214,'2016-05-12 04:00:52.573678','2016-05-12 04:00:52.573678',5,419);
INSERT INTO `carts` VALUES(1215,'2016-05-12 04:23:37.856606','2016-05-12 04:23:37.856606',8,420);
INSERT INTO `carts` VALUES(1218,'2016-05-12 16:21:53.052524','2016-05-12 16:21:53.052524',1,424);
INSERT INTO `carts` VALUES(1219,'2016-05-12 16:24:32.119181','2016-05-12 16:24:32.119181',9,424);
INSERT INTO `carts` VALUES(1220,'2016-05-12 16:25:13.934909','2016-05-12 16:25:13.934909',11,424);
INSERT INTO `carts` VALUES(1221,'2016-05-12 16:25:42.743867','2016-05-12 16:25:42.743867',14,424);
INSERT INTO `carts` VALUES(1222,'2016-05-12 16:26:51.605764','2016-05-12 16:26:51.605764',24,424);
INSERT INTO `carts` VALUES(1223,'2016-05-12 16:27:14.878982','2016-05-12 16:27:14.878982',29,424);
INSERT INTO `carts` VALUES(1224,'2016-05-12 16:27:35.856240','2016-05-12 16:27:35.856240',33,424);
INSERT INTO `carts` VALUES(1225,'2016-05-12 16:29:44.352131','2016-05-12 16:29:44.352131',30,424);
INSERT INTO `carts` VALUES(1226,'2016-05-12 22:54:23.087716','2016-05-12 22:54:23.087716',11,425);
INSERT INTO `carts` VALUES(1227,'2016-05-12 23:47:21.327229','2016-05-12 23:47:21.327229',1,426);
INSERT INTO `carts` VALUES(1228,'2016-05-12 23:48:15.602162','2016-05-12 23:48:15.602162',5,426);
INSERT INTO `carts` VALUES(1229,'2016-05-12 23:48:51.354239','2016-05-12 23:48:51.354239',8,426);
INSERT INTO `carts` VALUES(1230,'2016-05-12 23:49:30.868271','2016-05-12 23:49:30.868271',9,426);
INSERT INTO `carts` VALUES(1231,'2016-05-12 23:50:18.240150','2016-05-12 23:50:18.240150',11,426);
INSERT INTO `carts` VALUES(1232,'2016-05-12 23:51:22.908000','2016-05-12 23:51:22.908000',12,426);
INSERT INTO `carts` VALUES(1233,'2016-05-12 23:51:40.162773','2016-05-12 23:51:40.162773',14,426);
INSERT INTO `carts` VALUES(1234,'2016-05-12 23:53:10.957252','2016-05-12 23:53:10.957252',26,426);
INSERT INTO `carts` VALUES(1235,'2016-05-12 23:54:02.192701','2016-05-12 23:54:02.192701',29,426);
INSERT INTO `carts` VALUES(1236,'2016-05-12 23:54:51.147892','2016-05-12 23:54:51.147892',38,426);
INSERT INTO `carts` VALUES(1240,'2016-05-13 00:45:35.987432','2016-05-13 00:45:35.987432',15,287);
INSERT INTO `carts` VALUES(1241,'2016-05-13 02:56:52.288970','2016-05-13 02:56:52.288970',1,252);
INSERT INTO `carts` VALUES(1243,'2016-05-13 03:01:48.004482','2016-05-13 03:01:48.004482',9,252);
INSERT INTO `carts` VALUES(1244,'2016-05-13 06:15:08.972460','2016-05-13 06:15:08.972460',2,391);
INSERT INTO `carts` VALUES(1245,'2016-05-13 06:15:23.057441','2016-05-13 06:15:23.057441',9,391);
INSERT INTO `carts` VALUES(1246,'2016-05-13 06:15:55.153945','2016-05-13 06:15:55.153945',5,391);
INSERT INTO `carts` VALUES(1247,'2016-05-13 06:17:20.341353','2016-05-13 06:17:20.341353',30,391);
INSERT INTO `carts` VALUES(1248,'2016-05-13 06:18:23.542642','2016-05-13 06:18:23.542642',29,391);
INSERT INTO `carts` VALUES(1249,'2016-05-13 06:18:34.052854','2016-05-13 06:18:34.052854',26,391);
INSERT INTO `carts` VALUES(1250,'2016-05-13 06:18:50.436917','2016-05-13 06:18:50.436917',24,391);
INSERT INTO `carts` VALUES(1251,'2016-05-13 08:41:49.483742','2016-05-13 08:41:49.483742',9,431);
INSERT INTO `carts` VALUES(1252,'2016-05-13 08:42:15.102179','2016-05-13 08:42:15.102179',11,431);
INSERT INTO `carts` VALUES(1253,'2016-05-13 08:42:37.805707','2016-05-13 08:42:37.805707',12,431);
INSERT INTO `carts` VALUES(1254,'2016-05-13 08:42:51.482982','2016-05-13 08:42:51.482982',14,431);
INSERT INTO `carts` VALUES(1255,'2016-05-13 08:43:37.940367','2016-05-13 08:43:37.940367',15,431);
INSERT INTO `carts` VALUES(1256,'2016-05-13 08:44:10.463152','2016-05-13 08:44:10.463152',38,431);
INSERT INTO `carts` VALUES(1258,'2016-05-13 09:08:24.363651','2016-05-13 09:08:24.363651',9,425);
INSERT INTO `carts` VALUES(1259,'2016-05-13 09:09:16.157977','2016-05-13 09:09:16.157977',8,425);
INSERT INTO `carts` VALUES(1260,'2016-05-13 09:10:43.929449','2016-05-13 09:10:43.929449',2,425);
INSERT INTO `carts` VALUES(1262,'2016-05-13 09:11:37.391653','2016-05-13 09:11:37.391653',12,425);
INSERT INTO `carts` VALUES(1263,'2016-05-13 09:11:49.686045','2016-05-13 09:11:49.686045',19,425);
INSERT INTO `carts` VALUES(1264,'2016-05-13 09:12:29.485876','2016-05-13 09:12:29.485876',29,425);
INSERT INTO `carts` VALUES(1265,'2016-05-13 09:12:39.556665','2016-05-13 09:12:39.556665',26,425);
INSERT INTO `carts` VALUES(1266,'2016-05-13 09:47:28.519953','2016-05-13 09:47:28.519953',5,389);
INSERT INTO `carts` VALUES(1267,'2016-05-13 10:31:02.301296','2016-05-13 10:31:02.301296',8,1);
INSERT INTO `carts` VALUES(1268,'2016-05-13 12:35:22.545247','2016-05-13 12:35:22.545247',5,1);
INSERT INTO `carts` VALUES(1270,'2016-05-13 15:11:12.998602','2016-05-13 15:11:12.998602',1,418);
INSERT INTO `carts` VALUES(1271,'2016-05-13 15:13:12.584747','2016-05-13 15:13:12.584747',12,418);
INSERT INTO `carts` VALUES(1272,'2016-05-13 15:13:25.673762','2016-05-13 15:13:25.673762',14,418);
INSERT INTO `carts` VALUES(1273,'2016-05-13 15:14:49.616289','2016-05-13 15:14:49.616289',24,418);
INSERT INTO `carts` VALUES(1274,'2016-05-13 15:15:18.211598','2016-05-13 15:15:18.211598',26,418);
INSERT INTO `carts` VALUES(1275,'2016-05-13 15:15:42.838830','2016-05-13 15:15:42.838830',29,418);
INSERT INTO `carts` VALUES(1276,'2016-05-13 15:16:12.155710','2016-05-13 15:16:12.155710',40,418);
INSERT INTO `carts` VALUES(1279,'2016-05-14 01:39:41.614583','2016-05-14 01:39:41.614583',8,435);
INSERT INTO `carts` VALUES(1280,'2016-05-14 03:45:00.871643','2016-05-14 03:45:00.871643',15,436);
INSERT INTO `carts` VALUES(1281,'2016-05-14 04:01:47.364637','2016-05-14 04:01:47.364637',8,127);
INSERT INTO `carts` VALUES(1282,'2016-05-14 04:30:24.342517','2016-05-14 04:30:24.342517',1,422);
INSERT INTO `carts` VALUES(1283,'2016-05-14 05:26:55.325838','2016-05-14 05:26:55.325838',30,435);
INSERT INTO `carts` VALUES(1284,'2016-05-14 05:28:27.322468','2016-05-14 05:28:27.322468',9,435);
INSERT INTO `carts` VALUES(1285,'2016-05-14 05:28:53.003327','2016-05-14 05:28:53.003327',11,435);
INSERT INTO `carts` VALUES(1286,'2016-05-14 05:29:09.170858','2016-05-14 05:29:09.170858',12,435);
INSERT INTO `carts` VALUES(1287,'2016-05-14 05:29:17.524940','2016-05-14 05:29:17.524940',14,435);
INSERT INTO `carts` VALUES(1288,'2016-05-14 05:29:48.694059','2016-05-14 05:29:48.694059',15,435);
INSERT INTO `carts` VALUES(1289,'2016-05-14 05:31:49.573150','2016-05-14 05:31:49.573150',19,435);
INSERT INTO `carts` VALUES(1290,'2016-05-14 05:32:19.510223','2016-05-14 05:32:19.510223',24,435);
INSERT INTO `carts` VALUES(1291,'2016-05-14 05:32:33.297270','2016-05-14 05:32:33.297270',26,435);
INSERT INTO `carts` VALUES(1292,'2016-05-14 05:33:08.912821','2016-05-14 05:33:08.912821',33,435);
INSERT INTO `carts` VALUES(1293,'2016-05-14 05:34:03.739339','2016-05-14 05:34:03.739339',38,435);
INSERT INTO `carts` VALUES(1296,'2016-05-14 08:58:12.325871','2016-05-14 08:58:12.325871',33,432);
INSERT INTO `carts` VALUES(1297,'2016-05-14 08:59:02.498666','2016-05-14 08:59:02.498666',1,432);
INSERT INTO `carts` VALUES(1298,'2016-05-14 09:01:18.305200','2016-05-14 09:01:18.305200',2,432);
INSERT INTO `carts` VALUES(1299,'2016-05-14 09:02:45.350081','2016-05-14 09:02:45.350081',8,432);
INSERT INTO `carts` VALUES(1300,'2016-05-14 09:05:20.902282','2016-05-14 09:05:20.902282',11,432);
INSERT INTO `carts` VALUES(1302,'2016-05-14 09:07:24.772444','2016-05-14 09:07:24.772444',14,432);
INSERT INTO `carts` VALUES(1303,'2016-05-14 09:07:58.282682','2016-05-14 09:07:58.282682',15,432);
INSERT INTO `carts` VALUES(1304,'2016-05-14 09:09:54.525936','2016-05-14 09:09:54.525936',19,432);
INSERT INTO `carts` VALUES(1305,'2016-05-14 09:10:19.469353','2016-05-14 09:10:19.469353',24,432);
INSERT INTO `carts` VALUES(1306,'2016-05-14 09:10:54.960710','2016-05-14 09:10:54.960710',30,432);
INSERT INTO `carts` VALUES(1307,'2016-05-14 09:11:19.980618','2016-05-14 09:11:19.980618',38,432);
INSERT INTO `carts` VALUES(1308,'2016-05-14 09:41:52.866649','2016-05-14 09:41:52.866649',40,415);
INSERT INTO `carts` VALUES(1310,'2016-05-14 13:48:55.897874','2016-05-14 13:48:55.897874',11,159);
INSERT INTO `carts` VALUES(1311,'2016-05-14 13:51:23.949707','2016-05-14 13:51:23.949707',40,159);
INSERT INTO `carts` VALUES(1312,'2016-05-14 14:52:47.801322','2016-05-14 14:52:47.801322',11,173);
INSERT INTO `carts` VALUES(1313,'2016-05-14 14:52:53.268856','2016-05-14 14:52:53.268856',9,173);
INSERT INTO `carts` VALUES(1314,'2016-05-14 14:53:16.768555','2016-05-14 14:53:16.768555',26,173);
INSERT INTO `carts` VALUES(1315,'2016-05-14 14:54:12.137646','2016-05-14 14:54:12.137646',38,173);
INSERT INTO `carts` VALUES(1316,'2016-05-14 17:56:10.438601','2016-05-14 17:56:10.438601',5,374);
INSERT INTO `carts` VALUES(1317,'2016-05-14 17:57:20.726583','2016-05-14 17:57:20.726583',9,374);
INSERT INTO `carts` VALUES(1318,'2016-05-14 18:01:15.682681','2016-05-14 18:01:15.682681',40,374);
INSERT INTO `carts` VALUES(1319,'2016-05-15 05:51:01.776769','2016-05-15 05:51:01.776769',15,412);
INSERT INTO `carts` VALUES(1320,'2016-05-15 06:29:12.518337','2016-05-15 06:29:12.518337',40,67);
INSERT INTO `carts` VALUES(1321,'2016-05-15 06:29:58.420973','2016-05-15 06:29:58.420973',5,67);
INSERT INTO `carts` VALUES(1322,'2016-05-15 06:31:03.498675','2016-05-15 06:31:03.498675',26,67);
INSERT INTO `carts` VALUES(1323,'2016-05-15 14:05:38.290322','2016-05-15 14:05:38.290322',1,441);
INSERT INTO `carts` VALUES(1324,'2016-05-16 04:34:41.252523','2016-05-16 04:34:41.252523',1,442);
INSERT INTO `carts` VALUES(1325,'2016-05-16 09:34:46.523457','2016-05-16 09:34:46.523457',40,1);
INSERT INTO `carts` VALUES(1326,'2016-05-16 12:31:44.198069','2016-05-16 12:31:44.198069',11,443);
INSERT INTO `carts` VALUES(1327,'2016-05-16 12:32:10.677199','2016-05-16 12:32:10.677199',24,443);
INSERT INTO `carts` VALUES(1328,'2016-05-16 12:32:33.387424','2016-05-16 12:32:33.387424',40,443);
INSERT INTO `carts` VALUES(1329,'2016-05-16 12:32:56.438746','2016-05-16 12:32:56.438746',1,443);
INSERT INTO `carts` VALUES(1330,'2016-05-16 12:33:30.934975','2016-05-16 12:33:30.934975',5,443);
INSERT INTO `carts` VALUES(1331,'2016-05-16 16:42:06.051386','2016-05-16 16:42:06.051386',12,444);
INSERT INTO `carts` VALUES(1332,'2016-05-17 05:50:21.559185','2016-05-17 05:50:21.559185',15,192);
INSERT INTO `carts` VALUES(1333,'2016-05-17 05:50:58.307704','2016-05-17 05:50:58.307704',19,192);
INSERT INTO `carts` VALUES(1334,'2016-05-17 05:51:28.207005','2016-05-17 05:51:28.207005',30,192);
INSERT INTO `carts` VALUES(1335,'2016-05-17 05:52:01.535852','2016-05-17 05:52:01.535852',33,192);
INSERT INTO `carts` VALUES(1336,'2016-05-17 05:53:12.210694','2016-05-17 05:53:12.210694',8,192);
INSERT INTO `carts` VALUES(1337,'2016-05-17 05:53:54.148385','2016-05-17 05:53:54.148385',26,192);
INSERT INTO `carts` VALUES(1338,'2016-05-17 05:54:05.216004','2016-05-17 05:54:05.216004',24,192);
INSERT INTO `carts` VALUES(1339,'2016-05-17 05:54:11.861082','2016-05-17 05:54:11.861082',38,192);
INSERT INTO `carts` VALUES(1340,'2016-05-17 05:54:32.487625','2016-05-17 05:54:32.487625',40,192);
INSERT INTO `carts` VALUES(1341,'2016-05-17 05:54:39.782262','2016-05-17 05:54:39.782262',29,192);
INSERT INTO `carts` VALUES(1342,'2016-05-18 06:25:03.636174','2016-05-18 06:25:03.636174',12,94);
INSERT INTO `carts` VALUES(1343,'2016-05-19 03:18:35.643977','2016-05-19 03:18:35.643977',1,448);
INSERT INTO `carts` VALUES(1344,'2016-05-19 03:18:51.556695','2016-05-19 03:18:51.556695',11,448);
INSERT INTO `carts` VALUES(1345,'2016-05-19 07:10:02.206361','2016-05-19 07:10:02.206361',29,236);
INSERT INTO `carts` VALUES(1346,'2016-05-19 08:06:25.377323','2016-05-19 08:06:25.377323',2,449);
INSERT INTO `carts` VALUES(1347,'2016-05-19 08:06:43.682221','2016-05-19 08:06:43.682221',8,449);
INSERT INTO `carts` VALUES(1348,'2016-05-19 13:03:29.047840','2016-05-19 13:03:29.047840',12,450);
INSERT INTO `carts` VALUES(1349,'2016-05-19 14:21:19.192916','2016-05-19 14:21:19.192916',1,449);
INSERT INTO `carts` VALUES(1350,'2016-05-19 14:22:55.693225','2016-05-19 14:22:55.693225',5,449);
INSERT INTO `carts` VALUES(1351,'2016-05-19 14:24:18.069865','2016-05-19 14:24:18.069865',9,449);
INSERT INTO `carts` VALUES(1352,'2016-05-19 14:24:53.442916','2016-05-19 14:24:53.442916',11,449);
INSERT INTO `carts` VALUES(1353,'2016-05-19 14:25:06.286040','2016-05-19 14:25:06.286040',12,449);
INSERT INTO `carts` VALUES(1354,'2016-05-19 14:25:25.081373','2016-05-19 14:25:25.081373',15,449);
INSERT INTO `carts` VALUES(1355,'2016-05-19 14:26:50.431303','2016-05-19 14:26:50.431303',19,449);
INSERT INTO `carts` VALUES(1356,'2016-05-19 14:27:35.970037','2016-05-19 14:27:35.970037',24,449);
INSERT INTO `carts` VALUES(1357,'2016-05-19 14:28:03.494963','2016-05-19 14:28:03.494963',29,449);
INSERT INTO `carts` VALUES(1358,'2016-05-19 14:28:28.854452','2016-05-19 14:28:28.854452',30,449);
INSERT INTO `carts` VALUES(1361,'2016-05-19 22:24:19.763840','2016-05-19 22:24:19.763840',5,432);
INSERT INTO `carts` VALUES(1362,'2016-05-20 02:10:25.421844','2016-05-20 02:10:25.421844',40,451);
INSERT INTO `carts` VALUES(1363,'2016-05-20 02:11:09.404650','2016-05-20 02:11:09.404650',30,451);
INSERT INTO `carts` VALUES(1364,'2016-05-20 03:36:16.643156','2016-05-20 03:36:16.643156',14,450);
INSERT INTO `carts` VALUES(1365,'2016-05-20 03:37:05.396171','2016-05-20 03:37:05.396171',1,450);
INSERT INTO `carts` VALUES(1366,'2016-05-20 03:37:37.387587','2016-05-20 03:37:37.387587',2,450);
INSERT INTO `carts` VALUES(1367,'2016-05-20 03:37:45.242903','2016-05-20 03:37:45.242903',5,450);
INSERT INTO `carts` VALUES(1368,'2016-05-20 03:39:25.455669','2016-05-20 03:39:25.455669',8,450);
INSERT INTO `carts` VALUES(1369,'2016-05-20 05:55:44.381124','2016-05-20 05:55:44.381124',40,42);
INSERT INTO `carts` VALUES(1370,'2016-05-20 12:32:15.857170','2016-05-20 12:32:15.857170',14,126);
INSERT INTO `carts` VALUES(1371,'2016-05-20 12:39:28.395408','2016-05-20 12:39:28.395408',14,270);
INSERT INTO `carts` VALUES(1372,'2016-05-20 13:02:50.382681','2016-05-20 13:02:50.382681',2,403);
INSERT INTO `carts` VALUES(1375,'2016-05-21 12:57:03.139513','2016-05-21 12:57:03.139513',1,453);
INSERT INTO `carts` VALUES(1376,'2016-05-21 12:57:19.349899','2016-05-21 12:57:19.349899',2,453);
INSERT INTO `carts` VALUES(1377,'2016-05-21 12:57:24.661872','2016-05-21 12:57:24.661872',5,453);
INSERT INTO `carts` VALUES(1378,'2016-05-21 12:57:31.612843','2016-05-21 12:57:31.612843',8,453);
INSERT INTO `carts` VALUES(1379,'2016-05-21 12:57:43.630320','2016-05-21 12:57:43.630320',9,453);
INSERT INTO `carts` VALUES(1380,'2016-05-21 12:57:54.751271','2016-05-21 12:57:54.751271',11,453);
INSERT INTO `carts` VALUES(1381,'2016-05-21 12:58:07.161006','2016-05-21 12:58:07.161006',12,453);
INSERT INTO `carts` VALUES(1382,'2016-05-21 12:58:21.311861','2016-05-21 12:58:21.311861',14,453);
INSERT INTO `carts` VALUES(1383,'2016-05-21 12:58:41.731105','2016-05-21 12:58:41.731105',15,453);
INSERT INTO `carts` VALUES(1384,'2016-05-21 12:59:23.022781','2016-05-21 12:59:23.022781',19,453);
INSERT INTO `carts` VALUES(1385,'2016-05-21 12:59:56.304076','2016-05-21 12:59:56.304076',26,453);
INSERT INTO `carts` VALUES(1386,'2016-05-21 13:00:27.981606','2016-05-21 13:00:27.981606',24,453);
INSERT INTO `carts` VALUES(1387,'2016-05-21 13:01:04.009467','2016-05-21 13:01:04.009467',29,453);
INSERT INTO `carts` VALUES(1388,'2016-05-21 13:01:14.697753','2016-05-21 13:01:14.697753',30,453);
INSERT INTO `carts` VALUES(1389,'2016-05-21 13:01:34.819304','2016-05-21 13:01:34.819304',33,453);
INSERT INTO `carts` VALUES(1390,'2016-05-21 13:01:51.347374','2016-05-21 13:01:51.347374',38,453);
INSERT INTO `carts` VALUES(1391,'2016-05-21 13:02:20.314703','2016-05-21 13:02:20.314703',40,453);
INSERT INTO `carts` VALUES(1392,'2016-05-21 15:20:42.555391','2016-05-21 15:20:42.555391',29,454);
INSERT INTO `carts` VALUES(1393,'2016-05-21 15:21:25.120981','2016-05-21 15:21:25.120981',12,454);
INSERT INTO `carts` VALUES(1394,'2016-05-21 15:21:48.342268','2016-05-21 15:21:48.342268',1,454);
INSERT INTO `carts` VALUES(1395,'2016-05-22 15:46:45.065313','2016-05-22 15:46:45.065313',30,455);
INSERT INTO `carts` VALUES(1396,'2016-05-22 15:47:53.174357','2016-05-22 15:47:53.174357',11,455);
INSERT INTO `carts` VALUES(1397,'2016-05-23 14:41:47.448869','2016-05-23 14:41:47.448869',40,23);
INSERT INTO `carts` VALUES(1398,'2016-05-25 10:29:18.883269','2016-05-25 10:29:18.883269',40,391);
INSERT INTO `carts` VALUES(1399,'2016-05-27 13:40:18.744038','2016-05-27 13:40:18.744038',5,116);
INSERT INTO `carts` VALUES(1400,'2016-05-27 13:47:04.457089','2016-05-27 13:47:04.457089',26,116);
INSERT INTO `carts` VALUES(1401,'2016-05-27 13:48:46.326018','2016-05-27 13:48:46.326018',40,116);
INSERT INTO `carts` VALUES(1402,'2016-05-28 07:09:09.726725','2016-05-28 07:09:09.726725',9,393);
INSERT INTO `carts` VALUES(1403,'2016-05-28 07:10:14.466685','2016-05-28 07:10:14.466685',12,393);
INSERT INTO `carts` VALUES(1404,'2016-05-28 07:12:12.009375','2016-05-28 07:12:12.009375',26,393);
INSERT INTO `carts` VALUES(1405,'2016-05-28 07:12:47.363616','2016-05-28 07:12:47.363616',40,393);
INSERT INTO `carts` VALUES(1406,'2016-05-29 02:50:52.747133','2016-05-29 02:50:52.747133',2,435);
INSERT INTO `carts` VALUES(1407,'2016-05-30 01:17:07.189583','2016-05-30 01:17:07.189583',5,435);
INSERT INTO `carts` VALUES(1408,'2016-05-31 00:11:12.477753','2016-05-31 00:11:12.477753',1,192);
INSERT INTO `carts` VALUES(1409,'2016-06-01 00:21:25.868916','2016-06-01 00:21:25.868916',5,227);
INSERT INTO `carts` VALUES(1411,'2016-06-03 14:51:59.640616','2016-06-03 14:51:59.640616',8,23);
INSERT INTO `carts` VALUES(1412,'2016-06-03 14:54:45.762359','2016-06-03 14:54:45.762359',36,23);
INSERT INTO `carts` VALUES(1413,'2016-06-04 11:44:34.060058','2016-06-04 11:44:34.060058',14,22);
INSERT INTO `carts` VALUES(1414,'2016-06-04 13:43:15.446972','2016-06-04 13:43:15.446972',1,459);
INSERT INTO `carts` VALUES(1415,'2016-06-04 15:22:26.736547','2016-06-04 15:22:26.736547',15,302);
INSERT INTO `carts` VALUES(1417,'2016-06-05 06:29:06.123972','2016-06-05 06:29:06.123972',5,460);
INSERT INTO `carts` VALUES(1418,'2016-06-05 14:34:16.983722','2016-06-05 14:34:16.983722',5,302);
INSERT INTO `carts` VALUES(1419,'2016-06-05 14:35:21.484241','2016-06-05 14:35:21.484241',9,302);
INSERT INTO `carts` VALUES(1420,'2016-06-05 14:35:34.767382','2016-06-05 14:35:34.767382',12,302);
INSERT INTO `carts` VALUES(1421,'2016-06-05 14:35:45.251770','2016-06-05 14:35:45.251770',14,302);
INSERT INTO `carts` VALUES(1422,'2016-06-05 14:36:12.642864','2016-06-05 14:36:12.642864',19,302);
INSERT INTO `carts` VALUES(1423,'2016-06-05 14:36:41.596683','2016-06-05 14:36:41.596683',26,302);
INSERT INTO `carts` VALUES(1424,'2016-06-05 14:37:04.098574','2016-06-05 14:37:04.098574',36,302);
INSERT INTO `carts` VALUES(1425,'2016-06-05 14:37:08.580587','2016-06-05 14:37:08.580587',38,302);
INSERT INTO `carts` VALUES(1426,'2016-06-05 14:37:16.473058','2016-06-05 14:37:16.473058',40,302);
INSERT INTO `carts` VALUES(1429,'2016-06-09 22:58:03.947996','2016-06-09 22:58:03.947996',36,116);
INSERT INTO `carts` VALUES(1431,'2016-06-11 07:03:52.276451','2016-06-11 07:03:52.276451',9,171);
INSERT INTO `carts` VALUES(1432,'2016-06-11 07:06:42.450153','2016-06-11 07:06:42.450153',40,171);
INSERT INTO `carts` VALUES(1433,'2016-06-11 07:07:50.959465','2016-06-11 07:07:50.959465',36,171);
INSERT INTO `carts` VALUES(1435,'2016-06-11 22:01:25.806827','2016-06-11 22:01:25.806827',5,462);
INSERT INTO `carts` VALUES(1436,'2016-06-12 08:22:30.172655','2016-06-12 08:22:30.172655',36,463);
INSERT INTO `carts` VALUES(1437,'2016-06-12 09:27:21.459479','2016-06-12 09:27:21.459479',25,463);
INSERT INTO `carts` VALUES(1438,'2016-06-12 09:28:24.103093','2016-06-12 09:28:24.103093',1,463);
INSERT INTO `carts` VALUES(1439,'2016-06-13 04:52:44.108364','2016-06-13 04:52:44.108364',36,67);
INSERT INTO `carts` VALUES(1440,'2016-06-15 11:15:26.249584','2016-06-15 11:15:26.249584',36,1);
INSERT INTO `carts` VALUES(1441,'2016-06-15 19:39:43.833950','2016-06-15 19:39:43.833950',5,40);
INSERT INTO `carts` VALUES(1442,'2016-06-16 11:38:02.299403','2016-06-16 11:38:02.299403',36,450);
INSERT INTO `carts` VALUES(1444,'2016-06-19 02:16:27.424339','2016-06-19 02:16:27.424339',31,466);
INSERT INTO `carts` VALUES(1446,'2016-06-19 02:19:02.362995','2016-06-19 02:19:02.362995',5,466);
INSERT INTO `carts` VALUES(1447,'2016-06-20 06:50:29.799883','2016-06-20 06:50:29.799883',36,227);
INSERT INTO `carts` VALUES(1448,'2016-06-20 11:19:49.870968','2016-06-20 11:19:49.870968',1,385);
INSERT INTO `carts` VALUES(1450,'2016-06-21 05:32:23.548810','2016-06-21 05:32:23.548810',2,236);
INSERT INTO `carts` VALUES(1452,'2016-06-23 01:58:03.249382','2016-06-23 01:58:03.249382',14,467);
INSERT INTO `carts` VALUES(1454,'2016-06-23 23:06:23.777153','2016-06-23 23:06:23.777153',15,471);
INSERT INTO `carts` VALUES(1455,'2016-06-24 06:37:17.012211','2016-06-24 06:37:17.012211',1,472);
INSERT INTO `carts` VALUES(1456,'2016-06-24 06:39:15.543907','2016-06-24 06:39:15.543907',5,472);
INSERT INTO `carts` VALUES(1457,'2016-06-24 06:40:01.929629','2016-06-24 06:40:01.929629',8,472);
INSERT INTO `carts` VALUES(1458,'2016-06-24 06:40:35.616801','2016-06-24 06:40:35.616801',9,472);
INSERT INTO `carts` VALUES(1459,'2016-06-24 06:40:49.866504','2016-06-24 06:40:49.866504',11,472);
INSERT INTO `carts` VALUES(1460,'2016-06-24 06:41:33.357592','2016-06-24 06:41:33.357592',12,472);
INSERT INTO `carts` VALUES(1461,'2016-06-24 06:41:39.984869','2016-06-24 06:41:39.984869',14,472);
INSERT INTO `carts` VALUES(1462,'2016-06-24 06:42:00.060884','2016-06-24 06:42:00.060884',15,472);
INSERT INTO `carts` VALUES(1463,'2016-06-24 06:58:25.192001','2016-06-24 06:58:25.192001',19,472);
INSERT INTO `carts` VALUES(1464,'2016-06-24 06:58:56.770527','2016-06-24 06:58:56.770527',24,472);
INSERT INTO `carts` VALUES(1465,'2016-06-24 06:59:35.406603','2016-06-24 06:59:35.406603',26,472);
INSERT INTO `carts` VALUES(1466,'2016-06-24 07:00:01.394966','2016-06-24 07:00:01.394966',29,472);
INSERT INTO `carts` VALUES(1467,'2016-06-24 07:00:18.610151','2016-06-24 07:00:18.610151',38,472);
INSERT INTO `carts` VALUES(1468,'2016-06-24 07:00:47.435481','2016-06-24 07:00:47.435481',40,472);
INSERT INTO `carts` VALUES(1469,'2016-06-24 07:03:36.104093','2016-06-24 07:03:36.104093',2,472);
INSERT INTO `carts` VALUES(1470,'2016-06-24 09:26:29.628411','2016-06-24 09:26:29.628411',NULL,NULL);
INSERT INTO `carts` VALUES(1471,'2016-06-24 10:19:13.941484','2016-06-24 10:19:13.941484',2,473);
INSERT INTO `carts` VALUES(1472,'2016-06-24 10:19:31.334056','2016-06-24 10:19:31.334056',24,473);
INSERT INTO `carts` VALUES(1473,'2016-06-24 10:20:49.970187','2016-06-24 10:20:49.970187',40,473);
INSERT INTO `carts` VALUES(1476,'2016-06-24 15:00:20.908514','2016-06-24 15:00:20.908514',1,394);
INSERT INTO `carts` VALUES(1477,'2016-06-24 15:01:11.377254','2016-06-24 15:01:11.377254',5,394);
INSERT INTO `carts` VALUES(1478,'2016-06-24 15:01:43.952501','2016-06-24 15:01:43.952501',12,394);
INSERT INTO `carts` VALUES(1479,'2016-06-24 15:01:51.116190','2016-06-24 15:01:51.116190',14,394);
INSERT INTO `carts` VALUES(1480,'2016-06-25 06:26:56.676434','2016-06-25 06:26:56.676434',29,474);
INSERT INTO `carts` VALUES(1482,'2016-06-25 06:36:56.444487','2016-06-25 06:36:56.444487',19,474);
INSERT INTO `carts` VALUES(1483,'2016-06-25 10:49:31.998411','2016-06-25 10:49:31.998411',24,28);
INSERT INTO `carts` VALUES(1484,'2016-06-25 10:59:18.655398','2016-06-25 10:59:18.655398',36,28);
INSERT INTO `carts` VALUES(1485,'2016-06-25 23:29:00.010006','2016-06-25 23:29:00.010006',12,475);
INSERT INTO `carts` VALUES(1488,'2016-06-26 00:06:55.581326','2016-06-26 00:06:55.581326',40,475);
INSERT INTO `carts` VALUES(1489,'2016-06-26 00:12:12.896268','2016-06-26 00:12:12.896268',9,475);
INSERT INTO `carts` VALUES(1490,'2016-06-26 00:13:47.324310','2016-06-26 00:13:47.324310',11,475);
INSERT INTO `carts` VALUES(1491,'2016-06-26 00:14:40.832457','2016-06-26 00:14:40.832457',14,475);
INSERT INTO `carts` VALUES(1492,'2016-06-26 00:16:31.738734','2016-06-26 00:16:31.738734',24,475);
INSERT INTO `carts` VALUES(1493,'2016-06-26 00:17:40.111608','2016-06-26 00:17:40.111608',26,475);
INSERT INTO `carts` VALUES(1494,'2016-06-26 00:19:03.917826','2016-06-26 00:19:03.917826',29,475);
INSERT INTO `carts` VALUES(1495,'2016-06-26 00:20:24.337328','2016-06-26 00:20:24.337328',36,475);
INSERT INTO `carts` VALUES(1496,'2016-06-26 02:49:05.519421','2016-06-26 02:49:05.519421',15,474);
INSERT INTO `carts` VALUES(1497,'2016-06-26 07:51:58.802100','2016-06-26 07:51:58.802100',38,463);
INSERT INTO `carts` VALUES(1499,'2016-06-28 18:55:55.718202','2016-06-28 18:55:55.718202',2,479);
INSERT INTO `carts` VALUES(1500,'2016-06-28 18:57:44.585560','2016-06-28 18:57:44.585560',30,479);
INSERT INTO `carts` VALUES(1501,'2016-06-29 04:59:15.194539','2016-06-29 04:59:15.194539',1,481);
INSERT INTO `carts` VALUES(1502,'2016-06-29 04:59:50.074274','2016-06-29 04:59:50.074274',8,481);
INSERT INTO `carts` VALUES(1503,'2016-06-29 09:05:14.838582','2016-06-29 09:05:14.838582',2,484);
INSERT INTO `carts` VALUES(1504,'2016-06-29 09:05:20.268514','2016-06-29 09:05:20.268514',1,484);
INSERT INTO `carts` VALUES(1505,'2016-06-29 09:05:33.470561','2016-06-29 09:05:33.470561',8,484);
INSERT INTO `carts` VALUES(1506,'2016-06-29 09:05:50.572735','2016-06-29 09:05:50.572735',9,484);
INSERT INTO `carts` VALUES(1507,'2016-06-29 09:06:05.881710','2016-06-29 09:06:05.881710',40,484);
INSERT INTO `carts` VALUES(1508,'2016-06-29 09:06:25.285881','2016-06-29 09:06:25.285881',38,484);
INSERT INTO `carts` VALUES(1509,'2016-06-29 09:22:54.139471','2016-06-29 09:22:54.139471',1,485);
INSERT INTO `carts` VALUES(1510,'2016-06-29 09:25:52.770031','2016-06-29 09:25:52.770031',9,487);
INSERT INTO `carts` VALUES(1511,'2016-06-29 09:28:14.731966','2016-06-29 09:28:14.731966',8,487);
INSERT INTO `carts` VALUES(1512,'2016-06-29 09:30:02.676851','2016-06-29 09:30:02.676851',1,487);
INSERT INTO `carts` VALUES(1513,'2016-06-29 09:36:31.218860','2016-06-29 09:36:31.218860',14,487);
INSERT INTO `carts` VALUES(1514,'2016-06-29 11:20:30.754023','2016-06-29 11:20:30.754023',1,475);
INSERT INTO `carts` VALUES(1516,'2016-06-29 14:40:01.071764','2016-06-29 14:40:01.071764',40,432);
INSERT INTO `carts` VALUES(1517,'2016-06-30 03:19:37.340416','2016-06-30 03:19:37.340416',2,490);
INSERT INTO `carts` VALUES(1518,'2016-06-30 03:19:43.860711','2016-06-30 03:19:43.860711',8,490);
INSERT INTO `carts` VALUES(1519,'2016-06-30 03:20:02.314079','2016-06-30 03:20:02.314079',19,490);
INSERT INTO `carts` VALUES(1520,'2016-06-30 03:21:00.512245','2016-06-30 03:21:00.512245',29,490);
INSERT INTO `carts` VALUES(1521,'2016-06-30 03:21:20.822100','2016-06-30 03:21:20.822100',36,490);
INSERT INTO `carts` VALUES(1522,'2016-06-30 03:21:44.931423','2016-06-30 03:21:44.931423',38,490);
INSERT INTO `carts` VALUES(1523,'2016-06-30 03:24:38.098788','2016-06-30 03:24:38.098788',33,490);
INSERT INTO `carts` VALUES(1524,'2016-06-30 03:26:10.567602','2016-06-30 03:26:10.567602',26,490);
INSERT INTO `carts` VALUES(1525,'2016-06-30 03:26:35.819197','2016-06-30 03:26:35.819197',30,490);
INSERT INTO `carts` VALUES(1526,'2016-06-30 06:32:27.144525','2016-06-30 06:32:27.144525',1,490);
INSERT INTO `carts` VALUES(1527,'2016-06-30 06:36:03.325756','2016-06-30 06:36:03.325756',38,28);
INSERT INTO `carts` VALUES(1531,'2016-07-01 14:37:01.428282','2016-07-01 14:37:01.428282',26,479);
INSERT INTO `carts` VALUES(1532,'2016-07-01 14:38:37.094031','2016-07-01 14:38:37.094031',33,479);
INSERT INTO `carts` VALUES(1533,'2016-07-01 14:39:44.348703','2016-07-01 14:39:44.348703',36,479);
INSERT INTO `carts` VALUES(1534,'2016-07-01 14:41:44.580574','2016-07-01 14:41:44.580574',40,479);
INSERT INTO `carts` VALUES(1535,'2016-07-02 01:49:42.538929','2016-07-02 01:49:42.538929',8,492);
INSERT INTO `carts` VALUES(1536,'2016-07-02 19:01:57.855017','2016-07-02 19:01:57.855017',24,493);
INSERT INTO `carts` VALUES(1537,'2016-07-02 19:03:05.056814','2016-07-02 19:03:05.056814',33,493);
INSERT INTO `carts` VALUES(1538,'2016-07-02 19:03:55.766938','2016-07-02 19:03:55.766938',2,493);
INSERT INTO `carts` VALUES(1539,'2016-07-02 19:04:04.752584','2016-07-02 19:04:04.752584',8,493);
INSERT INTO `carts` VALUES(1540,'2016-07-02 19:04:17.555059','2016-07-02 19:04:17.555059',9,493);
INSERT INTO `carts` VALUES(1541,'2016-07-02 19:04:29.880997','2016-07-02 19:04:29.880997',12,493);
INSERT INTO `carts` VALUES(1542,'2016-07-02 19:04:36.440674','2016-07-02 19:04:36.440674',14,493);
INSERT INTO `carts` VALUES(1545,'2016-07-02 19:38:51.140166','2016-07-02 19:38:51.140166',14,474);
INSERT INTO `carts` VALUES(1546,'2016-07-03 02:31:45.957240','2016-07-03 02:31:45.957240',2,466);
INSERT INTO `carts` VALUES(1547,'2016-07-03 02:31:49.500032','2016-07-03 02:31:49.500032',1,466);
INSERT INTO `carts` VALUES(1548,'2016-07-03 02:32:05.431771','2016-07-03 02:32:05.431771',14,466);
INSERT INTO `carts` VALUES(1549,'2016-07-03 04:40:09.313760','2016-07-03 04:40:09.313760',12,463);
INSERT INTO `carts` VALUES(1551,'2016-07-04 12:55:54.220610','2016-07-04 12:55:54.220610',15,494);
INSERT INTO `carts` VALUES(1552,'2016-07-05 23:25:19.864897','2016-07-05 23:25:19.864897',26,42);
INSERT INTO `carts` VALUES(1553,'2016-07-06 05:37:20.204081','2016-07-06 05:37:20.204081',14,23);
INSERT INTO `carts` VALUES(1554,'2016-07-06 06:43:39.036116','2016-07-06 06:43:39.036116',1,495);
INSERT INTO `carts` VALUES(1555,'2016-07-06 06:43:58.523910','2016-07-06 06:43:58.523910',2,495);
INSERT INTO `carts` VALUES(1556,'2016-07-06 06:44:04.542363','2016-07-06 06:44:04.542363',8,495);
INSERT INTO `carts` VALUES(1557,'2016-07-06 06:44:24.357096','2016-07-06 06:44:24.357096',9,495);
INSERT INTO `carts` VALUES(1558,'2016-07-06 06:44:43.827601','2016-07-06 06:44:43.827601',11,495);
INSERT INTO `carts` VALUES(1559,'2016-07-06 06:44:51.368270','2016-07-06 06:44:51.368270',12,495);
INSERT INTO `carts` VALUES(1560,'2016-07-06 06:45:01.648728','2016-07-06 06:45:01.648728',14,495);
INSERT INTO `carts` VALUES(1561,'2016-07-06 06:45:38.815123','2016-07-06 06:45:38.815123',15,495);
INSERT INTO `carts` VALUES(1562,'2016-07-06 06:46:02.395317','2016-07-06 06:46:02.395317',19,495);
INSERT INTO `carts` VALUES(1563,'2016-07-06 06:47:14.075614','2016-07-06 06:47:14.075614',24,495);
INSERT INTO `carts` VALUES(1564,'2016-07-06 06:47:29.206801','2016-07-06 06:47:29.206801',26,495);
INSERT INTO `carts` VALUES(1565,'2016-07-06 06:47:36.365626','2016-07-06 06:47:36.365626',29,495);
INSERT INTO `carts` VALUES(1566,'2016-07-06 06:48:00.761341','2016-07-06 06:48:00.761341',33,495);
INSERT INTO `carts` VALUES(1567,'2016-07-06 06:48:21.330257','2016-07-06 06:48:21.330257',40,495);
INSERT INTO `carts` VALUES(1568,'2016-07-06 06:48:30.418940','2016-07-06 06:48:30.418940',38,495);
INSERT INTO `carts` VALUES(1569,'2016-07-06 06:48:56.311571','2016-07-06 06:48:56.311571',36,495);
INSERT INTO `carts` VALUES(1570,'2016-07-06 06:49:06.017108','2016-07-06 06:49:06.017108',30,495);
INSERT INTO `carts` VALUES(1571,'2016-07-07 01:44:38.829999','2016-07-07 01:44:38.829999',9,136);
INSERT INTO `carts` VALUES(1572,'2016-07-07 23:15:11.009684','2016-07-07 23:15:11.009684',5,497);
INSERT INTO `carts` VALUES(1573,'2016-07-08 02:25:13.765514','2016-07-08 02:25:13.765514',2,486);
INSERT INTO `carts` VALUES(1574,'2016-07-08 02:25:21.376521','2016-07-08 02:25:21.376521',1,486);
INSERT INTO `carts` VALUES(1575,'2016-07-08 02:25:38.542509','2016-07-08 02:25:38.542509',8,486);
INSERT INTO `carts` VALUES(1576,'2016-07-08 02:25:54.258201','2016-07-08 02:25:54.258201',9,486);
INSERT INTO `carts` VALUES(1577,'2016-07-08 02:26:15.484321','2016-07-08 02:26:15.484321',40,486);
INSERT INTO `carts` VALUES(1578,'2016-07-08 07:53:35.806655','2016-07-08 07:53:35.806655',14,499);
INSERT INTO `carts` VALUES(1579,'2016-07-08 12:50:20.341867','2016-07-08 12:50:20.341867',1,500);
INSERT INTO `carts` VALUES(1580,'2016-07-08 12:51:05.147871','2016-07-08 12:51:05.147871',19,500);
INSERT INTO `carts` VALUES(1581,'2016-07-08 12:52:04.760005','2016-07-08 12:52:04.760005',14,500);
INSERT INTO `carts` VALUES(1582,'2016-07-08 12:52:23.030068','2016-07-08 12:52:23.030068',15,500);
INSERT INTO `carts` VALUES(1583,'2016-07-08 12:52:50.786904','2016-07-08 12:52:50.786904',12,500);
INSERT INTO `carts` VALUES(1584,'2016-07-08 12:53:10.199089','2016-07-08 12:53:10.199089',8,500);
INSERT INTO `carts` VALUES(1585,'2016-07-08 12:55:49.627905','2016-07-08 12:55:49.627905',2,500);
INSERT INTO `carts` VALUES(1586,'2016-07-08 12:56:41.335111','2016-07-08 12:56:41.335111',11,500);
INSERT INTO `carts` VALUES(1587,'2016-07-09 05:03:02.868280','2016-07-09 05:03:02.868280',8,497);
INSERT INTO `carts` VALUES(1588,'2016-07-09 12:28:33.999188','2016-07-09 12:28:33.999188',37,1);
INSERT INTO `carts` VALUES(1589,'2016-07-10 08:59:01.592010','2016-07-10 08:59:01.592010',14,503);
INSERT INTO `carts` VALUES(1590,'2016-07-10 08:59:32.112699','2016-07-10 08:59:32.112699',19,503);
INSERT INTO `carts` VALUES(1591,'2016-07-10 09:00:18.303576','2016-07-10 09:00:18.303576',11,503);
INSERT INTO `carts` VALUES(1592,'2016-07-10 09:00:34.461289','2016-07-10 09:00:34.461289',24,503);
INSERT INTO `carts` VALUES(1593,'2016-07-10 09:01:01.793251','2016-07-10 09:01:01.793251',33,503);
INSERT INTO `carts` VALUES(1594,'2016-07-10 09:01:14.928948','2016-07-10 09:01:14.928948',30,503);
INSERT INTO `carts` VALUES(1595,'2016-07-10 09:01:38.428290','2016-07-10 09:01:38.428290',29,503);
INSERT INTO `carts` VALUES(1596,'2016-07-10 09:01:45.725050','2016-07-10 09:01:45.725050',26,503);
INSERT INTO `carts` VALUES(1597,'2016-07-10 09:02:06.383955','2016-07-10 09:02:06.383955',15,503);
INSERT INTO `carts` VALUES(1598,'2016-07-10 09:03:55.639164','2016-07-10 09:03:55.639164',12,503);
INSERT INTO `carts` VALUES(1599,'2016-07-10 09:04:05.468195','2016-07-10 09:04:05.468195',9,503);
INSERT INTO `carts` VALUES(1600,'2016-07-10 09:04:15.734494','2016-07-10 09:04:15.734494',8,503);
INSERT INTO `carts` VALUES(1601,'2016-07-10 09:04:41.327190','2016-07-10 09:04:41.327190',2,503);
INSERT INTO `carts` VALUES(1602,'2016-07-10 09:04:44.702633','2016-07-10 09:04:44.702633',1,503);
INSERT INTO `carts` VALUES(1603,'2016-07-11 09:39:50.502129','2016-07-11 09:39:50.502129',15,505);
INSERT INTO `carts` VALUES(1604,'2016-07-11 20:11:39.810703','2016-07-11 20:11:39.810703',5,463);
INSERT INTO `carts` VALUES(1605,'2016-07-11 20:12:20.079283','2016-07-11 20:12:20.079283',15,463);
INSERT INTO `carts` VALUES(1606,'2016-07-11 22:19:24.302629','2016-07-11 22:19:24.302629',1,506);
INSERT INTO `carts` VALUES(1607,'2016-07-12 00:47:50.648303','2016-07-12 00:47:50.648303',2,506);
INSERT INTO `carts` VALUES(1608,'2016-07-12 00:48:04.675782','2016-07-12 00:48:04.675782',11,506);
INSERT INTO `carts` VALUES(1609,'2016-07-12 00:48:25.327378','2016-07-12 00:48:25.327378',19,506);
INSERT INTO `carts` VALUES(1610,'2016-07-12 00:49:00.954760','2016-07-12 00:49:00.954760',33,506);
INSERT INTO `carts` VALUES(1611,'2016-07-12 00:50:01.317463','2016-07-12 00:50:01.317463',40,506);
INSERT INTO `carts` VALUES(1612,'2016-07-12 06:35:50.782698','2016-07-12 06:35:50.782698',14,507);
INSERT INTO `carts` VALUES(1613,'2016-07-12 23:41:18.924032','2016-07-12 23:41:18.924032',40,508);
INSERT INTO `carts` VALUES(1615,'2016-07-12 23:44:59.626672','2016-07-12 23:44:59.626672',2,508);
INSERT INTO `carts` VALUES(1616,'2016-07-12 23:46:40.015938','2016-07-12 23:46:40.015938',30,508);
INSERT INTO `carts` VALUES(1617,'2016-07-14 23:50:51.616520','2016-07-14 23:50:51.616520',9,123);
INSERT INTO `carts` VALUES(1618,'2016-07-14 23:51:33.270292','2016-07-14 23:51:33.270292',14,123);
INSERT INTO `carts` VALUES(1619,'2016-07-14 23:52:28.364265','2016-07-14 23:52:28.364265',26,123);
INSERT INTO `carts` VALUES(1620,'2016-07-14 23:52:50.808997','2016-07-14 23:52:50.808997',33,123);
INSERT INTO `carts` VALUES(1621,'2016-07-14 23:53:38.881312','2016-07-14 23:53:38.881312',38,123);
INSERT INTO `carts` VALUES(1625,'2016-07-15 10:22:37.267121','2016-07-15 10:22:37.267121',1,510);
INSERT INTO `carts` VALUES(1626,'2016-07-15 14:19:27.589009','2016-07-15 14:19:27.589009',14,11);
INSERT INTO `carts` VALUES(1627,'2016-07-15 14:21:04.274342','2016-07-15 14:21:04.274342',24,11);
INSERT INTO `carts` VALUES(1628,'2016-07-16 00:13:06.119026','2016-07-16 00:13:06.119026',36,5);
INSERT INTO `carts` VALUES(1629,'2016-07-21 05:22:52.384436','2016-07-21 05:22:52.384436',8,514);
INSERT INTO `carts` VALUES(1630,'2016-07-21 05:23:15.005644','2016-07-21 05:23:15.005644',9,514);
INSERT INTO `carts` VALUES(1631,'2016-07-21 05:23:29.947976','2016-07-21 05:23:29.947976',11,514);
INSERT INTO `carts` VALUES(1632,'2016-07-21 05:23:39.912318','2016-07-21 05:23:39.912318',14,514);
INSERT INTO `carts` VALUES(1633,'2016-07-21 05:24:29.975324','2016-07-21 05:24:29.975324',15,514);
INSERT INTO `carts` VALUES(1634,'2016-07-21 05:28:19.960990','2016-07-21 05:28:19.960990',24,514);
INSERT INTO `carts` VALUES(1635,'2016-07-21 05:28:34.143388','2016-07-21 05:28:34.143388',26,514);
INSERT INTO `carts` VALUES(1636,'2016-07-21 05:28:50.130437','2016-07-21 05:28:50.130437',29,514);
INSERT INTO `carts` VALUES(1637,'2016-07-21 05:29:13.150628','2016-07-21 05:29:13.150628',33,514);
INSERT INTO `carts` VALUES(1638,'2016-07-21 05:29:31.460112','2016-07-21 05:29:31.460112',36,514);
INSERT INTO `carts` VALUES(1639,'2016-07-21 05:29:46.289413','2016-07-21 05:29:46.289413',38,514);
INSERT INTO `carts` VALUES(1640,'2016-07-21 09:07:53.236979','2016-07-21 09:07:53.236979',38,1);
INSERT INTO `carts` VALUES(1641,'2016-07-21 13:24:33.726998','2016-07-21 13:24:33.726998',14,213);
INSERT INTO `carts` VALUES(1644,'2016-07-22 07:13:15.675276','2016-07-22 07:13:15.675276',1,515);
INSERT INTO `carts` VALUES(1645,'2016-07-22 07:14:42.539823','2016-07-22 07:14:42.539823',8,515);
INSERT INTO `carts` VALUES(1646,'2016-07-22 07:15:42.777733','2016-07-22 07:15:42.777733',9,515);
INSERT INTO `carts` VALUES(1647,'2016-07-22 07:16:11.589652','2016-07-22 07:16:11.589652',24,515);
INSERT INTO `carts` VALUES(1648,'2016-07-22 07:16:39.588433','2016-07-22 07:16:39.588433',2,515);
INSERT INTO `carts` VALUES(1649,'2016-07-25 01:18:12.796795','2016-07-25 01:18:12.796795',33,226);
INSERT INTO `carts` VALUES(1650,'2016-07-25 02:24:11.353314','2016-07-25 02:24:11.353314',2,244);
INSERT INTO `carts` VALUES(1651,'2016-07-26 08:20:01.353306','2016-07-26 08:20:01.353306',12,516);
INSERT INTO `carts` VALUES(1652,'2016-07-26 08:20:21.580278','2016-07-26 08:20:21.580278',8,516);
INSERT INTO `carts` VALUES(1653,'2016-07-26 08:24:53.780595','2016-07-26 08:24:53.780595',15,516);
INSERT INTO `carts` VALUES(1654,'2016-07-28 08:20:07.657531','2016-07-28 08:20:07.657531',9,100);
INSERT INTO `carts` VALUES(1655,'2016-07-28 08:22:19.077442','2016-07-28 08:22:19.077442',33,100);
INSERT INTO `carts` VALUES(1656,'2016-07-28 08:27:34.907802','2016-07-28 08:27:34.907802',36,100);
INSERT INTO `carts` VALUES(1657,'2016-07-28 08:27:46.027968','2016-07-28 08:27:46.027968',40,100);
INSERT INTO `carts` VALUES(1658,'2016-07-28 19:05:45.253152','2016-07-28 19:05:45.253152',1,474);
INSERT INTO `carts` VALUES(1659,'2016-07-29 10:07:48.170248','2016-07-29 10:07:48.170248',1,517);
INSERT INTO `carts` VALUES(1660,'2016-07-29 14:08:21.631469','2016-07-29 14:08:21.631469',1,39);
INSERT INTO `carts` VALUES(1661,'2016-07-29 14:09:46.501238','2016-07-29 14:09:46.501238',38,39);
INSERT INTO `carts` VALUES(1662,'2016-07-29 14:11:33.710158','2016-07-29 14:11:33.710158',2,39);
INSERT INTO `carts` VALUES(1663,'2016-07-29 14:12:13.266685','2016-07-29 14:12:13.266685',12,39);
INSERT INTO `carts` VALUES(1664,'2016-07-29 14:12:55.329204','2016-07-29 14:12:55.329204',26,39);
INSERT INTO `carts` VALUES(1665,'2016-07-29 14:13:13.870470','2016-07-29 14:13:13.870470',29,39);
INSERT INTO `carts` VALUES(1666,'2016-07-29 14:13:31.646674','2016-07-29 14:13:31.646674',40,39);
INSERT INTO `carts` VALUES(1667,'2016-07-30 09:34:43.095482','2016-07-30 09:34:43.095482',14,26);
INSERT INTO `carts` VALUES(1669,'2016-07-30 14:43:46.317786','2016-07-30 14:43:46.317786',15,520);
INSERT INTO `carts` VALUES(1670,'2016-07-31 13:55:57.991102','2016-07-31 13:55:57.991102',26,521);
INSERT INTO `carts` VALUES(1671,'2016-07-31 13:56:38.984152','2016-07-31 13:56:38.984152',40,521);
INSERT INTO `carts` VALUES(1672,'2016-07-31 13:57:36.568236','2016-07-31 13:57:36.568236',29,521);
INSERT INTO `carts` VALUES(1673,'2016-07-31 14:54:29.960557','2016-07-31 14:54:29.960557',15,521);
INSERT INTO `carts` VALUES(1674,'2016-07-31 14:56:12.175457','2016-07-31 14:56:12.175457',19,521);
INSERT INTO `carts` VALUES(1675,'2016-08-01 05:34:29.207300','2016-08-01 05:34:29.207300',2,510);
INSERT INTO `carts` VALUES(1676,'2016-08-01 05:34:41.129498','2016-08-01 05:34:41.129498',9,510);
INSERT INTO `carts` VALUES(1677,'2016-08-01 18:12:46.381433','2016-08-01 18:12:46.381433',2,523);
INSERT INTO `carts` VALUES(1678,'2016-08-01 18:12:59.030973','2016-08-01 18:12:59.030973',15,523);
INSERT INTO `carts` VALUES(1679,'2016-08-01 18:15:24.050943','2016-08-01 18:15:24.050943',40,523);
INSERT INTO `carts` VALUES(1680,'2016-08-01 18:15:54.530281','2016-08-01 18:15:54.530281',30,523);
INSERT INTO `carts` VALUES(1681,'2016-08-01 18:16:58.812461','2016-08-01 18:16:58.812461',33,523);
INSERT INTO `carts` VALUES(1682,'2016-08-01 18:18:40.193313','2016-08-01 18:18:40.193313',36,523);
INSERT INTO `carts` VALUES(1683,'2016-08-01 18:19:05.678800','2016-08-01 18:19:05.678800',24,523);
INSERT INTO `carts` VALUES(1684,'2016-08-01 18:19:52.148745','2016-08-01 18:19:52.148745',14,523);
INSERT INTO `carts` VALUES(1685,'2016-08-01 18:20:32.506524','2016-08-01 18:20:32.506524',11,523);
INSERT INTO `carts` VALUES(1686,'2016-08-01 18:20:35.477023','2016-08-01 18:20:35.477023',11,523);
INSERT INTO `carts` VALUES(1687,'2016-08-01 18:20:51.097074','2016-08-01 18:20:51.097074',8,523);
INSERT INTO `carts` VALUES(1688,'2016-08-01 18:21:09.941688','2016-08-01 18:21:09.941688',9,523);
INSERT INTO `carts` VALUES(1689,'2016-08-01 18:21:22.821252','2016-08-01 18:21:22.821252',12,523);
INSERT INTO `carts` VALUES(1690,'2016-08-01 18:21:39.634459','2016-08-01 18:21:39.634459',19,523);
INSERT INTO `carts` VALUES(1691,'2016-08-01 18:22:48.524056','2016-08-01 18:22:48.524056',26,523);
INSERT INTO `carts` VALUES(1692,'2016-08-01 18:22:58.063681','2016-08-01 18:22:58.063681',29,523);
INSERT INTO `carts` VALUES(1693,'2016-08-01 18:23:21.095694','2016-08-01 18:23:21.095694',38,523);
INSERT INTO `carts` VALUES(1694,'2016-08-02 02:28:38.793920','2016-08-02 02:28:38.793920',1,524);
INSERT INTO `carts` VALUES(1695,'2016-08-02 02:41:21.208949','2016-08-02 02:41:21.208949',14,524);
INSERT INTO `carts` VALUES(1697,'2016-08-02 02:52:19.482641','2016-08-02 02:52:19.482641',1,525);
INSERT INTO `carts` VALUES(1698,'2016-08-02 02:58:32.253339','2016-08-02 02:58:32.253339',2,525);
INSERT INTO `carts` VALUES(1699,'2016-08-02 02:58:42.844748','2016-08-02 02:58:42.844748',15,525);
INSERT INTO `carts` VALUES(1701,'2016-08-02 09:11:03.237851','2016-08-02 09:11:03.237851',30,525);
INSERT INTO `carts` VALUES(1702,'2016-08-02 09:32:40.459928','2016-08-02 09:32:40.459928',2,492);
INSERT INTO `carts` VALUES(1703,'2016-08-02 09:32:58.860809','2016-08-02 09:32:58.860809',14,492);
INSERT INTO `carts` VALUES(1705,'2016-08-06 01:36:13.884415','2016-08-06 01:36:13.884415',14,509);
INSERT INTO `carts` VALUES(1706,'2016-08-06 02:46:47.141028','2016-08-06 02:46:47.141028',1,528);
INSERT INTO `carts` VALUES(1708,'2016-08-06 03:13:47.406868','2016-08-06 03:13:47.406868',12,529);
INSERT INTO `carts` VALUES(1709,'2016-08-06 03:14:18.230398','2016-08-06 03:14:18.230398',8,529);
INSERT INTO `carts` VALUES(1710,'2016-08-06 03:14:32.856539','2016-08-06 03:14:32.856539',9,529);
INSERT INTO `carts` VALUES(1711,'2016-08-06 09:10:20.520386','2016-08-06 09:10:20.520386',38,539);
INSERT INTO `carts` VALUES(1712,'2016-08-06 10:37:37.960386','2016-08-06 10:37:37.960386',1,541);
INSERT INTO `carts` VALUES(1713,'2016-08-06 10:38:33.428765','2016-08-06 10:38:33.428765',2,541);
INSERT INTO `carts` VALUES(1714,'2016-08-06 10:38:44.942942','2016-08-06 10:38:44.942942',8,541);
INSERT INTO `carts` VALUES(1715,'2016-08-06 10:38:54.772017','2016-08-06 10:38:54.772017',9,541);
INSERT INTO `carts` VALUES(1716,'2016-08-06 10:39:09.966118','2016-08-06 10:39:09.966118',12,541);
INSERT INTO `carts` VALUES(1717,'2016-08-06 10:39:16.450608','2016-08-06 10:39:16.450608',14,541);
INSERT INTO `carts` VALUES(1718,'2016-08-06 10:40:27.461492','2016-08-06 10:40:27.461492',19,541);
INSERT INTO `carts` VALUES(1719,'2016-08-06 11:46:10.026090','2016-08-06 11:46:10.026090',8,543);
INSERT INTO `carts` VALUES(1720,'2016-08-06 12:37:13.833284','2016-08-06 12:37:13.833284',1,550);
INSERT INTO `carts` VALUES(1721,'2016-08-06 13:43:02.935548','2016-08-06 13:43:02.935548',1,543);
INSERT INTO `carts` VALUES(1722,'2016-08-06 14:07:58.895191','2016-08-06 14:07:58.895191',1,553);
INSERT INTO `carts` VALUES(1723,'2016-08-06 17:12:28.820087','2016-08-06 17:12:28.820087',8,558);
INSERT INTO `carts` VALUES(1724,'2016-08-06 17:13:44.625499','2016-08-06 17:13:44.625499',11,558);
INSERT INTO `carts` VALUES(1725,'2016-08-06 17:15:30.388069','2016-08-06 17:15:30.388069',15,558);
INSERT INTO `carts` VALUES(1726,'2016-08-06 22:05:27.913866','2016-08-06 22:05:27.913866',40,565);
INSERT INTO `carts` VALUES(1727,'2016-08-06 22:07:44.564451','2016-08-06 22:07:44.564451',8,565);
INSERT INTO `carts` VALUES(1728,'2016-08-06 22:09:46.312044','2016-08-06 22:09:46.312044',5,565);
INSERT INTO `carts` VALUES(1729,'2016-08-06 22:11:18.856374','2016-08-06 22:11:18.856374',1,565);
INSERT INTO `carts` VALUES(1730,'2016-08-06 22:15:02.413263','2016-08-06 22:15:02.413263',38,565);
INSERT INTO `carts` VALUES(1731,'2016-08-06 22:16:32.478191','2016-08-06 22:16:32.478191',15,565);
INSERT INTO `carts` VALUES(1732,'2016-08-06 23:16:59.087756','2016-08-06 23:16:59.087756',30,557);
INSERT INTO `carts` VALUES(1733,'2016-08-06 23:28:14.789077','2016-08-06 23:28:14.789077',12,566);
INSERT INTO `carts` VALUES(1734,'2016-08-07 12:45:18.366137','2016-08-07 12:45:18.366137',24,572);
INSERT INTO `carts` VALUES(1735,'2016-08-07 12:45:41.629312','2016-08-07 12:45:41.629312',12,572);
INSERT INTO `carts` VALUES(1736,'2016-08-07 21:21:10.637374','2016-08-07 21:21:10.637374',40,574);
INSERT INTO `carts` VALUES(1737,'2016-08-07 22:36:20.672077','2016-08-07 22:36:20.672077',11,572);
INSERT INTO `carts` VALUES(1738,'2016-08-07 22:36:40.793214','2016-08-07 22:36:40.793214',1,572);
INSERT INTO `carts` VALUES(1739,'2016-08-07 23:26:02.037731','2016-08-07 23:26:02.037731',19,575);
INSERT INTO `carts` VALUES(1740,'2016-08-08 01:20:40.470052','2016-08-08 01:20:40.470052',1,577);
INSERT INTO `carts` VALUES(1741,'2016-08-08 01:21:15.422098','2016-08-08 01:21:15.422098',40,577);
INSERT INTO `carts` VALUES(1742,'2016-08-08 01:40:31.361751','2016-08-08 01:40:31.361751',29,578);
INSERT INTO `carts` VALUES(1743,'2016-08-08 02:55:24.225997','2016-08-08 02:55:24.225997',8,540);
INSERT INTO `carts` VALUES(1744,'2016-08-08 05:53:24.024148','2016-08-08 05:53:24.024148',1,554);
INSERT INTO `carts` VALUES(1745,'2016-08-08 07:48:02.989189','2016-08-08 07:48:02.989189',2,581);
INSERT INTO `carts` VALUES(1747,'2016-08-08 08:41:48.560717','2016-08-08 08:41:48.560717',1,583);
INSERT INTO `carts` VALUES(1749,'2016-08-08 13:40:38.017813','2016-08-08 13:40:38.017813',14,528);
INSERT INTO `carts` VALUES(1750,'2016-08-08 13:41:07.303296','2016-08-08 13:41:07.303296',15,528);
INSERT INTO `carts` VALUES(1751,'2016-08-08 13:42:01.220172','2016-08-08 13:42:01.220172',29,528);
INSERT INTO `carts` VALUES(1752,'2016-08-08 13:42:13.309815','2016-08-08 13:42:13.309815',30,528);
INSERT INTO `carts` VALUES(1753,'2016-08-08 13:42:27.195116','2016-08-08 13:42:27.195116',33,528);
INSERT INTO `carts` VALUES(1754,'2016-08-08 13:42:42.070630','2016-08-08 13:42:42.070630',36,528);
INSERT INTO `carts` VALUES(1755,'2016-08-08 13:42:50.311801','2016-08-08 13:42:50.311801',38,528);
INSERT INTO `carts` VALUES(1756,'2016-08-08 13:43:33.325661','2016-08-08 13:43:33.325661',40,528);
INSERT INTO `carts` VALUES(1758,'2016-08-08 13:56:50.684506','2016-08-08 13:56:50.684506',1,586);
INSERT INTO `carts` VALUES(1759,'2016-08-08 13:57:29.551769','2016-08-08 13:57:29.551769',2,586);
INSERT INTO `carts` VALUES(1760,'2016-08-08 13:57:36.077467','2016-08-08 13:57:36.077467',8,586);
INSERT INTO `carts` VALUES(1761,'2016-08-08 13:58:03.724371','2016-08-08 13:58:03.724371',9,586);
INSERT INTO `carts` VALUES(1762,'2016-08-08 13:58:12.665217','2016-08-08 13:58:12.665217',11,586);
INSERT INTO `carts` VALUES(1763,'2016-08-08 13:58:25.291094','2016-08-08 13:58:25.291094',14,586);
INSERT INTO `carts` VALUES(1764,'2016-08-08 13:58:51.488272','2016-08-08 13:58:51.488272',19,586);
INSERT INTO `carts` VALUES(1765,'2016-08-08 13:59:10.794573','2016-08-08 13:59:10.794573',24,586);
INSERT INTO `carts` VALUES(1766,'2016-08-09 07:44:59.422331','2016-08-09 07:44:59.422331',1,206);
INSERT INTO `carts` VALUES(1767,'2016-08-09 07:48:25.337802','2016-08-09 07:48:25.337802',15,206);
INSERT INTO `carts` VALUES(1769,'2016-08-09 15:03:44.415091','2016-08-09 15:03:44.415091',11,213);
INSERT INTO `carts` VALUES(1770,'2016-08-09 15:05:45.296351','2016-08-09 15:05:45.296351',3,213);
INSERT INTO `carts` VALUES(1771,'2016-08-09 22:15:25.728800','2016-08-09 22:15:25.728800',29,592);
INSERT INTO `carts` VALUES(1772,'2016-08-09 22:17:30.337992','2016-08-09 22:17:30.337992',33,592);
INSERT INTO `carts` VALUES(1773,'2016-08-09 23:41:28.344445','2016-08-09 23:41:28.344445',38,594);
INSERT INTO `carts` VALUES(1774,'2016-08-10 10:37:45.504746','2016-08-10 10:37:45.504746',30,206);
INSERT INTO `carts` VALUES(1775,'2016-08-10 21:00:43.475748','2016-08-10 21:00:43.475748',1,595);
INSERT INTO `carts` VALUES(1776,'2016-08-10 21:03:54.015610','2016-08-10 21:03:54.015610',8,595);
INSERT INTO `carts` VALUES(1777,'2016-08-10 21:05:03.061774','2016-08-10 21:05:03.061774',9,595);
INSERT INTO `carts` VALUES(1779,'2016-08-10 21:09:27.645108','2016-08-10 21:09:27.645108',2,595);
INSERT INTO `carts` VALUES(1780,'2016-08-10 21:18:08.373361','2016-08-10 21:18:08.373361',30,596);
INSERT INTO `carts` VALUES(1781,'2016-08-10 21:18:58.171371','2016-08-10 21:18:58.171371',8,596);
INSERT INTO `carts` VALUES(1782,'2016-08-10 21:19:14.695538','2016-08-10 21:19:14.695538',9,596);
INSERT INTO `carts` VALUES(1783,'2016-08-10 21:19:35.856749','2016-08-10 21:19:35.856749',15,596);
INSERT INTO `carts` VALUES(1784,'2016-08-10 21:20:11.879169','2016-08-10 21:20:11.879169',24,596);
INSERT INTO `carts` VALUES(1785,'2016-08-10 21:20:21.323904','2016-08-10 21:20:21.323904',26,596);
INSERT INTO `carts` VALUES(1786,'2016-08-10 21:20:36.293925','2016-08-10 21:20:36.293925',38,596);
INSERT INTO `carts` VALUES(1787,'2016-08-11 10:07:07.963643','2016-08-11 10:07:07.963643',1,597);
INSERT INTO `carts` VALUES(1788,'2016-08-12 11:44:04.681925','2016-08-12 11:44:04.681925',15,515);
INSERT INTO `carts` VALUES(1789,'2016-08-12 11:47:21.925925','2016-08-12 11:47:21.925925',40,515);
INSERT INTO `carts` VALUES(1790,'2016-08-12 18:39:45.984155','2016-08-12 18:39:45.984155',9,600);
INSERT INTO `carts` VALUES(1792,'2016-08-12 19:10:46.932488','2016-08-12 19:10:46.932488',38,600);
INSERT INTO `carts` VALUES(1793,'2016-08-14 00:40:17.269350','2016-08-14 00:40:17.269350',14,9);
INSERT INTO `carts` VALUES(1794,'2016-08-14 00:41:06.397524','2016-08-14 00:41:06.397524',38,9);
INSERT INTO `carts` VALUES(1795,'2016-08-14 05:46:46.771037','2016-08-14 05:46:46.771037',14,602);
INSERT INTO `carts` VALUES(1797,'2016-08-15 09:12:09.141176','2016-08-15 09:12:09.141176',1,604);
INSERT INTO `carts` VALUES(1798,'2016-08-15 10:21:40.954238','2016-08-15 10:21:40.954238',1,605);
INSERT INTO `carts` VALUES(1799,'2016-08-15 10:22:05.734560','2016-08-15 10:22:05.734560',8,605);
INSERT INTO `carts` VALUES(1800,'2016-08-15 10:22:27.192408','2016-08-15 10:22:27.192408',9,605);
INSERT INTO `carts` VALUES(1801,'2016-08-15 10:22:40.558840','2016-08-15 10:22:40.558840',11,605);
INSERT INTO `carts` VALUES(1802,'2016-08-15 10:22:55.401080','2016-08-15 10:22:55.401080',12,605);
INSERT INTO `carts` VALUES(1803,'2016-08-15 10:23:02.993130','2016-08-15 10:23:02.993130',14,605);
INSERT INTO `carts` VALUES(1804,'2016-08-15 10:23:27.534352','2016-08-15 10:23:27.534352',24,605);
INSERT INTO `carts` VALUES(1805,'2016-08-15 10:24:22.784078','2016-08-15 10:24:22.784078',2,605);
INSERT INTO `carts` VALUES(1806,'2016-08-15 10:24:35.416423','2016-08-15 10:24:35.416423',15,605);
INSERT INTO `carts` VALUES(1807,'2016-08-15 11:34:42.830587','2016-08-15 11:34:42.830587',15,606);
INSERT INTO `carts` VALUES(1808,'2016-08-15 11:36:27.177879','2016-08-15 11:36:27.177879',30,606);
INSERT INTO `carts` VALUES(1809,'2016-08-15 20:44:33.957797','2016-08-15 20:44:33.957797',14,607);
INSERT INTO `carts` VALUES(1811,'2016-08-15 21:23:55.350058','2016-08-15 21:23:55.350058',38,608);
INSERT INTO `carts` VALUES(1812,'2016-08-15 21:24:14.305707','2016-08-15 21:24:14.305707',33,608);
INSERT INTO `carts` VALUES(1813,'2016-08-15 21:24:23.625069','2016-08-15 21:24:23.625069',30,608);
INSERT INTO `carts` VALUES(1814,'2016-08-15 21:24:30.702595','2016-08-15 21:24:30.702595',29,608);
INSERT INTO `carts` VALUES(1815,'2016-08-15 21:24:34.798219','2016-08-15 21:24:34.798219',26,608);
INSERT INTO `carts` VALUES(1816,'2016-08-15 21:24:40.206293','2016-08-15 21:24:40.206293',24,608);
INSERT INTO `carts` VALUES(1817,'2016-08-15 21:24:51.314033','2016-08-15 21:24:51.314033',12,608);
INSERT INTO `carts` VALUES(1818,'2016-08-15 21:25:00.162766','2016-08-15 21:25:00.162766',9,608);
INSERT INTO `carts` VALUES(1819,'2016-08-15 21:25:13.491737','2016-08-15 21:25:13.491737',8,608);
INSERT INTO `carts` VALUES(1820,'2016-08-16 00:14:54.423959','2016-08-16 00:14:54.423959',38,604);
INSERT INTO `carts` VALUES(1826,'2016-08-16 10:44:28.626517','2016-08-16 10:44:28.626517',8,612);
INSERT INTO `carts` VALUES(1827,'2016-08-16 10:44:56.630971','2016-08-16 10:44:56.630971',12,612);
INSERT INTO `carts` VALUES(1828,'2016-08-16 10:45:09.276940','2016-08-16 10:45:09.276940',11,612);
INSERT INTO `carts` VALUES(1829,'2016-08-16 10:45:27.981341','2016-08-16 10:45:27.981341',29,612);
INSERT INTO `carts` VALUES(1834,'2016-08-16 14:52:35.170492','2016-08-16 14:52:35.170492',15,614);
INSERT INTO `carts` VALUES(1835,'2016-08-16 21:29:18.213172','2016-08-16 21:29:18.213172',18,607);
INSERT INTO `carts` VALUES(1836,'2016-08-16 21:30:45.743529','2016-08-16 21:30:45.743529',15,607);
INSERT INTO `carts` VALUES(1838,'2016-08-16 21:32:27.414499','2016-08-16 21:32:27.414499',38,607);
INSERT INTO `carts` VALUES(1839,'2016-08-16 21:34:10.057142','2016-08-16 21:34:10.057142',33,607);
INSERT INTO `carts` VALUES(1840,'2016-08-16 21:34:56.639930','2016-08-16 21:34:56.639930',40,607);
INSERT INTO `carts` VALUES(1841,'2016-08-16 21:35:16.901964','2016-08-16 21:35:16.901964',29,607);
INSERT INTO `carts` VALUES(1842,'2016-08-16 21:35:20.901462','2016-08-16 21:35:20.901462',26,607);
INSERT INTO `carts` VALUES(1843,'2016-08-16 21:35:30.088335','2016-08-16 21:35:30.088335',24,607);
INSERT INTO `carts` VALUES(1844,'2016-08-16 21:35:38.247064','2016-08-16 21:35:38.247064',19,607);
INSERT INTO `carts` VALUES(1845,'2016-08-16 21:36:16.716373','2016-08-16 21:36:16.716373',11,607);
INSERT INTO `carts` VALUES(1846,'2016-08-16 21:36:23.521217','2016-08-16 21:36:23.521217',12,607);
INSERT INTO `carts` VALUES(1847,'2016-08-16 21:36:37.661401','2016-08-16 21:36:37.661401',9,607);
INSERT INTO `carts` VALUES(1848,'2016-08-16 21:36:44.571411','2016-08-16 21:36:44.571411',8,607);
INSERT INTO `carts` VALUES(1849,'2016-08-16 21:36:52.847469','2016-08-16 21:36:52.847469',2,607);
INSERT INTO `carts` VALUES(1850,'2016-08-16 21:36:56.297773','2016-08-16 21:36:56.297773',1,607);
INSERT INTO `carts` VALUES(1851,'2016-08-17 11:23:01.800647','2016-08-17 11:23:01.800647',14,614);
INSERT INTO `carts` VALUES(1852,'2016-08-17 11:28:19.731982','2016-08-17 11:28:19.731982',36,614);
INSERT INTO `carts` VALUES(1853,'2016-08-17 11:31:43.504704','2016-08-17 11:31:43.504704',1,614);
INSERT INTO `carts` VALUES(1854,'2016-08-17 11:35:45.350150','2016-08-17 11:35:45.350150',38,614);
INSERT INTO `carts` VALUES(1855,'2016-08-17 11:50:31.155882','2016-08-17 11:50:31.155882',11,614);
INSERT INTO `carts` VALUES(1856,'2016-08-18 00:56:27.550154','2016-08-18 00:56:27.550154',18,616);
INSERT INTO `carts` VALUES(1857,'2016-08-18 01:45:24.050817','2016-08-18 01:45:24.050817',30,617);
INSERT INTO `carts` VALUES(1858,'2016-08-18 05:30:27.618325','2016-08-18 05:30:27.618325',29,620);
INSERT INTO `carts` VALUES(1859,'2016-08-18 05:31:00.953370','2016-08-18 05:31:00.953370',15,620);
INSERT INTO `carts` VALUES(1860,'2016-08-18 05:32:51.614166','2016-08-18 05:32:51.614166',30,620);
INSERT INTO `carts` VALUES(1861,'2016-08-18 05:36:46.597181','2016-08-18 05:36:46.597181',11,620);
INSERT INTO `carts` VALUES(1862,'2016-08-18 05:36:58.572427','2016-08-18 05:36:58.572427',12,620);
INSERT INTO `carts` VALUES(1863,'2016-08-18 05:37:14.343480','2016-08-18 05:37:14.343480',24,620);
INSERT INTO `carts` VALUES(1864,'2016-08-18 05:37:32.373212','2016-08-18 05:37:32.373212',26,620);
INSERT INTO `carts` VALUES(1865,'2016-08-18 05:38:23.948080','2016-08-18 05:38:23.948080',36,620);
INSERT INTO `carts` VALUES(1867,'2016-08-18 05:39:09.633974','2016-08-18 05:39:09.633974',38,620);
INSERT INTO `carts` VALUES(1868,'2016-08-18 05:55:00.433730','2016-08-18 05:55:00.433730',40,620);
INSERT INTO `carts` VALUES(1869,'2016-08-18 05:56:34.762809','2016-08-18 05:56:34.762809',1,620);
INSERT INTO `carts` VALUES(1870,'2016-08-18 05:57:07.579463','2016-08-18 05:57:07.579463',8,620);
INSERT INTO `carts` VALUES(1871,'2016-08-18 05:57:20.290838','2016-08-18 05:57:20.290838',9,620);
INSERT INTO `carts` VALUES(1872,'2016-08-18 05:57:51.379665','2016-08-18 05:57:51.379665',14,620);
INSERT INTO `carts` VALUES(1873,'2016-08-18 09:00:18.601755','2016-08-18 09:00:18.601755',39,58);
INSERT INTO `carts` VALUES(1874,'2016-08-18 09:04:08.833391','2016-08-18 09:04:08.833391',14,58);
INSERT INTO `carts` VALUES(1875,'2016-08-18 13:11:48.265303','2016-08-18 13:11:48.265303',39,607);
INSERT INTO `carts` VALUES(1876,'2016-08-18 13:16:26.646928','2016-08-18 13:16:26.646928',5,607);
INSERT INTO `carts` VALUES(1877,'2016-08-18 13:16:37.273195','2016-08-18 13:16:37.273195',36,607);
INSERT INTO `carts` VALUES(1878,'2016-08-18 14:21:03.176451','2016-08-18 14:21:03.176451',30,621);
INSERT INTO `carts` VALUES(1879,'2016-08-18 14:23:24.097145','2016-08-18 14:23:24.097145',14,621);
INSERT INTO `carts` VALUES(1880,'2016-08-18 14:26:45.064335','2016-08-18 14:26:45.064335',38,621);
INSERT INTO `carts` VALUES(1881,'2016-08-18 21:58:26.789482','2016-08-18 21:58:26.789482',14,508);
INSERT INTO `carts` VALUES(1882,'2016-08-18 22:00:29.650326','2016-08-18 22:00:29.650326',19,508);
INSERT INTO `carts` VALUES(1883,'2016-08-18 22:01:23.845638','2016-08-18 22:01:23.845638',18,508);
INSERT INTO `carts` VALUES(1884,'2016-08-18 22:02:11.550410','2016-08-18 22:02:11.550410',29,508);
INSERT INTO `carts` VALUES(1885,'2016-08-18 22:02:30.466574','2016-08-18 22:02:30.466574',15,508);
INSERT INTO `carts` VALUES(1886,'2016-08-18 22:04:33.861679','2016-08-18 22:04:33.861679',1,508);
INSERT INTO `carts` VALUES(1887,'2016-08-19 05:28:27.414809','2016-08-19 05:28:27.414809',39,515);
INSERT INTO `carts` VALUES(1888,'2016-08-19 05:32:20.337241','2016-08-19 05:32:20.337241',14,515);
INSERT INTO `carts` VALUES(1889,'2016-08-19 05:41:06.954234','2016-08-19 05:41:06.954234',39,20);
INSERT INTO `carts` VALUES(1891,'2016-08-19 12:12:32.681937','2016-08-19 12:12:32.681937',30,607);
INSERT INTO `carts` VALUES(1892,'2016-08-19 23:16:54.217518','2016-08-19 23:16:54.217518',39,67);
INSERT INTO `carts` VALUES(1893,'2016-08-20 07:54:16.044987','2016-08-20 07:54:16.044987',39,495);
INSERT INTO `carts` VALUES(1894,'2016-08-20 08:39:09.017222','2016-08-20 08:39:09.017222',1,213);
INSERT INTO `carts` VALUES(1895,'2016-08-20 12:31:46.940214','2016-08-20 12:31:46.940214',39,206);
INSERT INTO `carts` VALUES(1896,'2016-08-20 12:32:31.010858','2016-08-20 12:32:31.010858',5,206);
INSERT INTO `carts` VALUES(1897,'2016-08-20 12:49:02.247888','2016-08-20 12:49:02.247888',1,627);
INSERT INTO `carts` VALUES(1898,'2016-08-20 12:50:01.556025','2016-08-20 12:50:01.556025',8,627);
INSERT INTO `carts` VALUES(1899,'2016-08-20 12:50:27.519166','2016-08-20 12:50:27.519166',9,627);
INSERT INTO `carts` VALUES(1900,'2016-08-20 12:50:46.938624','2016-08-20 12:50:46.938624',11,627);
INSERT INTO `carts` VALUES(1901,'2016-08-20 12:50:54.086709','2016-08-20 12:50:54.086709',12,627);
INSERT INTO `carts` VALUES(1902,'2016-08-20 12:51:09.771972','2016-08-20 12:51:09.771972',15,627);
INSERT INTO `carts` VALUES(1903,'2016-08-20 12:53:24.909930','2016-08-20 12:53:24.909930',24,627);
INSERT INTO `carts` VALUES(1904,'2016-08-20 12:53:40.365921','2016-08-20 12:53:40.365921',26,627);
INSERT INTO `carts` VALUES(1905,'2016-08-20 12:54:04.355139','2016-08-20 12:54:04.355139',29,627);
INSERT INTO `carts` VALUES(1906,'2016-08-20 12:54:29.426562','2016-08-20 12:54:29.426562',36,627);
INSERT INTO `carts` VALUES(1907,'2016-08-20 12:54:48.019135','2016-08-20 12:54:48.019135',38,627);
INSERT INTO `carts` VALUES(1908,'2016-08-20 12:55:13.704622','2016-08-20 12:55:13.704622',39,627);
INSERT INTO `carts` VALUES(1909,'2016-08-20 12:55:37.218693','2016-08-20 12:55:37.218693',40,627);
INSERT INTO `carts` VALUES(1910,'2016-08-20 13:10:32.687177','2016-08-20 13:10:32.687177',39,628);
INSERT INTO `carts` VALUES(1911,'2016-08-20 13:15:02.535490','2016-08-20 13:15:02.535490',1,628);
INSERT INTO `carts` VALUES(1912,'2016-08-21 01:46:47.403000','2016-08-21 01:46:47.403000',11,628);
INSERT INTO `carts` VALUES(1913,'2016-08-21 01:48:21.970383','2016-08-21 01:48:21.970383',18,628);
INSERT INTO `carts` VALUES(1914,'2016-08-21 01:55:09.294688','2016-08-21 01:55:09.294688',15,628);
INSERT INTO `carts` VALUES(1915,'2016-08-21 03:27:50.460409','2016-08-21 03:27:50.460409',19,631);
INSERT INTO `carts` VALUES(1918,'2016-08-21 03:33:27.383502','2016-08-21 03:33:27.383502',14,631);
INSERT INTO `carts` VALUES(1921,'2016-08-21 13:04:57.474054','2016-08-21 13:04:57.474054',33,635);
INSERT INTO `carts` VALUES(1922,'2016-08-22 02:09:02.244151','2016-08-22 02:09:02.244151',1,637);
INSERT INTO `carts` VALUES(1923,'2016-08-22 02:11:48.633548','2016-08-22 02:11:48.633548',8,637);
INSERT INTO `carts` VALUES(1924,'2016-08-22 02:12:44.866886','2016-08-22 02:12:44.866886',9,637);
INSERT INTO `carts` VALUES(1925,'2016-08-22 02:13:05.356353','2016-08-22 02:13:05.356353',11,637);
INSERT INTO `carts` VALUES(1926,'2016-08-22 02:13:37.435921','2016-08-22 02:13:37.435921',14,637);
INSERT INTO `carts` VALUES(1927,'2016-08-22 02:14:37.396720','2016-08-22 02:14:37.396720',24,637);
INSERT INTO `carts` VALUES(1930,'2016-08-22 23:07:43.388173','2016-08-22 23:07:43.388173',14,632);
INSERT INTO `carts` VALUES(1931,'2016-08-22 23:09:55.079451','2016-08-22 23:09:55.079451',1,632);
INSERT INTO `carts` VALUES(1933,'2016-08-23 00:50:02.957705','2016-08-23 00:50:02.957705',40,640);
INSERT INTO `carts` VALUES(1934,'2016-08-23 03:08:05.163175','2016-08-23 03:08:05.163175',39,614);
INSERT INTO `carts` VALUES(1935,'2016-08-23 03:52:40.961235','2016-08-23 03:52:40.961235',1,642);
INSERT INTO `carts` VALUES(1936,'2016-08-24 07:49:10.238782','2016-08-24 07:49:10.238782',39,645);
INSERT INTO `carts` VALUES(1937,'2016-08-24 07:50:20.973911','2016-08-24 07:50:20.973911',18,645);
INSERT INTO `carts` VALUES(1939,'2016-08-25 02:54:27.188868','2016-08-25 02:54:27.188868',18,646);
INSERT INTO `carts` VALUES(1940,'2016-08-25 02:57:15.408499','2016-08-25 02:57:15.408499',15,646);
INSERT INTO `carts` VALUES(1941,'2016-08-25 03:04:18.812652','2016-08-25 03:04:18.812652',5,540);
INSERT INTO `carts` VALUES(1942,'2016-08-25 03:05:32.360925','2016-08-25 03:05:32.360925',1,540);
INSERT INTO `carts` VALUES(1943,'2016-08-25 06:40:57.176365','2016-08-25 06:40:57.176365',19,649);
INSERT INTO `carts` VALUES(1944,'2016-08-25 12:25:41.992735','2016-08-25 12:25:41.992735',8,651);
INSERT INTO `carts` VALUES(1945,'2016-08-25 12:26:38.085206','2016-08-25 12:26:38.085206',12,651);
INSERT INTO `carts` VALUES(1946,'2016-08-25 12:39:01.225704','2016-08-25 12:39:01.225704',33,651);
INSERT INTO `carts` VALUES(1947,'2016-08-25 12:41:06.556149','2016-08-25 12:41:06.556149',15,651);
INSERT INTO `carts` VALUES(1948,'2016-08-26 00:35:08.481221','2016-08-26 00:35:08.481221',18,652);
INSERT INTO `carts` VALUES(1949,'2016-08-26 00:35:22.181375','2016-08-26 00:35:22.181375',30,652);
INSERT INTO `carts` VALUES(1950,'2016-08-26 00:35:55.216515','2016-08-26 00:35:55.216515',15,652);
INSERT INTO `carts` VALUES(1951,'2016-08-26 00:36:22.460838','2016-08-26 00:36:22.460838',39,652);
INSERT INTO `carts` VALUES(1953,'2016-08-26 03:19:24.137716','2016-08-26 03:19:24.137716',9,490);
INSERT INTO `carts` VALUES(1957,'2016-08-26 07:43:30.608236','2016-08-26 07:43:30.608236',19,525);
INSERT INTO `carts` VALUES(1958,'2016-08-26 11:55:10.803680','2016-08-26 11:55:10.803680',40,260);
INSERT INTO `carts` VALUES(1959,'2016-08-26 15:30:48.074916','2016-08-26 15:30:48.074916',39,595);
INSERT INTO `carts` VALUES(1960,'2016-08-27 06:03:36.693661','2016-08-27 06:03:36.693661',39,611);
INSERT INTO `carts` VALUES(1961,'2016-08-27 09:39:57.700066','2016-08-27 09:39:57.700066',18,654);
INSERT INTO `carts` VALUES(1963,'2016-08-27 09:43:58.188093','2016-08-27 09:43:58.188093',14,654);
INSERT INTO `carts` VALUES(1964,'2016-08-27 09:44:12.979727','2016-08-27 09:44:12.979727',12,654);
INSERT INTO `carts` VALUES(1965,'2016-08-27 09:44:22.095885','2016-08-27 09:44:22.095885',19,654);
INSERT INTO `carts` VALUES(1966,'2016-08-27 09:44:34.163465','2016-08-27 09:44:34.163465',33,654);
INSERT INTO `carts` VALUES(1967,'2016-08-27 09:44:48.806781','2016-08-27 09:44:48.806781',39,654);
INSERT INTO `carts` VALUES(1968,'2016-08-27 09:47:53.825562','2016-08-27 09:47:53.825562',29,654);
INSERT INTO `carts` VALUES(1969,'2016-08-27 09:48:29.432036','2016-08-27 09:48:29.432036',15,654);
INSERT INTO `carts` VALUES(1971,'2016-08-27 22:34:09.179790','2016-08-27 22:34:09.179790',30,656);
INSERT INTO `carts` VALUES(1972,'2016-08-27 22:35:11.597850','2016-08-27 22:35:11.597850',38,656);
INSERT INTO `carts` VALUES(1973,'2016-08-27 22:37:23.271774','2016-08-27 22:37:23.271774',2,656);
INSERT INTO `carts` VALUES(1974,'2016-08-29 00:53:02.434061','2016-08-29 00:53:02.434061',11,657);
INSERT INTO `carts` VALUES(1975,'2016-08-29 00:54:50.465477','2016-08-29 00:54:50.465477',18,657);
INSERT INTO `carts` VALUES(1976,'2016-08-29 00:55:20.942184','2016-08-29 00:55:20.942184',19,657);
INSERT INTO `carts` VALUES(1977,'2016-08-29 00:56:26.865942','2016-08-29 00:56:26.865942',29,657);
INSERT INTO `carts` VALUES(1978,'2016-08-29 01:28:38.340118','2016-08-29 01:28:38.340118',8,653);
INSERT INTO `carts` VALUES(1979,'2016-08-29 01:29:08.278997','2016-08-29 01:29:08.278997',1,653);
INSERT INTO `carts` VALUES(1980,'2016-08-29 01:29:35.162741','2016-08-29 01:29:35.162741',11,653);
INSERT INTO `carts` VALUES(1981,'2016-08-29 01:29:44.842637','2016-08-29 01:29:44.842637',12,653);
INSERT INTO `carts` VALUES(1982,'2016-08-29 01:29:51.585609','2016-08-29 01:29:51.585609',14,653);
INSERT INTO `carts` VALUES(1983,'2016-08-29 01:30:49.415319','2016-08-29 01:30:49.415319',24,653);
INSERT INTO `carts` VALUES(1984,'2016-08-29 01:30:57.983296','2016-08-29 01:30:57.983296',26,653);
INSERT INTO `carts` VALUES(1985,'2016-08-29 01:31:21.458115','2016-08-29 01:31:21.458115',29,653);
INSERT INTO `carts` VALUES(1986,'2016-08-29 01:31:32.703260','2016-08-29 01:31:32.703260',36,653);
INSERT INTO `carts` VALUES(1987,'2016-08-29 01:31:55.935035','2016-08-29 01:31:55.935035',39,653);
INSERT INTO `carts` VALUES(1988,'2016-08-29 04:10:10.528966','2016-08-29 04:10:10.528966',39,391);
INSERT INTO `carts` VALUES(1989,'2016-08-29 05:58:17.907435','2016-08-29 05:58:17.907435',15,658);
INSERT INTO `carts` VALUES(1990,'2016-08-29 06:10:35.034386','2016-08-29 06:10:35.034386',24,657);
INSERT INTO `carts` VALUES(1992,'2016-08-29 11:10:18.070075','2016-08-29 11:10:18.070075',30,493);
INSERT INTO `carts` VALUES(1993,'2016-08-30 00:13:25.255330','2016-08-30 00:13:25.255330',33,611);
INSERT INTO `carts` VALUES(1994,'2016-08-30 03:18:39.532327','2016-08-30 03:18:39.532327',18,260);
INSERT INTO `carts` VALUES(1995,'2016-08-30 03:20:09.276922','2016-08-30 03:20:09.276922',30,260);
INSERT INTO `carts` VALUES(1996,'2016-08-30 06:05:45.896374','2016-08-30 06:05:45.896374',30,661);
INSERT INTO `carts` VALUES(1997,'2016-08-30 07:18:37.790631','2016-08-30 07:18:37.790631',1,663);
INSERT INTO `carts` VALUES(1998,'2016-08-30 07:20:59.885618','2016-08-30 07:20:59.885618',14,663);
INSERT INTO `carts` VALUES(1999,'2016-08-30 07:22:07.760478','2016-08-30 07:22:07.760478',18,663);
INSERT INTO `carts` VALUES(2000,'2016-08-30 16:38:23.967881','2016-08-30 16:38:23.967881',40,595);
INSERT INTO `carts` VALUES(2002,'2016-08-31 01:37:26.804841','2016-08-31 01:37:26.804841',15,664);
INSERT INTO `carts` VALUES(2004,'2016-08-31 03:06:52.671844','2016-08-31 03:06:52.671844',1,1);
INSERT INTO `carts` VALUES(2005,'2016-08-31 03:27:46.625301','2016-08-31 03:27:46.625301',14,665);
INSERT INTO `carts` VALUES(2006,'2016-08-31 04:09:14.052273','2016-08-31 04:09:14.052273',1,666);
INSERT INTO `carts` VALUES(2007,'2016-08-31 10:08:19.958317','2016-08-31 10:08:19.958317',18,171);
INSERT INTO `carts` VALUES(2008,'2016-08-31 10:17:44.343071','2016-08-31 10:17:44.343071',39,171);
INSERT INTO `carts` VALUES(2009,'2016-09-01 09:30:26.801195','2016-09-01 09:30:26.801195',18,473);
INSERT INTO `carts` VALUES(2010,'2016-09-01 09:31:09.909906','2016-09-01 09:31:09.909906',14,473);
INSERT INTO `carts` VALUES(2011,'2016-09-01 09:31:55.902987','2016-09-01 09:31:55.902987',30,473);
INSERT INTO `carts` VALUES(2012,'2016-09-01 13:09:36.012034','2016-09-01 13:09:36.012034',14,52);
INSERT INTO `carts` VALUES(2014,'2016-09-02 06:05:14.776713','2016-09-02 06:05:14.776713',39,540);
INSERT INTO `carts` VALUES(2015,'2016-09-02 08:36:32.052857','2016-09-02 08:36:32.052857',19,493);
INSERT INTO `carts` VALUES(2016,'2016-09-02 08:37:00.640642','2016-09-02 08:37:00.640642',38,493);
INSERT INTO `carts` VALUES(2017,'2016-09-02 08:37:05.987725','2016-09-02 08:37:05.987725',39,493);
INSERT INTO `carts` VALUES(2019,'2016-09-02 08:40:10.870671','2016-09-02 08:40:10.870671',12,671);
INSERT INTO `carts` VALUES(2020,'2016-09-02 08:41:52.131972','2016-09-02 08:41:52.131972',40,671);
INSERT INTO `carts` VALUES(2021,'2016-09-02 08:44:37.261708','2016-09-02 08:44:37.261708',8,671);
INSERT INTO `carts` VALUES(2022,'2016-09-02 13:09:29.544159','2016-09-02 13:09:29.544159',15,632);
INSERT INTO `carts` VALUES(2023,'2016-09-02 16:08:55.884118','2016-09-02 16:08:55.884118',18,669);
INSERT INTO `carts` VALUES(2024,'2016-09-02 17:05:22.137470','2016-09-02 17:05:22.137470',29,669);
INSERT INTO `carts` VALUES(2026,'2016-09-03 10:10:40.474780','2016-09-03 10:10:40.474780',38,669);
INSERT INTO `carts` VALUES(2027,'2016-09-03 21:24:53.225964','2016-09-03 21:24:53.225964',24,675);
INSERT INTO `carts` VALUES(2028,'2016-09-04 02:40:46.922625','2016-09-04 02:40:46.922625',15,67);
INSERT INTO `carts` VALUES(2029,'2016-09-04 05:03:14.217254','2016-09-04 05:03:14.217254',15,581);
INSERT INTO `carts` VALUES(2030,'2016-09-04 05:04:45.143804','2016-09-04 05:04:45.143804',24,581);
INSERT INTO `carts` VALUES(2031,'2016-09-04 05:05:16.286339','2016-09-04 05:05:16.286339',14,581);
INSERT INTO `carts` VALUES(2032,'2016-09-04 05:05:52.252221','2016-09-04 05:05:52.252221',12,581);
INSERT INTO `carts` VALUES(2033,'2016-09-04 05:06:12.772230','2016-09-04 05:06:12.772230',1,581);
INSERT INTO `carts` VALUES(2034,'2016-09-04 05:06:59.960392','2016-09-04 05:06:59.960392',8,581);
INSERT INTO `carts` VALUES(2035,'2016-09-04 05:07:23.192778','2016-09-04 05:07:23.192778',9,581);
INSERT INTO `carts` VALUES(2036,'2016-09-04 05:07:47.641244','2016-09-04 05:07:47.641244',11,581);
INSERT INTO `carts` VALUES(2037,'2016-09-04 05:09:00.309461','2016-09-04 05:09:00.309461',19,581);
INSERT INTO `carts` VALUES(2038,'2016-09-04 05:09:49.250781','2016-09-04 05:09:49.250781',26,581);
INSERT INTO `carts` VALUES(2039,'2016-09-04 05:10:17.106831','2016-09-04 05:10:17.106831',29,581);
INSERT INTO `carts` VALUES(2040,'2016-09-04 05:10:36.018898','2016-09-04 05:10:36.018898',30,581);
INSERT INTO `carts` VALUES(2041,'2016-09-04 05:11:21.724054','2016-09-04 05:11:21.724054',33,581);
INSERT INTO `carts` VALUES(2042,'2016-09-04 05:11:46.456342','2016-09-04 05:11:46.456342',36,581);
INSERT INTO `carts` VALUES(2043,'2016-09-04 05:12:04.197919','2016-09-04 05:12:04.197919',38,581);
INSERT INTO `carts` VALUES(2044,'2016-09-04 05:13:11.930360','2016-09-04 05:13:11.930360',39,581);
INSERT INTO `carts` VALUES(2045,'2016-09-04 05:14:06.726039','2016-09-04 05:14:06.726039',40,581);
INSERT INTO `carts` VALUES(2047,'2016-09-04 07:57:14.370506','2016-09-04 07:57:14.370506',5,678);
INSERT INTO `carts` VALUES(2050,'2016-09-05 05:18:45.681658','2016-09-05 05:18:45.681658',39,1);
INSERT INTO `carts` VALUES(2051,'2016-09-05 05:55:24.824704','2016-09-05 05:55:24.824704',39,663);
INSERT INTO `carts` VALUES(2052,'2016-09-05 06:50:54.522763','2016-09-05 06:50:54.522763',19,515);
INSERT INTO `carts` VALUES(2053,'2016-09-05 08:11:44.670026','2016-09-05 08:11:44.670026',40,678);
INSERT INTO `carts` VALUES(2055,'2016-09-05 08:12:31.114435','2016-09-05 08:12:31.114435',19,678);
INSERT INTO `carts` VALUES(2056,'2016-09-05 08:12:50.303166','2016-09-05 08:12:50.303166',30,678);
INSERT INTO `carts` VALUES(2057,'2016-09-05 08:13:45.304436','2016-09-05 08:13:45.304436',2,678);
INSERT INTO `carts` VALUES(2058,'2016-09-05 08:14:49.539568','2016-09-05 08:14:49.539568',24,678);
INSERT INTO `carts` VALUES(2059,'2016-09-05 08:15:04.599909','2016-09-05 08:15:04.599909',29,678);
INSERT INTO `carts` VALUES(2060,'2016-09-05 08:18:06.731277','2016-09-05 08:18:06.731277',39,678);
INSERT INTO `carts` VALUES(2061,'2016-09-05 08:59:53.598878','2016-09-05 08:59:53.598878',15,595);
INSERT INTO `carts` VALUES(2063,'2016-09-06 01:15:33.363499','2016-09-06 01:15:33.363499',8,683);
INSERT INTO `carts` VALUES(2064,'2016-09-06 05:08:30.458496','2016-09-06 05:08:30.458496',18,689);
INSERT INTO `carts` VALUES(2065,'2016-09-06 05:09:11.474906','2016-09-06 05:09:11.474906',30,689);
INSERT INTO `carts` VALUES(2067,'2016-09-06 08:31:09.575615','2016-09-06 08:31:09.575615',26,493);
INSERT INTO `carts` VALUES(2068,'2016-09-06 08:42:21.897813','2016-09-06 08:42:21.897813',18,493);
INSERT INTO `carts` VALUES(2070,'2016-09-06 12:17:09.612657','2016-09-06 12:17:09.612657',39,341);
INSERT INTO `carts` VALUES(2071,'2016-09-06 12:42:16.328916','2016-09-06 12:42:16.328916',1,690);
INSERT INTO `carts` VALUES(2072,'2016-09-06 12:43:27.854974','2016-09-06 12:43:27.854974',14,690);
INSERT INTO `carts` VALUES(2073,'2016-09-07 00:19:38.039889','2016-09-07 00:19:38.039889',39,692);
INSERT INTO `carts` VALUES(2074,'2016-09-07 01:20:46.546633','2016-09-07 01:20:46.546633',40,693);
INSERT INTO `carts` VALUES(2075,'2016-09-07 01:21:23.689140','2016-09-07 01:21:23.689140',1,693);
INSERT INTO `carts` VALUES(2076,'2016-09-07 07:15:08.417334','2016-09-07 07:15:08.417334',18,678);
INSERT INTO `carts` VALUES(2077,'2016-09-07 11:52:38.521331','2016-09-07 11:52:38.521331',19,614);
INSERT INTO `carts` VALUES(2078,'2016-09-08 01:11:03.278093','2016-09-08 01:11:03.278093',9,678);
INSERT INTO `carts` VALUES(2079,'2016-09-08 01:11:15.092569','2016-09-08 01:11:15.092569',8,678);
INSERT INTO `carts` VALUES(2080,'2016-09-08 01:11:36.661157','2016-09-08 01:11:36.661157',11,678);
INSERT INTO `carts` VALUES(2081,'2016-09-08 01:12:16.429199','2016-09-08 01:12:16.429199',14,678);
INSERT INTO `carts` VALUES(2082,'2016-09-08 01:15:55.261613','2016-09-08 01:15:55.261613',33,678);
INSERT INTO `carts` VALUES(2083,'2016-09-08 01:16:31.057496','2016-09-08 01:16:31.057496',36,678);
INSERT INTO `carts` VALUES(2084,'2016-09-08 01:16:40.729578','2016-09-08 01:16:40.729578',38,678);
INSERT INTO `carts` VALUES(2085,'2016-09-08 04:44:29.286044','2016-09-08 04:44:29.286044',5,703);
INSERT INTO `carts` VALUES(2086,'2016-09-09 09:02:24.960495','2016-09-09 09:02:24.960495',39,42);
INSERT INTO `carts` VALUES(2087,'2016-09-09 11:04:11.086459','2016-09-09 11:04:11.086459',19,708);
INSERT INTO `carts` VALUES(2088,'2016-09-09 11:05:06.849730','2016-09-09 11:05:06.849730',15,708);
INSERT INTO `carts` VALUES(2089,'2016-09-09 11:05:38.245081','2016-09-09 11:05:38.245081',30,708);
INSERT INTO `carts` VALUES(2090,'2016-09-09 11:13:37.571565','2016-09-09 11:13:37.571565',38,708);
INSERT INTO `carts` VALUES(2091,'2016-09-09 11:14:14.373441','2016-09-09 11:14:14.373441',40,708);
INSERT INTO `carts` VALUES(2092,'2016-09-09 11:23:35.605006','2016-09-09 11:23:35.605006',39,708);
INSERT INTO `carts` VALUES(2093,'2016-09-09 12:31:47.070288','2016-09-09 12:31:47.070288',1,704);
INSERT INTO `carts` VALUES(2094,'2016-09-09 21:37:39.233308','2016-09-09 21:37:39.233308',5,709);
INSERT INTO `carts` VALUES(2096,'2016-09-10 08:47:30.412244','2016-09-10 08:47:30.412244',36,712);
INSERT INTO `carts` VALUES(2097,'2016-09-10 08:49:30.250070','2016-09-10 08:49:30.250070',14,712);
INSERT INTO `carts` VALUES(2098,'2016-09-10 08:51:28.816928','2016-09-10 08:51:28.816928',1,712);
INSERT INTO `carts` VALUES(2099,'2016-09-10 19:29:09.064321','2016-09-10 19:29:09.064321',39,712);
INSERT INTO `carts` VALUES(2100,'2016-09-10 19:51:40.671430','2016-09-10 19:51:40.671430',38,712);
INSERT INTO `carts` VALUES(2101,'2016-09-10 20:12:48.582945','2016-09-10 20:12:48.582945',15,712);
INSERT INTO `carts` VALUES(2102,'2016-09-10 22:36:25.559252','2016-09-10 22:36:25.559252',18,714);
INSERT INTO `carts` VALUES(2103,'2016-09-10 22:38:40.970692','2016-09-10 22:38:40.970692',38,714);
INSERT INTO `carts` VALUES(2106,'2016-09-11 04:44:49.360907','2016-09-11 04:44:49.360907',14,719);
INSERT INTO `carts` VALUES(2107,'2016-09-11 04:45:42.890811','2016-09-11 04:45:42.890811',19,719);
INSERT INTO `carts` VALUES(2108,'2016-09-11 04:49:45.693828','2016-09-11 04:49:45.693828',8,719);
INSERT INTO `carts` VALUES(2109,'2016-09-11 04:50:42.510636','2016-09-11 04:50:42.510636',15,719);
INSERT INTO `carts` VALUES(2110,'2016-09-11 04:51:21.506903','2016-09-11 04:51:21.506903',5,719);
INSERT INTO `carts` VALUES(2111,'2016-09-11 04:53:56.650310','2016-09-11 04:53:56.650310',1,719);
INSERT INTO `carts` VALUES(2112,'2016-09-12 04:32:12.547451','2016-09-12 04:32:12.547451',18,721);
INSERT INTO `carts` VALUES(2113,'2016-09-12 06:08:16.301439','2016-09-12 06:08:16.301439',1,28);
INSERT INTO `carts` VALUES(2114,'2016-09-12 13:31:22.561968','2016-09-12 13:31:22.561968',18,23);
INSERT INTO `carts` VALUES(2115,'2016-09-13 02:59:37.128578','2016-09-13 02:59:37.128578',11,724);
INSERT INTO `carts` VALUES(2116,'2016-09-13 03:00:06.924405','2016-09-13 03:00:06.924405',1,724);
INSERT INTO `carts` VALUES(2117,'2016-09-13 03:06:23.191078','2016-09-13 03:06:23.191078',14,724);
INSERT INTO `carts` VALUES(2118,'2016-09-13 03:07:11.251527','2016-09-13 03:07:11.251527',2,724);
INSERT INTO `carts` VALUES(2119,'2016-09-13 03:09:10.081568','2016-09-13 03:09:10.081568',38,724);
INSERT INTO `carts` VALUES(2120,'2016-09-13 03:09:58.118036','2016-09-13 03:09:58.118036',26,724);
INSERT INTO `carts` VALUES(2121,'2016-09-13 07:54:00.928216','2016-09-13 07:54:00.928216',1,721);
INSERT INTO `carts` VALUES(2123,'2016-09-13 11:09:39.736214','2016-09-13 11:09:39.736214',18,725);
INSERT INTO `carts` VALUES(2126,'2016-09-13 11:15:15.908691','2016-09-13 11:15:15.908691',39,725);
INSERT INTO `carts` VALUES(2127,'2016-09-13 15:32:07.433042','2016-09-13 15:32:07.433042',19,726);
INSERT INTO `carts` VALUES(2128,'2016-09-13 23:25:53.895008','2016-09-13 23:25:53.895008',30,725);
INSERT INTO `carts` VALUES(2129,'2016-09-13 23:26:18.609556','2016-09-13 23:26:18.609556',33,728);
INSERT INTO `carts` VALUES(2130,'2016-09-13 23:27:31.217969','2016-09-13 23:27:31.217969',38,725);
INSERT INTO `carts` VALUES(2131,'2016-09-13 23:27:46.627712','2016-09-13 23:27:46.627712',33,725);
INSERT INTO `carts` VALUES(2132,'2016-09-13 23:28:03.389487','2016-09-13 23:28:03.389487',19,725);
INSERT INTO `carts` VALUES(2133,'2016-09-13 23:28:37.855989','2016-09-13 23:28:37.855989',2,725);
INSERT INTO `carts` VALUES(2134,'2016-09-14 00:51:30.239869','2016-09-14 00:51:30.239869',8,725);
INSERT INTO `carts` VALUES(2135,'2016-09-14 00:52:05.670054','2016-09-14 00:52:05.670054',14,725);
INSERT INTO `carts` VALUES(2137,'2016-09-15 06:06:02.881680','2016-09-15 06:06:02.881680',9,714);
INSERT INTO `carts` VALUES(2139,'2016-09-16 03:16:32.947403','2016-09-16 03:16:32.947403',19,652);
INSERT INTO `carts` VALUES(2140,'2016-09-16 03:17:12.589193','2016-09-16 03:17:12.589193',38,652);
INSERT INTO `carts` VALUES(2141,'2016-09-16 06:26:56.446311','2016-09-16 06:26:56.446311',18,515);
INSERT INTO `carts` VALUES(2142,'2016-09-16 06:27:06.247444','2016-09-16 06:27:06.247444',12,515);
INSERT INTO `carts` VALUES(2143,'2016-09-16 06:27:13.099047','2016-09-16 06:27:13.099047',29,515);
INSERT INTO `carts` VALUES(2145,'2016-09-16 13:13:36.761527','2016-09-16 13:13:36.761527',15,23);
INSERT INTO `carts` VALUES(2146,'2016-09-16 19:37:04.202010','2016-09-16 19:37:04.202010',14,505);
INSERT INTO `carts` VALUES(2147,'2016-09-17 05:55:18.019612','2016-09-17 05:55:18.019612',5,252);
INSERT INTO `carts` VALUES(2148,'2016-09-17 06:02:14.081428','2016-09-17 06:02:14.081428',26,252);
INSERT INTO `carts` VALUES(2149,'2016-09-17 06:04:53.202139','2016-09-17 06:04:53.202139',37,252);
INSERT INTO `carts` VALUES(2150,'2016-09-17 06:05:05.220149','2016-09-17 06:05:05.220149',38,252);
INSERT INTO `carts` VALUES(2151,'2016-09-17 07:56:19.367657','2016-09-17 07:56:19.367657',29,671);
INSERT INTO `carts` VALUES(2152,'2016-09-17 07:57:41.302160','2016-09-17 07:57:41.302160',14,671);
INSERT INTO `carts` VALUES(2153,'2016-09-17 07:59:09.001161','2016-09-17 07:59:09.001161',11,671);
INSERT INTO `carts` VALUES(2154,'2016-09-17 07:59:26.013593','2016-09-17 07:59:26.013593',9,671);
INSERT INTO `carts` VALUES(2155,'2016-09-17 08:00:20.653536','2016-09-17 08:00:20.653536',1,671);
INSERT INTO `carts` VALUES(2156,'2016-09-17 08:04:47.457854','2016-09-17 08:04:47.457854',33,671);
INSERT INTO `carts` VALUES(2157,'2016-09-17 18:04:30.067013','2016-09-17 18:04:30.067013',19,731);
INSERT INTO `carts` VALUES(2158,'2016-09-17 21:16:46.984689','2016-09-17 21:16:46.984689',38,732);
INSERT INTO `carts` VALUES(2159,'2016-09-17 23:36:41.000546','2016-09-17 23:36:41.000546',8,734);
INSERT INTO `carts` VALUES(2160,'2016-09-19 14:31:36.259584','2016-09-19 14:31:36.259584',1,740);
INSERT INTO `carts` VALUES(2161,'2016-09-19 22:15:44.330344','2016-09-19 22:15:44.330344',5,738);
INSERT INTO `carts` VALUES(2164,'2016-09-19 22:20:32.380110','2016-09-19 22:20:32.380110',37,738);
INSERT INTO `carts` VALUES(2165,'2016-09-20 07:03:04.401328','2016-09-20 07:03:04.401328',33,733);
INSERT INTO `carts` VALUES(2166,'2016-09-20 07:04:33.553313','2016-09-20 07:04:33.553313',19,733);
INSERT INTO `carts` VALUES(2167,'2016-09-21 13:35:17.751420','2016-09-21 13:35:17.751420',1,741);
INSERT INTO `carts` VALUES(2168,'2016-09-21 13:37:07.862736','2016-09-21 13:37:07.862736',18,741);
INSERT INTO `carts` VALUES(2169,'2016-09-22 10:20:11.787825','2016-09-22 10:20:11.787825',15,669);
INSERT INTO `carts` VALUES(2170,'2016-09-22 13:17:32.987646','2016-09-22 13:17:32.987646',8,745);
INSERT INTO `carts` VALUES(2171,'2016-09-22 13:18:38.855575','2016-09-22 13:18:38.855575',14,745);
INSERT INTO `carts` VALUES(2173,'2016-09-22 19:42:40.393196','2016-09-22 19:42:40.393196',8,746);
INSERT INTO `carts` VALUES(2174,'2016-09-22 19:43:16.373871','2016-09-22 19:43:16.373871',11,746);
INSERT INTO `carts` VALUES(2175,'2016-09-22 19:45:22.300539','2016-09-22 19:45:22.300539',14,746);
INSERT INTO `carts` VALUES(2176,'2016-09-22 19:48:31.276727','2016-09-22 19:48:31.276727',19,746);
INSERT INTO `carts` VALUES(2177,'2016-09-23 07:56:31.572436','2016-09-23 07:56:31.572436',25,1);
INSERT INTO `carts` VALUES(2178,'2016-09-26 03:48:20.352192','2016-09-26 03:48:20.352192',25,302);
INSERT INTO `carts` VALUES(2179,'2016-09-26 03:50:53.598808','2016-09-26 03:50:53.598808',37,302);
INSERT INTO `carts` VALUES(2180,'2016-09-26 03:52:43.301465','2016-09-26 03:52:43.301465',39,302);
INSERT INTO `carts` VALUES(2181,'2016-09-26 13:31:08.517664','2016-09-26 13:31:08.517664',30,127);
INSERT INTO `carts` VALUES(2183,'2016-09-26 13:56:10.296191','2016-09-26 13:56:10.296191',15,127);
INSERT INTO `carts` VALUES(2185,'2016-09-27 04:10:53.933575','2016-09-27 04:10:53.933575',37,683);
INSERT INTO `carts` VALUES(2186,'2016-09-27 04:14:02.839740','2016-09-27 04:14:02.839740',1,683);
INSERT INTO `carts` VALUES(2187,'2016-09-27 04:20:03.841639','2016-09-27 04:20:03.841639',9,683);
INSERT INTO `carts` VALUES(2188,'2016-09-27 04:20:14.198134','2016-09-27 04:20:14.198134',11,683);
INSERT INTO `carts` VALUES(2189,'2016-09-27 04:20:19.193884','2016-09-27 04:20:19.193884',12,683);
INSERT INTO `carts` VALUES(2190,'2016-09-27 04:20:22.472404','2016-09-27 04:20:22.472404',14,683);
INSERT INTO `carts` VALUES(2191,'2016-09-27 04:20:40.580162','2016-09-27 04:20:40.580162',15,683);
INSERT INTO `carts` VALUES(2192,'2016-09-27 04:21:12.360134','2016-09-27 04:21:12.360134',19,683);
INSERT INTO `carts` VALUES(2193,'2016-09-27 04:21:21.814450','2016-09-27 04:21:21.814450',24,683);
INSERT INTO `carts` VALUES(2194,'2016-09-27 04:21:43.442297','2016-09-27 04:21:43.442297',33,683);
INSERT INTO `carts` VALUES(2195,'2016-09-27 04:21:48.379436','2016-09-27 04:21:48.379436',36,683);
INSERT INTO `carts` VALUES(2196,'2016-09-27 04:21:58.966069','2016-09-27 04:21:58.966069',38,683);
INSERT INTO `carts` VALUES(2197,'2016-09-27 04:22:09.233291','2016-09-27 04:22:09.233291',39,683);
INSERT INTO `carts` VALUES(2198,'2016-09-28 07:10:26.842958','2016-09-28 07:10:26.842958',5,752);
INSERT INTO `carts` VALUES(2199,'2016-09-28 07:12:30.022573','2016-09-28 07:12:30.022573',24,752);
INSERT INTO `carts` VALUES(2200,'2016-09-28 07:13:58.101089','2016-09-28 07:13:58.101089',36,752);
INSERT INTO `carts` VALUES(2201,'2016-09-28 07:15:37.298774','2016-09-28 07:15:37.298774',26,752);
INSERT INTO `carts` VALUES(2202,'2016-09-28 07:16:36.933959','2016-09-28 07:16:36.933959',8,752);
INSERT INTO `carts` VALUES(2203,'2016-09-28 07:17:59.006640','2016-09-28 07:17:59.006640',9,752);
INSERT INTO `carts` VALUES(2204,'2016-09-28 07:22:16.371540','2016-09-28 07:22:16.371540',39,752);
INSERT INTO `carts` VALUES(2205,'2016-09-28 07:24:49.551751','2016-09-28 07:24:49.551751',37,752);
INSERT INTO `carts` VALUES(2206,'2016-09-28 07:26:55.906056','2016-09-28 07:26:55.906056',1,752);
INSERT INTO `carts` VALUES(2207,'2016-09-28 12:53:22.750206','2016-09-28 12:53:22.750206',25,171);
INSERT INTO `carts` VALUES(2208,'2016-09-28 12:53:53.363371','2016-09-28 12:53:53.363371',37,171);
INSERT INTO `carts` VALUES(2209,'2016-09-28 12:54:12.893376','2016-09-28 12:54:12.893376',29,171);
INSERT INTO `carts` VALUES(2210,'2016-09-29 13:26:45.171767','2016-09-29 13:26:45.171767',19,753);
INSERT INTO `carts` VALUES(2211,'2016-09-29 13:27:12.139182','2016-09-29 13:27:12.139182',1,753);
INSERT INTO `carts` VALUES(2212,'2016-09-29 13:32:32.143153','2016-09-29 13:32:32.143153',5,753);
INSERT INTO `carts` VALUES(2213,'2016-09-29 13:34:09.056007','2016-09-29 13:34:09.056007',14,753);
INSERT INTO `carts` VALUES(2214,'2016-09-29 13:36:06.274744','2016-09-29 13:36:06.274744',8,753);
INSERT INTO `carts` VALUES(2215,'2016-09-29 13:36:12.760442','2016-09-29 13:36:12.760442',12,753);
INSERT INTO `carts` VALUES(2217,'2016-10-01 13:43:04.054506','2016-10-01 13:43:04.054506',15,758);
INSERT INTO `carts` VALUES(2218,'2016-10-02 08:02:17.101003','2016-10-02 08:02:17.101003',30,760);
INSERT INTO `carts` VALUES(2219,'2016-10-02 08:02:53.822673','2016-10-02 08:02:53.822673',1,760);
INSERT INTO `carts` VALUES(2220,'2016-10-02 08:03:07.572230','2016-10-02 08:03:07.572230',2,760);
INSERT INTO `carts` VALUES(2221,'2016-10-02 08:03:16.343750','2016-10-02 08:03:16.343750',11,760);
INSERT INTO `carts` VALUES(2222,'2016-10-02 08:03:29.285887','2016-10-02 08:03:29.285887',19,760);
INSERT INTO `carts` VALUES(2223,'2016-10-02 08:03:51.593641','2016-10-02 08:03:51.593641',38,760);
INSERT INTO `carts` VALUES(2224,'2016-10-02 08:04:04.773887','2016-10-02 08:04:04.773887',39,760);
INSERT INTO `carts` VALUES(2225,'2016-10-02 08:05:11.437447','2016-10-02 08:05:11.437447',14,760);
INSERT INTO `carts` VALUES(2226,'2016-10-02 09:41:50.856819','2016-10-02 09:41:50.856819',1,761);
INSERT INTO `carts` VALUES(2227,'2016-10-03 00:55:53.982379','2016-10-03 00:55:53.982379',9,762);
INSERT INTO `carts` VALUES(2228,'2016-10-03 00:57:07.319182','2016-10-03 00:57:07.319182',15,762);
INSERT INTO `carts` VALUES(2230,'2016-10-03 02:17:18.257345','2016-10-03 02:17:18.257345',30,249);
INSERT INTO `carts` VALUES(2231,'2016-10-03 10:43:17.058986','2016-10-03 10:43:17.058986',33,473);
INSERT INTO `carts` VALUES(2232,'2016-10-03 12:46:30.975900','2016-10-03 12:46:30.975900',18,763);
INSERT INTO `carts` VALUES(2233,'2016-10-03 12:48:10.490548','2016-10-03 12:48:10.490548',30,763);
INSERT INTO `carts` VALUES(2235,'2016-10-03 12:49:42.855876','2016-10-03 12:49:42.855876',38,763);
INSERT INTO `carts` VALUES(2236,'2016-10-03 14:30:37.399172','2016-10-03 14:30:37.399172',1,757);
INSERT INTO `carts` VALUES(2237,'2016-10-03 14:31:36.719199','2016-10-03 14:31:36.719199',8,757);
INSERT INTO `carts` VALUES(2238,'2016-10-03 14:32:11.745706','2016-10-03 14:32:11.745706',19,757);
INSERT INTO `carts` VALUES(2239,'2016-10-03 14:33:36.249304','2016-10-03 14:33:36.249304',33,757);
INSERT INTO `carts` VALUES(2240,'2016-10-03 14:34:13.600265','2016-10-03 14:34:13.600265',12,757);
INSERT INTO `carts` VALUES(2241,'2016-10-03 14:34:34.666889','2016-10-03 14:34:34.666889',15,757);
INSERT INTO `carts` VALUES(2242,'2016-10-03 14:36:24.523143','2016-10-03 14:36:24.523143',11,757);
INSERT INTO `carts` VALUES(2244,'2016-10-03 14:39:49.894811','2016-10-03 14:39:49.894811',14,757);
INSERT INTO `carts` VALUES(2245,'2016-10-03 14:40:39.396375','2016-10-03 14:40:39.396375',26,757);
INSERT INTO `carts` VALUES(2246,'2016-10-03 14:41:36.968521','2016-10-03 14:41:36.968521',37,757);
INSERT INTO `carts` VALUES(2247,'2016-10-03 14:41:46.732272','2016-10-03 14:41:46.732272',39,757);
INSERT INTO `carts` VALUES(2248,'2016-10-03 14:42:03.839051','2016-10-03 14:42:03.839051',38,757);
INSERT INTO `carts` VALUES(2249,'2016-10-04 09:06:04.007633','2016-10-04 09:06:04.007633',18,766);
INSERT INTO `carts` VALUES(2250,'2016-10-04 09:06:43.982327','2016-10-04 09:06:43.982327',29,766);
INSERT INTO `carts` VALUES(2251,'2016-10-04 09:11:34.727636','2016-10-04 09:11:34.727636',19,766);
INSERT INTO `carts` VALUES(2252,'2016-10-04 09:12:23.417403','2016-10-04 09:12:23.417403',30,766);
INSERT INTO `carts` VALUES(2253,'2016-10-04 09:13:17.640852','2016-10-04 09:13:17.640852',38,766);
INSERT INTO `carts` VALUES(2254,'2016-10-04 09:15:32.881092','2016-10-04 09:15:32.881092',1,766);
INSERT INTO `carts` VALUES(2255,'2016-10-04 11:28:13.257755','2016-10-04 11:28:13.257755',8,766);
INSERT INTO `carts` VALUES(2256,'2016-10-04 11:28:44.376156','2016-10-04 11:28:44.376156',15,766);
INSERT INTO `carts` VALUES(2257,'2016-10-04 11:29:56.553446','2016-10-04 11:29:56.553446',37,766);
INSERT INTO `carts` VALUES(2258,'2016-10-04 11:30:38.221177','2016-10-04 11:30:38.221177',25,766);
INSERT INTO `carts` VALUES(2259,'2016-10-04 11:30:59.552238','2016-10-04 11:30:59.552238',9,766);
INSERT INTO `carts` VALUES(2261,'2016-10-05 14:02:34.959201','2016-10-05 14:02:34.959201',18,595);
INSERT INTO `carts` VALUES(2262,'2016-10-06 02:42:16.474326','2016-10-06 02:42:16.474326',38,770);
INSERT INTO `carts` VALUES(2263,'2016-10-06 02:48:38.486257','2016-10-06 02:48:38.486257',19,770);
INSERT INTO `carts` VALUES(2264,'2016-10-06 16:08:22.517445','2016-10-06 16:08:22.517445',24,425);
INSERT INTO `carts` VALUES(2265,'2016-10-06 16:11:09.638423','2016-10-06 16:11:09.638423',15,425);
INSERT INTO `carts` VALUES(2268,'2016-10-06 16:18:02.514268','2016-10-06 16:18:02.514268',14,425);
INSERT INTO `carts` VALUES(2270,'2016-10-07 00:13:25.478088','2016-10-07 00:13:25.478088',37,67);
INSERT INTO `carts` VALUES(2271,'2016-10-07 02:13:13.471636','2016-10-07 02:13:13.471636',15,324);
INSERT INTO `carts` VALUES(2272,'2016-10-07 02:14:16.689910','2016-10-07 02:14:16.689910',NULL,NULL);
INSERT INTO `carts` VALUES(2273,'2016-10-07 11:54:16.625846','2016-10-07 11:54:16.625846',19,774);
INSERT INTO `carts` VALUES(2274,'2016-10-07 16:24:07.022169','2016-10-07 16:24:07.022169',1,776);
INSERT INTO `carts` VALUES(2275,'2016-10-07 23:37:56.070377','2016-10-07 23:37:56.070377',8,776);
INSERT INTO `carts` VALUES(2276,'2016-10-08 07:05:56.527452','2016-10-08 07:05:56.527452',1,779);
INSERT INTO `carts` VALUES(2277,'2016-10-08 13:11:45.476639','2016-10-08 13:11:45.476639',1,780);
INSERT INTO `carts` VALUES(2278,'2016-10-09 14:34:20.908336','2016-10-09 14:34:20.908336',37,781);
INSERT INTO `carts` VALUES(2280,'2016-10-09 17:51:13.456900','2016-10-09 17:51:13.456900',30,669);
INSERT INTO `carts` VALUES(2281,'2016-10-10 04:25:21.833094','2016-10-10 04:25:21.833094',1,783);
INSERT INTO `carts` VALUES(2282,'2016-10-10 04:54:46.137551','2016-10-10 04:54:46.137551',12,743);
INSERT INTO `carts` VALUES(2283,'2016-10-10 05:02:16.318605','2016-10-10 05:02:16.318605',8,743);
INSERT INTO `carts` VALUES(2285,'2016-10-10 17:47:15.697829','2016-10-10 17:47:15.697829',19,721);
INSERT INTO `carts` VALUES(2286,'2016-10-11 00:15:59.843853','2016-10-11 00:15:59.843853',1,725);
INSERT INTO `carts` VALUES(2287,'2016-10-11 00:23:51.103084','2016-10-11 00:23:51.103084',37,725);
INSERT INTO `carts` VALUES(2288,'2016-10-11 00:24:22.610773','2016-10-11 00:24:22.610773',29,725);
INSERT INTO `carts` VALUES(2289,'2016-10-11 00:24:32.491864','2016-10-11 00:24:32.491864',26,725);
INSERT INTO `carts` VALUES(2290,'2016-10-11 03:11:56.595597','2016-10-11 03:11:56.595597',1,759);
INSERT INTO `carts` VALUES(2291,'2016-10-11 06:24:40.646068','2016-10-11 06:24:40.646068',19,664);
INSERT INTO `carts` VALUES(2292,'2016-10-11 06:26:04.685651','2016-10-11 06:26:04.685651',33,664);
INSERT INTO `carts` VALUES(2293,'2016-10-11 06:26:37.551661','2016-10-11 06:26:37.551661',2,664);
INSERT INTO `carts` VALUES(2295,'2016-10-11 07:08:52.965509','2016-10-11 07:08:52.965509',8,664);
INSERT INTO `carts` VALUES(2296,'2016-10-11 07:09:06.503370','2016-10-11 07:09:06.503370',9,664);
INSERT INTO `carts` VALUES(2297,'2016-10-11 07:09:17.645487','2016-10-11 07:09:17.645487',12,664);
INSERT INTO `carts` VALUES(2298,'2016-10-11 07:09:22.859794','2016-10-11 07:09:22.859794',11,664);
INSERT INTO `carts` VALUES(2299,'2016-10-11 07:09:27.913169','2016-10-11 07:09:27.913169',14,664);
INSERT INTO `carts` VALUES(2300,'2016-10-11 07:09:39.603421','2016-10-11 07:09:39.603421',26,664);
INSERT INTO `carts` VALUES(2301,'2016-10-11 07:09:46.910207','2016-10-11 07:09:46.910207',29,664);
INSERT INTO `carts` VALUES(2302,'2016-10-11 07:09:54.080430','2016-10-11 07:09:54.080430',30,664);
INSERT INTO `carts` VALUES(2303,'2016-10-11 07:10:41.898796','2016-10-11 07:10:41.898796',36,664);
INSERT INTO `carts` VALUES(2304,'2016-10-11 07:10:47.182549','2016-10-11 07:10:47.182549',37,664);
INSERT INTO `carts` VALUES(2305,'2016-10-11 07:10:53.025460','2016-10-11 07:10:53.025460',39,664);
INSERT INTO `carts` VALUES(2306,'2016-10-11 07:11:09.278601','2016-10-11 07:11:09.278601',40,664);
INSERT INTO `carts` VALUES(2307,'2016-10-11 07:12:37.850471','2016-10-11 07:12:37.850471',18,664);
INSERT INTO `carts` VALUES(2308,'2016-10-12 05:34:35.884965','2016-10-12 05:34:35.884965',1,788);
INSERT INTO `carts` VALUES(2309,'2016-10-12 05:36:26.244806','2016-10-12 05:36:26.244806',15,788);
INSERT INTO `carts` VALUES(2310,'2016-10-12 06:03:03.364407','2016-10-12 06:03:03.364407',12,1);
INSERT INTO `carts` VALUES(2311,'2016-10-12 06:15:10.589279','2016-10-12 06:15:10.589279',12,669);
INSERT INTO `carts` VALUES(2312,'2016-10-13 01:02:38.446999','2016-10-13 01:02:38.446999',11,473);
INSERT INTO `carts` VALUES(2313,'2016-10-13 01:05:28.115184','2016-10-13 01:05:28.115184',37,473);
INSERT INTO `carts` VALUES(2314,'2016-10-13 02:46:50.564049','2016-10-13 02:46:50.564049',14,789);
INSERT INTO `carts` VALUES(2317,'2016-10-13 02:49:43.477426','2016-10-13 02:49:43.477426',29,789);
INSERT INTO `carts` VALUES(2318,'2016-10-14 02:13:22.267822','2016-10-14 02:13:22.267822',1,791);
INSERT INTO `carts` VALUES(2319,'2016-10-14 02:17:05.223122','2016-10-14 02:17:05.223122',8,791);
INSERT INTO `carts` VALUES(2320,'2016-10-14 02:22:31.471268','2016-10-14 02:22:31.471268',30,791);
INSERT INTO `carts` VALUES(2321,'2016-10-14 02:27:17.433828','2016-10-14 02:27:17.433828',15,791);
INSERT INTO `carts` VALUES(2322,'2016-10-14 06:35:06.457914','2016-10-14 06:35:06.457914',1,784);
INSERT INTO `carts` VALUES(2323,'2016-10-15 03:21:15.194518','2016-10-15 03:21:15.194518',14,793);
INSERT INTO `carts` VALUES(2324,'2016-10-15 08:08:49.849571','2016-10-15 08:08:49.849571',24,794);
INSERT INTO `carts` VALUES(2325,'2016-10-15 08:09:49.490369','2016-10-15 08:09:49.490369',38,794);
INSERT INTO `carts` VALUES(2326,'2016-10-15 08:10:59.305809','2016-10-15 08:10:59.305809',33,794);
INSERT INTO `carts` VALUES(2327,'2016-10-15 08:12:17.932739','2016-10-15 08:12:17.932739',19,794);
INSERT INTO `carts` VALUES(2328,'2016-10-15 19:49:46.799805','2016-10-15 19:49:46.799805',19,796);
INSERT INTO `carts` VALUES(2330,'2016-10-18 03:48:07.450784','2016-10-18 03:48:07.450784',37,42);
INSERT INTO `carts` VALUES(2331,'2016-10-18 03:58:38.556209','2016-10-18 03:58:38.556209',12,206);
INSERT INTO `carts` VALUES(2333,'2016-10-18 13:06:11.887921','2016-10-18 13:06:11.887921',5,341);
INSERT INTO `carts` VALUES(2334,'2016-10-18 13:07:51.804907','2016-10-18 13:07:51.804907',15,341);
INSERT INTO `carts` VALUES(2335,'2016-10-19 07:14:19.034865','2016-10-19 07:14:19.034865',8,784);
INSERT INTO `carts` VALUES(2336,'2016-10-19 07:15:04.474685','2016-10-19 07:15:04.474685',9,784);
INSERT INTO `carts` VALUES(2337,'2016-10-19 07:15:22.372427','2016-10-19 07:15:22.372427',14,784);
INSERT INTO `carts` VALUES(2338,'2016-10-19 07:15:54.138486','2016-10-19 07:15:54.138486',25,784);
INSERT INTO `carts` VALUES(2339,'2016-10-19 15:30:18.980020','2016-10-19 15:30:18.980020',29,756);
INSERT INTO `carts` VALUES(2340,'2016-10-19 15:32:32.822563','2016-10-19 15:32:32.822563',19,756);
INSERT INTO `carts` VALUES(2341,'2016-10-19 15:55:21.575237','2016-10-19 15:55:21.575237',18,800);
INSERT INTO `carts` VALUES(2342,'2016-10-19 15:58:55.038788','2016-10-19 15:58:55.038788',29,800);
INSERT INTO `carts` VALUES(2344,'2016-10-19 16:19:28.709552','2016-10-19 16:19:28.709552',38,800);
INSERT INTO `carts` VALUES(2345,'2016-10-19 16:24:44.733634','2016-10-19 16:24:44.733634',37,800);
INSERT INTO `carts` VALUES(2346,'2016-10-19 18:17:02.839032','2016-10-19 18:17:02.839032',15,801);
INSERT INTO `carts` VALUES(2347,'2016-10-19 18:17:43.252160','2016-10-19 18:17:43.252160',39,801);
INSERT INTO `carts` VALUES(2348,'2016-10-20 14:40:31.692880','2016-10-20 14:40:31.692880',19,800);
INSERT INTO `carts` VALUES(2349,'2016-10-20 14:46:14.809700','2016-10-20 14:46:14.809700',1,800);
INSERT INTO `carts` VALUES(2350,'2016-10-21 13:15:10.692621','2016-10-21 13:15:10.692621',12,528);
INSERT INTO `carts` VALUES(2351,'2016-10-21 13:22:34.998220','2016-10-21 13:22:34.998220',1,804);
INSERT INTO `carts` VALUES(2352,'2016-10-21 13:30:09.622155','2016-10-21 13:30:09.622155',12,803);
INSERT INTO `carts` VALUES(2353,'2016-10-21 14:04:50.741207','2016-10-21 14:04:50.741207',19,803);
INSERT INTO `carts` VALUES(2354,'2016-10-22 09:17:16.623086','2016-10-22 09:17:16.623086',37,495);
INSERT INTO `carts` VALUES(2355,'2016-10-22 09:18:09.370104','2016-10-22 09:18:09.370104',25,495);
INSERT INTO `carts` VALUES(2356,'2016-10-22 13:22:21.408136','2016-10-22 13:22:21.408136',12,432);
INSERT INTO `carts` VALUES(2357,'2016-10-25 08:06:51.981293','2016-10-25 08:06:51.981293',38,226);
INSERT INTO `carts` VALUES(2358,'2016-10-25 08:07:13.176402','2016-10-25 08:07:13.176402',9,226);
INSERT INTO `carts` VALUES(2361,'2016-10-26 23:37:59.145663','2016-10-26 23:37:59.145663',12,652);
INSERT INTO `carts` VALUES(2362,'2016-10-26 23:38:20.395194','2016-10-26 23:38:20.395194',25,652);
INSERT INTO `carts` VALUES(2363,'2016-10-26 23:38:27.758257','2016-10-26 23:38:27.758257',24,652);
INSERT INTO `carts` VALUES(2364,'2016-10-26 23:38:51.140684','2016-10-26 23:38:51.140684',29,652);
INSERT INTO `carts` VALUES(2365,'2016-10-26 23:39:00.352628','2016-10-26 23:39:00.352628',9,652);
INSERT INTO `carts` VALUES(2366,'2016-10-29 15:24:56.701815','2016-10-29 15:24:56.701815',5,806);
INSERT INTO `carts` VALUES(2367,'2016-10-29 15:25:24.532939','2016-10-29 15:25:24.532939',8,806);
INSERT INTO `carts` VALUES(2369,'2016-10-29 22:40:45.249511','2016-10-29 22:40:45.249511',NULL,NULL);
INSERT INTO `carts` VALUES(2371,'2016-10-29 23:06:57.887356','2016-10-29 23:06:57.887356',1,807);
INSERT INTO `carts` VALUES(2372,'2016-10-29 23:11:58.041744','2016-10-29 23:11:58.041744',14,807);
INSERT INTO `carts` VALUES(2376,'2016-11-04 14:37:47.787467','2016-11-04 14:37:47.787467',19,806);
INSERT INTO `carts` VALUES(2377,'2016-11-09 20:17:48.379245','2016-11-09 20:17:48.379245',19,473);
INSERT INTO `carts` VALUES(2378,'2016-11-10 14:25:33.861101','2016-11-10 14:25:33.861101',15,473);
INSERT INTO `carts` VALUES(2379,'2016-11-13 15:04:25.836010','2016-11-13 15:04:25.836010',19,528);
INSERT INTO `carts` VALUES(2381,'2016-11-18 08:56:07.725941','2016-11-18 08:56:07.725941',5,725);
INSERT INTO `carts` VALUES(2382,'2016-11-18 08:56:20.222660','2016-11-18 08:56:20.222660',15,725);
INSERT INTO `carts` VALUES(2383,'2016-11-19 02:03:03.649747','2016-11-19 02:03:03.649747',42,815);
INSERT INTO `carts` VALUES(2385,'2016-11-20 06:19:20.721503','2016-11-20 06:19:20.721503',25,391);
INSERT INTO `carts` VALUES(2386,'2016-11-20 10:15:28.275019','2016-11-20 10:15:28.275019',40,206);
INSERT INTO `carts` VALUES(2387,'2016-11-23 14:23:59.214036','2016-11-23 14:23:59.214036',19,146);
INSERT INTO `carts` VALUES(2388,'2016-11-23 14:26:34.657356','2016-11-23 14:26:34.657356',29,146);
INSERT INTO `carts` VALUES(2390,'2016-11-23 14:30:36.030727','2016-11-23 14:30:36.030727',11,146);
INSERT INTO `carts` VALUES(2391,'2016-11-23 14:31:22.165609','2016-11-23 14:31:22.165609',14,146);
INSERT INTO `carts` VALUES(2392,'2016-11-23 14:36:37.267244','2016-11-23 14:36:37.267244',5,146);
INSERT INTO `carts` VALUES(2393,'2016-11-23 14:40:13.208793','2016-11-23 14:40:13.208793',15,146);
INSERT INTO `carts` VALUES(2394,'2016-11-23 14:40:57.964080','2016-11-23 14:40:57.964080',36,146);
INSERT INTO `carts` VALUES(2395,'2016-11-23 14:42:08.840556','2016-11-23 14:42:08.840556',37,146);
INSERT INTO `carts` VALUES(2396,'2016-11-23 14:43:35.956839','2016-11-23 14:43:35.956839',42,146);
INSERT INTO `carts` VALUES(2397,'2016-11-24 14:16:01.788753','2016-11-24 14:16:01.788753',2,816);
INSERT INTO `carts` VALUES(2398,'2016-11-24 14:17:04.087638','2016-11-24 14:17:04.087638',19,816);
INSERT INTO `carts` VALUES(2399,'2016-11-24 14:23:15.516666','2016-11-24 14:23:15.516666',15,816);
INSERT INTO `carts` VALUES(2400,'2016-11-24 14:24:47.038307','2016-11-24 14:24:47.038307',30,816);
INSERT INTO `carts` VALUES(2401,'2016-11-24 14:25:56.583153','2016-11-24 14:25:56.583153',36,816);
INSERT INTO `carts` VALUES(2402,'2016-11-24 14:26:47.499592','2016-11-24 14:26:47.499592',26,816);
INSERT INTO `carts` VALUES(2403,'2016-11-24 14:27:43.365829','2016-11-24 14:27:43.365829',14,816);
INSERT INTO `carts` VALUES(2404,'2016-11-24 14:29:43.948000','2016-11-24 14:29:43.948000',11,816);
INSERT INTO `carts` VALUES(2405,'2016-11-24 14:31:10.774660','2016-11-24 14:31:10.774660',8,816);
INSERT INTO `carts` VALUES(2408,'2016-11-26 03:39:15.672005','2016-11-26 03:39:15.672005',1,819);
INSERT INTO `carts` VALUES(2409,'2016-11-26 03:48:40.800002','2016-11-26 03:48:40.800002',39,819);
INSERT INTO `carts` VALUES(2410,'2016-11-26 03:48:56.432933','2016-11-26 03:48:56.432933',40,819);
INSERT INTO `carts` VALUES(2411,'2016-11-26 03:49:23.196411','2016-11-26 03:49:23.196411',29,819);
INSERT INTO `carts` VALUES(2412,'2016-11-26 03:49:45.054010','2016-11-26 03:49:45.054010',8,819);
INSERT INTO `carts` VALUES(2413,'2016-11-27 15:20:52.290763','2016-11-27 15:20:52.290763',39,136);
INSERT INTO `carts` VALUES(2414,'2016-11-29 20:11:32.462281','2016-11-29 20:11:32.462281',15,493);
INSERT INTO `carts` VALUES(2415,'2016-12-02 07:05:23.789596','2016-12-02 07:05:23.789596',19,252);
INSERT INTO `carts` VALUES(2416,'2016-12-04 00:12:42.326910','2016-12-04 00:12:42.326910',42,173);
INSERT INTO `carts` VALUES(2417,'2016-12-06 12:07:00.477046','2016-12-06 12:07:00.477046',42,473);
INSERT INTO `carts` VALUES(2418,'2016-12-07 10:11:17.470464','2016-12-07 10:11:17.470464',1,548);
INSERT INTO `carts` VALUES(2419,'2016-12-11 13:25:32.270224','2016-12-11 13:25:32.270224',30,820);
INSERT INTO `carts` VALUES(2420,'2016-12-11 13:27:56.940436','2016-12-11 13:27:56.940436',15,820);
INSERT INTO `carts` VALUES(2421,'2016-12-11 13:32:47.610512','2016-12-11 13:32:47.610512',42,820);
INSERT INTO `carts` VALUES(2422,'2016-12-11 15:13:59.676349','2016-12-11 15:13:59.676349',25,20);
INSERT INTO `carts` VALUES(2423,'2016-12-11 15:14:14.808643','2016-12-11 15:14:14.808643',26,20);
INSERT INTO `carts` VALUES(2424,'2016-12-13 06:01:16.461359','2016-12-13 06:01:16.461359',42,450);
INSERT INTO `carts` VALUES(2425,'2016-12-13 06:38:30.803920','2016-12-13 06:38:30.803920',19,821);
INSERT INTO `carts` VALUES(2427,'2016-12-13 06:42:10.949359','2016-12-13 06:42:10.949359',14,821);
INSERT INTO `carts` VALUES(2428,'2016-12-13 11:18:35.768150','2016-12-13 11:18:35.768150',18,581);
INSERT INTO `carts` VALUES(2429,'2016-12-13 13:04:04.512642','2016-12-13 13:04:04.512642',40,821);
INSERT INTO `carts` VALUES(2430,'2016-12-18 14:47:19.895065','2016-12-18 14:47:19.895065',42,171);
INSERT INTO `carts` VALUES(2431,'2016-12-19 08:55:22.518535','2016-12-19 08:55:22.518535',42,391);
INSERT INTO `carts` VALUES(2432,'2016-12-19 12:30:05.008021','2016-12-19 12:30:05.008021',19,823);
INSERT INTO `carts` VALUES(2433,'2016-12-19 12:36:06.126899','2016-12-19 12:36:06.126899',30,823);
INSERT INTO `carts` VALUES(2434,'2016-12-22 05:39:18.651129','2016-12-22 05:39:18.651129',14,826);
INSERT INTO `carts` VALUES(2435,'2016-12-22 05:39:53.551183','2016-12-22 05:39:53.551183',15,826);
INSERT INTO `carts` VALUES(2436,'2016-12-22 05:42:45.173787','2016-12-22 05:42:45.173787',19,826);
INSERT INTO `carts` VALUES(2437,'2016-12-22 05:43:34.908768','2016-12-22 05:43:34.908768',42,826);
INSERT INTO `carts` VALUES(2438,'2016-12-22 05:44:15.337243','2016-12-22 05:44:15.337243',36,826);
INSERT INTO `carts` VALUES(2439,'2016-12-22 06:02:03.458424','2016-12-22 06:02:03.458424',36,827);
INSERT INTO `carts` VALUES(2440,'2016-12-27 01:35:37.692450','2016-12-27 01:35:37.692450',15,58);
INSERT INTO `carts` VALUES(2441,'2016-12-28 13:44:23.257510','2016-12-28 13:44:23.257510',42,627);
INSERT INTO `carts` VALUES(2442,'2017-01-05 11:39:25.172742','2017-01-05 11:39:25.172742',14,831);
INSERT INTO `carts` VALUES(2443,'2017-01-06 10:53:21.744021','2017-01-06 10:53:21.744021',14,1);
INSERT INTO `carts` VALUES(2444,'2017-01-07 07:31:47.769476','2017-01-07 07:31:47.769476',23,785);
INSERT INTO `carts` VALUES(2445,'2017-01-08 20:00:18.034475','2017-01-08 20:00:18.034475',29,493);
INSERT INTO `carts` VALUES(2446,'2017-01-08 20:03:54.805032','2017-01-08 20:03:54.805032',36,493);
INSERT INTO `carts` VALUES(2447,'2017-01-10 12:50:21.263735','2017-01-10 12:50:21.263735',15,834);
INSERT INTO `carts` VALUES(2448,'2017-01-11 14:31:04.779714','2017-01-11 14:31:04.779714',42,5);
INSERT INTO `carts` VALUES(2449,'2017-01-13 04:22:07.491309','2017-01-13 04:22:07.491309',42,1);
INSERT INTO `carts` VALUES(2450,'2017-01-13 04:25:32.107772','2017-01-13 04:25:32.107772',19,1);
INSERT INTO `carts` VALUES(2454,'2017-01-15 03:23:02.120915','2017-01-15 03:23:02.120915',24,837);
INSERT INTO `carts` VALUES(2455,'2017-01-17 23:08:14.075205','2017-01-17 23:08:14.075205',36,473);
INSERT INTO `carts` VALUES(2456,'2017-01-17 23:10:54.854760','2017-01-17 23:10:54.854760',38,473);
INSERT INTO `carts` VALUES(2457,'2017-01-18 01:51:06.937727','2017-01-18 01:51:06.937727',8,840);
INSERT INTO `carts` VALUES(2458,'2017-01-18 01:51:41.547616','2017-01-18 01:51:41.547616',25,840);
INSERT INTO `carts` VALUES(2459,'2017-01-18 01:52:23.077039','2017-01-18 01:52:23.077039',15,840);
INSERT INTO `carts` VALUES(2460,'2017-01-18 01:53:10.574008','2017-01-18 01:53:10.574008',29,840);
INSERT INTO `carts` VALUES(2461,'2017-01-18 01:53:28.417989','2017-01-18 01:53:28.417989',40,840);
INSERT INTO `carts` VALUES(2462,'2017-01-18 01:53:40.803725','2017-01-18 01:53:40.803725',36,840);
INSERT INTO `carts` VALUES(2463,'2017-01-18 01:54:33.485390','2017-01-18 01:54:33.485390',26,840);
INSERT INTO `carts` VALUES(2464,'2017-01-18 01:55:28.260666','2017-01-18 01:55:28.260666',1,840);
INSERT INTO `carts` VALUES(2465,'2017-01-18 01:56:07.183728','2017-01-18 01:56:07.183728',11,840);
INSERT INTO `carts` VALUES(2466,'2017-01-18 04:32:24.506802','2017-01-18 04:32:24.506802',42,227);
INSERT INTO `carts` VALUES(2467,'2017-01-20 10:28:46.681605','2017-01-20 10:28:46.681605',42,435);
INSERT INTO `carts` VALUES(2468,'2017-01-20 10:33:08.639946','2017-01-20 10:33:08.639946',1,435);
INSERT INTO `carts` VALUES(2469,'2017-01-23 03:16:00.452189','2017-01-23 03:16:00.452189',19,841);
INSERT INTO `carts` VALUES(2470,'2017-01-23 03:31:43.009537','2017-01-23 03:31:43.009537',15,842);
INSERT INTO `carts` VALUES(2471,'2017-01-23 04:05:35.450663','2017-01-23 04:05:35.450663',38,841);
INSERT INTO `carts` VALUES(2472,'2017-01-27 01:29:25.492851','2017-01-27 01:29:25.492851',19,844);
INSERT INTO `carts` VALUES(2473,'2017-01-27 01:32:13.894039','2017-01-27 01:32:13.894039',30,844);
INSERT INTO `carts` VALUES(2474,'2017-01-27 11:49:39.314458','2017-01-27 11:49:39.314458',15,845);
INSERT INTO `carts` VALUES(2475,'2017-02-02 06:41:23.176081','2017-02-02 06:41:23.176081',36,812);
INSERT INTO `carts` VALUES(2476,'2017-02-02 06:48:20.184579','2017-02-02 06:48:20.184579',24,812);
INSERT INTO `carts` VALUES(2477,'2017-02-02 06:48:30.007699','2017-02-02 06:48:30.007699',39,812);
INSERT INTO `carts` VALUES(2478,'2017-02-02 06:48:39.414908','2017-02-02 06:48:39.414908',42,812);
INSERT INTO `carts` VALUES(2479,'2017-02-02 06:49:33.456085','2017-02-02 06:49:33.456085',40,812);
INSERT INTO `carts` VALUES(2480,'2017-02-02 06:50:02.395073','2017-02-02 06:50:02.395073',37,812);
INSERT INTO `carts` VALUES(2481,'2017-02-02 06:50:13.933276','2017-02-02 06:50:13.933276',26,812);
INSERT INTO `carts` VALUES(2482,'2017-02-02 06:50:27.256767','2017-02-02 06:50:27.256767',29,812);
INSERT INTO `carts` VALUES(2483,'2017-02-02 06:50:32.744398','2017-02-02 06:50:32.744398',30,812);
INSERT INTO `carts` VALUES(2484,'2017-02-02 06:52:43.214744','2017-02-02 06:52:43.214744',1,812);
INSERT INTO `carts` VALUES(2485,'2017-02-03 12:37:57.801314','2017-02-03 12:37:57.801314',8,846);
INSERT INTO `carts` VALUES(2486,'2017-02-03 12:40:34.332536','2017-02-03 12:40:34.332536',14,846);
INSERT INTO `carts` VALUES(2487,'2017-02-05 00:28:21.609763','2017-02-05 00:28:21.609763',8,847);
INSERT INTO `carts` VALUES(2488,'2017-02-05 00:42:08.287541','2017-02-05 00:42:08.287541',12,847);
INSERT INTO `carts` VALUES(2489,'2017-02-05 05:58:32.113778','2017-02-05 05:58:32.113778',36,848);
INSERT INTO `carts` VALUES(2490,'2017-02-05 12:50:09.240106','2017-02-05 12:50:09.240106',15,849);
INSERT INTO `carts` VALUES(2491,'2017-02-11 09:04:25.207021','2017-02-11 09:04:25.207021',39,844);
INSERT INTO `carts` VALUES(2492,'2017-02-11 09:05:28.076264','2017-02-11 09:05:28.076264',42,844);
CREATE TABLE `orders` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `customer_id` integer NOT NULL, `address_id` integer NOT NULL, `shipped` boolean DEFAULT '0', `created_at` datetime, `updated_at` datetime, `staff_member_id` integer, `total_price` decimal, `payment` varchar(255));
INSERT INTO `orders` VALUES(1,2,1,'1','2015-10-20 12:02:23.324737','2015-10-21 07:41:16.578345',1,800,'代金引き換え');
INSERT INTO `orders` VALUES(2,20,3,'1','2015-10-20 12:45:24.115944','2015-10-26 22:57:03.851147',1,1100,'代金引き換え');
INSERT INTO `orders` VALUES(3,2,1,'1','2015-10-21 08:17:15.156988','2015-10-25 00:59:48.739186',1,1100,'代金引き換え');
INSERT INTO `orders` VALUES(4,28,5,'1','2015-11-04 13:38:49.002164','2015-11-06 09:05:08.297610',19,2700,'代金引き換え');
INSERT INTO `orders` VALUES(5,28,5,'1','2015-11-04 13:48:56.053666','2015-11-05 09:30:08.766596',8,4300,'代金引き換え');
INSERT INTO `orders` VALUES(6,23,6,'1','2015-11-11 10:08:06.129430','2015-11-14 01:02:58.721807',19,2700,'クレジット支払い');
INSERT INTO `orders` VALUES(7,1,9,'1','2015-11-12 03:12:38.168604','2015-11-13 07:24:07.451707',8,18250,'代金引き換え');
INSERT INTO `orders` VALUES(8,1,9,'1','2015-12-02 09:32:42.242838','2015-12-07 10:26:35.605757',9,4600,'代金引き換え');
INSERT INTO `orders` VALUES(9,23,8,'1','2015-12-08 10:12:37.855524','2015-12-09 04:30:47.872686',1,4500,'代金引き換え');
INSERT INTO `orders` VALUES(10,28,5,'1','2015-12-10 14:48:43.122918','2015-12-14 00:43:59.195833',1,5000,'クレジット支払い');
INSERT INTO `orders` VALUES(11,202,12,'0','2016-02-09 04:58:03.531890','2016-02-09 04:58:03.531890',24,1700,'代金引き換え');
INSERT INTO `orders` VALUES(12,194,13,'1','2016-02-10 11:03:54.061394','2016-02-12 06:23:34.176259',8,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(13,23,8,'1','2016-02-10 11:35:06.153513','2016-02-12 06:23:50.424610',8,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(14,23,8,'1','2016-02-10 11:45:47.400596','2016-02-18 02:27:44.608057',1,2300,'クレジット支払い');
INSERT INTO `orders` VALUES(15,116,11,'1','2016-02-10 15:02:41.015381','2016-02-12 06:24:01.792327',8,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(16,23,8,'1','2016-02-19 09:25:49.832467','2016-02-20 05:36:02.909191',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(17,202,12,'0','2016-02-20 04:54:28.681260','2016-02-20 04:54:28.681260',24,1200,'代金引き換え');
INSERT INTO `orders` VALUES(18,226,16,'0','2016-02-23 06:06:39.699036','2016-02-23 06:06:39.699036',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(19,1,9,'1','2016-03-21 02:58:03.054223','2016-03-26 13:19:10.321309',11,1500,'代金引き換え');
INSERT INTO `orders` VALUES(20,254,19,'1','2016-03-24 02:20:00.790683','2016-03-26 05:16:32.547743',30,1500,'代金引き換え');
INSERT INTO `orders` VALUES(21,23,8,'1','2016-03-25 13:13:54.657253','2016-03-28 16:38:13.586149',33,3900,'クレジット支払い');
INSERT INTO `orders` VALUES(22,303,20,'1','2016-03-28 07:33:09.690519','2016-03-28 16:38:00.064493',33,1440,'クレジット支払い');
INSERT INTO `orders` VALUES(23,310,22,'1','2016-04-01 22:28:06.354816','2016-04-04 07:57:42.368061',33,720,'クレジット支払い');
INSERT INTO `orders` VALUES(24,241,23,'1','2016-04-02 00:40:04.749023','2016-04-04 07:57:49.288814',33,720,'クレジット支払い');
INSERT INTO `orders` VALUES(25,316,24,'1','2016-04-02 23:53:25.218649','2016-04-05 15:17:53.942872',33,5080,'クレジット支払い');
INSERT INTO `orders` VALUES(26,336,25,'1','2016-04-06 01:06:40.415650','2016-04-08 21:36:57.095979',33,3780,'クレジット支払い');
INSERT INTO `orders` VALUES(27,354,26,'1','2016-04-06 10:10:52.449688','2016-04-08 07:09:01.306830',38,4260,'クレジット支払い');
INSERT INTO `orders` VALUES(28,320,27,'1','2016-04-08 14:08:40.959871','2016-04-09 02:50:03.139150',8,6800,'クレジット支払い');
INSERT INTO `orders` VALUES(29,197,30,'0','2016-05-02 00:19:10.400321','2016-05-02 00:19:10.400321',14,1200,'クレジット支払い');
INSERT INTO `orders` VALUES(30,320,27,'1','2016-05-07 05:49:39.102488','2016-05-08 23:34:20.395606',8,6800,'クレジット支払い');
INSERT INTO `orders` VALUES(31,398,32,'1','2016-05-08 10:51:31.361042','2016-05-10 03:15:57.308672',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(32,23,8,'1','2016-05-12 10:16:18.278264','2016-05-13 22:52:03.535113',8,3000,'クレジット支払い');
INSERT INTO `orders` VALUES(33,28,5,'1','2016-05-12 12:13:08.599934','2016-05-13 22:52:18.611891',8,4000,'クレジット支払い');
INSERT INTO `orders` VALUES(34,100,36,'1','2016-05-13 00:27:09.763218','2016-05-14 03:51:36.002608',5,4300,'クレジット支払い');
INSERT INTO `orders` VALUES(35,435,37,'1','2016-05-14 01:39:00.919319','2016-05-16 03:41:43.314587',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(36,423,38,'0','2016-05-14 02:06:11.680428','2016-05-14 02:06:11.680428',14,1200,'クレジット支払い');
INSERT INTO `orders` VALUES(37,126,39,'1','2016-05-14 12:00:58.483283','2016-05-18 06:14:56.519963',1,1300,'代金引き換え');
INSERT INTO `orders` VALUES(38,435,37,'1','2016-05-29 02:47:04.270545','2016-05-29 06:38:29.165190',5,4300,'クレジット支払い');
INSERT INTO `orders` VALUES(39,320,27,'1','2016-06-03 04:36:51.304892','2016-06-04 01:02:48.443268',8,6800,'クレジット支払い');
INSERT INTO `orders` VALUES(40,28,5,'1','2016-06-05 01:10:40.059356','2016-06-10 03:43:12.605955',8,6000,'クレジット支払い');
INSERT INTO `orders` VALUES(41,116,11,'1','2016-06-10 02:00:21.311613','2016-06-10 23:14:58.433140',8,9800,'クレジット支払い');
INSERT INTO `orders` VALUES(42,252,45,'0','2016-06-24 09:34:38.094335','2016-06-24 09:34:38.094335',5,4300,'クレジット支払い');
INSERT INTO `orders` VALUES(43,473,46,'1','2016-06-24 10:25:38.020551','2016-06-27 09:44:05.307893',15,6500,'クレジット支払い');
INSERT INTO `orders` VALUES(44,475,47,'1','2016-06-26 00:05:08.942170','2016-06-27 01:12:22.235381',8,6800,'クレジット支払い');
INSERT INTO `orders` VALUES(45,23,8,'1','2016-06-26 12:46:19.972881','2016-06-30 22:53:59.589702',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(46,28,48,'1','2016-06-30 08:47:30.684888','2016-07-01 08:50:50.808155',8,6000,'クレジット支払い');
INSERT INTO `orders` VALUES(47,23,8,'1','2016-07-01 10:01:25.200819','2016-07-11 03:09:42.183854',14,4000,'クレジット支払い');
INSERT INTO `orders` VALUES(48,493,49,'1','2016-07-02 19:14:47.106633','2016-07-04 12:56:55.179306',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(49,508,50,'1','2016-07-12 23:52:12.357983','2016-07-14 11:19:33.556682',15,2500,'クレジット支払い');
INSERT INTO `orders` VALUES(50,425,51,'0','2016-07-16 18:35:52.575106','2016-07-16 18:35:52.575106',14,1200,'代金引き換え');
INSERT INTO `orders` VALUES(51,473,46,'1','2016-07-21 14:49:39.437170','2016-07-25 09:39:55.986915',15,6500,'クレジット支払い');
INSERT INTO `orders` VALUES(52,520,53,'1','2016-07-30 14:42:04.391758','2016-08-02 08:48:17.759309',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(53,28,5,'1','2016-08-04 11:58:50.412737','2016-08-05 05:37:48.535609',8,6000,'クレジット支払い');
INSERT INTO `orders` VALUES(54,581,55,'1','2016-08-08 08:05:41.849977','2016-08-22 10:02:03.846030',15,3500,'代金引き換え');
INSERT INTO `orders` VALUES(55,528,56,'1','2016-08-08 13:48:50.588538','2016-08-10 00:58:27.155532',8,3000,'代金引き換え');
INSERT INTO `orders` VALUES(56,1,9,'0','2016-08-10 02:39:27.093870','2016-08-10 02:39:27.093870',1,1200,'代金引き換え');
INSERT INTO `orders` VALUES(57,600,57,'1','2016-08-12 19:10:19.501548','2016-08-15 08:14:43.678636',38,1600,'クレジット支払い');
INSERT INTO `orders` VALUES(58,607,58,'1','2016-08-15 20:51:44.185487','2016-08-17 07:09:42.779928',30,1500,'代金引き換え');
INSERT INTO `orders` VALUES(59,604,59,'1','2016-08-16 00:32:04.011920','2016-08-26 10:25:48.218241',33,5408,'代金引き換え');
INSERT INTO `orders` VALUES(60,604,59,'1','2016-08-16 00:33:10.183070','2016-08-16 08:18:59.806826',14,3500,'代金引き換え');
INSERT INTO `orders` VALUES(61,611,60,'1','2016-08-16 09:08:38.631850','2016-08-26 10:09:27.598971',14,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(62,611,60,'1','2016-08-16 09:18:30.612608','2016-08-26 10:09:36.227526',14,1200,'クレジット支払い');
INSERT INTO `orders` VALUES(63,614,61,'1','2016-08-16 14:41:03.707178','2016-08-18 06:37:09.570133',15,2500,'代金引き換え');
INSERT INTO `orders` VALUES(64,23,8,'1','2016-08-17 00:09:30.835347','2016-08-18 06:04:02.270391',15,2500,'クレジット支払い');
INSERT INTO `orders` VALUES(65,581,55,'1','2016-08-19 05:43:55.611706','2016-08-22 10:02:07.343359',15,3500,'代金引き換え');
INSERT INTO `orders` VALUES(66,1,62,'1','2016-08-21 13:44:17.377324','2016-08-21 19:41:01.948296',39,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(67,1,9,'1','2016-08-23 01:57:51.217708','2016-08-23 23:01:42.473881',39,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(68,67,63,'1','2016-08-26 01:14:04.527765','2016-08-30 06:48:52.239288',15,3500,'代金引き換え');
INSERT INTO `orders` VALUES(69,260,64,'1','2016-08-26 13:25:47.986468','2016-08-29 06:24:50.662766',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(70,595,65,'1','2016-08-30 16:47:55.594886','2016-08-31 09:48:39.469255',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(71,493,49,'1','2016-09-02 08:41:31.985516','2016-09-09 14:35:09.964848',15,2800,'クレジット支払い');
INSERT INTO `orders` VALUES(72,678,67,'1','2016-09-04 07:53:11.398199','2016-09-04 19:41:45.093284',39,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(73,678,67,'1','2016-09-04 08:01:26.163597','2016-09-11 06:28:28.490328',15,2500,'クレジット支払い');
INSERT INTO `orders` VALUES(74,679,68,'1','2016-09-04 13:09:38.864022','2016-09-06 03:51:25.666422',30,1500,'代金引き換え');
INSERT INTO `orders` VALUES(75,595,65,'1','2016-09-05 09:20:37.598291','2016-09-06 06:26:51.764828',38,3653,'クレジット支払い');
INSERT INTO `orders` VALUES(76,23,8,'1','2016-09-12 13:35:29.998196','2016-09-15 12:17:03.213813',15,2800,'クレジット支払い');
INSERT INTO `orders` VALUES(77,725,70,'0','2016-09-13 11:08:35.373758','2016-09-13 11:08:35.373758',39,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(78,725,70,'1','2016-09-13 11:13:29.989301','2016-09-15 12:17:05.279237',15,6000,'クレジット支払い');
INSERT INTO `orders` VALUES(79,738,72,'1','2016-09-20 01:01:39.752011','2016-09-22 01:50:17.271714',15,2500,'クレジット支払い');
INSERT INTO `orders` VALUES(80,743,73,'1','2016-09-22 16:18:45.392224','2016-09-24 11:08:51.904656',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(81,678,67,'1','2016-09-25 08:22:43.138820','2016-09-27 11:32:14.055234',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(82,127,74,'1','2016-09-26 13:45:11.794927','2016-10-02 12:29:28.728107',15,2800,'代金引き換え');
INSERT INTO `orders` VALUES(83,249,75,'1','2016-09-29 04:35:07.105908','2016-10-03 01:26:29.612463',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(84,718,69,'1','2016-10-01 08:31:30.153205','2016-10-02 12:29:10.125820',15,2000,'代金引き換え');
INSERT INTO `orders` VALUES(85,595,77,'1','2016-10-05 14:09:27.926713','2016-10-08 03:03:52.480930',38,3653,'クレジット支払い');
INSERT INTO `orders` VALUES(86,425,51,'1','2016-10-06 16:37:08.767943','2016-10-12 05:33:01.001833',1,1200,'代金引き換え');
INSERT INTO `orders` VALUES(87,669,79,'1','2016-10-09 17:50:32.060369','2016-10-11 05:20:30.241605',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(88,640,80,'1','2016-10-10 08:58:27.238008','2016-10-11 09:54:55.752109',15,2000,'代金引き換え');
INSERT INTO `orders` VALUES(89,725,70,'1','2016-10-11 02:24:42.557883','2016-10-11 09:55:02.718183',15,2000,'クレジット支払い');
INSERT INTO `orders` VALUES(90,784,81,'1','2016-10-11 06:42:24.020266','2016-10-20 07:36:09.421572',1,1900,'代金引き換え');
INSERT INTO `orders` VALUES(91,473,46,'1','2016-10-13 01:13:33.765506','2016-10-17 11:33:13.497991',15,2800,'クレジット支払い');
INSERT INTO `orders` VALUES(92,796,82,'1','2016-10-15 19:54:57.499653','2016-10-18 07:27:42.894341',14,2000,'クレジット支払い');
INSERT INTO `orders` VALUES(93,800,83,'1','2016-10-19 16:10:17.154822','2016-10-20 23:35:21.991830',30,1500,'クレジット支払い');
INSERT INTO `orders` VALUES(94,807,84,'1','2016-10-29 22:42:01.668024','2016-10-30 23:29:05.360096',8,4300,'代金引き換え');
INSERT INTO `orders` VALUES(95,807,84,'0','2016-10-29 23:26:15.884569','2016-10-29 23:26:15.884569',24,500,'代金引き換え');
INSERT INTO `orders` VALUES(96,807,84,'1','2016-10-29 23:28:15.145776','2016-11-30 11:21:07.533703',9,900,'代金引き換え');
INSERT INTO `orders` VALUES(97,493,49,'1','2016-10-30 14:15:16.590204','2016-11-03 08:58:44.783358',15,3500,'クレジット支払い');
INSERT INTO `orders` VALUES(98,473,46,'1','2016-11-10 14:22:28.339987','2016-11-14 23:13:20.833388',15,2800,'クレジット支払い');
INSERT INTO `orders` VALUES(99,815,85,'0','2016-11-16 09:28:09.429635','2016-11-16 09:28:09.429635',24,3200,'代金引き換え');
INSERT INTO `orders` VALUES(100,819,86,'1','2016-11-26 03:43:06.257341','2016-11-27 23:28:08.881956',8,4300,'代金引き換え');
INSERT INTO `orders` VALUES(101,1,9,'1','2017-01-06 10:32:20.007053','2017-01-06 10:40:53.978432',14,1200,'代金引き換え');
INSERT INTO `orders` VALUES(102,837,88,'1','2017-01-15 03:22:39.458794','2017-01-20 14:18:43.863230',24,1420,'クレジット支払い');
INSERT INTO `orders` VALUES(103,116,87,'1','2017-01-15 05:40:08.178640','2017-01-16 04:02:49.822126',8,6800,'クレジット支払い');
CREATE TABLE `relationships` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `follower_id` integer, `followed_id` integer, `created_at` datetime, `updated_at` datetime);
INSERT INTO `relationships` VALUES(1,4,6,'2015-08-21 11:32:26.952546','2015-08-21 11:32:26.952546');
INSERT INTO `relationships` VALUES(2,2,1,'2015-08-27 06:33:43.856781','2015-08-27 06:33:43.856781');
INSERT INTO `relationships` VALUES(3,6,1,'2015-08-31 02:22:32.383714','2015-08-31 02:22:32.383714');
INSERT INTO `relationships` VALUES(4,10,2,'2015-09-08 13:48:03.210275','2015-09-08 13:48:03.210275');
INSERT INTO `relationships` VALUES(5,10,6,'2015-09-17 14:45:44.130239','2015-09-17 14:45:44.130239');
INSERT INTO `relationships` VALUES(6,10,1,'2015-09-17 14:46:44.653866','2015-09-17 14:46:44.653866');
INSERT INTO `relationships` VALUES(7,10,9,'2015-09-17 14:47:04.719738','2015-09-17 14:47:04.719738');
INSERT INTO `relationships` VALUES(8,10,13,'2015-09-19 12:39:27.838509','2015-09-19 12:39:27.838509');
INSERT INTO `relationships` VALUES(9,10,15,'2015-09-27 04:34:42.085425','2015-09-27 04:34:42.085425');
INSERT INTO `relationships` VALUES(10,6,15,'2015-10-01 07:17:47.014589','2015-10-01 07:17:47.014589');
INSERT INTO `relationships` VALUES(11,16,17,'2015-10-08 22:09:48.013846','2015-10-08 22:09:48.013846');
INSERT INTO `relationships` VALUES(12,16,15,'2015-10-08 22:10:13.614957','2015-10-08 22:10:13.614957');
INSERT INTO `relationships` VALUES(13,18,7,'2015-10-15 01:22:19.785956','2015-10-15 01:22:19.785956');
INSERT INTO `relationships` VALUES(14,18,11,'2015-10-15 01:22:41.897599','2015-10-15 01:22:41.897599');
INSERT INTO `relationships` VALUES(15,18,4,'2015-10-15 01:24:00.701234','2015-10-15 01:24:00.701234');
INSERT INTO `relationships` VALUES(16,18,8,'2015-10-15 01:25:13.092716','2015-10-15 01:25:13.092716');
INSERT INTO `relationships` VALUES(17,18,6,'2015-10-15 01:25:48.476315','2015-10-15 01:25:48.476315');
INSERT INTO `relationships` VALUES(18,10,17,'2015-10-15 12:52:33.129302','2015-10-15 12:52:33.129302');
INSERT INTO `relationships` VALUES(19,19,1,'2015-10-18 15:15:07.982398','2015-10-18 15:15:07.982398');
INSERT INTO `relationships` VALUES(20,20,1,'2015-10-20 11:40:42.378635','2015-10-20 11:40:42.378635');
INSERT INTO `relationships` VALUES(21,23,1,'2015-10-26 14:12:38.977232','2015-10-26 14:12:38.977232');
INSERT INTO `relationships` VALUES(22,23,2,'2015-10-26 14:48:00.530547','2015-10-26 14:48:00.530547');
INSERT INTO `relationships` VALUES(23,23,15,'2015-10-26 14:48:18.258804','2015-10-26 14:48:18.258804');
INSERT INTO `relationships` VALUES(24,23,19,'2015-10-29 15:49:44.228842','2015-10-29 15:49:44.228842');
INSERT INTO `relationships` VALUES(25,27,8,'2015-11-02 06:20:30.275215','2015-11-02 06:20:30.275215');
INSERT INTO `relationships` VALUES(26,23,8,'2015-11-03 20:04:40.286599','2015-11-03 20:04:40.286599');
INSERT INTO `relationships` VALUES(27,28,6,'2015-11-04 04:58:06.175437','2015-11-04 04:58:06.175437');
INSERT INTO `relationships` VALUES(28,28,19,'2015-11-04 13:31:33.421997','2015-11-04 13:31:33.421997');
INSERT INTO `relationships` VALUES(29,28,1,'2015-11-04 13:40:01.784582','2015-11-04 13:40:01.784582');
INSERT INTO `relationships` VALUES(30,28,2,'2015-11-04 13:41:35.445451','2015-11-04 13:41:35.445451');
INSERT INTO `relationships` VALUES(31,28,8,'2015-11-04 13:42:51.687126','2015-11-04 13:42:51.687126');
INSERT INTO `relationships` VALUES(32,28,15,'2015-11-05 12:37:14.103334','2015-11-05 12:37:14.103334');
INSERT INTO `relationships` VALUES(33,28,9,'2015-11-10 01:58:45.439555','2015-11-10 01:58:45.439555');
INSERT INTO `relationships` VALUES(34,6,2,'2015-11-14 06:16:17.025779','2015-11-14 06:16:17.025779');
INSERT INTO `relationships` VALUES(35,1,21,'2015-11-16 02:08:12.063220','2015-11-16 02:08:12.063220');
INSERT INTO `relationships` VALUES(36,1,17,'2015-11-16 02:08:50.554397','2015-11-16 02:08:50.554397');
INSERT INTO `relationships` VALUES(37,1,2,'2015-11-16 02:11:42.645512','2015-11-16 02:11:42.645512');
INSERT INTO `relationships` VALUES(38,1,15,'2015-11-16 02:12:16.749497','2015-11-16 02:12:16.749497');
INSERT INTO `relationships` VALUES(39,1,8,'2015-11-16 02:12:46.075280','2015-11-16 02:12:46.075280');
INSERT INTO `relationships` VALUES(40,1,7,'2015-11-16 02:13:29.462893','2015-11-16 02:13:29.462893');
INSERT INTO `relationships` VALUES(41,1,10,'2015-11-16 02:13:53.935926','2015-11-16 02:13:53.935926');
INSERT INTO `relationships` VALUES(42,37,8,'2015-11-20 12:49:45.898883','2015-11-20 12:49:45.898883');
INSERT INTO `relationships` VALUES(43,39,8,'2015-11-21 08:20:20.102251','2015-11-21 08:20:20.102251');
INSERT INTO `relationships` VALUES(45,41,2,'2015-11-25 03:47:43.299213','2015-11-25 03:47:43.299213');
INSERT INTO `relationships` VALUES(46,41,8,'2015-11-25 03:49:12.921459','2015-11-25 03:49:12.921459');
INSERT INTO `relationships` VALUES(47,41,9,'2015-11-25 03:49:45.438063','2015-11-25 03:49:45.438063');
INSERT INTO `relationships` VALUES(48,41,15,'2015-11-25 03:50:00.718154','2015-11-25 03:50:00.718154');
INSERT INTO `relationships` VALUES(49,41,19,'2015-11-25 03:50:26.195791','2015-11-25 03:50:26.195791');
INSERT INTO `relationships` VALUES(51,1,6,'2015-11-28 09:58:38.778130','2015-11-28 09:58:38.778130');
INSERT INTO `relationships` VALUES(52,1,14,'2015-12-01 01:20:16.611550','2015-12-01 01:20:16.611550');
INSERT INTO `relationships` VALUES(54,46,18,'2015-12-04 12:17:04.487577','2015-12-04 12:17:04.487577');
INSERT INTO `relationships` VALUES(55,53,1,'2015-12-14 13:42:24.517827','2015-12-14 13:42:24.517827');
INSERT INTO `relationships` VALUES(56,1,23,'2015-12-23 14:08:30.275020','2015-12-23 14:08:30.275020');
INSERT INTO `relationships` VALUES(57,1,24,'2015-12-23 14:09:43.146855','2015-12-23 14:09:43.146855');
INSERT INTO `relationships` VALUES(58,63,1,'2015-12-26 23:23:37.758885','2015-12-26 23:23:37.758885');
INSERT INTO `relationships` VALUES(59,10,8,'2015-12-27 14:54:13.181220','2015-12-27 14:54:13.181220');
INSERT INTO `relationships` VALUES(60,67,1,'2015-12-31 12:12:05.385553','2015-12-31 12:12:05.385553');
INSERT INTO `relationships` VALUES(62,67,15,'2015-12-31 12:14:31.795603','2015-12-31 12:14:31.795603');
INSERT INTO `relationships` VALUES(63,67,19,'2015-12-31 12:14:53.005097','2015-12-31 12:14:53.005097');
INSERT INTO `relationships` VALUES(64,67,2,'2015-12-31 12:15:13.992122','2015-12-31 12:15:13.992122');
INSERT INTO `relationships` VALUES(65,69,13,'2015-12-31 13:55:42.677512','2015-12-31 13:55:42.677512');
INSERT INTO `relationships` VALUES(66,69,19,'2015-12-31 13:56:57.937240','2015-12-31 13:56:57.937240');
INSERT INTO `relationships` VALUES(68,1,1,'2016-01-02 09:54:46.213210','2016-01-02 09:54:46.213210');
INSERT INTO `relationships` VALUES(69,89,2,'2016-01-03 07:23:50.786375','2016-01-03 07:23:50.786375');
INSERT INTO `relationships` VALUES(71,111,6,'2016-01-18 10:10:02.532761','2016-01-18 10:10:02.532761');
INSERT INTO `relationships` VALUES(72,111,13,'2016-01-18 10:10:46.329257','2016-01-18 10:10:46.329257');
INSERT INTO `relationships` VALUES(73,112,1,'2016-01-19 03:03:38.922610','2016-01-19 03:03:38.922610');
INSERT INTO `relationships` VALUES(74,1,9,'2016-01-21 05:23:28.442819','2016-01-21 05:23:28.442819');
INSERT INTO `relationships` VALUES(75,1,12,'2016-01-26 05:07:32.803292','2016-01-26 05:07:32.803292');
INSERT INTO `relationships` VALUES(76,123,1,'2016-01-31 07:49:22.666057','2016-01-31 07:49:22.666057');
INSERT INTO `relationships` VALUES(77,125,29,'2016-01-31 08:10:18.836260','2016-01-31 08:10:18.836260');
INSERT INTO `relationships` VALUES(78,125,2,'2016-01-31 08:10:38.749582','2016-01-31 08:10:38.749582');
INSERT INTO `relationships` VALUES(79,125,19,'2016-01-31 08:11:31.096439','2016-01-31 08:11:31.096439');
INSERT INTO `relationships` VALUES(80,125,24,'2016-01-31 08:12:03.945221','2016-01-31 08:12:03.945221');
INSERT INTO `relationships` VALUES(81,125,1,'2016-01-31 08:12:26.809639','2016-01-31 08:12:26.809639');
INSERT INTO `relationships` VALUES(82,23,24,'2016-01-31 13:06:23.589220','2016-01-31 13:06:23.589220');
INSERT INTO `relationships` VALUES(83,23,29,'2016-01-31 13:06:53.441805','2016-01-31 13:06:53.441805');
INSERT INTO `relationships` VALUES(84,23,12,'2016-01-31 13:07:36.418797','2016-01-31 13:07:36.418797');
INSERT INTO `relationships` VALUES(85,100,1,'2016-01-31 13:24:32.476917','2016-01-31 13:24:32.476917');
INSERT INTO `relationships` VALUES(86,100,8,'2016-01-31 13:27:29.653376','2016-01-31 13:27:29.653376');
INSERT INTO `relationships` VALUES(87,100,29,'2016-01-31 13:32:55.520388','2016-01-31 13:32:55.520388');
INSERT INTO `relationships` VALUES(88,117,1,'2016-01-31 14:23:13.940466','2016-01-31 14:23:13.940466');
INSERT INTO `relationships` VALUES(89,10,16,'2016-01-31 15:08:07.664215','2016-01-31 15:08:07.664215');
INSERT INTO `relationships` VALUES(90,10,22,'2016-01-31 15:08:37.034431','2016-01-31 15:08:37.034431');
INSERT INTO `relationships` VALUES(91,146,1,'2016-01-31 15:21:35.275535','2016-01-31 15:21:35.275535');
INSERT INTO `relationships` VALUES(92,146,8,'2016-01-31 15:22:02.000921','2016-01-31 15:22:02.000921');
INSERT INTO `relationships` VALUES(93,146,24,'2016-01-31 15:23:03.979058','2016-01-31 15:23:03.979058');
INSERT INTO `relationships` VALUES(94,146,29,'2016-01-31 15:23:30.942282','2016-01-31 15:23:30.942282');
INSERT INTO `relationships` VALUES(95,149,29,'2016-02-01 00:44:29.835649','2016-02-01 00:44:29.835649');
INSERT INTO `relationships` VALUES(96,149,12,'2016-02-01 09:17:03.389244','2016-02-01 09:17:03.389244');
INSERT INTO `relationships` VALUES(97,135,1,'2016-02-01 10:33:23.169473','2016-02-01 10:33:23.169473');
INSERT INTO `relationships` VALUES(98,135,15,'2016-02-01 11:43:41.282004','2016-02-01 11:43:41.282004');
INSERT INTO `relationships` VALUES(99,117,16,'2016-02-01 13:21:46.934688','2016-02-01 13:21:46.934688');
INSERT INTO `relationships` VALUES(100,1,11,'2016-02-02 01:11:41.836160','2016-02-02 01:11:41.836160');
INSERT INTO `relationships` VALUES(101,1,19,'2016-02-02 01:12:45.048117','2016-02-02 01:12:45.048117');
INSERT INTO `relationships` VALUES(102,1,27,'2016-02-02 01:13:17.356987','2016-02-02 01:13:17.356987');
INSERT INTO `relationships` VALUES(103,1,16,'2016-02-02 01:14:00.079688','2016-02-02 01:14:00.079688');
INSERT INTO `relationships` VALUES(104,1,25,'2016-02-02 05:23:16.869065','2016-02-02 05:23:16.869065');
INSERT INTO `relationships` VALUES(105,127,1,'2016-02-02 07:34:20.347462','2016-02-02 07:34:20.347462');
INSERT INTO `relationships` VALUES(106,127,12,'2016-02-02 07:38:06.156293','2016-02-02 07:38:06.156293');
INSERT INTO `relationships` VALUES(107,173,1,'2016-02-02 13:32:54.381910','2016-02-02 13:32:54.381910');
INSERT INTO `relationships` VALUES(108,1,18,'2016-02-06 13:24:43.001905','2016-02-06 13:24:43.001905');
INSERT INTO `relationships` VALUES(109,190,15,'2016-02-07 07:12:54.445806','2016-02-07 07:12:54.445806');
INSERT INTO `relationships` VALUES(110,192,15,'2016-02-08 01:37:56.812329','2016-02-08 01:37:56.812329');
INSERT INTO `relationships` VALUES(111,192,19,'2016-02-08 04:19:17.226297','2016-02-08 04:19:17.226297');
INSERT INTO `relationships` VALUES(112,192,8,'2016-02-08 04:20:07.993718','2016-02-08 04:20:07.993718');
INSERT INTO `relationships` VALUES(113,192,2,'2016-02-08 04:21:04.547454','2016-02-08 04:21:04.547454');
INSERT INTO `relationships` VALUES(114,194,1,'2016-02-08 09:22:25.578648','2016-02-08 09:22:25.578648');
INSERT INTO `relationships` VALUES(115,194,8,'2016-02-10 10:55:50.839633','2016-02-10 10:55:50.839633');
INSERT INTO `relationships` VALUES(116,117,8,'2016-02-11 00:08:02.817158','2016-02-11 00:08:02.817158');
INSERT INTO `relationships` VALUES(117,215,5,'2016-02-14 00:18:53.352823','2016-02-14 00:18:53.352823');
INSERT INTO `relationships` VALUES(118,215,8,'2016-02-14 00:19:42.665804','2016-02-14 00:19:42.665804');
INSERT INTO `relationships` VALUES(119,215,21,'2016-02-14 00:21:35.422395','2016-02-14 00:21:35.422395');
INSERT INTO `relationships` VALUES(120,217,6,'2016-02-14 05:39:08.093701','2016-02-14 05:39:08.093701');
INSERT INTO `relationships` VALUES(121,219,6,'2016-02-14 13:37:06.052419','2016-02-14 13:37:06.052419');
INSERT INTO `relationships` VALUES(122,203,8,'2016-02-15 08:44:55.471356','2016-02-15 08:44:55.471356');
INSERT INTO `relationships` VALUES(123,123,24,'2016-02-15 13:05:01.663002','2016-02-15 13:05:01.663002');
INSERT INTO `relationships` VALUES(124,116,9,'2016-02-18 12:46:43.121504','2016-02-18 12:46:43.121504');
INSERT INTO `relationships` VALUES(125,116,30,'2016-02-18 12:48:22.470852','2016-02-18 12:48:22.470852');
INSERT INTO `relationships` VALUES(126,10,30,'2016-02-18 14:22:59.672482','2016-02-18 14:22:59.672482');
INSERT INTO `relationships` VALUES(127,223,30,'2016-02-19 00:16:03.957452','2016-02-19 00:16:03.957452');
INSERT INTO `relationships` VALUES(128,226,5,'2016-02-20 23:34:34.601694','2016-02-20 23:34:34.601694');
INSERT INTO `relationships` VALUES(129,226,1,'2016-02-20 23:36:21.646529','2016-02-20 23:36:21.646529');
INSERT INTO `relationships` VALUES(131,226,30,'2016-02-20 23:37:39.542544','2016-02-20 23:37:39.542544');
INSERT INTO `relationships` VALUES(132,1,30,'2016-02-23 06:09:18.332007','2016-02-23 06:09:18.332007');
INSERT INTO `relationships` VALUES(133,116,24,'2016-02-24 09:12:36.483574','2016-02-24 09:12:36.483574');
INSERT INTO `relationships` VALUES(134,237,29,'2016-03-10 09:18:32.857447','2016-03-10 09:18:32.857447');
INSERT INTO `relationships` VALUES(135,1,5,'2016-03-12 11:44:38.599220','2016-03-12 11:44:38.599220');
INSERT INTO `relationships` VALUES(136,74,1,'2016-03-14 06:57:31.804527','2016-03-14 06:57:31.804527');
INSERT INTO `relationships` VALUES(137,240,1,'2016-03-15 02:14:16.426459','2016-03-15 02:14:16.426459');
INSERT INTO `relationships` VALUES(138,240,2,'2016-03-15 02:15:45.090291','2016-03-15 02:15:45.090291');
INSERT INTO `relationships` VALUES(139,240,8,'2016-03-15 02:17:47.360160','2016-03-15 02:17:47.360160');
INSERT INTO `relationships` VALUES(140,240,11,'2016-03-15 02:20:40.155358','2016-03-15 02:20:40.155358');
INSERT INTO `relationships` VALUES(141,240,12,'2016-03-15 02:22:25.669832','2016-03-15 02:22:25.669832');
INSERT INTO `relationships` VALUES(142,240,14,'2016-03-15 02:23:55.016360','2016-03-15 02:23:55.016360');
INSERT INTO `relationships` VALUES(143,240,15,'2016-03-15 02:26:10.346896','2016-03-15 02:26:10.346896');
INSERT INTO `relationships` VALUES(144,240,19,'2016-03-15 02:26:50.433466','2016-03-15 02:26:50.433466');
INSERT INTO `relationships` VALUES(145,240,24,'2016-03-15 02:29:37.249509','2016-03-15 02:29:37.249509');
INSERT INTO `relationships` VALUES(146,240,29,'2016-03-15 02:30:42.849315','2016-03-15 02:30:42.849315');
INSERT INTO `relationships` VALUES(147,240,30,'2016-03-15 02:32:26.172194','2016-03-15 02:32:26.172194');
INSERT INTO `relationships` VALUES(148,186,29,'2016-03-16 21:07:52.364668','2016-03-16 21:07:52.364668');
INSERT INTO `relationships` VALUES(149,244,30,'2016-03-17 10:24:31.425153','2016-03-17 10:24:31.425153');
INSERT INTO `relationships` VALUES(150,244,12,'2016-03-17 10:30:30.176952','2016-03-17 10:30:30.176952');
INSERT INTO `relationships` VALUES(151,244,1,'2016-03-17 10:33:07.481684','2016-03-17 10:33:07.481684');
INSERT INTO `relationships` VALUES(152,244,18,'2016-03-17 10:33:56.812097','2016-03-17 10:33:56.812097');
INSERT INTO `relationships` VALUES(153,244,8,'2016-03-17 10:36:56.758434','2016-03-17 10:36:56.758434');
INSERT INTO `relationships` VALUES(154,244,9,'2016-03-17 10:39:50.148881','2016-03-17 10:39:50.148881');
INSERT INTO `relationships` VALUES(155,163,8,'2016-03-17 13:35:35.219524','2016-03-17 13:35:35.219524');
INSERT INTO `relationships` VALUES(156,237,1,'2016-03-17 15:17:10.430976','2016-03-17 15:17:10.430976');
INSERT INTO `relationships` VALUES(157,237,8,'2016-03-17 15:19:54.304161','2016-03-17 15:19:54.304161');
INSERT INTO `relationships` VALUES(158,237,11,'2016-03-17 15:20:43.510429','2016-03-17 15:20:43.510429');
INSERT INTO `relationships` VALUES(159,237,12,'2016-03-17 15:21:56.472883','2016-03-17 15:21:56.472883');
INSERT INTO `relationships` VALUES(160,237,24,'2016-03-17 15:25:20.578164','2016-03-17 15:25:20.578164');
INSERT INTO `relationships` VALUES(161,249,30,'2016-03-18 00:59:35.889892','2016-03-18 00:59:35.889892');
INSERT INTO `relationships` VALUES(162,249,15,'2016-03-18 01:00:45.050997','2016-03-18 01:00:45.050997');
INSERT INTO `relationships` VALUES(163,159,19,'2016-03-18 01:06:37.959210','2016-03-18 01:06:37.959210');
INSERT INTO `relationships` VALUES(164,159,30,'2016-03-18 01:07:23.084303','2016-03-18 01:07:23.084303');
INSERT INTO `relationships` VALUES(165,252,8,'2016-03-18 01:58:51.486715','2016-03-18 01:58:51.486715');
INSERT INTO `relationships` VALUES(166,252,5,'2016-03-18 02:00:03.999366','2016-03-18 02:00:03.999366');
INSERT INTO `relationships` VALUES(167,252,2,'2016-03-18 02:02:54.081894','2016-03-18 02:02:54.081894');
INSERT INTO `relationships` VALUES(168,252,29,'2016-03-18 02:06:36.679283','2016-03-18 02:06:36.679283');
INSERT INTO `relationships` VALUES(169,258,14,'2016-03-18 02:27:01.648230','2016-03-18 02:27:01.648230');
INSERT INTO `relationships` VALUES(170,260,15,'2016-03-18 03:19:53.586828','2016-03-18 03:19:53.586828');
INSERT INTO `relationships` VALUES(171,260,30,'2016-03-18 03:22:35.787798','2016-03-18 03:22:35.787798');
INSERT INTO `relationships` VALUES(173,273,33,'2016-03-18 07:59:43.824273','2016-03-18 07:59:43.824273');
INSERT INTO `relationships` VALUES(174,274,11,'2016-03-18 08:07:45.840531','2016-03-18 08:07:45.840531');
INSERT INTO `relationships` VALUES(175,274,2,'2016-03-18 08:12:30.320795','2016-03-18 08:12:30.320795');
INSERT INTO `relationships` VALUES(176,281,11,'2016-03-18 11:05:02.646636','2016-03-18 11:05:02.646636');
INSERT INTO `relationships` VALUES(177,284,29,'2016-03-18 13:17:42.506445','2016-03-18 13:17:42.506445');
INSERT INTO `relationships` VALUES(178,219,8,'2016-03-18 15:52:47.531545','2016-03-18 15:52:47.531545');
INSERT INTO `relationships` VALUES(179,219,12,'2016-03-18 15:53:11.340440','2016-03-18 15:53:11.340440');
INSERT INTO `relationships` VALUES(180,219,29,'2016-03-18 15:54:08.970168','2016-03-18 15:54:08.970168');
INSERT INTO `relationships` VALUES(181,219,24,'2016-03-18 15:54:33.387059','2016-03-18 15:54:33.387059');
INSERT INTO `relationships` VALUES(182,219,11,'2016-03-18 15:58:21.791306','2016-03-18 15:58:21.791306');
INSERT INTO `relationships` VALUES(183,219,14,'2016-03-18 16:01:10.002084','2016-03-18 16:01:10.002084');
INSERT INTO `relationships` VALUES(184,100,2,'2016-03-19 11:54:26.141660','2016-03-19 11:54:26.141660');
INSERT INTO `relationships` VALUES(185,270,1,'2016-03-20 00:25:55.871938','2016-03-20 00:25:55.871938');
INSERT INTO `relationships` VALUES(186,296,17,'2016-03-20 10:52:08.757585','2016-03-20 10:52:08.757585');
INSERT INTO `relationships` VALUES(187,1,33,'2016-03-20 15:48:49.957519','2016-03-20 15:48:49.957519');
INSERT INTO `relationships` VALUES(188,23,33,'2016-03-22 05:35:15.148618','2016-03-22 05:35:15.148618');
INSERT INTO `relationships` VALUES(189,23,11,'2016-03-22 06:55:47.154445','2016-03-22 06:55:47.154445');
INSERT INTO `relationships` VALUES(190,23,14,'2016-03-22 06:55:48.179128','2016-03-22 06:55:48.179128');
INSERT INTO `relationships` VALUES(191,303,33,'2016-03-28 05:17:41.792314','2016-03-28 05:17:41.792314');
INSERT INTO `relationships` VALUES(192,310,33,'2016-04-01 22:18:25.443803','2016-04-01 22:18:25.443803');
INSERT INTO `relationships` VALUES(193,241,33,'2016-04-04 01:38:25.348349','2016-04-04 01:38:25.348349');
INSERT INTO `relationships` VALUES(194,321,15,'2016-04-04 12:41:36.552309','2016-04-04 12:41:36.552309');
INSERT INTO `relationships` VALUES(195,324,15,'2016-04-05 08:56:19.338125','2016-04-05 08:56:19.338125');
INSERT INTO `relationships` VALUES(196,1,38,'2016-04-05 09:19:41.191866','2016-04-05 09:19:41.191866');
INSERT INTO `relationships` VALUES(197,327,8,'2016-04-05 09:41:45.044967','2016-04-05 09:41:45.044967');
INSERT INTO `relationships` VALUES(198,327,1,'2016-04-05 09:43:51.802544','2016-04-05 09:43:51.802544');
INSERT INTO `relationships` VALUES(199,327,38,'2016-04-05 09:47:44.542739','2016-04-05 09:47:44.542739');
INSERT INTO `relationships` VALUES(200,270,8,'2016-04-05 19:42:12.484420','2016-04-05 19:42:12.484420');
INSERT INTO `relationships` VALUES(201,270,12,'2016-04-05 19:42:44.259368','2016-04-05 19:42:44.259368');
INSERT INTO `relationships` VALUES(202,270,38,'2016-04-05 19:43:29.150665','2016-04-05 19:43:29.150665');
INSERT INTO `relationships` VALUES(203,270,11,'2016-04-05 19:45:09.461867','2016-04-05 19:45:09.461867');
INSERT INTO `relationships` VALUES(204,270,14,'2016-04-05 19:45:49.149938','2016-04-05 19:45:49.149938');
INSERT INTO `relationships` VALUES(205,270,15,'2016-04-05 19:46:08.356744','2016-04-05 19:46:08.356744');
INSERT INTO `relationships` VALUES(206,270,19,'2016-04-05 19:48:00.169046','2016-04-05 19:48:00.169046');
INSERT INTO `relationships` VALUES(207,270,24,'2016-04-05 19:49:05.025681','2016-04-05 19:49:05.025681');
INSERT INTO `relationships` VALUES(208,336,11,'2016-04-06 00:56:33.005784','2016-04-06 00:56:33.005784');
INSERT INTO `relationships` VALUES(209,336,8,'2016-04-06 00:56:36.232439','2016-04-06 00:56:36.232439');
INSERT INTO `relationships` VALUES(210,336,33,'2016-04-06 00:58:52.076849','2016-04-06 00:58:52.076849');
INSERT INTO `relationships` VALUES(211,336,24,'2016-04-06 01:15:08.705485','2016-04-06 01:15:08.705485');
INSERT INTO `relationships` VALUES(212,339,38,'2016-04-06 02:54:31.526490','2016-04-06 02:54:31.526490');
INSERT INTO `relationships` VALUES(213,126,1,'2016-04-06 03:52:30.026878','2016-04-06 03:52:30.026878');
INSERT INTO `relationships` VALUES(214,126,8,'2016-04-06 03:56:38.480353','2016-04-06 03:56:38.480353');
INSERT INTO `relationships` VALUES(215,126,11,'2016-04-06 03:56:41.640649','2016-04-06 03:56:41.640649');
INSERT INTO `relationships` VALUES(216,126,12,'2016-04-06 03:56:44.492488','2016-04-06 03:56:44.492488');
INSERT INTO `relationships` VALUES(217,126,14,'2016-04-06 03:56:45.507745','2016-04-06 03:56:45.507745');
INSERT INTO `relationships` VALUES(218,126,15,'2016-04-06 03:56:46.939271','2016-04-06 03:56:46.939271');
INSERT INTO `relationships` VALUES(219,126,33,'2016-04-06 03:57:06.734130','2016-04-06 03:57:06.734130');
INSERT INTO `relationships` VALUES(220,126,29,'2016-04-06 03:57:09.492182','2016-04-06 03:57:09.492182');
INSERT INTO `relationships` VALUES(221,126,24,'2016-04-06 03:57:10.512026','2016-04-06 03:57:10.512026');
INSERT INTO `relationships` VALUES(222,348,33,'2016-04-06 06:10:57.322501','2016-04-06 06:10:57.322501');
INSERT INTO `relationships` VALUES(223,352,24,'2016-04-06 13:12:45.990954','2016-04-06 13:12:45.990954');
INSERT INTO `relationships` VALUES(226,335,17,'2016-04-06 22:31:35.800567','2016-04-06 22:31:35.800567');
INSERT INTO `relationships` VALUES(227,371,1,'2016-04-07 12:02:18.736609','2016-04-07 12:02:18.736609');
INSERT INTO `relationships` VALUES(228,374,30,'2016-04-07 21:32:08.568629','2016-04-07 21:32:08.568629');
INSERT INTO `relationships` VALUES(229,354,5,'2016-04-08 01:00:46.101293','2016-04-08 01:00:46.101293');
INSERT INTO `relationships` VALUES(230,375,24,'2016-04-08 05:16:27.134347','2016-04-08 05:16:27.134347');
INSERT INTO `relationships` VALUES(231,341,38,'2016-04-18 13:30:58.605139','2016-04-18 13:30:58.605139');
INSERT INTO `relationships` VALUES(232,110,1,'2016-04-18 14:48:28.507053','2016-04-18 14:48:28.507053');
INSERT INTO `relationships` VALUES(233,213,1,'2016-04-18 17:55:12.192916','2016-04-18 17:55:12.192916');
INSERT INTO `relationships` VALUES(234,389,1,'2016-04-25 14:34:43.128219','2016-04-25 14:34:43.128219');
INSERT INTO `relationships` VALUES(235,389,14,'2016-04-25 16:32:02.489448','2016-04-25 16:32:02.489448');
INSERT INTO `relationships` VALUES(236,389,29,'2016-04-25 16:39:01.043028','2016-04-25 16:39:01.043028');
INSERT INTO `relationships` VALUES(237,389,38,'2016-04-25 16:41:27.847635','2016-04-25 16:41:27.847635');
INSERT INTO `relationships` VALUES(238,389,11,'2016-04-25 16:47:09.760236','2016-04-25 16:47:09.760236');
INSERT INTO `relationships` VALUES(240,394,8,'2016-04-29 13:43:40.287014','2016-04-29 13:43:40.287014');
INSERT INTO `relationships` VALUES(241,1,26,'2016-05-01 09:34:46.013247','2016-05-01 09:34:46.013247');
INSERT INTO `relationships` VALUES(242,398,30,'2016-05-07 05:37:49.836964','2016-05-07 05:37:49.836964');
INSERT INTO `relationships` VALUES(243,29,8,'2016-05-09 00:31:56.479783','2016-05-09 00:31:56.479783');
INSERT INTO `relationships` VALUES(244,127,15,'2016-05-10 12:46:51.151723','2016-05-10 12:46:51.151723');
INSERT INTO `relationships` VALUES(245,127,26,'2016-05-10 13:02:01.943808','2016-05-10 13:02:01.943808');
INSERT INTO `relationships` VALUES(246,408,11,'2016-05-11 10:34:16.214369','2016-05-11 10:34:16.214369');
INSERT INTO `relationships` VALUES(247,408,33,'2016-05-11 10:57:31.210672','2016-05-11 10:57:31.210672');
INSERT INTO `relationships` VALUES(248,408,1,'2016-05-11 10:57:56.384666','2016-05-11 10:57:56.384666');
INSERT INTO `relationships` VALUES(249,408,14,'2016-05-11 10:58:48.850021','2016-05-11 10:58:48.850021');
INSERT INTO `relationships` VALUES(250,408,8,'2016-05-11 10:58:51.890336','2016-05-11 10:58:51.890336');
INSERT INTO `relationships` VALUES(251,408,2,'2016-05-11 10:58:53.677601','2016-05-11 10:58:53.677601');
INSERT INTO `relationships` VALUES(252,408,5,'2016-05-11 10:58:54.934671','2016-05-11 10:58:54.934671');
INSERT INTO `relationships` VALUES(253,408,9,'2016-05-11 11:00:03.472286','2016-05-11 11:00:03.472286');
INSERT INTO `relationships` VALUES(254,410,8,'2016-05-11 17:01:22.011464','2016-05-11 17:01:22.011464');
INSERT INTO `relationships` VALUES(255,410,5,'2016-05-11 17:01:24.008799','2016-05-11 17:01:24.008799');
INSERT INTO `relationships` VALUES(257,426,24,'2016-05-12 23:46:50.165438','2016-05-12 23:46:50.165438');
INSERT INTO `relationships` VALUES(258,426,1,'2016-05-12 23:47:52.627616','2016-05-12 23:47:52.627616');
INSERT INTO `relationships` VALUES(259,426,5,'2016-05-12 23:48:28.897683','2016-05-12 23:48:28.897683');
INSERT INTO `relationships` VALUES(260,426,8,'2016-05-12 23:49:27.238524','2016-05-12 23:49:27.238524');
INSERT INTO `relationships` VALUES(261,426,9,'2016-05-12 23:50:13.961521','2016-05-12 23:50:13.961521');
INSERT INTO `relationships` VALUES(262,426,11,'2016-05-12 23:50:17.292147','2016-05-12 23:50:17.292147');
INSERT INTO `relationships` VALUES(263,426,12,'2016-05-12 23:51:04.859395','2016-05-12 23:51:04.859395');
INSERT INTO `relationships` VALUES(264,426,14,'2016-05-12 23:51:37.574079','2016-05-12 23:51:37.574079');
INSERT INTO `relationships` VALUES(265,426,26,'2016-05-12 23:53:34.843584','2016-05-12 23:53:34.843584');
INSERT INTO `relationships` VALUES(266,426,29,'2016-05-12 23:53:59.031248','2016-05-12 23:53:59.031248');
INSERT INTO `relationships` VALUES(267,426,38,'2016-05-12 23:54:49.737932','2016-05-12 23:54:49.737932');
INSERT INTO `relationships` VALUES(268,287,15,'2016-05-13 01:29:03.915928','2016-05-13 01:29:03.915928');
INSERT INTO `relationships` VALUES(269,252,1,'2016-05-13 02:56:23.820928','2016-05-13 02:56:23.820928');
INSERT INTO `relationships` VALUES(270,252,9,'2016-05-13 03:02:48.911390','2016-05-13 03:02:48.911390');
INSERT INTO `relationships` VALUES(271,252,38,'2016-05-13 03:05:11.798488','2016-05-13 03:05:11.798488');
INSERT INTO `relationships` VALUES(272,252,12,'2016-05-13 03:06:15.181200','2016-05-13 03:06:15.181200');
INSERT INTO `relationships` VALUES(273,425,26,'2016-05-13 09:17:08.833102','2016-05-13 09:17:08.833102');
INSERT INTO `relationships` VALUES(274,432,40,'2016-05-13 13:15:46.674412','2016-05-13 13:15:46.674412');
INSERT INTO `relationships` VALUES(275,435,5,'2016-05-14 01:32:00.441944','2016-05-14 01:32:00.441944');
INSERT INTO `relationships` VALUES(276,435,1,'2016-05-14 01:32:36.091068','2016-05-14 01:32:36.091068');
INSERT INTO `relationships` VALUES(277,435,2,'2016-05-14 01:33:11.130479','2016-05-14 01:33:11.130479');
INSERT INTO `relationships` VALUES(278,435,30,'2016-05-14 01:33:30.673665','2016-05-14 01:33:30.673665');
INSERT INTO `relationships` VALUES(279,422,1,'2016-05-14 04:30:57.644908','2016-05-14 04:30:57.644908');
INSERT INTO `relationships` VALUES(280,1,40,'2016-05-14 07:22:26.306396','2016-05-14 07:22:26.306396');
INSERT INTO `relationships` VALUES(281,432,1,'2016-05-14 08:53:13.487390','2016-05-14 08:53:13.487390');
INSERT INTO `relationships` VALUES(284,432,15,'2016-05-14 09:09:33.042263','2016-05-14 09:09:33.042263');
INSERT INTO `relationships` VALUES(285,270,5,'2016-05-14 13:06:15.566818','2016-05-14 13:06:15.566818');
INSERT INTO `relationships` VALUES(286,374,38,'2016-05-14 18:00:54.522436','2016-05-14 18:00:54.522436');
INSERT INTO `relationships` VALUES(287,374,40,'2016-05-14 18:01:38.788582','2016-05-14 18:01:38.788582');
INSERT INTO `relationships` VALUES(288,374,5,'2016-05-14 18:02:37.296847','2016-05-14 18:02:37.296847');
INSERT INTO `relationships` VALUES(289,374,15,'2016-05-14 18:04:34.239041','2016-05-14 18:04:34.239041');
INSERT INTO `relationships` VALUES(290,67,26,'2016-05-15 06:34:34.001972','2016-05-15 06:34:34.001972');
INSERT INTO `relationships` VALUES(291,67,33,'2016-05-15 06:35:12.055565','2016-05-15 06:35:12.055565');
INSERT INTO `relationships` VALUES(292,441,1,'2016-05-15 14:06:36.609199','2016-05-15 14:06:36.609199');
INSERT INTO `relationships` VALUES(293,192,30,'2016-05-17 05:52:17.228207','2016-05-17 05:52:17.228207');
INSERT INTO `relationships` VALUES(294,451,1,'2016-05-20 07:46:31.355182','2016-05-20 07:46:31.355182');
INSERT INTO `relationships` VALUES(295,451,2,'2016-05-20 07:46:34.338445','2016-05-20 07:46:34.338445');
INSERT INTO `relationships` VALUES(296,451,5,'2016-05-20 07:46:37.149819','2016-05-20 07:46:37.149819');
INSERT INTO `relationships` VALUES(297,451,8,'2016-05-20 07:46:38.843086','2016-05-20 07:46:38.843086');
INSERT INTO `relationships` VALUES(298,451,9,'2016-05-20 07:46:51.419993','2016-05-20 07:46:51.419993');
INSERT INTO `relationships` VALUES(299,451,11,'2016-05-20 07:46:54.997284','2016-05-20 07:46:54.997284');
INSERT INTO `relationships` VALUES(300,451,12,'2016-05-20 07:46:56.921216','2016-05-20 07:46:56.921216');
INSERT INTO `relationships` VALUES(301,451,15,'2016-05-20 07:47:05.969327','2016-05-20 07:47:05.969327');
INSERT INTO `relationships` VALUES(302,451,19,'2016-05-20 07:47:07.061252','2016-05-20 07:47:07.061252');
INSERT INTO `relationships` VALUES(303,451,40,'2016-05-20 07:47:26.371597','2016-05-20 07:47:26.371597');
INSERT INTO `relationships` VALUES(304,451,14,'2016-05-20 07:47:36.476778','2016-05-20 07:47:36.476778');
INSERT INTO `relationships` VALUES(305,451,24,'2016-05-20 07:47:46.930989','2016-05-20 07:47:46.930989');
INSERT INTO `relationships` VALUES(306,455,30,'2016-05-22 15:47:00.026666','2016-05-22 15:47:00.026666');
INSERT INTO `relationships` VALUES(307,455,11,'2016-05-22 15:47:46.995603','2016-05-22 15:47:46.995603');
INSERT INTO `relationships` VALUES(308,116,26,'2016-05-27 13:49:04.897628','2016-05-27 13:49:04.897628');
INSERT INTO `relationships` VALUES(309,435,15,'2016-05-29 02:52:04.342700','2016-05-29 02:52:04.342700');
INSERT INTO `relationships` VALUES(310,192,1,'2016-05-31 00:13:05.388930','2016-05-31 00:13:05.388930');
INSERT INTO `relationships` VALUES(311,192,11,'2016-05-31 00:13:44.265741','2016-05-31 00:13:44.265741');
INSERT INTO `relationships` VALUES(312,192,9,'2016-05-31 00:13:46.813882','2016-05-31 00:13:46.813882');
INSERT INTO `relationships` VALUES(313,192,33,'2016-05-31 00:14:37.293027','2016-05-31 00:14:37.293027');
INSERT INTO `relationships` VALUES(314,458,1,'2016-06-03 03:01:38.035177','2016-06-03 03:01:38.035177');
INSERT INTO `relationships` VALUES(315,458,14,'2016-06-03 03:02:22.044904','2016-06-03 03:02:22.044904');
INSERT INTO `relationships` VALUES(316,458,2,'2016-06-03 03:03:11.140998','2016-06-03 03:03:11.140998');
INSERT INTO `relationships` VALUES(317,1,36,'2016-06-03 08:47:59.297538','2016-06-03 08:47:59.297538');
INSERT INTO `relationships` VALUES(318,459,1,'2016-06-04 13:42:31.160996','2016-06-04 13:42:31.160996');
INSERT INTO `relationships` VALUES(319,460,5,'2016-06-05 06:29:57.708281','2016-06-05 06:29:57.708281');
INSERT INTO `relationships` VALUES(320,466,5,'2016-06-19 02:16:59.896167','2016-06-19 02:16:59.896167');
INSERT INTO `relationships` VALUES(321,385,1,'2016-06-20 11:17:38.920836','2016-06-20 11:17:38.920836');
INSERT INTO `relationships` VALUES(322,394,1,'2016-06-24 14:59:41.937060','2016-06-24 14:59:41.937060');
INSERT INTO `relationships` VALUES(323,394,5,'2016-06-24 15:00:08.155970','2016-06-24 15:00:08.155970');
INSERT INTO `relationships` VALUES(324,394,9,'2016-06-24 15:01:30.767203','2016-06-24 15:01:30.767203');
INSERT INTO `relationships` VALUES(325,474,8,'2016-06-25 06:28:39.881095','2016-06-25 06:28:39.881095');
INSERT INTO `relationships` VALUES(326,479,2,'2016-06-28 18:55:33.842241','2016-06-28 18:55:33.842241');
INSERT INTO `relationships` VALUES(327,479,30,'2016-06-28 18:57:35.742094','2016-06-28 18:57:35.742094');
INSERT INTO `relationships` VALUES(328,487,1,'2016-06-29 09:31:46.495673','2016-06-29 09:31:46.495673');
INSERT INTO `relationships` VALUES(329,487,8,'2016-06-29 09:32:23.052959','2016-06-29 09:32:23.052959');
INSERT INTO `relationships` VALUES(330,487,9,'2016-06-29 09:32:37.478538','2016-06-29 09:32:37.478538');
INSERT INTO `relationships` VALUES(331,493,2,'2016-07-02 18:59:57.214089','2016-07-02 18:59:57.214089');
INSERT INTO `relationships` VALUES(332,493,15,'2016-07-02 19:01:22.663780','2016-07-02 19:01:22.663780');
INSERT INTO `relationships` VALUES(334,505,15,'2016-07-11 09:42:49.008728','2016-07-11 09:42:49.008728');
INSERT INTO `relationships` VALUES(335,508,2,'2016-07-12 23:44:41.752599','2016-07-12 23:44:41.752599');
INSERT INTO `relationships` VALUES(336,508,15,'2016-07-12 23:45:52.275038','2016-07-12 23:45:52.275038');
INSERT INTO `relationships` VALUES(337,123,8,'2016-07-14 23:57:25.566540','2016-07-14 23:57:25.566540');
INSERT INTO `relationships` VALUES(338,26,1,'2016-07-16 12:08:57.608432','2016-07-16 12:08:57.608432');
INSERT INTO `relationships` VALUES(339,514,15,'2016-07-21 05:27:11.875801','2016-07-21 05:27:11.875801');
INSERT INTO `relationships` VALUES(340,515,1,'2016-07-22 07:12:54.924204','2016-07-22 07:12:54.924204');
INSERT INTO `relationships` VALUES(341,518,1,'2016-07-26 11:53:42.954459','2016-07-26 11:53:42.954459');
INSERT INTO `relationships` VALUES(342,100,33,'2016-07-28 08:23:38.651028','2016-07-28 08:23:38.651028');
INSERT INTO `relationships` VALUES(343,474,1,'2016-07-28 19:05:33.894599','2016-07-28 19:05:33.894599');
INSERT INTO `relationships` VALUES(344,520,15,'2016-07-30 14:43:17.200711','2016-07-30 14:43:17.200711');
INSERT INTO `relationships` VALUES(345,521,15,'2016-07-31 14:55:46.454624','2016-07-31 14:55:46.454624');
INSERT INTO `relationships` VALUES(346,521,19,'2016-07-31 14:56:29.018537','2016-07-31 14:56:29.018537');
INSERT INTO `relationships` VALUES(348,524,1,'2016-08-02 02:28:14.324637','2016-08-02 02:28:14.324637');
INSERT INTO `relationships` VALUES(349,524,30,'2016-08-02 02:29:29.208496','2016-08-02 02:29:29.208496');
INSERT INTO `relationships` VALUES(350,524,2,'2016-08-02 02:32:08.308939','2016-08-02 02:32:08.308939');
INSERT INTO `relationships` VALUES(351,524,8,'2016-08-02 02:32:11.303471','2016-08-02 02:32:11.303471');
INSERT INTO `relationships` VALUES(352,524,11,'2016-08-02 02:33:43.302903','2016-08-02 02:33:43.302903');
INSERT INTO `relationships` VALUES(353,524,14,'2016-08-02 02:44:11.017217','2016-08-02 02:44:11.017217');
INSERT INTO `relationships` VALUES(354,524,24,'2016-08-02 09:10:34.731080','2016-08-02 09:10:34.731080');
INSERT INTO `relationships` VALUES(355,525,30,'2016-08-02 09:15:11.680730','2016-08-02 09:15:11.680730');
INSERT INTO `relationships` VALUES(356,67,11,'2016-08-05 08:56:08.410547','2016-08-05 08:56:08.410547');
INSERT INTO `relationships` VALUES(357,67,38,'2016-08-05 09:00:25.441046','2016-08-05 09:00:25.441046');
INSERT INTO `relationships` VALUES(359,565,5,'2016-08-06 22:09:48.290023','2016-08-06 22:09:48.290023');
INSERT INTO `relationships` VALUES(360,565,1,'2016-08-06 22:13:34.010426','2016-08-06 22:13:34.010426');
INSERT INTO `relationships` VALUES(361,566,12,'2016-08-06 23:28:01.650597','2016-08-06 23:28:01.650597');
INSERT INTO `relationships` VALUES(362,578,8,'2016-08-08 01:38:22.802141','2016-08-08 01:38:22.802141');
INSERT INTO `relationships` VALUES(363,580,38,'2016-08-08 05:38:42.241291','2016-08-08 05:38:42.241291');
INSERT INTO `relationships` VALUES(364,581,15,'2016-08-08 08:01:29.373495','2016-08-08 08:01:29.373495');
INSERT INTO `relationships` VALUES(365,206,1,'2016-08-09 07:44:44.228140','2016-08-09 07:44:44.228140');
INSERT INTO `relationships` VALUES(366,206,9,'2016-08-10 10:34:16.766510','2016-08-10 10:34:16.766510');
INSERT INTO `relationships` VALUES(367,595,1,'2016-08-10 21:02:33.511920','2016-08-10 21:02:33.511920');
INSERT INTO `relationships` VALUES(368,595,15,'2016-08-10 21:08:08.231637','2016-08-10 21:08:08.231637');
INSERT INTO `relationships` VALUES(369,596,30,'2016-08-10 21:18:38.209923','2016-08-10 21:18:38.209923');
INSERT INTO `relationships` VALUES(370,597,1,'2016-08-11 10:09:47.495921','2016-08-11 10:09:47.495921');
INSERT INTO `relationships` VALUES(371,515,15,'2016-08-12 11:44:42.750528','2016-08-12 11:44:42.750528');
INSERT INTO `relationships` VALUES(372,219,34,'2016-08-16 07:02:57.238485','2016-08-16 07:02:57.238485');
INSERT INTO `relationships` VALUES(373,614,15,'2016-08-16 14:37:25.923598','2016-08-16 14:37:25.923598');
INSERT INTO `relationships` VALUES(375,607,30,'2016-08-16 21:38:39.378341','2016-08-16 21:38:39.378341');
INSERT INTO `relationships` VALUES(376,607,19,'2016-08-16 21:40:41.307818','2016-08-16 21:40:41.307818');
INSERT INTO `relationships` VALUES(377,607,15,'2016-08-16 21:42:40.421614','2016-08-16 21:42:40.421614');
INSERT INTO `relationships` VALUES(378,616,18,'2016-08-18 00:56:13.437561','2016-08-18 00:56:13.437561');
INSERT INTO `relationships` VALUES(379,616,8,'2016-08-18 01:10:08.410129','2016-08-18 01:10:08.410129');
INSERT INTO `relationships` VALUES(380,58,39,'2016-08-18 08:58:56.775976','2016-08-18 08:58:56.775976');
INSERT INTO `relationships` VALUES(381,58,1,'2016-08-18 09:00:47.885160','2016-08-18 09:00:47.885160');
INSERT INTO `relationships` VALUES(382,58,8,'2016-08-18 09:01:35.156348','2016-08-18 09:01:35.156348');
INSERT INTO `relationships` VALUES(383,58,24,'2016-08-18 09:02:17.570933','2016-08-18 09:02:17.570933');
INSERT INTO `relationships` VALUES(384,58,14,'2016-08-18 09:03:45.538860','2016-08-18 09:03:45.538860');
INSERT INTO `relationships` VALUES(385,508,14,'2016-08-18 21:59:12.399310','2016-08-18 21:59:12.399310');
INSERT INTO `relationships` VALUES(386,58,15,'2016-08-19 03:18:25.921436','2016-08-19 03:18:25.921436');
INSERT INTO `relationships` VALUES(387,628,26,'2016-08-20 13:06:35.986964','2016-08-20 13:06:35.986964');
INSERT INTO `relationships` VALUES(388,628,1,'2016-08-20 13:16:31.275892','2016-08-20 13:16:31.275892');
INSERT INTO `relationships` VALUES(389,631,19,'2016-08-21 03:27:43.231093','2016-08-21 03:27:43.231093');
INSERT INTO `relationships` VALUES(390,631,14,'2016-08-21 03:28:35.586501','2016-08-21 03:28:35.586501');
INSERT INTO `relationships` VALUES(391,637,1,'2016-08-22 02:08:41.720347','2016-08-22 02:08:41.720347');
INSERT INTO `relationships` VALUES(392,637,14,'2016-08-22 02:22:28.733208','2016-08-22 02:22:28.733208');
INSERT INTO `relationships` VALUES(393,637,24,'2016-08-22 02:22:41.412739','2016-08-22 02:22:41.412739');
INSERT INTO `relationships` VALUES(394,206,14,'2016-08-22 06:16:55.339100','2016-08-22 06:16:55.339100');
INSERT INTO `relationships` VALUES(395,632,14,'2016-08-22 23:06:49.260297','2016-08-22 23:06:49.260297');
INSERT INTO `relationships` VALUES(397,595,39,'2016-08-26 15:32:05.796021','2016-08-26 15:32:05.796021');
INSERT INTO `relationships` VALUES(398,657,29,'2016-08-29 00:58:45.798488','2016-08-29 00:58:45.798488');
INSERT INTO `relationships` VALUES(399,657,24,'2016-08-29 06:10:31.671281','2016-08-29 06:10:31.671281');
INSERT INTO `relationships` VALUES(400,663,18,'2016-08-30 07:22:40.701706','2016-08-30 07:22:40.701706');
INSERT INTO `relationships` VALUES(401,669,18,'2016-09-02 16:09:11.970285','2016-09-02 16:09:11.970285');
INSERT INTO `relationships` VALUES(402,678,39,'2016-09-04 07:44:17.306837','2016-09-04 07:44:17.306837');
INSERT INTO `relationships` VALUES(403,680,36,'2016-09-05 09:12:45.370947','2016-09-05 09:12:45.370947');
INSERT INTO `relationships` VALUES(404,683,1,'2016-09-06 01:14:54.924880','2016-09-06 01:14:54.924880');
INSERT INTO `relationships` VALUES(405,683,8,'2016-09-06 01:15:28.653409','2016-09-06 01:15:28.653409');
INSERT INTO `relationships` VALUES(406,683,33,'2016-09-06 01:18:19.509527','2016-09-06 01:18:19.509527');
INSERT INTO `relationships` VALUES(407,689,18,'2016-09-06 05:08:36.003130','2016-09-06 05:08:36.003130');
INSERT INTO `relationships` VALUES(408,493,30,'2016-09-06 08:42:05.389809','2016-09-06 08:42:05.389809');
INSERT INTO `relationships` VALUES(409,678,18,'2016-09-07 07:20:55.281703','2016-09-07 07:20:55.281703');
INSERT INTO `relationships` VALUES(410,678,15,'2016-09-07 07:23:07.639179','2016-09-07 07:23:07.639179');
INSERT INTO `relationships` VALUES(411,703,5,'2016-09-08 04:44:33.698196','2016-09-08 04:44:33.698196');
INSERT INTO `relationships` VALUES(412,704,1,'2016-09-09 12:32:34.604416','2016-09-09 12:32:34.604416');
INSERT INTO `relationships` VALUES(413,712,14,'2016-09-10 19:38:51.532439','2016-09-10 19:38:51.532439');
INSERT INTO `relationships` VALUES(414,712,1,'2016-09-10 19:44:24.683034','2016-09-10 19:44:24.683034');
INSERT INTO `relationships` VALUES(415,712,39,'2016-09-10 19:50:26.716680','2016-09-10 19:50:26.716680');
INSERT INTO `relationships` VALUES(416,712,38,'2016-09-10 20:12:14.169338','2016-09-10 20:12:14.169338');
INSERT INTO `relationships` VALUES(417,712,15,'2016-09-10 20:14:11.385842','2016-09-10 20:14:11.385842');
INSERT INTO `relationships` VALUES(418,719,5,'2016-09-11 04:52:32.514965','2016-09-11 04:52:32.514965');
INSERT INTO `relationships` VALUES(419,721,18,'2016-09-12 04:32:36.993145','2016-09-12 04:32:36.993145');
INSERT INTO `relationships` VALUES(420,725,18,'2016-09-13 11:09:55.068331','2016-09-13 11:09:55.068331');
INSERT INTO `relationships` VALUES(421,725,15,'2016-09-13 11:14:45.151539','2016-09-13 11:14:45.151539');
INSERT INTO `relationships` VALUES(422,725,8,'2016-09-14 00:52:22.941617','2016-09-14 00:52:22.941617');
INSERT INTO `relationships` VALUES(423,1,37,'2016-09-16 15:11:30.915003','2016-09-16 15:11:30.915003');
INSERT INTO `relationships` VALUES(424,505,14,'2016-09-16 19:38:19.530157','2016-09-16 19:38:19.530157');
INSERT INTO `relationships` VALUES(425,738,5,'2016-09-19 22:15:50.096615','2016-09-19 22:15:50.096615');
INSERT INTO `relationships` VALUES(426,741,1,'2016-09-21 13:36:23.308602','2016-09-21 13:36:23.308602');
INSERT INTO `relationships` VALUES(427,741,18,'2016-09-21 13:37:15.258844','2016-09-21 13:37:15.258844');
INSERT INTO `relationships` VALUES(428,743,30,'2016-09-22 14:02:23.971174','2016-09-22 14:02:23.971174');
INSERT INTO `relationships` VALUES(429,746,8,'2016-09-22 19:51:36.135526','2016-09-22 19:51:36.135526');
INSERT INTO `relationships` VALUES(430,752,5,'2016-09-28 07:10:52.036125','2016-09-28 07:10:52.036125');
INSERT INTO `relationships` VALUES(431,752,26,'2016-09-28 07:16:04.362795','2016-09-28 07:16:04.362795');
INSERT INTO `relationships` VALUES(432,752,8,'2016-09-28 07:17:32.978448','2016-09-28 07:17:32.978448');
INSERT INTO `relationships` VALUES(433,752,9,'2016-09-28 07:18:22.963007','2016-09-28 07:18:22.963007');
INSERT INTO `relationships` VALUES(434,752,39,'2016-09-28 07:24:12.531391','2016-09-28 07:24:12.531391');
INSERT INTO `relationships` VALUES(435,753,1,'2016-09-29 13:26:23.735393','2016-09-29 13:26:23.735393');
INSERT INTO `relationships` VALUES(436,753,2,'2016-09-29 13:28:04.954484','2016-09-29 13:28:04.954484');
INSERT INTO `relationships` VALUES(437,753,8,'2016-09-29 13:28:24.788228','2016-09-29 13:28:24.788228');
INSERT INTO `relationships` VALUES(438,763,18,'2016-10-03 12:46:58.898948','2016-10-03 12:46:58.898948');
INSERT INTO `relationships` VALUES(439,766,1,'2016-10-04 09:20:19.032259','2016-10-04 09:20:19.032259');
INSERT INTO `relationships` VALUES(440,725,30,'2016-10-04 14:27:53.947078','2016-10-04 14:27:53.947078');
INSERT INTO `relationships` VALUES(441,595,18,'2016-10-05 14:02:43.473012','2016-10-05 14:02:43.473012');
INSERT INTO `relationships` VALUES(442,425,1,'2016-10-06 16:14:04.430556','2016-10-06 16:14:04.430556');
INSERT INTO `relationships` VALUES(443,725,39,'2016-10-08 09:51:13.523939','2016-10-08 09:51:13.523939');
INSERT INTO `relationships` VALUES(444,669,1,'2016-10-10 09:17:35.760120','2016-10-10 09:17:35.760120');
INSERT INTO `relationships` VALUES(445,725,1,'2016-10-11 00:16:40.313367','2016-10-11 00:16:40.313367');
INSERT INTO `relationships` VALUES(446,725,2,'2016-10-11 00:17:36.640702','2016-10-11 00:17:36.640702');
INSERT INTO `relationships` VALUES(447,725,9,'2016-10-11 00:18:15.759595','2016-10-11 00:18:15.759595');
INSERT INTO `relationships` VALUES(448,725,11,'2016-10-11 00:18:39.217674','2016-10-11 00:18:39.217674');
INSERT INTO `relationships` VALUES(449,725,12,'2016-10-11 00:19:36.116344','2016-10-11 00:19:36.116344');
INSERT INTO `relationships` VALUES(450,725,14,'2016-10-11 00:19:47.087777','2016-10-11 00:19:47.087777');
INSERT INTO `relationships` VALUES(451,725,19,'2016-10-11 00:20:07.011289','2016-10-11 00:20:07.011289');
INSERT INTO `relationships` VALUES(452,725,24,'2016-10-11 00:20:23.963891','2016-10-11 00:20:23.963891');
INSERT INTO `relationships` VALUES(453,725,25,'2016-10-11 00:20:40.748152','2016-10-11 00:20:40.748152');
INSERT INTO `relationships` VALUES(454,725,29,'2016-10-11 00:21:03.978563','2016-10-11 00:21:03.978563');
INSERT INTO `relationships` VALUES(455,725,38,'2016-10-11 00:21:52.811791','2016-10-11 00:21:52.811791');
INSERT INTO `relationships` VALUES(456,725,26,'2016-10-11 00:22:10.865909','2016-10-11 00:22:10.865909');
INSERT INTO `relationships` VALUES(457,725,36,'2016-10-11 00:22:31.133277','2016-10-11 00:22:31.133277');
INSERT INTO `relationships` VALUES(458,725,37,'2016-10-11 00:22:47.553553','2016-10-11 00:22:47.553553');
INSERT INTO `relationships` VALUES(459,759,1,'2016-10-11 03:29:22.217241','2016-10-11 03:29:22.217241');
INSERT INTO `relationships` VALUES(461,800,18,'2016-10-19 15:55:36.624094','2016-10-19 15:55:36.624094');
INSERT INTO `relationships` VALUES(462,800,29,'2016-10-19 15:59:41.513911','2016-10-19 15:59:41.513911');
INSERT INTO `relationships` VALUES(463,800,30,'2016-10-19 16:03:59.137840','2016-10-19 16:03:59.137840');
INSERT INTO `relationships` VALUES(464,800,38,'2016-10-19 16:20:25.541664','2016-10-19 16:20:25.541664');
INSERT INTO `relationships` VALUES(465,800,37,'2016-10-19 16:30:24.836841','2016-10-19 16:30:24.836841');
INSERT INTO `relationships` VALUES(466,800,19,'2016-10-20 14:43:55.036364','2016-10-20 14:43:55.036364');
INSERT INTO `relationships` VALUES(467,473,18,'2016-10-25 22:53:06.628153','2016-10-25 22:53:06.628153');
INSERT INTO `relationships` VALUES(468,493,18,'2016-10-30 03:44:59.179775','2016-10-30 03:44:59.179775');
INSERT INTO `relationships` VALUES(469,528,36,'2016-11-13 15:11:14.971861','2016-11-13 15:11:14.971861');
INSERT INTO `relationships` VALUES(470,146,5,'2016-11-23 14:37:49.133595','2016-11-23 14:37:49.133595');
INSERT INTO `relationships` VALUES(471,146,36,'2016-11-23 14:41:19.099147','2016-11-23 14:41:19.099147');
INSERT INTO `relationships` VALUES(472,227,36,'2016-12-07 23:45:09.421432','2016-12-07 23:45:09.421432');
INSERT INTO `relationships` VALUES(473,581,18,'2016-12-13 11:18:56.881161','2016-12-13 11:18:56.881161');
INSERT INTO `relationships` VALUES(475,841,38,'2017-01-23 04:07:21.407956','2017-01-23 04:07:21.407956');
INSERT INTO `relationships` VALUES(476,812,36,'2017-02-02 06:41:30.529620','2017-02-02 06:41:30.529620');
INSERT INTO `relationships` VALUES(477,846,14,'2017-02-03 12:41:29.858511','2017-02-03 12:41:29.858511');
INSERT INTO `relationships` VALUES(478,847,12,'2017-02-05 00:42:21.879405','2017-02-05 00:42:21.879405');
INSERT INTO `relationships` VALUES(479,848,36,'2017-02-05 05:58:56.985878','2017-02-05 05:58:56.985878');
CREATE TABLE `mapus` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `longitude` float, `latitude` float, `address` varchar(255), `description` text, `title` varchar(255), `created_at` datetime, `updated_at` datetime);
CREATE TABLE `tokens` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `customer_id` integer NOT NULL, `uuid` varchar(255) NOT NULL, `expire_at` datetime NOT NULL, `created_at` datetime, `updated_at` datetime);
CREATE TABLE `additional_infos` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `staff_member_id` integer, `type` varchar(255), `farm_condition` varchar(255), `farm_condition_year` varchar(255), `masterpiece` varchar(255), `created_at` datetime, `updated_at` datetime, `explanation` text);
INSERT INTO `additional_infos` VALUES(2,5,NULL,NULL,NULL,'タマネギ／玉葱','2015-08-13 01:08:18.080139','2015-08-13 01:08:18.080139','はじめまして！あめつち農園です！
あめつちとは天地のことで、陰と陽や日と月、魂と魂、命の始まりと終わりを繰り返す事の意味が込められていて、その意味のように野菜を通じて命の循環と本当に大切なことを感じていただけたらと思い、そう名付けました。

できるだけ多くのみなさまに僕の野菜を食べて欲しい。そう願って小豆島が見える素晴らしい谷の畑に夫婦二人でたくさんの玉ねぎをはじめ、たくさん野菜の種を蒔きました。お母さんが安心して料理できるように、料理人が腕をふるって調理できるように種もこだわって、命が循環する在来種と固定種の種で。もちろん無農薬。肥料は必要なときだけでほぼ使ってないのですが、極たまに自分の畑や村の山の恵みだけでできた自然由来の非化学非動物性肥料を必要な時だけ、必要な野菜だけに使って作っています。');
INSERT INTO `additional_infos` VALUES(6,1,NULL,NULL,NULL,'ロクジョウオオムギ／大麦','2015-08-28 13:10:54.914241','2015-08-28 13:10:54.914241','霧深い丹波の、清き水で培われた土。
自然の循環の中でゆっくりと健康に育ったお野菜です。');
INSERT INTO `additional_infos` VALUES(7,16,NULL,NULL,NULL,'シュンギク／春菊','2015-10-06 15:32:55.119137','2015-10-06 15:32:55.119137','6種類の在来・固定種の春菊を中心に季節のお野菜をお届けしています。旧藤野村に降り注ぐ太陽、雨水、土のみで栽培しています。');
INSERT INTO `additional_infos` VALUES(10,19,NULL,NULL,NULL,'ダイコン／大根','2015-10-28 05:23:53.334973','2015-10-28 05:23:53.334973','つくば山麓の自然豊かな、日本のふるさと百選にも選ばれた八郷地域。リンゴもミカンも採れる地域性が、農産物も豊かにしてくれます。
                                                                      ');
INSERT INTO `additional_infos` VALUES(13,8,NULL,NULL,NULL,'タマネギ／玉葱','2015-11-09 05:34:45.752181','2015-11-09 05:34:45.752181','花岡農恵園は、代表の花岡明宏が、全国各地で農業研修後の2004年に開始致しました。
 当時私の地元五色町で合鴨農法で有機米栽培をする[現 五色OFG(オーガニックファーマーグループ)]が発足しており、私も仲間として加えて頂き有機栽培にて米作り・野菜作りを始めました。
 数年間勤めに出ながら有機栽培農業をしておりましたが、有機認証の取得後、両親の退職・私の結婚等を経て農業一本で生活する事になりました。
 「有機栽培にておいしく、安心して食べられるものを作りたい」という事の最大の理由は、子供や家族にそういった物を食べてもらいたいという想いです。

そして有機農業を始めて11年…（自然栽培4年目を迎えました）
様々な人との出会いと農の実践から、肥料や種の問題も知る事になりました。
 現在は有機JAS 認証も取得しつつ、無肥料無農薬栽培にて野菜作りをしています。
(お米については合鴨農法を継続中)

いずれ子供たちとともに農業が出来る事を夢見て…
 

 

   ');
INSERT INTO `additional_infos` VALUES(17,24,NULL,NULL,NULL,'','2016-01-29 08:07:31.833516','2016-01-29 08:07:31.833516','京都の加茂町というところで作っています☆
 
  平城京から平安京へ遷都する過程で、一時　恭仁京（くにきょう）という都が置かれたところでお茶づくりをしています(^_^)
根を深く張ることで、太古の偉人が飲んだお茶の味に近づくものになっていくのではと楽しみにお茶の成長を見ています(*^_^*)
そんな歴史に思いを馳せながら楽しんでいただけるとうれしいです☆
よかったらそんな奈良や京都の土地へも足を運んでみてください(^o^)  

山徳茶について☆

今まで、教わった通り、 安全と信じて代々慣行農業をしてきましたが、 
自分自身体を壊してしまったことと、 子どもが生まれてきてくれたことが、
 食事や自分が今まで当たり前にしてきたことを見直すきっかけになりました！ 

そうやって農薬の悲惨さを知って、 
今は自然栽培に転換していってます！ 
まずはすべて自然栽培に切り換えることが目標です(^_^)！ 
自分にはつい甘くて、 なかなか追い込んで成長していけないぼくですが、 自然はすごくて、 肥料がなくても、 自分で根っこを伸ばして、 どんどんたくましく変わっていきます！ そうやって大地から吸い上げたエネルギーからできたお茶☆ 飲んでくれた方に元気になってもらえたらうれしいです(*^^*)');
INSERT INTO `additional_infos` VALUES(23,2,NULL,NULL,NULL,'BOX販売','2016-02-03 05:07:51.312961','2016-02-03 05:07:51.312961','太陽の恵みいっぱいの路地畑で 
自然に準じた野菜作りに励んでいます。 
肥料や農薬を与えず 
野菜たちが持っている自然の力で 
栄養分を得てもらう栽培方法です。
 
野菜たちが本来持っている 
其のままのおいしさを 味わってみてください。



【圃場があるところ】群馬県高崎市塚田町・菅谷町・金古町、前橋市元総社町
　榛名山の噴火による火山灰の堆積でできた肥沃な土地をもつ高崎市の国府地域で営んでいます。
　戦前から昭和30年代まで全国に出回っていた国分鮮紅長人参の種取り農家でした。

【作付け面積】畑 1.44ha 　田んぼ0.47ha

【2016年度出荷予定品種】
・ササシグレ（うるち米　自家採種3年目・固定種）
・ハツシモ（うるち米　自家採種1年目・固定種）
・農林61号小麦（自家採種3年目・固定種）
・借金なし大豆（自家採種2年目・固定種）
・信濃鞍掛大豆（自家採種2年目・固定種）
・おつな姫枝豆（購入種子・固定種）
・トヨシロ（じゃがいも、自家採種1年目・固定種）
・紅あづま（さつまいも、自家苗・固定種）
・土垂（里芋、自家採種5年目・固定種）
・スナック豌豆（自家採種2年目・固定種）
・成平いんげん（購入種子・固定種）
・三尺ササゲ（自家採種2年目・固定種）
・真黒ナス（自家採種5年目・固定種）
・奥武蔵地這きゅうり（自家採種3年目・固定種）
・白黄うり（購入種子・固定種）
・さきがけピーマン（自家採種4年目・固定種）
・万願寺とうがらし（自家採種4年目・固定種）
・ステラミニトマト（自家採種3年目・固定種）
・妙高（大玉トマト、購入種子　F1）
・メニーナ（中玉トマト、自家採種or購入種子　F1）
・サンティオ（中玉トマト、購入種子　F1）
・東京五角オクラ（自家採種2年目・固定種）
・ステラズッキーニ（自家採種4年目・固定種）
・甘露マクワウリ（自家採種2年目・固定種）
・姫冬瓜（自家採種2年目・固定種）
・渋谷スイカ（自家採種2年目・固定種）
・ポップコーン（購入種子・固定種）
・丹生川かぼちゃ（自家採種1年目・固定種）※他F1種を数品種
・空芯菜（購入種子・固定種）
・モロヘイヤ（自家採種1年目・固定種）
・紫蘇（自生）
・えごま（購入種子・固定種）
・赤ちりめん紫蘇（購入種子・固定種）
・バジル（自家採種2年目・固定種）
・白ごま（購入種子・固定種）
・石倉一本ネギ（自家採種2年目・固定種）
・九条ネギ（購入種子・固定種）
・湘南レッド玉ねぎ（自家採種1年目・固定種）
・ケララエシャロット（自家採種1年目・固定種）
・壱岐ニンニク（購入種子・固定種）
・ストリドーロ（購入種子・固定種）
・ラディキオ・タルディーボ（購入種子・固定種）
・落花生（自家採種1年目・固定種）
・子安三寸人参（購入種子・固定種）
・黒田五寸人参（自家採種4年目・固定種）
・打木源助大根（自家採種4年目・固定種）
・五木赤大根（自家採種1年目・固定種）
・亀戸大根（自家採種1年目・固定種）
・三浦大根（自家採種2年目・固定種）
・早太り花知らず時無大根（購入種子・固定種）
・大丸聖護院大根（購入種子・固定種）
・日野菜かぶ（購入種子・固定種）
・みやまこかぶ（自家採種1年目・固定種）
・金町こかぶ（購入種子・固定種）
・飛鳥あかねかぶ（購入種子・固定種）
・中葉春菊（自家採種2年目・固定種）
・たけのこ白菜（購入種子・固定種）
・松島新二号白菜（購入種子・固定種）
・芯とり菜（購入種子・固定種）
・早生丸葉小松菜（購入種子・固定種）
・新晩生小松菜（購入種子・固定種）
・早生千筋京水菜（購入種子・固定種）
・晩生千筋京水菜（購入種子・固定種）
・中生チンゲン菜（自家採種1年目・固定種）
・タアサイ（自家採種1年目・固定種）
・ルッコラ（自生、自家採種2年目・固定種）
・赤リアスからし菜（自家採種1年目・固定種）
・かつお菜（自家採種2年目・固定種）
・イタリア在来グリーンリーフ・マスタード（自家採種1年目・固定種）
・白かきちしゃ（自家採種1年目・固定種）
・源助菜（購入種子・固定種）
・松本冬菜（購入種子・固定種）
・野崎早生カリフラワー（自家採種1年目・固定種）
・ブロッコリー・ドジコ（早生、購入種子・固定種）
・ブロッコリー・グリーンカラブリーゼ（中生、購入種子・固定種）
・山形赤根ほうれん草（購入種子・固定種）
・富士早生甘藍（購入種子・固定種）
・自生菜花
・アカチマ（購入種子・固定種）
・アオチマ（購入種子・固定種）
・レタスしずか（購入種子・固定種）
・宝交早生（苺、購入苗・固定種）

くわしくはタンポポ農園ホームページをご覧下さいませ！
http://tanpopofarm.jp/');
INSERT INTO `additional_infos` VALUES(24,11,NULL,NULL,NULL,'シュンギク／春菊','2016-02-09 10:20:35.786023','2016-02-09 10:20:35.786023','固定種を中心に、野菜、米、加工品を作っています。
自然栽培や自然農でできた野菜や米の味に感動して、脱サラ新規就農した夫婦です。
2013年より始めました。どうぞよろしくお願いいたします。
   ');
INSERT INTO `additional_infos` VALUES(27,14,NULL,NULL,NULL,'サトイモ／里芋','2016-04-21 11:43:28.086884','2016-04-21 11:43:28.086884','');
INSERT INTO `additional_infos` VALUES(28,33,NULL,NULL,NULL,'','2016-04-24 00:46:59.342396','2016-04-24 00:46:59.342396','みつばちが環境のいろいろなお花から、はちみつを集めてきます。
ですから、環境が汚染されていないことはとても大切です。
純天然舎では、すばらしい環境を維持している農場や里山に巣箱を置かせていただき
ノーケミカルでみつばちを飼育してきました。
みつばちとお花が幸せだとおいしいはちみつがとれるようです。');
INSERT INTO `additional_infos` VALUES(29,26,NULL,NULL,NULL,'サトイモ／里芋','2016-04-28 08:29:40.604114','2016-04-28 08:29:40.604114','島根県の西端、吉賀町で自給的な農業を営む里山農園やまぐち
清流日本一に何度も輝いている日本海に注ぐ高津川と瀬戸内海に注ぐ錦川の分水嶺で水源地にあたるこの地は、水が清く、冬は寒く、また原発からも遠い、食べ物を食べるにはとても良い環境が整っています。

私はこの土地で、それぞれの野菜の種を採りながら、畑と向き合っています。
農薬、化学肥料が無いこと、次の世代にも胸をはって語り継いでいけること。
そういうことを大切にしてます。機械は最低限のもの。畑に使うものも近所からの地産地消です。



畑、農法の特徴
・自然農的、不耕起畑では、機械も資材も使用しない、畑の中の刈り草のマルチのみの畑　3畝。
・主な圃場では、少しずつ完全無肥料にしようと思いますが、現在、転換の目的も含めて籾殻を主に使用し、
在来の糸状菌から畑を耕してもらう方法をとっています。
・結球野菜などの豊かな土の必要なキャベツなどの野菜は　米ぬか、おから、土を混ぜたボカシを使用します。
（転換中につき、キャベツ、玉ねぎには有機質肥料を使用しています。）
・苗床には、藁、畑の残渣、刈り草、落ち葉を利用した自家製の苗土を使っています。');
INSERT INTO `additional_infos` VALUES(30,9,NULL,NULL,NULL,'ダイズ／大豆','2016-05-07 12:07:12.313345','2016-05-07 12:07:12.313345','大納言小豆発祥の地丹波市春日町で、科学肥料・農薬・除草剤・動物性堆肥を使用せずに
なるべく自然環境に近い状態で 大豆、小豆、ハーブ類の栽培をしております。
地元の里山で採種した野草をハーブ等とブレンドし飲みやすい健康茶の試作を行っています。
農業を通じて人も大地も本来の姿に戻せるように日々精進して参ります。');
INSERT INTO `additional_infos` VALUES(34,30,NULL,NULL,NULL,'サヤエンドウ／莢豌豆','2016-05-14 05:07:53.639782','2016-05-14 05:07:53.639782','今月は絹さやエンドウとスナップエンドウがとても美味しく出来ています。
野菜セットの中に入っていますので、是非ご賞味ください。');
INSERT INTO `additional_infos` VALUES(35,40,NULL,NULL,NULL,'コメ／米','2016-05-14 21:02:53.540180','2016-05-14 21:02:53.540180','四国香川県の三豊市にとんぎりやま農園はあります。三豊市は四国の瀬戸内側のほぼ真ん中の位置にあるとても温暖な気候の土地です。
地域では農業が盛んでレタス、たまねぎ、みかんと何でも作れる土地なのですが、温暖な気候の為昆虫も多い土地でいわば殺虫剤がないと農業ができないと思い込まれている地域です。そこで、現在新規就農で水稲、野菜主ににんにくを無肥料・無農薬で栽培しています。
現在は、無農薬・無肥料で栽培が可能である事に気がついた仲間と栽培方法の拡散と販売を日々行っています。');
INSERT INTO `additional_infos` VALUES(40,15,NULL,NULL,NULL,'BOX販売','2016-09-12 14:00:25.963580','2016-09-12 14:00:25.963580','ずくなし農園！
姨捨の棚田で有名な信州千曲市さらしな地域にて、無肥無農薬栽培の野菜を少量多品目で栽培しています。
珍しい西洋野菜を中心に、様々な野菜を自家採種をしながら育てています。
環境に負荷を掛けず、本当に健康になれる美味しい野菜作りを心掛けています。

');
INSERT INTO `additional_infos` VALUES(41,39,NULL,NULL,NULL,'ニンジン／人参','2016-09-13 23:17:34.601804','2016-09-13 23:17:34.601804','後世と仲良くするためには　良いものを残す必要がある。
地球となかよく、草となかよく、微生物となかよく・・・とにかく　草と共存した野菜が・う・ま・い！・・・
認知症の方もできる農業　
間違えて口に入れてもいいものだけでできる農業を模索して　自然栽培と出会いました。

ただし〜農園');
INSERT INTO `additional_infos` VALUES(43,42,NULL,NULL,NULL,'ニンジン／人参','2016-11-16 09:27:56.414643','2016-11-16 09:27:56.414643','自然豊かな淡路島の中でも最も暖かい地域で、太陽の恵みと潮風をいっぱいに浴びた野菜を育てています。
甘みも旨みもぎっしり詰まった美味しい自然栽培野菜を是非ご堪能ください。');
INSERT INTO `additional_infos` VALUES(45,29,NULL,NULL,NULL,'ハクサイ／白菜','2016-12-01 00:51:15.278871','2016-12-01 00:51:15.278871','  
　　　　自然尊重　自然順応　 を基本理念として。
 
　　　　自然にしっかり耳を傾け、目を見張って、　　　　
　　　　化学肥料、農薬を使わない
　　　　自然栽培で野菜を作っています。
　　　　人 に 良  いと書いて  食  です。
　　　　心と身体の健康に良い野菜40種類。
              ブルーベリー、桃、プルーン。
　　　　苦心しながら作っています');
INSERT INTO `additional_infos` VALUES(46,43,NULL,NULL,NULL,'','2016-12-04 00:04:46.866797','2016-12-04 00:04:46.866797','五段農園がある黒川・奥新田地区は標高約700mの「準高冷地」昼夜の寒暖差が美味しい野菜と米を作り出します。また野菜の栽培には基本的に山の湧き水を利用しています。');
INSERT INTO `additional_infos` VALUES(47,36,NULL,NULL,NULL,'ハクサイ／白菜','2016-12-08 16:39:26.232170','2016-12-08 16:39:26.232170','植物を原料にした自家製の堆肥のみで栽培された野菜やお米を生産、販売しています。いろいろなものを少しずつ作っていますので、何があるかお問い合わせいただければ多品目ご用意できるかもしれません。');
CREATE TABLE `banks` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `staff_member_id` integer, `bank_name` varchar(255), `branch_name` varchar(255), `account_type` varchar(255), `account_number` integer, `account_holder` varchar(255), `created_at` datetime, `updated_at` datetime);
INSERT INTO `banks` VALUES(3,2,'群馬銀行','箕輪支店','普通',670118,'ホンダミノル','2015-10-26 22:46:21.360289','2015-10-26 22:46:21.360289');
INSERT INTO `banks` VALUES(4,19,'楽天銀行','ロック支店','普通',1635122,'イワサキ テツジ','2015-10-28 05:31:35.803333','2015-10-28 05:31:35.803333');
INSERT INTO `banks` VALUES(7,12,'中国銀行','藤戸支店','普通',1054749,'高越基治','2016-01-16 06:28:58.063078','2016-01-16 06:28:58.063078');
INSERT INTO `banks` VALUES(8,24,'京都やましろ農業協同組合','加茂支店','普通',16757,'ヤマザキ　トクヤ','2016-01-29 07:52:46.893044','2016-01-29 07:52:46.893044');
INSERT INTO `banks` VALUES(14,11,'ゆうちょ銀行','四四八','普通',55572,'アコウ　タツオ','2016-02-09 10:22:55.437992','2016-02-09 10:22:55.437992');
INSERT INTO `banks` VALUES(15,5,'ゆうちょ','438','普通',5318005,'シオタ ヒロキ','2016-02-12 22:43:41.117428','2016-02-12 22:43:41.117428');
INSERT INTO `banks` VALUES(17,33,'三菱東京UFJ銀行','鷺沼支店','普通',4707658,'ゴトウ　ジュンコ','2016-03-28 16:41:44.894363','2016-03-28 16:41:44.894363');
INSERT INTO `banks` VALUES(18,38,'住信SBIネット銀行','リンゴ','普通',2968393,'イトウ　マサシ','2016-04-05 01:13:27.229241','2016-04-05 01:13:27.229241');
INSERT INTO `banks` VALUES(21,26,'ゆうちょ銀行','五三八','普通',524141,'里山農園やまぐち','2016-04-28 07:45:17.107044','2016-04-28 07:45:17.107044');
INSERT INTO `banks` VALUES(22,8,'三井住友銀行','洲本支店','普通',3757673,'ハナオカ　アキヒロ','2016-05-08 23:41:18.805990','2016-05-08 23:41:18.805990');
INSERT INTO `banks` VALUES(30,15,'八十二銀行','戸倉支店','普通',334190,'ナカムラ シンジ','2016-07-10 16:41:58.129710','2016-07-10 16:41:58.129710');
INSERT INTO `banks` VALUES(31,31,'郵貯銀行','418','普通',3749850,'イトウミキコ','2016-08-12 21:51:04.932596','2016-08-12 21:51:04.932596');
INSERT INTO `banks` VALUES(32,30,'みずほ銀行','飯能支店','普通',2229742,'株式会社ひより農園','2016-08-16 21:34:18.149510','2016-08-16 21:34:18.149510');
INSERT INTO `banks` VALUES(39,42,'三菱東京UFJ銀行','新丸の内','普通',3288613,'ビオアグリ','2016-11-16 09:29:22.815277','2016-11-16 09:29:22.815277');
INSERT INTO `banks` VALUES(42,43,'三菱東京UFJ銀行','新横浜支店','普通',391941,'タカヤ　ユウイチロウ','2016-12-04 00:07:17.855717','2016-12-04 00:07:17.855717');
INSERT INTO `banks` VALUES(43,36,'中国銀行','牛窓支店','普通',1143636,'ムロタ トシアキ','2016-12-20 01:10:49.988216','2016-12-20 01:10:49.988216');
CREATE TABLE `sales_terms` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `staff_member_id` integer, `type` varchar(255), `delivery_fee` integer DEFAULT 0, `legal_info` text, `return_policy` text, `created_at` datetime, `updated_at` datetime);
INSERT INTO `sales_terms` VALUES(4,18,NULL,700,'','','2015-10-11 04:51:13.763915','2015-10-11 04:51:13.763915');
INSERT INTO `sales_terms` VALUES(5,1,NULL,500,'','','2015-10-18 12:22:50.738136','2015-10-18 12:22:50.738136');
INSERT INTO `sales_terms` VALUES(6,19,NULL,600,'販売者名 ：いわさき菜園  岩崎哲史
所在地 ： 茨城県石岡市山崎3144ー17
連絡先  0299-46-5243
E-mail： iwasaki-saien2006@w4.dion.ne.jp','商品特性上、商品の返品は原則承っておりません。万が一、当方に責任を負うべき事由がある場合は、返金または同一商品がある場合のみ交換させていただきます。','2015-10-22 15:03:34.109741','2015-10-22 15:03:34.109741');
INSERT INTO `sales_terms` VALUES(7,2,NULL,750,'販売業者名：タンポポ農園
代表：ホンダ ミノル
所在地：群馬県高崎市塚田町50
電話番号：027-333-2990
FAX番号：027-333-2990','商品購入後のキャンセルは運営上（貴重なお野菜が無駄になってしまいます）出来ません。ご了承下さいませ。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は商品到着後３日以内にメールにてご連絡下さいませ。
収穫状況を確認の上、ご指定の商品、または同等品をお届けいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2015-10-26 22:31:37.992728','2015-10-26 22:31:37.992728');
INSERT INTO `sales_terms` VALUES(10,8,NULL,0,'販売業者名：淡路島　花岡農恵園　代表者および運営責任者：花岡　明宏　所在地：兵庫県洲本市五色町鮎原三野畑 ５７７－４　電話番号／ＦＡＸ番号：0799－32－0601　メールアドレス：info@hanaoka-noukeien.jp　注文方法：ホームページ上のお申し込みによる注文　主な商品：野菜、または食品等　価格：商品毎に記載　商品代金以外の費用：配送費　消費税：8%','商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2015-11-02 07:07:05.562873','2015-11-02 07:07:05.562873');
INSERT INTO `sales_terms` VALUES(11,21,NULL,0,'','','2015-11-14 07:07:39.597501','2015-11-14 07:07:39.597501');
INSERT INTO `sales_terms` VALUES(14,12,NULL,1000,'販売業者名　　ほっと自然栽培農園
代表　　　　　高越基治
所在地　　　　岡山県倉敷市藤戸町天城1387-1
TEL　　　　　　090-8066-9582
FAX　　　　　　086-428-0621
メールアドレス  hot_taro_10@mx2.kct.ne.jp
注文方法　　　ホームページ上のお申し込みによる注文
主な商品　　　お米、野菜、など','　万が一お客様のご注文と異なる品が届いた場合や不良品の場合は、商品到着後３日以内にメールにてご連絡ください。良品または、同等品をお送りいたします。返品送料は、当社負担とさせていただきます。','2016-01-16 06:59:48.577050','2016-01-16 06:59:48.577050');
INSERT INTO `sales_terms` VALUES(18,5,NULL,800,'あめつち農園
代表者：塩田宏紀
兵庫県洲本市五色町鮎原下498','商品ご購入後のキャンセルは出来かねます。ご了承ください。万が一、お客様のご注文と異なる商品または、不良品だった場合は、商品到着３日以内にメールにてご連絡ください。','2016-02-12 22:36:48.918160','2016-02-12 22:36:48.918160');
INSERT INTO `sales_terms` VALUES(19,30,NULL,0,'
販売業者名　　　　　　　株式会社日和産業
代表者および運営責任者　本山憲誠
所在地　　　　　　　　　埼玉県飯能市大河原423-1
電話番号　　　　　　　　042-978-9839
FAX番号　　　　　　　　 042-978-9839
メールアドレス　　　　　info@hiyori-farm.com
注文方法　　　　　　　　ホームページ上のお申し込みによる注文
主な商品　　　　　　　　野菜
価格　　　　　　　　　　商品毎に記載
商品代金以外の費用　　　0円
消費税　　　　　　　　　商品代金に含む','
商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2016-02-19 04:13:58.777582','2016-02-19 04:13:58.777582');
INSERT INTO `sales_terms` VALUES(30,14,NULL,500,'','','2016-04-21 11:43:05.522278','2016-04-21 11:43:05.522278');
INSERT INTO `sales_terms` VALUES(31,33,NULL,500,'販売業者名：純天然舎
代表：後藤純子
所在地：神奈川県横浜市都筑区すみれが丘17-51 
メール：purehoneyfarm@yahoo.co.jp 
FAX番号：045-593-5187 
商品価格は送料を含みます。','商品購入後のキャンセルはできかねます。ご了承下さいませ。 
万が一、お客様のご注文と異なる商品が届いた場合や破損して届いた場合は商品到着後３日以内にメールにてご連絡下さいませ。 
ご指定の商品、または同等品をお届けいたします。 
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。 
お客様都合の場合はお客様負担となります。','2016-04-24 00:05:36.294504','2016-04-24 00:05:36.294504');
INSERT INTO `sales_terms` VALUES(32,26,NULL,1066,'販売業者名：里山農園やまぐち
代表者名：山口　敦央
所在地：島根県鹿足郡吉賀町田野原738
連絡先：080-5425-5475','商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品がとどいた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は不良品交換誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2016-04-28 08:27:07.206828','2016-04-28 08:27:07.206828');
INSERT INTO `sales_terms` VALUES(40,36,NULL,700,'販売業者  室田農園
生産農園  室田農園
農園代表  室田歳明
農園所在地  岡山県瀬戸内市牛窓町鹿忍168
電話  090-7978-1026
メールアドレス 
zero-farm@docomo.ne.jp','購入後の返品はお断りいたします。万が一不良品であった場所、商品到着後3日以内にメールまたはお電話でご連絡ください。','2016-06-09 05:26:13.312604','2016-06-09 05:26:13.312604');
INSERT INTO `sales_terms` VALUES(42,38,NULL,800,'■販売業者  農enファーム
■販売責任者  伊藤　雅史
■所在地  048-1622 北海道虻田郡真狩村字加野405-7
■電話番号 0136-45-3589
■FAX番号  0136-45-3589
■メールアドレス  nouenfarm@gmail.com
■ホームページ http://nouenfarm.com
■取扱商品 農産物および農産物を主原料とした加熱加工品
■販売数量 自然栽培ちょくはんショッピングサイトに表示されている在庫情報(売り切れの表示含む)はあくまでもショッピングシステムが出力する目安量となります。
正確な在庫状況はお問い合わせください。
■商品代金以外の必要料金  　全品送料800円（基本的に6-9月の農産物はクール便での発送になります）。
在庫切れの際はこちらからご連絡の上、注文をキャンセルさせて頂きます。
■引き渡し時期 迅速に対応するようこころがけております。できるだけ、ご注文頂いてから収穫し発送するよう心がけております。悪天候などにより発送が遅れる場合がございます。
また、郵送業者の繁忙期には通常より1日程度遅れることがございます。','■ 返品・不良品について
返品期限・条件 商品の性質上、お客様のご都合による返品はお断りさせて頂いております。

1.商品に瑕疵がある場合
2.当方の過失によりお客様が注文した商品と相違する商品が届けられた場合
上記に該当する場合「交換」となります。
返品送料  お客様都合のご返品の場合はご容赦ください。
ただし、不良品、誤配送での交換は当方負担とさせて頂いております。
不良品 万が一不良品がございましたら「購入時期」「購入商品内容」と「賞味期限」（加工品のみ）をご記載の上、メールアドレスnouenfarm@gmail.comへご連絡ください。
当店の在庫確認の上、交換させて頂きます。
※在庫切れの場合はご容赦くださいませ。','2016-06-26 07:04:48.142240','2016-06-26 07:04:48.142240');
INSERT INTO `sales_terms` VALUES(44,15,NULL,0,'販売業者名   ずくなし農園
代表者及び運営責任者   中村 真仁
所在地   長野県千曲市若宮1305-191
電話番号   070-6963-9191
FAX番号   020-4663-5464','ナマモノにつき、原則返品は受付していませんが、こちらの不手際または配送業者による商品の破損等ありましたら、到着後3日以内にご連絡下さい。また、到着時の写真を撮り証明として下さい。','2016-07-14 16:02:43.404607','2016-07-14 16:02:43.404607');
INSERT INTO `sales_terms` VALUES(45,39,NULL,0,'','','2016-08-18 05:00:31.020397','2016-08-18 05:00:31.020397');
INSERT INTO `sales_terms` VALUES(47,37,NULL,1000,'社名  今日はいい天気だFARM
所在地   066-0005北海道千歳市協和443-6
電話番号   Tel:090-2342-7436/Fax:050-3730-1388
代表者  松島裕太(おたま)
事業内容  ・農作物製造・加工・販売','','2016-09-16 13:42:51.223665','2016-09-16 13:42:51.223665');
INSERT INTO `sales_terms` VALUES(48,11,NULL,700,'例：
販売業者名　　　　　　　Red Rice 自然農園　代表　赤穂達郎
所在地　　　　　　　　　京都府木津川市加茂町
電話番号　　　　　　　　
メールアドレス　　　　　akou333□yahoo.co.jp    □を@に置き換えてください。
注文方法　　　　　　　　ホームページ上のお申し込みによる注文
主な商品　　　　　　　　野菜、米、加工品
価格　　　　　　　　　　商品毎に記載
商品代金以外の費用　　　配送費
消費税　　　　　　　　　8%','例：
商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2016-09-16 14:31:47.305676','2016-09-16 14:31:47.305676');
INSERT INTO `sales_terms` VALUES(49,25,NULL,0,'','','2016-09-22 03:53:04.156005','2016-09-22 03:53:04.156005');
INSERT INTO `sales_terms` VALUES(51,40,NULL,0,'販売者名 :     とんぎりやま農園 　オノヒロノリ 
所在地 ：        香川県三豊市三野町吉津甲３７２ 
連絡先 ：        080-5524-7351
E-mail：           tongiriyama@gmail.com','  
商品購入後のキャンセルは出来ません。ご了承下さい。 
万一、お客様のご注文と異なる、不良品の場合は商品到着後３日以内にメールにてご連絡下さい。 
収穫状況を確認の上、ご指定の商品、または同等品をお届けいたします。 
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。','2016-10-10 13:35:29.289030','2016-10-10 13:35:29.289030');
INSERT INTO `sales_terms` VALUES(52,24,NULL,700,'例：
販売業者名　　　　　　　山徳製茶園
代表者および運営責任者　山崎徳哉
所在地　　　　　　　　　京都府木津川市加茂町例幣部屋軒11
電話番号　　　　　　　　090-3168-5405
FAX番号　　　　　　　　 0774-76-3662
メールアドレス　　　　　me@yamatokucha.com
注文方法　　　　　　　　ホームページ上のお申し込みによる注文
主な商品　　　　　　　　お茶、お茶を使った加工品
価格　　　　　　　　　　商品毎に記載
商品代金以外の費用　　　配送費
消費税　　　　　　　　　8%','商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2016-10-30 03:10:22.734863','2016-10-30 03:10:22.734863');
INSERT INTO `sales_terms` VALUES(53,42,NULL,900,'販売業者名　ビオアグリ
運営責任者　柏木大樹
所在地　　　　兵庫県淡路市岩屋924‐1
電話番号　　 090-7734－1911
アドレス　　　 hkashiwagi@bioagri.jp','商品購入後のキャンセルは出来かねます。ご了承ください。
万が一、お客様のご注文と異なる商品が届いた場合や不良品の場合は、商品到着後3日以内にメールにてご連絡ください。
収穫状況を確認の上、ご指定の商品、良品または同等品をお送りいたします。
返品送料は、不良品交換、誤送交換は当社負担とさせていただきます。
お客様都合の場合はお客様負担となります。','2016-11-16 09:25:25.298723','2016-11-16 09:25:25.298723');
INSERT INTO `sales_terms` VALUES(54,9,NULL,1000,'','','2016-11-30 11:22:49.125804','2016-11-30 11:22:49.125804');
INSERT INTO `sales_terms` VALUES(55,43,NULL,600,'','','2016-12-04 00:02:21.066298','2016-12-04 00:02:21.066298');
CREATE TABLE `pgs` (`id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, `category` varchar(255) NOT NULL, `variety` varchar(255) NOT NULL, `method` varchar(255) NOT NULL, `description` text, `net` integer NOT NULL, `price` decimal(8) NOT NULL, `stock` integer NOT NULL, `staff_member_id` varchar(255), `created_at` datetime, `updated_at` datetime, `image` varchar(255));
CREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`);
CREATE UNIQUE INDEX `index_users_on_email` ON `users` (`email`);
CREATE UNIQUE INDEX `index_users_on_reset_password_token` ON `users` (`reset_password_token`);
CREATE UNIQUE INDEX `index_staff_members_on_email_for_index` ON `staff_members` (`email_for_index`);
CREATE UNIQUE INDEX `index_administrators_on_email_for_index` ON `administrators` (`email_for_index`);
CREATE INDEX `index_staff_events_on_created_at` ON `staff_events` (`created_at`);
CREATE INDEX `index_staff_events_on_staff_member_id_and_created_at` ON `staff_events` (`staff_member_id`, `created_at`);
CREATE UNIQUE INDEX `index_customers_on_email_for_index` ON `customers` (`email_for_index`);
CREATE INDEX `index_addresses_on_customer_id` ON `addresses` (`customer_id`);
CREATE INDEX `index_phones_on_customer_id` ON `phones` (`customer_id`);
CREATE INDEX `index_phones_on_address_id` ON `phones` (`address_id`);
CREATE INDEX `index_phones_on_number_for_index` ON `phones` (`number_for_index`);
CREATE INDEX `index_addresses_on_type_and_prefecture_and_city` ON `addresses` (`type`, `prefecture`, `city`);
CREATE INDEX `index_addresses_on_type_and_city` ON `addresses` (`type`, `city`);
CREATE INDEX `index_addresses_on_prefecture_and_city` ON `addresses` (`prefecture`, `city`);
CREATE INDEX `index_addresses_on_city` ON `addresses` (`city`);
CREATE INDEX `index_staff_addresses_on_staff_member_id` ON `staff_addresses` (`staff_member_id`);
CREATE INDEX `index_microposts_on_staff_member_id_and_created_at` ON `microposts` (`staff_member_id`, `created_at`);
CREATE INDEX `index_schedules_on_staff_member_id_and_created_at` ON `schedules` (`staff_member_id`, `created_at`);
CREATE INDEX `index_products_on_staff_member_id` ON `products` (`staff_member_id`);
CREATE INDEX `index_orders_on_customer_id` ON `orders` (`customer_id`);
CREATE INDEX `index_relationships_on_follower_id` ON `relationships` (`follower_id`);
CREATE INDEX `index_relationships_on_followed_id` ON `relationships` (`followed_id`);
CREATE UNIQUE INDEX `index_relationships_on_follower_id_and_followed_id` ON `relationships` (`follower_id`, `followed_id`);
CREATE INDEX `index_products_on_category` ON `products` (`category`);
CREATE INDEX `index_tokens_on_customer_id` ON `tokens` (`customer_id`);
CREATE INDEX `index_additional_infos_on_staff_member_id` ON `additional_infos` (`staff_member_id`);
CREATE UNIQUE INDEX `index_additional_infos_on_type_and_staff_member_id` ON `additional_infos` (`type`, `staff_member_id`);
CREATE INDEX `index_banks_on_staff_member_id` ON `banks` (`staff_member_id`);
CREATE INDEX `index_staff_addresses_on_prefecture` ON `staff_addresses` (`prefecture`);
CREATE INDEX `index_sales_terms_on_staff_member_id` ON `sales_terms` (`staff_member_id`);
CREATE UNIQUE INDEX `index_sales_terms_on_type_and_staff_member_id` ON `sales_terms` (`type`, `staff_member_id`);
CREATE INDEX `index_pgs_on_staff_member_id` ON `pgs` (`staff_member_id`);
