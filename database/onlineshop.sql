-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 09:02 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(13, 'Md. Azharul Islam', 1007, '01521470368', 'Cardiologist', '800', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Dhaka', '2018-07-27', '11.00am', 'bKask'),
(14, 'Dr. Majedul Islam', 1008, '01734761999', 'Medicine', '800', 'patient', 'contact', 'mamun@gmail.com', 'Dinajpur', '2018-07-28', '03.00pm', 'bKask'),
(15, 'Md. Azharul Islam', 1009, '01521470368', 'Cardiologist', '800', 'mamun', '01521470368', 'mamun@gmail.com', 'Rangpur', '2018-07-26', '11.00am', 'Rocket'),
(16, 'Dr. Badol Miah', 1004, '01949389983', 'Kedney', '700', 'mamun', '01521470368', 'mamun@gmail.com', 'Dinajpur', '2018-07-20', '11.00am', 'bKask'),
(17, 'Dr. Azharul Islam', 1002, '01764761919', 'Medicine', '500', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Rangpur', '2018-07-26', '03.00pm', 'bKask'),
(18, 'Dr. Badol Miah', 1004, '01949389983', 'Kedney', '700', 'dezazad', 'dezazad', 'devloperazad.hstu@gmai', 'Dinajpur', '2018-07-07', '11.00am', 'Rocket'),
(19, 'Dr. Rashid', 1003, '01521670654', 'Medicine', '600', '', '', 'developerazad.hstu@gmail.com', '', '2018-07-15', '11.00am', 'bKask');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Pet Food-Drools\r\n'),
(2, 'Pet Accessories -Toys'),
(3, 'Cats'),
(4, 'Pet Food-Royal Canin\r\n'),
(5, 'Dogs\n'),
(6, 'Pet Foods-Classic Pets'),
(7, 'Pet Accessories-Beds & Blankets');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(148, 7, '::1', -1, 1),
(149, 22, '::1', -1, 1),
(150, 7, '::1', 26, 1),
(151, 22, '::1', 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Pet Accessories and Food'),
(2, 'Cats'),
(3, 'Dogs');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'SURGERY '),
(2, 'INWARD CARE'),
(3, 'OPD '),
(4, 'MOBILE VET ');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(1, '2', 'DR.MADIRA KULARATHNA', 'Colombo', '01734761999', 'justpetmada@gmail.com', 'SURGERY ', 2, '5000', '1001', '123', 'doctor1.jpg'),
(2, '1', 'DR.ANURA KUMARA', 'Kalutara', '01764761919', 'justpetanura@gmail.com', 'INWARD CARE', 1, '6000', '1002', '123', 'doctor5.jpg'),
(3, '1', 'DR.SHYAMA PERAMUNE', 'Gampaha', '01521670654', 'justshyma@gmail.com', 'OPD ', 1, '6500', '1003', '123', 'doctor1.jpg'),
(4, '4', 'DR.HARSHA JAYARATHNE', 'Rathnapura', '01949389983', 'justharsha@gmail.com', 'MOBILE VET', 4, '700', '1004', '123', 'doctor5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'DROOLS ADULT – CHICKEN & EGG', 300, 'Drools Chicken and Egg Adult is specially formulated for growing puppies and adults. It contains real chicken as # 1 ingredient to build and maintain lean muscle mass for top body condition. With only the finest ingredients it contains what your dog needs to stay happy and healthy. A great combination of ingredients, vitamins, minerals and nutrition for everything from strong bones to optimal digestion. Drools Chicken and Egg is developed to help your dog live a long and healthy life. Omega 6 and 3 fatty acids to help your dog have healthy skin and beautiful coat.\r\n', '1.jpg', 'DROOLS ADULT – CHICKEN & EGG'),
(2, 1, 1, 'DROOLS ADULT CHICKEN & LIVER GRAVY POUCH 150 G', 150, 'Real Chicken & Liver, Eggs, Gravy, Gelling Agent, Natural Flavours, DHA, Organic Minerals & Vitamins (Vit E, Vit A, Vit C, Vit D3, Vit B1, Vit B2, Vit B6, Choline, Folic acid (contains only real chicken and no by-products)  ', '2.jpg', 'DROOLS ADULT CHICKEN & LIVER GRAVY POUCH 150 G'),
(3, 1, 1, 'DROOLS ADULT NUTRITION CHICKEN IN GRAVY TIN 400G', 350, '*Complete/balanced diet\r\n*Easily digestible\r\n*Can be also given to sick pets who are eating less\r\n*Can be given for giving medicines\r\n', '3.jpg', 'DROOLS ADULT NUTRITION CHICKEN IN GRAVY TIN 400G'),
(4, 1, 1, 'DROOLS CAT ADULT – OCEAN FISH', 450, 'Drools dry cat food with ocean fish is a complete and balanced feed for cats. Cats are fussy and choosy eaters and their nutritional requirements also very peculiar. Formulated with real delicious high quality ocean fish, Drools ocean fish cat food delivers optimum protein and energy along with essential nutrients to keep your cat healthy and active. Omega 6 and 3 fatty acids help support skin and coat and immunity. Supplemented with prebiotics and probiotics, this cat food protects from hair ball formation and maintains digestive tract health. Real sardin, real mackerel, eggs, corn gluten meal, whole grain cereals, soya refined oil, wheat flour, taurine, vitamins (Vitamin A, vitamin E, vitamin B1, vitamin B6, vitamin B2, vitamin B12, choline, niacin, folic acid) organic minerals (zinc, iron, copper, selenium, manganese), prebiotics and probiotics.', '4.jpg', 'DROOLS CAT ADULT – OCEAN FISH'),
(5, 1, 1, 'DROOLS CAT ADULT – MACKEREL', 2350, 'Drools Dry Food serves complete Nutrition and food for adult cats. It Provides100 % Nutrition.\r\n\r\n– Taurine for Healthy Heart.\r\n\r\n– Healthy Skin & Beautiful Coat.\r\n\r\n– Control Urinary pH\r\n\r\n– Hair Ball Protection.', '5.jpg', 'DROOLS CAT ADULT – MACKEREL'),
(6, 1, 1, 'DROOLS PUPPY – CHICKEN AND EGG', 250, 'Puppies need balanced nutrition food, Drool recognizes this and created Drools puppy chicken and egg to provide high quality complete & balanced nutrition specially formulated with proper protein and fat levels for energy and growth. Real Chicken ingredient provides an excellent source of protein. It also contains optimum ratio of Omega 6 and Omega 3 Fatty Acids to help your puppy have healthy skin and beautiful coat.', '6.jpg', 'DROOLS PUPPY – CHICKEN AND EGG'),
(7, 1, 1, 'ME-O KITTEN OCEAN FISH', 650, '\r\nMe-O Kitten food (Ocean Fish) is a nutritionally complete and balanced dietary formulation for optimum health and growth of a kitten. The balanced meal includes a high amount of growth inducing protein, sourced from milk and ocean fish. Bones and teeth of the young feline are strengthened with balanced amounts of calcium, phosphorus and vitamin D. There is vitamin C which improves the health of immune system and reduces environmental stress. The wholesome food aims to look after the overall well-being of the kitten. Therefore, level of sodium has been reduced to promote the health of heart, kidneys, and maintain a healthy blood pressure. The nutritional formula helps to prevent urinary tract infections and bladder stones, and supports the functioning of eyes. Delicious and digestible dry cat food supplies omega 3 and omega 6 fatty acids along with zinc to nourish skin and fur.\r\n', '7.jpg', 'ME-O KITTEN OCEAN FISH'),
(8, 1, 1, 'DROOLS PUPPY STARTER', 2450, '100% nutrition, 0% fillers\r\n100% Organic Minerals\r\nBetter digestibility and Health\r\nDHA for smarter and stronger puppy\r\nEnhance Palatability\r\nImmune Health\r\nOptimum Litter Size and Milk Production\r\nPromotes Optimum Growth', '8.jpg', 'DROOLS PUPPY STARTER'),
(9, 1, 4, 'ROYAL CANIN LABRADOR RETRIEVER – ADULT', 5750, 'The Labrador Retriever is a friendly, energetic breed and are very popular household pet. Their loving nature, intelligence and strong sense of smell make them ideal working dog, especially supporting the vision impaired. Labradors have a tendency to be overweight and are known to be very food driven! Labradors have a wide medium length snout with a powerful jaw and teeth.\r\n\r\nRoyal Canin Labrador Retriever is a complete and balanced formula designed specifically for your adult Labrador.', '9.jpg', 'ROYAL CANIN LABRADOR RETRIEVER – ADULT'),
(10, 1, 2, 'PET CHEW SQUEAKY SOUND TOY – BEEF STEAK', 290, '', '29.jpg', 'PET CHEW SQUEAKY SOUND TOY – BEEF STEAK'),
(11, 1, 2, 'PET CHEW SQUEAKY SOUND TOY – BONE', 300, '', '30.jpg', 'PET CHEW SQUEAKY SOUND TOY – BONE'),
(12, 1, 2, 'REMOTE CONTROL MOUSE TOY', 800, '', '31.jpeg', 'REMOTE CONTROL MOUSE TOY'),
(13, 1, 2, 'PET COTTON “8” SHAPE ROPE CHEW KNOT TOY', 450, '', '28.jpg', 'PET COTTON “8” SHAPE ROPE CHEW KNOT TOY'),
(14, 1, 2, 'BITE BONE PLASTIC', 200, 'Dog Bone Resistant Toy help establish proper chewing habits and relieve the causes of destructive chewing. Offers a variety of chew toys in all sizes and shapes to occupy both puppies and adults, satisfying their need to gnaw on something while diverting them from chewing on inappropriate items.', '18.jpg', 'BITE BONE PLASTIC'),
(15, 1, 2, 'FANTASTIC BLACK BONE PATTERN PET DOG FEEDING BALL SOUND TOY', 350, 'Suitable for small dog to play\r\nFood ball toy for pet.\r\n100% Brand new.\r\nPut some of your pet’s favorite snack inside and the dog will be attracted.\r\nMade from non-toxic material, which assures your pet will have hours of safe fun.\r\n\r\nDescription:\r\n\r\nColor:Black\r\nMaterial: Plastic\r\nDiameter: 8cm(3.15?)\r\n\r\nPackage inclueded:\r\n\r\n1 X Dog Feeding Ball\r\n\r\nNote:\r\n1.Due to the light and screen difference, the item’s color may be slightly different from the pictures. Please understand. Make sure you don’t mind before you bid.\r\n2.Please allow 1-2cm differences due to manual measurement.\r\n', '22.jpg', 'FANTASTIC BLACK BONE PATTERN PET DOG FEEDING BALL SOUND TOY'),
(16, 1, 2, 'FEEDING BOWL – MELAMINE 500ML', 700, 'Melamine bowl is an internationally popular new tableware, with the bright appearance, it is anti-acid and anti-alkali, and does not produce harmful toxins.\r\n\r\n– Durable and Safe – Made of human food grade material(Melamine), make it both durable and Safe\r\n\r\n– Non-Skid – Made of melamine material, prevent the bowl slipping during mealtime\r\n\r\n– Easy to Clean and Dishwasher safe- Melamine bowl is very easy to clean\r\n\r\nNote – Please don’t brush it with a steel wool or high abrasive material ( soak the dish for 2-5 min, it will easily remove tough stains and grime)\r\n\r\nNot recommended for microwave and oven use', '23.jpg', 'FEEDING BOWL – MELAMINE 500ML'),
(17, 1, 2, 'FERRIBIELLA BONE HARD RUBBER BITE-ME', 670, '', '24.jpeg', 'FERRIBIELLA BONE HARD RUBBER BITE-ME'),
(18, 1, 2, 'HEART SHAPE RUBBER TOY', 280, '', '25.jpg', 'HEART SHAPE RUBBER TOY'),
(19, 1, 2, 'KONG FUN TOY', 500, '', '26.jpg', 'KONG FUN TOY'),
(20, 1, 2, 'PAW PRINT SQUEAKY CHEW BALL', 300, '', '27.jpg', 'PAW PRINT SQUEAKY CHEW BALL'),
(21, 1, 4, 'ROYAL CANIN MAXI DERMACOMFORT DOG FOOD 3KG', 5890, 'Royal Canin\r\nREDUCED ALLERGEN FORMULA\r\nNutritionally formulated with omega-3 & 6 fatty acids, including\r\nGLA, EPA and DHA to help support and nourish the skin.\r\nFormulated to care for your dog’s skin and help maintain a healthy coat.\r\n\r\nSuitable for Maxi Dogs over 15 months old\r\n\r\nProven Results. 92% owners satisfied after 2 months.\r\nRoyal Canin Internal Study 2018\r\n\r\nMaxi from 26kg to 44kg at adult weight', '10.jpg', 'ROYAL CANIN MAXI DERMACOMFORT DOG FOOD 3KG'),
(22, 1, 4, 'ROYAL CANIN SECOND AGE KITTEN – 2 KG', 5150, 'Highly nutritious cat food, Royal Canin Kitten is ideal for kittens from 4 to 12 months old. Kittens have an increased requirement for energy, protein, minerals, trace elements, and vitamins. Royal Canin Kitten – Digestive Health is specially developed with these requirements in mind. The kibble is the optimal size for small kittens and is easy to chew.\r\n\r\nThe beginning of the second stage of development is indicated by the emergence of adult teeth:\r\n\r\nAs the adult teeth develop, protection of the newly developed adult teeth is crucial for efficient dental hygiene and health.\r\nAs the digestion capacities develop, certain foods, such as starches, can be increasingly better digested and utilized.\r\nAs growth slows, bone structure slowly solidifies, and muscles develop, the energy requirement continues to be high, but slowly decreases over time.\r\nRoyal Canin Kitten Digestive Health cat food is optimally tuned for the special dietary needs of kittens between 4 and 12 months of age:', '11.jpg', 'ROYAL CANIN SECOND AGE KITTEN – 2 KG'),
(23, 1, 4, 'ROYAL CANIN SHIH TZU ADULT 1.5KG', 3250, 'Tailor-made Nutrition for Pure Breed Dogs. An exclusive kibble for each breed: a concentration of scientific and nutritional expertise born from the unique knowledge of Royal Canin combined with the practical experience of Breeders.\r\n\r\nSupports healthy skin\r\nExclusive kibble shape easy to grasp and chew\r\nHelps maintain coat beauty\r\nReduces stool and odor\r\n100% Complete and Balanced Nutrition\r\n100% Satisfaction Guaranteed\r\nShih Tzu is designed exclusively for pure breed Shih Tzus over 10 months.\r\n\r\nKibble\r\nThe Shih Tzu is a brachycephalic breed a dog with a typical round head that is broader than it is long. The Shih Tzu formula’s kibbles are designed to be easier for this breed to pick up and encourage chewing', '12.jpg', 'ROYAL CANIN SHIH TZU ADULT 1.5KG'),
(24, 1, 4, 'ROYAL CANIN BABYDOG MILK 400G', 5800, 'Royal Canin Babydog Milk is fully digestible and gentle on your puppy’s stomach, due to the use of milk as the food’s sole protein source. Reduced lactose content in the powdered milk ensures optimal, regular digestion. Starch is generally not easily digested by puppies, as the ability to process starch develops slowly in dogs – so 1st age milk contains no starch.\r\n\r\nRoyal Canin Babydog Milk is as close as you can get to natural dog’s milk. The micro-granule structure allows the powder to dissolve instantly – within 5 seconds – and prevent clumping in the milk.\r\nThis complete replacement milk product for puppies is perfect for raising motherless puppies, or as a supplement for large litters (from their 1st week to 4th week).\r\nThe included antioxidant complex (vitamins E and C, lutein, and taurine) and mannan oligosaccharides support puppies’ still-developing immune system.', '13.jpg', 'ROYAL CANIN BABYDOG MILK 400G'),
(25, 1, 4, 'ROYAL CANIN DOG STARTER MOUSSE CAN 195G', 5000, 'The Royal Canin starter Mousse pack is perfect for all weaning mothers and their adorable medium breed puppies. The food has been specially formulated to meet the nutritional requirement of the mother and the puppies. It is specially made to meet the nutrient requirements during gestation, birth, lactation, weaning and also helps in the growth of puppies till two months. The best thing about the mousse is that it is wet food, which makes it high on your puppy’s palate.\r\nThe medium starter mousse has been specially formulated by Royal Canin. It is a potent combination of all nutrients, which are present in the mother’s milk. This helps to digest food easily and maintain the natural immunity of your puppy. This is perfect to meet the high energy requirements of the mother during gestation and lactation. The mousse does not contain start, which makes it easier on your pet’s digestive system. This will help your puppy to slowly transit from the mother’s milk to solid food.\r\nSpecification\r\nCan be given to bitches as well\r\nHelps in transition from mother’s milk to solid food\r\nBoosts the immunity of your pet\r\nDoes not need to be supplemented with other food\r\nCan be mixed with water and get a porridge consistency', '14.jpg', 'ROYAL CANIN DOG STARTER MOUSSE CAN 195G'),
(26, 1, 2, 'CAT TOYS SOFT COLORFUL CAT FEATHER BELL ROD', 280, '', '19.jpg', ''),
(27, 1, 2, 'COLORFUL PET TOY RUBBER BALL WITH BELL INSIDE', 330, '', '20.jpg', 'COLORFUL PET TOY RUBBER BALL WITH BELL INSIDE'),
(28, 1, 6, 'CLASSIC PETS PUPPY – MILK', 325, 'Classic Pets Puppy is a healthy and complete meal for your puppy.', '15.jpg', 'CLASSIC PETS PUPPY – MILK'),
(29, 1, 6, 'CLASSIC PETS ADULT – CHICKEN', 295, '\r\nClassic Pets adult is a healthy and complete meal for your Adult dog.', '16.jpg', 'CLASSIC PETS ADULT – CHICKEN'),
(30, 1, 2, 'ADJUSTABLE SOFT SILICONE DOG MUZZLE', 350, '', '17.jpg', 'ADJUSTABLE SOFT SILICONE DOG MUZZLE'),
(31, 1, 2, 'COTTON ROPE BALL TOY', 450, 'Cotton rope, natural raw materials, safety and environmental friendly. It can help your pet clean there teeth, help reduce teeth tartar and other diseases. Made From Premium Cotton Fibers,environmental braided cord, safety rubber chew ball strong resistance to teething toy Has a variety of colors ,color sent randomly.', '21.jpg', 'COTTON ROPE BALL TOY'),
(32, 1, 7, 'COMFORTABLE WASHABLE PREMIUM DOG BED', 4900, '–  LUXURY BED: If you want to give your dog the ultimate sleep and resting place, look no further. This bed is an investment that will last.\r\n\r\n– QUALITY COMFORT: A bed for pets who prefer soft sides and bottoms. Cozy yet breathable, it keeps your dog or cat cool during summer & warm and cozy during the winter.\r\n\r\n– BETTER QUALITY: Forget those cheaply made dog and cat beds. Our premium bed for dogs, cats, and puppies has soft organic cotton walls for pets who love to stick their paws out and rest they way they want. And did we mention the Non-skid bottom that prevents sliding?\r\n\r\n– WASHABLE TOO: Toss this bed in the washing machine (hand-wash setting) OR spot-clean with a damp sponge. Either way, it’s easy-care… and it keeps fur and dander off of your furniture!\r\n\r\n–  STYLISH: Luxurious look with corn kernel fabric, brown suede, and golden corduroy.\r\n\r\n55x45x24 cm – S\r\n\r\n70X60X24 cm – M\r\n\r\n85X70X26 cm – L', '32.png', 'COMFORTABLE WASHABLE PREMIUM DOG BED'),
(33, 1, 7, 'LOW DOORSILL LABYRINTH PRINTING PET BED', 3650, '– Cool Labyrinth print never goes out of style! Designed like a sofa, this signature lounge bed is the designer’s most popular shape.\r\n\r\n– Guaranteed to be a cozy spot for your pup to nap, whether they like to curl up or stretch out.\r\n\r\n– Sides and center pillow unzip and are 100% machine washable for easy maintenance.\r\n\r\n– Stuffed with hypo-allergenic eco-friendly fiber, this bed is sure to keep your pup well rested and harm-free', '33.jpeg', 'LOW DOORSILL LABYRINTH PRINTING PET BED'),
(34, 1, 7, 'LUXURY SOFT PAW, WATER RESISTANT, ORTHOPEDIC, DOG CAT PET BED', 3200, '', '34.jpg', 'LUXURY SOFT PAW, WATER RESISTANT, ORTHOPEDIC, DOG CAT PET BED'),
(35, 1, 7, 'PET BED – PB011', 5550, '', '36.png', 'PET BED – PB011'),
(36, 1, 7, 'PET BED – PB010', 3300, 'Diameter : 40 cm', '35.jpg', 'PET BED – PB010'),
(37, 1, 7, 'PET BED – PB012', 5100, 'Size 50cm*60cm', '37.png', 'PET BED – PB012'),
(38, 1, 7, 'PET BED – PB016', 4950, 'Size 55cm*45cm*17cm', '38.png', 'PET BED – PB016'),
(39, 1, 7, 'PET BED PB005 L', 2850, 'Dia: 60 CM\r\n \r\n\r\nYour furry friends will like to curl up taking naps with this cozy bed.\r\nCrafted from soft microsuede fabric and overstuffed PP cot', '39.jpg', 'PET BED PB005 L'),
(40, 1, 7, 'NIBLET PATTERN PREMIUM LUXURY PET BED FOR LARGE DOGS – DETACHABLE MAT', 9800, '– Supper Comfy large pet bed.\r\n\r\n–  Fur velvet Oxford Fabric.\r\n\r\n– Waterproof Bottom .\r\n\r\n– Can be disassemble and wash\r\n\r\n– Durable fabric\r\n\r\n– 2 Sizes available', '40.jpg', 'NIBLET PATTERN PREMIUM LUXURY PET BED FOR LARGE DOGS – DETACHABLE MAT'),
(41, 1, 7, 'PET BED – PB003', 6200, '', '41.png', 'PET BED – PB003'),
(42, 2, 3, 'Persian cat', 20000, 'Persian kittens 5 weeks old.\r\nPure breed,\r\npure white , color pointed\r\nmale only\r\npotty traind\r\nEat cat food and boiled fish.\r\nOnly for lovers.\r\nReal picture attached.\r\nAvailable at Avissawella ( Ruwanwella )\r\nLast price NOT NEGOTIABLE\r\nContact seller : xxxxxxxxx', 'cat1.jpg', 'Persian cat'),
(43, 2, 3, 'Persian Cat-Mount Lavinia, Colombo', 25000, 'Persian Cat for sale\r\nHealthy\r\nPotty trained\r\nPlayfull cat\r\nOriginal breed\r\nMale cat\r\nContact seller : xxxxxxxxx\r\n', 'cat2.jpg', 'Persian Cat'),
(44, 2, 3, 'Himalayan Kittens-Malabe, Colombo', 35000, 'Male & female kittens\r\none month & one week old\r\nparents can be seen\r\nDoll face\r\nBlue eyes\r\nwhite with colour point\r\npotty trained\r\nplayful kittens\r\nHealthy kittens\r\nVaccined\r\nContact seller : xxxxxxxxx\r\n', 'cat3.jpg', 'Himalayan Kittens-'),
(45, 2, 3, 'Persian Kittens-Battaramulla, Colombo', 24000, 'We have 2 months old pure breed Persian kittens.They are the kittens of our pets.All of them are playful and energetic.We expect a good home. Resellers are not expected.', 'cat4.jpg', 'Persian Kittens'),
(46, 2, 3, 'Persian Cat-Moratuwa, Colombo', 20000, 'Persian beby\r\n2 males\r\n1 female\r\n6 weeks old\r\nContact seller : xxxxxxxxx', 'cat5.jpg', 'Persian Cat'),
(47, 3, 5, 'Rottweiler -Galle', 50000, 'Rottweiler puppies for sale\r\nKASL Registration\r\nSire:BEVINAS BURG YURATH - Important\r\nDame:ROXY - important blood line\r\nGrand father- CRAZY DIAMOND URSU - important\r\nMale and female puppies\r\nTraining to food\r\n4 weeks complete', 'dog1.jpg', 'Rottweiler -Galle'),
(48, 3, 5, 'Purebred Rottweiler Puppies-Kalutara', 42000, '6 weeks old, purebred ""Rottweiler"" puppies available for sale.\r\nCKC Registered puppies.\r\nPedigree Certificates available for Sire & Dam.\r\nWormed & Parvo Vaccinated.\r\nVet Checked, Puppy Booklets available.\r\nWell Looked After.\r\n\r\nMore info...\r\nPrice : Negotiable\r\nVaccination : Parvo Virus\r\nRegistration : CKC (Ceylon Kennel Club)\r\nAge (in weeks) : 6\r\nContact seller : xxxxxxxxx', 'dogs2.jpg', 'Purebred Rottweiler Puppies-Kalutara'),
(49, 3, 5, 'Golden Retriever-Kalutara', 70000, 'LITTER ANNOUNCEMENT\r\n(28 Days puppy''s pics attached. Real pics)\r\n\r\nRESERVATION STARTED\r\n\r\nFirst Litter from EDEN FEDROZ KENNEL FAMILY.\r\nHIGHLY PEDIGREED GOLDEN RETRIEVER PUPPIES\r\nEnglish cream father''s puppies\r\n\r\nMore info...\r\nAge (in weeks) : 4\r\nContact seller : xxxxxxxxx', 'dog3.jpg', 'Golden Retriever-Kalutara'),
(50, 3, 5, 'Doberman Puppies-Kalutara', 40000, 'how Quality Liver Colour Puppies Available\r\nAll puppies KASL Registered ,,\r\nFather imported blood line ?\r\n\r\nSire\r\nAMUN''S CANDOMBE TANGO ?- KASL & CKC Show winner\r\n(BLUE MOON THE DEXTAR MORGAN x GLANZEN RED LOTUS )\r\n\r\nDam\r\nSINDY OF KALUTARA KENNEL\r\n\r\nMother Sindy of Kalutara kennel\r\n6 weeks only\r\nMales & Female\r\n\r\nMore info...\r\nRegistration : KASL (Kennel Association of Sri Lanka)\r\nAge (in weeks) : 6\r\nContact seller : xxxxxxxxx', 'dog4.jpg', 'Doberman Puppies-Kalutara'),
(51, 3, 5, 'American bully-kaluthara', 69000, 'Father imported,mother imported blood\r\nline. Puppies are healthy,active and in good condition.Black based colours available.\r\n\r\nMore info...\r\nPrice : Negotiable\r\nContact seller : xxxxxxxxx\r\n', 'dog5.jpg', 'American bully');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(15, 'hemu', 'ajhgdg', 'puneethreddy951@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'Harsha', 'Hirushan', 'hirushanharsha5@gmail.com', '123456789', '0564224580', 'zzzzzzzzzzzzzzzzzz', 'Srilanka');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'Harsha', 'Hirushan', 'hirushanharsha5@gmail.com', '123456789', '0564224580', 'zzzzzzzzzzzzzzzzzz', 'Srilanka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
