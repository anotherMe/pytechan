BEGIN TRANSACTION;
CREATE TABLE DAT_symbol(name,symbol,ISIN);
INSERT INTO `DAT_symbol` VALUES('A2A','A2A.MI','IT0001233417');
INSERT INTO `DAT_symbol` VALUES('Ansaldo STS','STS.MI','IT0003977540');
INSERT INTO `DAT_symbol` VALUES('Atlantia','ATL.MI','IT0003506190');
INSERT INTO `DAT_symbol` VALUES('Autogrill','AGL.MI','IT0001137345');
INSERT INTO `DAT_symbol` VALUES('Azimut Holding','AZM.MI','IT0003261697');
INSERT INTO `DAT_symbol` VALUES('Banca Monte dei Paschi di Siena','BMPS.MI','IT0001334587');
INSERT INTO `DAT_symbol` VALUES('Banca Popolare dell''Emilia Romagna','BPE.MI','IT0000066123');
INSERT INTO `DAT_symbol` VALUES('Banca Popolare di Milano','PMI.MI','IT0000064482');
INSERT INTO `DAT_symbol` VALUES('Banco Popolare','BP.MI','IT0004231566');
INSERT INTO `DAT_symbol` VALUES('Buzzi Unicem','BZU.MI','IT0001347308');
INSERT INTO `DAT_symbol` VALUES('Campari','CPR.MI','IT0003849244');
INSERT INTO `DAT_symbol` VALUES('CNH Industrial','CNHI.MI','NL0010545661');
INSERT INTO `DAT_symbol` VALUES('Enel','ENEL.MI','IT0003128367');
INSERT INTO `DAT_symbol` VALUES('Enel Green Power','EGPW.MI','IT0004618465');
INSERT INTO `DAT_symbol` VALUES('Eni','ENI.MI','IT0003132476');
INSERT INTO `DAT_symbol` VALUES('Exor','EXO.MI','IT0001353140');
INSERT INTO `DAT_symbol` VALUES('Fiat Chrysler Automobiles','FCA.MI','NL0010877643');
INSERT INTO `DAT_symbol` VALUES('Finmeccanica','FNC.MI','IT0003856405');
INSERT INTO `DAT_symbol` VALUES('Generali','G.MI','IT0000062072');
INSERT INTO `DAT_symbol` VALUES('Intesa Sanpaolo','ISP.MI','IT0000072618');
INSERT INTO `DAT_symbol` VALUES('Luxottica','LUX.MI','IT0001479374');
INSERT INTO `DAT_symbol` VALUES('Mediaset','MS.MI','IT0001063210');
INSERT INTO `DAT_symbol` VALUES('Mediobanca','MB.MI','IT0000062957');
INSERT INTO `DAT_symbol` VALUES('Mediolanum','MED.MI','IT0001279501');
INSERT INTO `DAT_symbol` VALUES('Moncler','MONC.MI','IT0004965148');
INSERT INTO `DAT_symbol` VALUES('Pirelli & C.','PC.MI','IT0004623051');
INSERT INTO `DAT_symbol` VALUES('Prysmian','PRY.MI','IT0004176001');
INSERT INTO `DAT_symbol` VALUES('Saipem','SPM.MI','IT0000068525');
INSERT INTO `DAT_symbol` VALUES('Salvatore Ferragamo','SFER.MI','IT0004712375');
INSERT INTO `DAT_symbol` VALUES('Snam','SRG.MI','IT0003153415');
INSERT INTO `DAT_symbol` VALUES('STMicroelectronics','STM.MI','NL0000226223');
INSERT INTO `DAT_symbol` VALUES('Telecom Italia','TIT.MI','IT0003497168');
INSERT INTO `DAT_symbol` VALUES('Tenaris','TEN.MI','LU0156801721');
INSERT INTO `DAT_symbol` VALUES('Terna','TRN.MI','IT0003242622');
INSERT INTO `DAT_symbol` VALUES('Tod''s','TOD.MI','IT0003007728');
INSERT INTO `DAT_symbol` VALUES('UBI Banca','UBI.MI','IT0003487029');
INSERT INTO `DAT_symbol` VALUES('UniCredit','UCG.MI','IT0004781412');
INSERT INTO `DAT_symbol` VALUES('UnipolSai','US.MI','IT0004827447');
INSERT INTO `DAT_symbol` VALUES('World Duty Free','WDF.MI','IT0004954662');
INSERT INTO `DAT_symbol` VALUES('YOOX','YOOX.MI','IT0003540470');

-- End of Day data
CREATE TABLE "DAT_EoD" (
	`id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`symbol`    TEXT NOT NULL,
	`date`  TEXT NOT NULL,
	`date_UNIX`  INTEGER NULL, -- date expressed in seconds from epoch
	`open`  REAL,
	`high`  REAL,
	`low`   REAL,
	`close` REAL,
	`volume`    INTEGER,
	`adj_close` REAL
);

-- Link a symbol with indexes
CREATE TABLE DAT_index(name,symbol);
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','A2A.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','STS.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','ATL.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','AGL.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','AZM.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','BMPS.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','BPE.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','PMI.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','BP.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','BZU.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','CPR.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','CNHI.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','ENEL.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','EGPW.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','ENI.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','EXO.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','FCA.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','FNC.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','G.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','ISP.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','LUX.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','MS.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','MB.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','MED.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','MONC.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','PC.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','PRY.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','SPM.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','SFER.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','SRG.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','STM.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','TIT.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','TEN.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','TRN.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','TOD.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','UBI.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','UCG.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','US.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','WDF.MI');
INSERT INTO `DAT_index` VALUES('FTSEMIB.MI','YOOX.MI');
COMMIT;


-- indexes

CREATE  INDEX `idx_symbol_date_UNIX` ON `DAT_EoD` (`symbol` ASC,`date_UNIX` ASC);

