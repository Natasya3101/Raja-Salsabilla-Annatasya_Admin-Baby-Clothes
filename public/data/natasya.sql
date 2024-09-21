CREATE OR REPLACE DATABASE natasya;
USE natasya;

CREATE OR REPLACE TABLE `admin` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`username` VARCHAR(36),
`password` VARCHAR(36)
);
INSERT  INTO `admin`(`username`,`password`) VALUES 
('admin','123');

-- CREATE OR REPLACE TABLE `account` (
-- `id` INT PRIMARY KEY AUTO_INCREMENT,
-- `username` VARCHAR(36),
-- `password` VARCHAR(36)
-- );


CREATE OR REPLACE TABLE `pakaian` (
`kode_pakaian` INT PRIMARY KEY AUTO_INCREMENT,
`nama_pakaian` VARCHAR(36),
`harga` VARCHAR(20),
`stok` INT,
`deskripsi_usia` VARCHAR(30),
`foto` VARCHAR(100)
);

INSERT INTO `pakaian` (`kode_pakaian`, `nama_pakaian`, `harga`, `stok`, `deskripsi_usia`, `foto`)
VALUES 
(1, 'Baby Infant Boy Girl', 50.000, 30, '0 Sampai 3 bulan', 'd18fb1fe2f7fd196384159805d93db0f'),
(2, 'Kangaroo Hooded Boy Girl', 80.000, 10, '3 sampai 6 bulan', '59c1a804cf685a8b46d6f7000b194105'),
(3, 'Jamie Kay Girl', 75.000, 10, '3 sampai 6 bulan', '07029c16339ebef42a7f41ef730fd473'),
(4, 'Layette Boy Girl', 90.000, 20, '6 sampai 9 bulan', '2afab5f5f601852c24db038fe3c5620b'),
(5, 'White Girl', 75.000, 20, '3 sampai 6 bulan', 'acd0d60d24b52be43924334ff86d502b'),
(6, 'Emile et Rose Boy', 120.000, 10, '9 sampai 12 bulan', 'af681807feb9689646dbc7f9ac94e7c2'),
(7, 'Baby Sleepsuits Girl', 50.000, 10, '0 Sampai 3 bulan', '4b50947d3899aae00340adac400f43a9'),
(8, 'Olive Garden Boy Girl', 75.000, 10, '3 sampai 6 bulan', 'a343a3d03efa65e85efbc7b4108e1109'),
(9, 'Cute Cartoon Little Duck Boy', 120.000, 10, '9 sampai 12 bulan', '95fed40eeae00c4e347b1cc8d9545bf7'),
(10, 'Bear Casual Tee Boy', 85.000, 10, '6 sampai 9 bulan', 'd6390f05d127a9ac7aee731a6beea518'),
(11, 'Winnie De Pooh Boy Girl', 50.000, 20, '0 Sampai 3 bulan', '0f58ae9f6600ae6d622a476a2da52e77'),
(12, 'Pink Daisies Girl', 50.000, 10, '0 Sampai 3 bulan', '8afbae03121eec4795857bc9bb74486b'),
(13, 'Miracle Sewing Pattern Boy', 120.000, 20, '9 sampai 12 bulan', 'baf8b41c39d7e79a5cbf7cfebd456cf1'),
(14, 'Dusty Girl', 75.000, 10, '3 sampai 6 bulan', '80d4b1582f297f032167a74391f9d163'),
(15, 'Duck Color Block Boy', 75.000, 10, '3 sampai 6 bulan', '0ccff003cc05ac4d82eb134a2cfd54f6'),
(16, 'Egg Pink Girl', 50.000, 10, '3 sampai 6 bulan', '1156b3167cbd86778d0981155f31db40'),
(17, 'Little Planet Boy', 90.000, 10, '6 sampai 9 bulan', '419dbcc348b99aee68dcae7f213d9f3d'),
(18, 'Ribbed Floral Girl', 90.000, 20, '6 sampai 9 bulan', '43a8a5092776dddd2a61d8c7624d697e'),
(19, 'Toddler Girl', 120.000, 20, '9 sampai 12 bulan', '680144c4d0ba98b4546ad0e3bf1e0169'),
(20, 'Weixinbuy Boy', 120.000, 20, '9 sampai 12 bulan', '70dba48e817ea965ef2faeda271419e9'),
(21, 'Olive Boy', 90.000, 10, '6 sampai 9 bulan', 'b0cc6168cc9fcc84f712a111ad073622'),
(22, 'Daisy Tulle Girl', 75.000, 10, '3 sampai 6 bulan', 'b8948d7e4e242e806f5ceca7b5f59916'),
(23, 'Jack Milly Boy', 50.000, 10, '0 Sampai 3 bulan', '36368e10a59190c1ed89230e2e249ee5'),
(24, 'Peekaboo Girl', 120.000, 10, '9 sampai 12 bulan', '5f78144c132ee9340cf54669bde462fb'),
(25, 'Dumbo Girl', 90.000, 10, '6 sampai 9 bulan', 'ce53520b41e9aacc080ccbbf56ee25ff'),
(26, 'Little Strawberries Girl', 50.000, 10, '0 sampai 3 bulan', '2873c9f276d354f16c145ec6124de439'),
(27, 'Let Love Grow Girl', 75.000, 20, '3 sampai 6 bulan', '2d937744aba283ef72ec4f3fd7846d39'),
(28, 'Little Lion GIrl', 75.000, 10, '3 sampai 6 bulan', '5947cfc979dd2a9c434d7f8033670301'),
(29, 'Kissy Girl', 50.000, 20, '0 sampai 3 bulan', '0e2e01249b1ae7980c84d4c600b9aed5'),
(30, 'Bonjour Paris Girl', 120.000, 10, '9 sampai 12 bulan', '73453b78d071c6f36f05bb545f6acab3');

