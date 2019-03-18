-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 07:55 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modernblog1`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_10_185649_create_tbl_admin_table', 1),
(4, '2019_03_16_063140_create_tbl_catagory_table', 2),
(5, '2019_03_16_181451_create_tbl_blog_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_image` blob NOT NULL,
  `admin_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_image`, `admin_name`, `admin_password`, `created_at`, `updated_at`) VALUES
(1, 0x89504e470d0a1a0a0000000d49484452000000dd000000d90806000000a455350c000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400001ba049444154785eed9dfd8f17c77dc7ef2ff0afcd2ffce01ffd07544a147eca43ebf6d2821320e5a1401d5f234e96a1014b98c8e4e473a3b329d5893a328a70655b710cc7b56024448d4971fc401c6c8131018787c33cc5ae80d690e3a00a6e3e9dd9ddd99d999ddd9dd987b9ddbdf7495f71f7fdceccce7ce6f39af7673eb3fb6580f0030bc0025e2d30e0f56ab8182c000bd0c0d9a94b84977f1b5cb87495eedcfddf4217bcf5fbdb74e2d419fae0c353ad78f1bef03ee1a7bc050666eedc25bcfcdbe0f7d333c4c12bfae14efe3f9fdf6acd1cf1bef03ee1a7bc0500dd2c2e3a3cc228fae10ad7b64591f7093fe52d00e8009d33d480ae3c70bc26a0037480ae1a43ceb5011da00374ced854ab00e8001da0abc690736d4007e8009d3336d52a00ba3900dda5cb5768e5aa55f4eebb479c0133654e91480174b538d26ca4e57d1d1970e8eebbefbee055077880ce13743b77ff3b2d5bf908fdd9e0b7e91b7fb130f7c5cb0c2e5c42afec9cec2c103e20f4051d1f0b87ad2ef0009d07e8383c8b96ada6b3e7a6ac21e265791d0eab0f07eee2357c40b777ef6b4168397ffefce035303010c0777eca7e2e75db023a0fd07deba1bf71024e4c12078fab631781f0d1e726a1e321e5e0e0b702c8f8eb4fbef4a5e025feae1266023a0fd0f1705176c2f17fd99e195ef2cfe4b27a5ddd995f7e2423547d64279db14c72fce269dec633f40bcbf23e80b2b94653d071e00460eb376c08544d0e2f0ffcc7eb95164240e7013abe87b371225319ebba879f09401e39ec7ef331a0536d26144ec0252752aa02c7e718d0f519bab33b69559cb419a697cf26ce75e667c391da3e43239ad2259f852abaea67e7d9a2719e02558d15f42d1a893fcb06bd2869c43f7ff0af16955a949a503abe87e321245738b1088a50d304dc9f3ff8a0734613d07982cec6f9b2ca58a9644ae94228bef1f45b81f3842045e04530863045e54478197c96002aab60d84614865a2aabedb8adc6a885bf4d40c793261c3a9b4409875107d4661c80ce1374fa6498c246dbf78c13ab41a040c69d55024dffcc185e46ed85d0a8b0f210560130672fc893417ffdeda5b9472497ae5c698dd2f10c25dfcfd9c0c3cbf0b25ced6ccb23bcac069cf55306b630d9962b059d5034a67c3a740a4071481a2a5a08a450be28c4646d04ef472a5ae470a73e3e430b162da36ffee543317cfc77fe1effaca87ed6e74d285d19e8781d973140e9aa8167751b982d4cb6e54a4167a974452a283e5fc5f67761786a97b8e18af7d0e2150178fcc57f7739b7345da709e85cc24b1e82f2f092d7b1b50394ae1a704e4a67bbb73195b39a507d8f2514cb714f279228611654ecf7a4244c1c76aa89199b3e4e5db848df5dfe70f0e2bfdbd4c92bd30474a6444a561f78b28543c7ebb88c054a570dbcd62a5de004a5b297510819653d479ed68f2222101dce015d1cd2a56c13d0f1ebeb4706a63ef14c26078e9775e93394ae1a70d64a673ae0b60d258b0ec75d27bc7a79352b5abd3dbbf0d45778c9af633a1c17d7e721a550389e44e1655d6d00a5ab069e95d22d5ffdf7a9fd8b0d747ccfc36f7c769dd4a6cacb677b6db87ba529a513e0e5dd06c63f2b031c94ae1a70d64ac76f5a5eb2ecef14f08aa0e3c0f13a78d2205b099b844e2c5cfa0dcf3c69e2ba87d31741285d35f0ac948e1b9dc3c36f7cb67db487abe3cf27fead352ad7947a5669d7077455fa975517d07982ae89c99beb6d02ba6acedbd5dad64a37d7016962fc80aeabd854eb37a0b33c1c0774c9de14e125a0ebecbe114a57cd79bb5a1b4a07a5735eb4a074d5700774800ed05563c8b936a0037480ce199b6a15001da00374d51872ae0de866093adbff1412ff3f9db34fb7be02fefbe359faef9f6dfffbe363274eb7ef7f62fd0dfe27d62a640f54a98cbacd5b20f83fc79993b7e6ff1c677dc1ff395e6dde015d35fba1362ce06c0140e76c32548005aa5900d055b31f6ac302ce160074ce26430558a09a05005d35fba1362ce06c0140e76c32548005aa5900d055b31f6ac302ce160074ce26430558a09a05005d35fba1362ce06c0140e76c32548005aa5900d055b31f6ac302ce160074ce26430558a09a05005d35fba1362ce06c0140e76c32548005aa5900d055b31f6ac302ce160074ce26430558a09a05005d35fba1362ce06c0140e76c32548005aa5900d055b31f6ac302ce160074ce26430558a09a05005d35fba1362ce06c013374fffd5ff47fbfdc4b5ffceb28ddfba747e9de0f06c317fb9dbfc73f2356063fb0002ce06e01153a06d217affe730299802de35f5e16f0b91b1d35e6b60562e8fe78f208dddbb4c41ab858fd581d5e173fb0002c60678100ba3f1e7dc31d364dfd781bf881056081620b0c040a571046da7e0ec52b36384ac00203a542ca2c4859a84977a61dac7a9a7e34ff019a77ff03b4629f4335aba2fb69056bb74cdbafad0aebcd5bb5bff04ae79efa3a7de5a9d385e5500016101618b0553153b92089c25ef2675ffc9c2557ac7fba0d9d8013d0594f380a320b54832e32a10ea47d46b349e8cacfafadd201baf2369ecb351b812e38c7b3fa4943c7c3b520b49bff633ab76f28fc3d787d9d7e744a6d3486439451c2c18cf0f2d48fe92b4a9be9720a744a1f86e8b5a00b49bf4dfd8bc720aec3c762658fb0d0e98fcfd2ceddafd1cccc1d875a28da150b3402dd172f3c6539fe1ce862300474fc5fe1f44429e052e099a04bde4b6049da17fbcaccb6c56290035d0ab812e07df49b8f69fcb91df4f22b9325c03b4a630bd6d1c415690aaeeca1ef2f1827e3c14ede67711357696278098dbda74d2baf3bbc872ecb6d04bf2fa141eda5d4cd2833a8f5fbf2e43aa59dd4f5898f55be56de18d37dfafee455a2ccbea4dbcaed8f6867cb51c54847b6f0ebaa6d3941a7efe144eba9fd1ebb73c5ee271fba38b922a94df89e212c8dcb0830d3d0254024f0ca90a4a193d4356e3f79cf145ea6de8b9535add479363afcd691003cae787ff8c33d3b73f252ef8dd3d896710a1c4afc54868e883b9cd2266b3b7e2f059deeb0211c313416a0070ece818e0711b691f4416b33ea8f5a27aa5c62fcfaf50bfb135c83d9688bd6e761f65e25e8a23108c832a163d94dbb9f82f0326e242704cccc5066d751131f05e1a5e883011e1374bad25549b21c78fd3f03f0f8bf763f5c91b8ca3187941db684d3a5ae27544d51bf48510ba16395e4fa85d071a00caa55781d83caf3fe9619bf52c7be3f635ba42883b5112c807d818e2823548cf74f3a4c09e02a0869f08d89144be8ccfb3d3534b6038802d89ca0931c9b873556ca520880e8ad005a520f0176210cbc8e0444d135995a1b158be43037fcdd5c4eb37009e81465b3e98fb8068f34a230fcf2e4384dbc970eed73c3cba2703253e9ea082f95e443d1999b9ad808c3445be8ea553a1d28797fe8a27a65c24b2504e48e22f617259cceb430c8ed2bd7b2824e82366b1f252096fbae7544594cf867bc6cbcafd3f6b24a78adede914dba4f77b0acc36fd1136e0ff066df3f132b536d83e1fba8270320bba5a1229b9d09920d495ac863d9d9c0dcd51bae410ddaca6b64710c29ee51229d1ca6f4a2cd4045d12221a544f845099d772543a2d2111da2623a1a3c06500cf65fc01c45a1b99d049fd89afc1de0bf6756cbc7c0c45d0b92a5b1674b51d19c4ab5c1e407276533e5ab0cc5ece67779468fb42d7f05264420385558e18d4bed9de7553eac820b5e7228a55c1c5e972635f69f5ceda33665d4b0ed18ac2cb20142dd8d365809052c2127bba304b295fdfa23fd2988ef07d1d0b2d93ec684ef65287c8f5ef38c162fdac5df9440aef5b3a3d9f6425d3e165341ae59c8e972f1f5eeafb4a53b635eb8c31d7b74b7cc81d259552178e591b7461c632373b6abc56c9ec65caf1f3b397cabe51b6a1f3f8a3a841525b3388527fe46bc86a59a8748ee1a449e9dc6e032be15d15aa24904ae9fb9229fd0add68a06aa440a996a390ee7df3d959b0e7cbda5f19c33b7681a07cce3960467b76e774da59a0b25f339c13a6cee9f2f6748ee794d138946392bcfe64ed6b8dd06d5a5cdb5306f7585b6e373c37e07f794d2a2aa785a58e778d78ee392ed7230bccbd477b4ce001b81eb974fb87828758db3f47e861cf2ca07d5d4389509385947878b5675e81e1346a81f41713b1e7e16c9fb10b92264e0fad363a16340e0b74c202f95fc1c79e16487d051f7b0f5fc1d789b945275b6a017cd96c4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf05005d7fe716236ba905005d4b2706ddeaaf050666eedc25bc6003f840be0f9c9dba54db2a00e8b0e860d1b5f00140676124acdc50ef3a7d00d0013aa893671f00749e0d5ee78a89b6baa9c0800ed041e93cfb00a0f36c70a85337d5a9ce790374800e4ae7d907009d6783d7b962a2ad6eaa26a00374503acf3e00e83c1b1cead44d75aa73de001da083d279f60140e7d9e075ae9868ab9baa09e8001d94ceb30f003acf06873a75539dea9c374007e8a0749e7d00d07936789d2b26daeaa66a023a4007a5f3ec0380ceb3c1a14edd54a73ae70dd0013a289d671fe83874bfa59f7c6f090d7e6f079df26cb83a573eb435b7d4af7bd0ddbc4c4727b7d1ba35ab69e102069c782d5a4d43ebb7d1c489cf2c57eecfe8b8a19d854bd7d2baad7be9e8a55b96ed9471981bb47fe3f2a0efabb7ffd6ea3a47b7ae4ec62a8fdbf0bb6d9b80bdccdc55afd329e8ae7df03c0d15381c77e4c54f1ea4dfe529dff5776864a504acb1cde534fcaa1d10aece7bedc0e678c1b003e4337a654d517f93cfeddaacee3caee346f9d0e6dd81eef40e5a6d019c50be854f1ea66b46f0a290d4aaade5b4e9d00d2b25b275a86b07461585b603e4306db2ea6f089e5d9b80ce76ceea2ed711e86ed09ef5f24a3f442393c7e893ebc99eeef8f593b46774480ac18668fc44dab1aeed7b4209d3968deea7e3d7a350f2e60d3a7ee8791a5e245d6bcd4bf4492dfbc55b7476f2093524b605e4f4f3b42c826ef1d663b52e02753b14da2b5eccba01ddf5bdb42e5ee98769fcb418583a91726adb700cd5c2d15f6b0e2a8769cbe9f17d19fbbfeb0769530c9e195e27e7ba79927efa98794f66a54a2c1c150abee940f1a43af5ad9605057d72b17937a09343cbf57ba5b0d190bd94015df9bc9ad5d43e3b9ee3709fbcb03676742b308c6ddda0a3db37d06225e1b3814636268a6cd3769244594baf7c0a077771f03696ed1f74792bf7a1d11c15d49cf9d3dd49d266cdeefcc44ce63599624ac02d7eec253a7ef32e9dda9ea8713174923a2fdd4647a14c9d0fafbb01dd9d5fd3481ceee58797792bdb59c9d9d74d162548e46b8ed2c152ce1e41b7724c39ca70834e4aa2b0e4d0cca72769626c032d8bedb19c16afdc40ff3879b2e4c200e5f4ad861d81ee2e1dddaa26491e7fe11d2591627338feee687836c65f9b0e15399b9ce57c8226ae1795377d7e998e1bce0d9da03b97646d17af61b0e5653119dc07117eb65e093b03ddcc9d9c54ffd2cdb4e7c40dfabc408df63f29b292c3f4933819930d936b79db15d3093a298912df089007dea251da5f6a8128b3a8a08eed9ccbe53a041d9fe029da3fb6564d4c280eb89c8636eea083e7cc7793b842e45ade76025ca053ef446107f6db0e27471c7c91b9ceeeac39b4831e970efb17b29b03cc679480c4768e9a2cd731e822a7b93945875fd84ac32b9370515501f3dd24ae10b996b79d287be82c8f3802f8e4630e3b25b7ed2fcad5bb587513ba388c8c424e76bfe4e38f0d6907cfec6e92036ab2c41522d7f2b6ce690f9ddb64abed4eb57e6f636bafbe95eb0774e229037687cac446e9107ad1181d96f679ae10b996b7758ea6a09bf9d558b2f0b010d3b63f28e7b6b855b557bfa00b00bb4113d22d63729632c95e2ea7915f1519ba8eeca5f91a8d4127df4400e85abbe8f410babb748ddde328f678f2e1b37c4ef778e1ed54c7e8d9a522db59f69c0ed05555853ed6ef04744998a72b94f921d62ce866a43b520a6f1caee58e14cfd0b12718c462b36c5b338f25f51102df63ea0474b2422d1c7d470a1bccd01d960ec1953b4f1ceebd94c12d04d4f16e15ebf0520e172d9e7648c66d133e1785d7f8bc29183b01ddcc89e4d196c105723a3c0dddb55f8e49776daca59f5e929d477d1834f3be4725fd5ebf035b43a7dcfe3644cf7e9003820ce84adca3d9143075b4db0de8b4e4c8e082d534bc5dbd0d8c3f4f77709b7a47bfe99038fd3c1dff6a86e868c1f43c1d7b5221ef69843293600f9d7a73f4e082f039c2b3e2f93fa6b09f5f9f625f5f212f34ec9125eda8a44c1f51a739a5ef0874fae1afc5571764de0ec51224855fd520dacf7e723cd967ba3fa9ed025deeed6f86dbc170374a73b0d4b51075073abe6f3abd9b86e38c620e78ec5ecc897379a1984d3bf9df91e20f3a368ee021d8acbb6f123b2c1b7b07b77f39eeafeb02c9a59d6e41179dc39d62f71a8eb03b5016cb5fabb0803de2b2e6097ad6fa1197ac6f031ba2e1d197e870c1b78179852e18f72dfae483bdf4ec7a76efa93c6efe2d6839f79bba3803cafa51c90e42271b06df7b0950fc8052a79d015d07c2913a271c6dcd3ea4800ed0b5f676a9be2e101d876ef657adbe3a06c6d59c6f013a281d94ceb30f003acf06878234a7205db12da00374503acf3e00e83c1bbc2bab31fad99c22033a4007a5f3ec0380ceb3c1a120cd2948576c0be8001d94ceb30f003acf06efca6a8c7e36a7c8800ed041e93cfb00a0f36c702848730ad215db023a4007a5f3ec039d806e62c50334effeecd797377f68ef38c746e9cb2bf646e53fa41f7ef50172aa5f7a82f6d2d2af8ed2c9d2f52385987c98d9e26bf4c363198ac1c79763ab79f73f4c1355fb60533fe8a7a76bd9f4a74565ba035d1d0e7b27846c5e0c9dbf50275838ea188325744b27fd8dad2b615d5bfa09e83cad80800e8b8080be7fd0054a2085a2b1bab0f04e09bb78e8a385974168c642b74935440bc24f256c4b8777a91038be6ea4aef1b5a5ba7a28685260653cacee66bbf0d25ae9747b69a1ebc9cd5f6391c1681821f031f03e8ad051abab5c53092f859df726edf0b652caafd94a5c57b64be6fc7607ea7e41970abdf470d2fc77bca78b2148f622094cfa7bdadf8a0345804bce9252bae85ac97e32ea9bdc4ee460b133c7fd2bded35941670855c3f126630ba0638028fb5ee1f8525ff57a3198412491c0a48f25357e6dbf1d83cedb299cdf6e80d71de83293038903860e92b779b783cee460e9555c5c37044c77721db2a2bf83d023822a6ccbbcff0cc7580c5d66e2495f087475d51cdb6853d3be52e9bb0044cc85792c8a4d4c8917b1c8447d2c9e5f40679f512cd85759ef87a470cdbcd2db41a7d41521a79c2dcc4c666821acae045aa89bce9acae1ae19e6f46aaf399aeefc967b56353cd616323d0ccc0124b69d31bc54b3ccf2bc9ae7589bafc2f90574fea10b1c4cdfbbc9aad00c748ac3460e9aaf6c7a1fd5e310790f995a3c4c8b800c960b74fa7e912f2c26a56b0b7485f30be866093ad9f0c2b9b3c21c5322450b158b942ec3c96da0cb3f1f6c5ae9328e4f5a0f5ddefc02ba164027f64942ed1a503ae32170047b667899755e2883566d4f579c48c9d98b4a7bc6601fe541e9d4c44b048fb6a7339eb31529bf6578edf30caf3b89148b8365d3465b559c06a04b6521ef5266c6531e43563d6fd9cbec6c294fc20868bd41974a1c25194f111114cf2f94ae5ea5cbbbb549725491e24eb2775a3633dec770f5ab21bc8c53d9d2be8c65db5259465312403fa7332d2c25cfe9f26e9b4b54d07076a92d06fea0538f16c2638af05c4f0ec30be7b785caa6ab682794cea7f4e35a6d528b8c7d6d07c0caf32340d7f109eccb22613a7feccbb91c940e90d516f6d70d7cfa69927e3ea500a50384ad85b06ea8dbd21ea0037480ceb30f003acf066fcb6a8b7ecc5ec208d0013a289d671f00749e0d0e85993d85698bed011da083d279f681b901dddbe334fd9d35c9eb6d69b5553edb44d3e7b356e2236a1bbb2e86ce7a7e77f4be5497b7295f4399d42bf4fa8b3b68fcb91db4e38d2bdd76f88b6fd28ee7f6d1fb9e9d3654acd08ebbb2bea06956fa64a7e2fd874e401141727b1783e33b029008a42d4702e79fdec2c164c0a426ec224d3fca3e53ca856d0475d8fbc1bfc1357859531bd184ccaaa3da39455bc2b0fc7e003a623f034d4f96a256b272c9bf7ff7d17cf510cac695281748c9414539837a09d8047c33bc7da18229783fa25d4ce1b8ca8d3ff72abd7e9c29c58bfb6857a07c4231e432b28a70276375ded817d58f94f298f6b7f19afb58bd5793eb5e9416009bebf385e2c537e942dc76d417de7f45e932faae2f34fadfd218123b981608a9fda8dfb1d2056d0adb260af8fea4a486a971ccce22d429a5b3828e0198077f29a50b4065cac6d54e001e01a82bddf496bc10954db2ec7091a3c82112779238ece4ce183b7b14964e7e148e4f3899f2b729d48b1c55b413387854aee0fa1738a841fb11640aac0c420d9eccbee742c7fb97f43bb9661a8854fb0cb2d076bc0db620c9fd136db2f1caf66c4348df29e86e4f5da2e915ffa0eead34c5bb7df5d36ce884ca45616208a7bc5733878521a8227c1461680497bca77b9bedef78dbe23a8feea6dbbaf2a4a09341511d507526cdf1751074c78baf1b4297802db5930a7535e70dda0cfbc761100e1bffaed4cfe97b21741230997b31bdfdbcf0522ecb7e8f169cf7276daed3bcfa750aba60df75e6024dffed0f687ad170021fff9dbfc73ecb543901870c826d782987a4dc29f4bf234709e07c3bdaffed62307365d443d23ce85210c8a055814e75b638e432429784687118cc15240ecd32a0cdeb7b5178a98486196018f6c24ae8c8e680ff1df6590ed7457f13f89ade0615b5df39e8f88002c55bb53e048fbfd8effcbdecc1466aa6294fac60028c0c98e2bd5f6e390e1957b608ba18be28cb2956f059513ad9918b942e2b1b19d53b26edef6a513a4d5994905afe2c4fe93435d700e5cabc6b520a336739b3d949e802f02e5ea5e94736062ffe7b3670110471c6d2902031653615004dd94b2d148d132815942e5aadb3f77419f0044ea48786629cd19e4eecfd64a7ce500ff3f5c3105339eab0ddd3697d0bdb89e0d621cb842e5432a56f226c362aa9bec76b4768c9fdb4b3d0154978fcb97e46a72542e25031ebfd383c94f77e7ab2443b2628bda713f0e8219238972a0b1d5fe933b297a973362dc32a921371f226236111836fea7b026c08ed9b4af2c41c169af656c919e7b896bd140b42105aea99cd60ff3b5be789e971f41fba590e25ac1787c6fa99a580cd270c667fecd2d18850fac6ec6c6f4f40d7824968d639e73674a102b627b49c1be165efa1b25f619b851bfdb0b52f940e5076fbfecf0ece1fa0ebe0a4d9aea828d74ef50574800e4ae7d907009d6783437ddaa93e3ee705d0013a289d671f00749e0dee7345c5b5daa9aa800ed041e93cfb00a0f36c70a84f3bd5c7e7bc003a4007a5f3ec0380ceb3c17daea8b8563b5515d0013a289d671f00749e0d0ef569a7faf89c174007e8a0749e7d00d07936b8cf1515d76aa7aa023a4007a5f3ec03b542f7a71b7f4778c106f0817c1f00745828b0507af60140e7d9e050014402800ed041e93cfb00a0f36c70281d94ae4ee8fe1feeb257703a4df9ae0000000049454e44ae426082, 'nasim@gmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `blog_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `author_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_counter` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_name`, `catagory_id`, `blog_short_description`, `blog_long_description`, `blog_image`, `publication_status`, `author_name`, `hit_counter`, `created_at`, `updated_at`) VALUES
(2, 'মসজিদে হামলায় ব্রেনটন ‘একাই’ জড়িত', 'আন্তর্জাতিক', '<p>নিউজিল্যান্ডের ক্রাইস্টচার্চে দুটি মসজিদে হামলাকারী একজনই বলে জানিয়েছে নিউজিল্যান্ড পুলিশ। আজ রোববার বিবিসি অনলাইনের প্রতিবেদনে এই তথ্য জানানো হয়।</p>', '<p>ব্রেনটন ট্যারেন্টকে শনিবার আদালতে হাজির করা হয়। ছবি: রয়টার্সনিউজিল্যান্ডের ক্রাইস্টচার্চে দুটি মসজিদে হামলাকারী একজনই বলে জানিয়েছে নিউজিল্যান্ড পুলিশ। আজ রোববার বিবিসি অনলাইনের প্রতিবেদনে এই তথ্য জানানো হয়।</p>\r\n\r\n<p>দেশটির পুলিশের ভাষ্য, অস্ট্রেলিয়ার নাগরিক ব্রেনটন টারান্ট (২৮) একাই দুটি হামলা চালিয়েছিলেন। হামলার ঘটনায় অন্য যাদের আটক করা হয়, তাদের সম্পৃক্ততা নেই বলে ধারণা করছে পুলিশ।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>গত শুক্রবার ক্রাইস্টচার্চে দুটি মসজিদে হামলায় নিহত হন ৫০ জন। আহত হন অর্ধশতাধিক। আহত ব্যক্তিদের মধ্যে দুজনের অবস্থা গুরুতর।</p>', 'post-image/055723ca415920d23b16017e46bf9087732c56-5c8dc0cb50dc6.jpg', 1, 'nasim@gmail.com', 11, NULL, NULL),
(3, 'অস্ট্রেলিয়া-ইংল্যান্ডের মতো বাংলাদেশও নিরাপত্তা দল পাঠাক', 'খেলা', '<p>ক্রাইস্টচার্চ হামলার ঘটনা আসলে পুরো বিশ্বকেই নাড়িয়ে দিয়েছে। পৃথিবীব্যাপী আলোচনা এই একটি বিষয় নিয়েই। বাংলাদেশের মানুষকে আরও বেশি করে প্রভাবিত করছে, কারণ পরশুর এই হামলায় আল নূর মসজিদে নিহত হয়েছেন তিন বাংলাদেশি। আর একটুর জন্য বেঁচে গেছেন</p>', '<p>ক্রাইস্টচার্চ হামলার ঘটনা আসলে পুরো বিশ্বকেই নাড়িয়ে দিয়েছে। পৃথিবীব্যাপী আলোচনা এই একটি বিষয় নিয়েই। বাংলাদেশের মানুষকে আরও বেশি করে প্রভাবিত করছে, কারণ পরশুর এই হামলায় আল নূর মসজিদে নিহত হয়েছেন তিন বাংলাদেশি। আর একটুর জন্য বেঁচে গেছেন বাংলাদেশ দলের ক্রিকেটাররা। তামিম ইকবাল, মুশফিকুর রহিম, মাহমুদউল্লাহদের এই মানসিক ধাক্কাটা কাটিয়ে উঠতে সময় লাগবে।</p>\r\n\r\n<p>বাংলাদেশের ক্রিকেট প্রশাসনের সামনে এখন বিদেশ সফরে ক্রিকেটারদের নিরাপত্তার বিষয়টি এসে গেছে। কাল মিরপুর শেরেবাংলা স্টেডিয়ামে বিসিবি পরিচালক খালেদ মাহমুদ যেমন বললেন, অস্ট্রেলিয়া-ইংল্যান্ডের মতো বাংলাদেশেরও নিরাপত্তা দল পাঠানো হোক, &lsquo;এখানে যখন ইংল্যান্ড, অস্ট্রেলিয়া কিংবা নিউজিল্যান্ড আসে তখন পুরো সিকিউরিটি দল আসে। আমাদের হোটেল চেক করে, রাস্তাঘাট দেখে। কোন রাস্তা দিয়ে বাস আসবে এবং কোন দিক দিয়ে হোটেলে যাবে প্রতিটি জিনিস দেখে। এমনকি প্রতিটি ভেন্যুতেই যায়। আমার মনে হয় বাংলাদেশেরও এমন করা উচিত।&rsquo;</p>', 'post-image/060537bbaadb54e54ce06ce64aa780c7cef089-5c8ddfaacb501.jpg', 1, 'nasim@gmail.com', 2, NULL, NULL),
(4, 'বিয়ে করেছেন সাব্বির', 'খেলা', '<p>সব বিতর্ক পেছনে ফেলে নতুন দিনের সন্ধান পেয়েছেন সাব্বির রহমান। সময়টা তাঁর ভালো যাচ্ছে। গত মাসে নিউজিল্যান্ডের বিপক্ষে সেঞ্চুরি করেছেন। দেশে ফিরেও ছন্দটা ধরে রেখেছেন। ধারাবাহিক রান পাচ্ছেন ঢাকা প্রিমিয়ার লিগে। এবার জীবনের ইনিংসেও দুর্দান্ত এক জুটি গড়লেন। কাল বিয়ে করেছেন সাব্বির রহমান।</p>', '<p>সব বিতর্ক পেছনে ফেলে নতুন দিনের সন্ধান পেয়েছেন সাব্বির রহমান। সময়টা তাঁর ভালো যাচ্ছে। গত মাসে নিউজিল্যান্ডের বিপক্ষে সেঞ্চুরি করেছেন। দেশে ফিরেও ছন্দটা ধরে রেখেছেন। ধারাবাহিক রান পাচ্ছেন ঢাকা প্রিমিয়ার লিগে। এবার জীবনের ইনিংসেও দুর্দান্ত এক জুটি গড়লেন। কাল বিয়ে করেছেন সাব্বির রহমান।<br />\r\n<br />\r\nপাত্রী অর্পা উচ্চমাধ্যমিক দ্বিতীয় বর্ষের শিক্ষার্থী। বাবা-মা ও কাছের কয়েকজন আত্মীয়স্বজনকে নিয়ে ঘরোয়া পরিবেশে আক্দ হয়েছে সাব্বির-অর্পার। বিয়ে নিয়ে যদিও সাব্বির এখনই কিছু বলতে চাইলেন না, &lsquo;অনুষ্ঠান যখন করব, তখন সবাইকে জানাব।&rsquo;<br />\r\n<br />\r\nসাব্বিরের পারিবারিক সূত্রে জানা গেছে, ক্যারিয়ারে স্থিতিশীলতা আনতে ও স্বচ্ছন্দে এগিয়ে নিতে বাংলাদেশ দলের সিনিয়র ক্রিকেটারদের অনেকে সাব্বিরকে পরামর্শ দিয়েছেন বিয়ে করতে। তাঁর বাবা-মায়েরও একই চাওয়া ছিল।<br />\r\n<br />\r\nসাব্বিরের বাবা খাজা আহমেদ প্রথম আলোকে বললেন, &lsquo;ঢাকার বাসায় আপাতত ওদের আক্দ করে রাখলাম। একেবারে ছোট আয়োজনে, তেমন কাউকে বলিনি। আমি ওর মা আর কাছের দু-একজন আত্মীয়-স্বজন উপস্থিত ছিল। অনুষ্ঠান করলে পরে সবাইকে জানাব। দোয়া করবেন ওরা যেন ভালো থাকে, সুখে থাকে।&rsquo;</p>', 'post-image/064013d5853cc7f95c797455937ac494992767-5c8de63a8c2d8.jpg', 1, 'nasim@gmail.com', 11, NULL, NULL),
(5, '‘সেজদা’ দিয়ে ক্রাইস্টচার্চ হামলার প্রতিবাদ কিউই ফুটবলারের', 'খেলা', '<p>ক্রাইস্টচার্চের মসজিদে সন্ত্রাসী হামলার ঘটনায় ধাক্কা খেয়েছে গোটা বিশ্ব। ক্রীড়াঙ্গন তাই বাদ যাবে কেন? সহমর্মিতার পাশাপাশি প্রতিবাদ জানিয়েছেন নানা অঙ্গনের খেলোয়াড়েরা। কিউইদের মানসিক দায় আরও বেশি। দেশ আক্রান্ত হয়েছে সন্ত্রাসী হামলায়, সেখান থেকে অল্পের জন্য রক্ষা</p>', '<p>ক্রাইস্টচার্চের মসজিদে সন্ত্রাসী হামলার ঘটনায় ধাক্কা খেয়েছে গোটা বিশ্ব। ক্রীড়াঙ্গন তাই বাদ যাবে কেন? সহমর্মিতার পাশাপাশি প্রতিবাদ জানিয়েছেন নানা অঙ্গনের খেলোয়াড়েরা। কিউইদের মানসিক দায় আরও বেশি। দেশ আক্রান্ত হয়েছে সন্ত্রাসী হামলায়, সেখান থেকে অল্পের জন্য রক্ষা পেয়েছে সফরকারী (বাংলাদেশ) দল; এই অবস্থায় নিউজিল্যান্ড ক্রীড়াঙ্গনের খেলোয়াড়েরাও চুপ করে বসে থাকেননি। যে যার মতো করে সহমর্মিতা ও প্রতিবাদ জানিয়েছেন। কস্তা বারবারোস এই প্রতিবাদের মিছিলে হৃদয়ছোঁয়া এক নজির স্থাপন করলেন।</p>\r\n\r\n<p>কাল রাতে অস্ট্রেলিয়ান &lsquo;এ&rsquo; লিগে ব্রিসবেন রোয়ারের বিপক্ষে ২-১ গোলে জিতেছে মেলবোর্ন ভিক্টরি। মেলবোর্নের হয়ে দুটি গোলই করেছেন নিউজিল্যান্ডের ২৯ বছর বয়সী উইঙ্গার কস্তা বারবারোস। ২৪ মিনিটে প্রথম গোলটি করেন এই অমুসলিম ফুটবলার। এরপর ভাবলেশহীন মুখে মাঠের মধ্যেই হাঁটু মুড়ে বসে নামাজের মতো করে &lsquo;সেজদা&rsquo; করেন। শুক্রবার ক্রাইস্টচার্চে মসজিদে সন্ত্রাসী হামলায় বাংলাদেশিসহ প্রায় পঞ্চাশজনের মতো নিহত হয়েছেন। আহতের সংখ্যাও কম নয়। এই ঘটনায় অল্পের জন্য প্রাণে বেঁচে গেছেন নিউজিল্যান্ড সফরে থাকা বাংলাদেশের ক্রিকেটাররা। ক্রাইস্টচার্চের হ্যাগলি ওভাল মাঠের কাছেই যে মসজিদে জুমার নামাজ পড়তে গিয়েছিলেন তাঁরা, সেই মসজিদেই শুক্রবার সন্ত্রাসী হামলা হয়।</p>', 'post-image/09205320255d4f3df9d3c85fa8a4ba14892552-5c8e09a105148.jpg', 1, 'nasim@gmail.com', 22, NULL, NULL),
(6, 'বঙ্গবন্ধুর রাজনীতি ও কন্যার দায়', 'মতামত', '<p>বঙ্গবন্ধু শেখ মুজিবুর রহমানের জন্মশতবর্ষ শুরু হচ্ছে আজ থেকে। আজ তাঁর শততম জন্মদিন। তাঁর শতবর্ষে দেশ শাসন করছেন তাঁরই কন্যা শেখ হাসিনা। সূচনায় উত্তরাধিকারের বিবেচনা থাকলেও বৈরী রাজনৈতিক পরিস্থিতিতে প্রত্যক্ষ সংগ্রামী রাজনীতিতে নেতৃত্ব দিয়ে তিনি অর্জন</p>', '<p>বঙ্গবন্ধু শেখ মুজিবুর রহমানের জন্মশতবর্ষ শুরু হচ্ছে আজ থেকে। আজ তাঁর শততম জন্মদিন। তাঁর শতবর্ষে দেশ শাসন করছেন তাঁরই কন্যা শেখ হাসিনা। সূচনায় উত্তরাধিকারের বিবেচনা থাকলেও বৈরী রাজনৈতিক পরিস্থিতিতে প্রত্যক্ষ সংগ্রামী রাজনীতিতে নেতৃত্ব দিয়ে তিনি অর্জন করেছেন তাঁর নিজস্ব রাজনৈতিক পরিচয়। এতে প্রজ্ঞা ও দক্ষতারও প্রকাশ ঘটেছে। তাঁর নেতৃত্বে বাংলাদেশ উন্নয়নের গতি ও পথ খুঁজে পেয়েছে। তিনি শক্ত হাতেই হাল ধরেছেন দেশের।</p>\r\n\r\n<p>বঙ্গবন্ধুর মূল রাজনৈতিক জীবন কেটেছিল বাঙালির অধিকার প্রতিষ্ঠা ও মুক্তির পথের খোঁজে। দূরদর্শিতা, সাহস, জনদরদি মন এবং সময়োচিত রাজনৈতিক কর্মসূচি দিয়ে তিনি একসময় দেশ ও দেশবাসীর মুখ্য নেতায় উন্নীত হয়েছিলেন। ছয় দফার পথ ধরে তাঁর নেতৃত্বে জাতি স্বাধীন বাংলাদেশের গন্তব্যে পৌঁছেছিল। বঙ্গবন্ধু হয়ে উঠলেন জাতীয় নেতা, তাঁকে পেয়ে জনগণ ভরসা করার মতো নিজের নেতা পেল, সব আড় ও বিভেদ ভুলে একসময় এক দেশ এক নেতার ধারণায় পৌঁছেছিল মানুষ। তাঁকে বঙ্গবন্ধু উপাধিতে ভূষিত করল জনগণ। তখন স্লোগান উঠেছিল&mdash;তোমার আমার ঠিকানা, পদ্মা-মেঘনা-যমুনা এবং এক নেতা এক দেশ&mdash;বঙ্গবন্ধু বাংলাদেশ। স্বাধীন বাংলাদেশের স্থপতি তিনি, তাঁকে দেওয়া হলো জাতির পিতার আসন।</p>\r\n\r\n<p>তাঁর দীর্ঘ সংগ্রামী রাজনৈতিক জীবনের সবচেয়ে বড় অবদান বোধ হয় স্বভাবত কলহপ্রবণ, বিভেদ ও বিতণ্ডায় অভ্যস্ত এক জনগোষ্ঠীকে একটিমাত্র মহৎ লক্ষ্যে ঐক্যবদ্ধ করতে পারা। একাত্তরের যুদ্ধদিনে বাঙালিমাত্রই তার ধর্ম-দেশ-পরিচয় ভুলে জয় বাংলার সৈনিকে রূপান্তরিত হয়েছিল। তাদের এই মহৎ জাগরণের পেছনে প্রেরণা দিয়েছে সাতই মার্চের ভাষণ এবং বঙ্গবন্ধুর নেতৃত্বের জাদুকরি স্পর্শ। কেবল ঐক্যবদ্ধ হওয়া নয়, সেদিন বাঙালি তার বহুকালের জড়তা-ভীরুতা ও মজ্জাগত আলস্য-দ্বিধা-দ্বন্দ্ব কাটিয়ে এক বীরের জাতিতে রূপান্তরিত হয়েছিল। তেমন বীর যারা কিনা সর্বোচ্চ ত্যাগ স্বীকারে প্রস্তুত। বীরশ্রেষ্ঠ কিংবা ৩০ লাখ শহীদের ইতিহাসের পেছনে এমন নেতৃত্বের ভূমিকা অনস্বীকার্য।</p>\r\n\r\n<p>বঙ্গবন্ধু শেখ মুজিবুর রহমানের নেতৃত্বের ফসল স্বাধীন বাংলাদেশ। তারপরে কিন্তু বাঙালি তার উচ্চ আদর্শ ও উন্নত নৈতিকতাকে ধরে রাখতে পারেনি। বঙ্গবন্ধু তাঁর দেশবাসীর কাছ থেকে যুদ্ধবিধ্বস্ত দেশ গঠনে যথোপযুক্ত সমর্থন-সহযোগিতা পাননি। স্বাধীনতার পরপরই ক্ষুদ্র স্বার্থ ও সংকীর্ণ চিন্তা ঐক্য, বীরত্ব ও ত্যাগের মহিমাকে ম্লান করতে শুরু করেছিল। বঙ্গবন্ধু দ্রুত একটি গণতান্ত্রিক সংবিধান দিয়ে সুষ্ঠু রাজনৈতিক ব্যবস্থা চালু করতে চেয়েছিলেন। কিন্তু নানা মহলের বিচিত্র স্বার্থের টানাপোড়েনে তাঁর উদ্যোগগুলো বাস্তবায়ন ব্যাহত হয়েছে। এত বাধার মধ্যেও অর্জন কম ছিল না। তিন মাসের মধ্যে বিজয়ী যৌথ বাহিনীর ভারতীয় সদস্যরা ফিরে গিয়েছিল, যা সামরিক ইতিহাসে একেবারেই অভূতপূর্ব ঘটনা। নয় মাসের মধ্যে দিলেন একটি গণতান্ত্রিক সংবিধান, দেড় বছরের মাথায় নির্বাচন হলো, পৃথিবীর বড় সব দেশের স্বীকৃতি মিলল, জাতিসংঘসহ অনেক আন্তর্জাতিক সংস্থার সদস্যপদ পেল বাংলাদেশ, প্রথম জাতিসংঘে বাংলায় ভাষণ দিলেন, যুগোপযোগী শিক্ষানীতি প্রণীত হলো, পুনর্গঠন ও উন্নয়নের লক্ষ্যে পরিকল্পনা প্রণয়ন হলো&mdash;এমনি আরও দৃষ্টান্ত দেওয়া</p>', 'post-image/093946a3ad24c7b3f8bdb0800bb07edf0facd1-5c8d411329019.jpg', 1, 'nasim@gmail.com', 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catagory`
--

CREATE TABLE `tbl_catagory` (
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `catagory_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_status` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`catagory_id`, `catagory_name`, `catagory_description`, `catagory_status`, `created_at`, `updated_at`) VALUES
(3, 'মতামত', '<p>hello</p>', '1', NULL, NULL),
(7, 'আন্তর্জাতিক', '<p>INTERNATIONAL</p>', '1', NULL, NULL),
(8, 'খেলা', '<p>Sports</p>', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  MODIFY `catagory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
