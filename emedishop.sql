-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emedishoplast`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `whatsapp`, `mobile`, `state`, `city`, `zip_code`, `address`, `created_at`, `updated_at`) VALUES
(158, '12', 'test User', 'test@gmail.com', '12222', '12222', 'Dhaka', 'asdf', '2100', '23/b natumbazar', '2022-06-24 21:24:32', '2022-06-24 21:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Md. Rezuan Huusen', '01689086951', 'admin@gmail.com', NULL, '$2y$10$.luPm51Lqz4ue9KFlHctt.yjtb.D6tZA/txuQS.krxMhQlDbnyMqW', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(101, '6', '75', '1', '5', '2022-06-24 23:00:36', '2022-06-24 23:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'COVID 19', NULL, '2022-04-11 03:13:05', '2022-04-11 03:13:05'),
(3, 'MEDICINE STORE', NULL, '2022-04-11 03:27:25', '2022-04-11 03:27:25'),
(4, 'BABY & MOM', NULL, '2022-04-11 13:19:34', '2022-04-11 13:19:34'),
(5, 'FEMALE HYGIENE', NULL, '2022-04-11 13:20:46', '2022-04-11 13:20:46'),
(6, 'BEAUTY CARE', NULL, '2022-04-11 13:21:09', '2022-04-11 13:21:09'),
(7, 'DIABETIC', NULL, '2022-04-11 13:21:23', '2022-04-11 13:21:23'),
(9, 'PERSONAL CARE', NULL, '2022-04-11 13:22:54', '2022-04-11 13:22:54'),
(11, 'SEXUAL WELLBEING', NULL, '2022-04-15 00:11:01', '2022-04-15 00:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ticket_id`, `user_id`, `name`, `sent_by`, `message`, `created_at`, `updated_at`) VALUES
(152, '118', '12', 'test User', 'User', 'Hi, Admin ???', '2022-06-24 21:24:46', '2022-06-24 21:24:46'),
(153, '118', '2', 'Md. Rezuan Huusen', 'Admin', 'Bye', '2022-06-24 21:29:16', '2022-06-24 21:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_08_054125_create_admins_table', 2),
(5, '2022_04_09_060128_create_vendors_table', 3),
(6, '2022_04_10_113242_create_customers_table', 4),
(7, '2022_04_11_061547_create_categories_table', 5),
(8, '2022_04_11_090342_create_categories_table', 6),
(9, '2022_04_13_173026_create_cart_controllers_table', 7),
(10, '2022_04_13_173359_create_carts_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `vendor_id`, `product_details`, `payment_method`, `payment_status`, `trans_id`, `invoice`, `prescription`, `subtotal`, `shipping`, `total`, `status`, `address_id`, `created_at`, `updated_at`) VALUES
(318, '12', '11', '[{\"product_id\":\"27\",\"quantity\":\"1\",\"vendor_id\":11}]', 'CASH ON DELIVERY', 'CASH ON DELIVERY', NULL, '14837644', '202206250324Comet-500-400x400-4.02Tk.jpg', '450', '90', '540', 'ORDER CONFIRMED', 158, '2022-06-24 21:24:32', '2022-06-24 21:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('quaziakash@gmail.com', '$2y$10$z4Tp1iYUkRSIc1r/Donc/us.yGIlCDLmvos.QhqcV59M9ns5Csszi', '2022-04-07 04:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pieces` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendor_id`, `product_name`, `category`, `brand_name`, `pieces`, `price`, `stock`, `image`, `product_des`, `created_at`, `updated_at`) VALUES
(26, '11', 'Parachute Just for Baby Face Cream', 'BABY & MOM', 'Just For Baby', '1', '125', '50', '2022062404431.webp', 'Your baby’s skin is delicate and needs special care. International expert in Safe Baby care, Parachute Just for BabyTM Baby Face Cream is enriched with goodness of Olive oil and Almond milk. It works gently, moisturizing your baby’s soft face, keeping it healthy, supple and dryness-free, all day long.\r\n\r\nTESTED FOR ALLERGY AND FORMULATED WITH 100% SAFE INGREDIENTS', '2022-06-23 22:43:43', '2022-06-23 22:59:49'),
(27, '11', 'Johnson’s Baby Milk and Rice Cream (50gm)', 'BABY & MOM', 'Johnson & Johnson', '1', '450', '25', '202206240453Johnsons-Baby.jpg', 'Johnson Milk + Rice Baby Cream combines the value of natural milk and rice extracts. For skin care all day A baby’s skin loses moisture faster than an adult’s skin. and needs gentle care We have developed these products especially with moisturizing ingredients. To help preserve the skin of the growing baby.\r\n\r\nHas a pH value that is suitable for the skin. Tested by a pediatrician (pediatricians)\r\nProtects your skin from the 5 signs of winter skin*: redness, dryness, peeling, skin irritation, and stinging.\r\nContains natural milk proteins rice extract including many vitamins and minerals', '2022-06-23 22:53:11', '2022-06-23 22:53:11'),
(28, '11', 'Baby Soap – Parachute Just for Baby (125gm)', 'BABY & MOM', 'Just For Baby', '1', '115', '30', '202206240459Parachute-Just-for-Baby-Baby-Soap-125g-1-750x750.png', 'Just for Baby is vegetable oil based soap and designed with 100% safe ingredients to gently cleanse your baby’s delicate skin, leaving it nicely scented. This skin protecting formula has the goodness of Olive Oil and Almond Milk, which deeply nourishes baby’s skin and maintains natural softness.\r\n\r\nMade in Bangladesh', '2022-06-23 22:59:27', '2022-06-23 22:59:27'),
(29, '11', 'Kodomo Baby Head To Toe Wash (200ml)', 'BABY & MOM', 'KODOMO', '1', '328', '48', '20220624050635ea7786-de60-4b22-9445-be64d937b571-750x750.jpg', 'Looking for a true multitasking product that would serve the purpose of both baby bath and baby shampoo? If so, then Kodomo Baby Hair and Body Wash is just right. This is a gentle, convenient and safe way to shampoo as well as bathe your baby. Kodomo Baby Hair and Body Wash boasts a clinically proven formula that causes no irritation to eyes, scalp or skin of your baby. Babies with sensitive skin can also enjoy this amazing formula as it is hypoallergenic. The product has been pH balanced and contains natural plant extracts to help soothe baby’s skin.', '2022-06-23 23:06:05', '2022-06-23 23:06:05'),
(30, '11', 'Boots Baby Fragrance Free Biodegradable soft baby wipes (64 pcs)', 'BABY & MOM', 'Boots', '64', '500', '57', '202206240512boots_baby_fragranced_biodegradable_soft_baby_wipes_single_pack_64_wipes.webp', '64 fragrance-free biodegradable baby wipes\r\nPlastic free\r\n98% water\r\nMild and gentle formula\r\nSuitable for sensitive skin\r\nDermatologically tested\r\nFree from alcohol', '2022-06-23 23:12:09', '2022-06-23 23:12:09'),
(31, '11', 'L’oreal Paris Kids Shampoo Tropical Mango (250ml)', 'BABY & MOM', 'L\'Oreal', '1', '550', '30', '202206240523loreal-kids-tropical-mango-Shampoo.jpg', 'Knots can’t fight against the conditioning 2-in-1 formula of L’Oréal Kids. Its creamy formula leaves hair so soft and shiny. L’Oréal Kids is so gentle. It’s tear-free.\r\n\r\nSuper fruity fragrance\r\nNo tears and knots\r\nMakes hair shine in the sun\r\nIt’s creamy formula leaves hair so soft and shiny\r\nFormula tested under ophthalmological control', '2022-06-23 23:23:36', '2022-06-23 23:23:36'),
(32, '11', 'Mothercare All We Know Baby Body Lotion (100ml)', 'BABY & MOM', 'Mothercare', '1', '350', '24', '202206240528Mothercare-All-We-Know-Baby-Body-Lotion1-750x750.jpg', 'All Mothercare’s Specialist know how goes into our All We Know Baby Lotion. The non greasy formulation gently protects and moisturises your baby’s delicate skin, leaving it feeling soft and smooth. It contains olive oil, nature’s ultimate moisture and soothing chamomile.', '2022-06-23 23:28:55', '2022-06-23 23:28:55'),
(33, '11', 'Veet Easy Gel 20 Wax Strip For Normal Skin +Lasting Smoothness', 'FEMALE HYGIENE', 'Veet', '1', '350', '48', '202206240541Veet-Easy-Gel-20-Wax-Strip-For-Normal-Skin-Lasting-Smoothness-1.webp', 'Normal Skin +Lasting Smoothness', '2022-06-23 23:41:04', '2022-06-23 23:41:04'),
(34, '11', 'Lilac 3X Spot Lightener', 'FEMALE HYGIENE', 'LILAC', '1', '350', '21', '202206240545Lilac-3X-Spot-Lightener-Hero-Image-750x750.webp', 'Lilac 3X Spot Lightener is made from naturally derived Alpha Arbutin, Niacinamide and Pumpkin seed oil that delivers the most effective brightening, moisturizing and firming effect to your skin. The efficacious blend of these three powerful skin lightening ingredients makes a perfect formula that speeds up lightening dark spots.\r\n\r\nInfused with naturally derived skin lightening ingredients\r\nLightens dark underarm and intimate areas\r\nRemoves dark spots on neck, knee and elbow\r\nCan be used for treating melasma\r\nCreamy texture\r\nFor all skin types', '2022-06-23 23:45:07', '2022-06-23 23:45:07'),
(35, '11', 'Whisper Ultra Clean Sanitary Pads for Women, XL 30 Napkins', 'FEMALE HYGIENE', 'Whisper', '30', '670', '49', '202206240552Whisper-Ultraclean-XL-30s-1-750x750.webp', 'Whisper Ultra Clean is our No 1 Hygienic Protection Range, now with Herbal Oil and locks not just wetness but also odour. The pads are nearly 40% longer versus ordinary pads for long lasting coverage, and have a DRI weave cover that absorbs in seconds, with a delightful scent for all day freshness.\r\n\r\nOur No 1 Hygienic Protection now with Herbal Oil!\r\nLocks not only wetness but also odour\r\nNearly 40% Longer for long lasting coverage\r\nDRI Weave cover that absorbs in seconds\r\nDelightful scent for all day freshness', '2022-06-23 23:52:36', '2022-06-23 23:52:36'),
(36, '11', 'Tena Lady Normal Pads 12pcs', 'FEMALE HYGIENE', 'Tena', '12', '650', '15', '202206240556Tena-Lady-Normal-Pads-12pcs-750x750.webp', 'TENA Lady Normal with microPROTEX compressing technology gives you TRIPLE PROTECTION from leaks, odour and moisture. TENA Lady Normal is the same size as a menstrual towel but designed for light to medium bladder weakness. Our microPROTEX compressing technology gives you absorbency where it matters making sure you have the security you need but also the discretion you want.\r\n\r\nDermatologically tested\r\nSoft textile breathable outer material helps maintain healthy skin\r\nTriple Protection – Dry, Secure and Odour Control', '2022-06-23 23:56:03', '2022-06-23 23:56:03'),
(37, '11', 'Joya Sanitary Napkin – Extra Heavy Flow Wings 8 Pads Pack 80-90g (Buy 1 Get 1', 'FEMALE HYGIENE', 'Joya', '8', '110', '19', '20220624060113876-750x750.jpg', 'Product: Joya Extra Heavy Flow Wings Sanitary Napkin – 8 Pads Pack\r\nFeature: Anti-Bacterial Strip, Odor Control, Cotton Soft Top Cover, Extra Absorption Power (50% more absorption), Super Gel Technology, Smart Channels, 290mm Long, Heavy Flow\r\nVariant: Extra Heavy Flow Wings (Panty System)', '2022-06-24 00:01:18', '2022-06-24 00:01:18'),
(38, '11', 'Freedom Cotton Soft Belt System Pads 5pc', 'FEMALE HYGIENE', 'Freedom', '5', '35', '30', '202206240608Freedom-Cotton-Soft-Belt-System-5-pads-1-750x750.jpg', 'It has the Super Absorbent Polymer (SAP) that absorbs large volume of fluid instantly.\r\n\r\nconverts fluid into GEL.\r\nlocks inside the pad and ultimately ensure maximum dry-feel and protection.', '2022-06-24 00:08:41', '2022-06-24 00:08:41'),
(39, '11', 'Gillette Venus Razor with Aloe Extract for Women', 'FEMALE HYGIENE', 'Gillette', '1', '575', '79', '202206240627Gillette-Venus-Razor-with-Aloe-Extract-for-Women-750x750.jpg', 'Designed as a razor for women, Gillette Venus glides smoothly along your curves and leaves with you smooth Venus skin. Simply apply water and soap, glide Venus against the direction of hair growth and then wash and apply your favorite moisturizer! Each refill lasts approx. 3 months (depending on usage – basis full body hair removal once a week), post which you can purchase the refills pack. This hair remover can be used by any woman/girl on face, arms, underarms, legs and full body including the sensitive bikini area.', '2022-06-24 00:27:16', '2022-06-24 00:27:16'),
(40, '11', 'Gillette Venus Snap Handle with Comfort Glide Spa Breeze Blade', 'FEMALE HYGIENE', 'Gillette', '1', '775', '34', '202206240631Gillette-Venus-Snap-Handle-with-Comfort-Glide-Spa-Breeze-Blade2_sku21091-750x750.webp', 'Compact women’s razor for on-the-go smooth skin.\r\nFlexible moisture bars release light body butter.\r\nAny Venus blade fits any Venus razor handle.\r\n \r\nCountry of Origin: Mexico.', '2022-06-24 00:31:37', '2022-06-24 00:31:37'),
(41, '11', 'Gluzit 80mg', 'DIABETIC', 'Popular Pharmaceuticals Ltd.', '10', '64', '200', '202206240901lDFg0orbvampsvOee2UyzJ67Y6ynSURJGyLaGgts.jpg', 'Film-coated tablet: The usual initial dose is 40 to 80 mg daily. The dose can be increased up to 320 mg daily in divided doses when needed. The drug should be taken before meal. For children, Gliclazide is not used because it is contraindicated in juvenile-onset diabetes.\r\n\r\nModified release preparation: Always take this medicine exactly as your doctor or pharmacist has told you. Check with your doctor or pharmacist if you are not sure. The dose is determined by the doctor, depending on your blood and possibly urine sugar levels. Change in external factors (weight reduction, lifestyle, stress) or improvements in the blood sugar control may require changed gliclazide doses.\r\n\r\nThe recommended daily dose is one to four tablets (maximum 120 mg) in a single intake at breakfast time. This depends on the response to treatment. Gliclazide MR tablet is for oral use. Take your tablet(s) with a glass of water at breakfast time (and preferably at the same time each day). Swallow your whole tablet(s) in one piece. Do not chew or crush. You must always eat a meal after taking your tablet(s).\r\n\r\nIf a combination therapy of gliclazide with metformin, an alpha-glucosidase inhibitor, a thiazolidinedione, a dipeptidyl peptidase-4 inhibitor a GLP-1 receptor agonist or insulin is initiated your doctor will determine the proper dose of each medicine individually for you. If you notice that your blood sugar levels are high although you are taking the medicine as prescribed, you should contact your doctor or pharmacist.\r\n\r\nIf you take more Gliclazide tablets than you should: If you take too many tablets, contact your doctor or the nearest hospital Accident & Emergency department immediately. The signs of overdose are those of low blood sugar (hypoglycaemia). The symptoms can be helped by taking sugar (4 to 6 lumps) or sugary drinks straight away, followed by a substantial snack or meal. If the patient is unconscious immediately inform a doctor and call the emergency services. The same should be done if somebody, (for instance a child), has taken the product unintentionally. Unconscious patients must not be given food or drink. It should be ensured that there is always a pre-informed person that can call a doctor in case of emergency.\r\n\r\nIf you forget to take Gliclazide tablet: It is important to take your medicine every day as regular treatment works better. However, if you forget to take a dose of Gliclazide MR tablet, take the next dose at the usual time. Do not take a double dose to make up for a forgotten dose.\r\n\r\nIf you stop taking Gliclazide MR tablet: As the treatment for diabetes is usually lifelong, you should discuss with your doctor before stopping this medicinal product. Stopping could cause high blood sugar (hyperglycaemia) which increases the risk of developing complications of diabetes. If you have any further questions on the use of this product, ask your doctor or pharmacist.', '2022-06-24 03:01:31', '2022-06-24 03:01:31'),
(42, '11', 'Nevralip 600mg', 'DIABETIC', 'River Pharma', '15', '795.4', '400', '202206240906rk1h0jLHlekqku9rft8mYvXqcWPPoFCTtUguu86E.jpg', 'This tablet has potent antioxidant and neurotrophic properties. This helps you cope with the pain caused by:\r\n \r\n\r\nPeripheral and diabetic neuropathies\r\nSciatica, backache, cervical syndrome, carpal tunnel syndrome\r\nMigraine headaches', '2022-06-24 03:06:47', '2022-06-24 03:06:47'),
(43, '11', 'Tresiba Flex Touch', 'DIABETIC', 'Novo Nordisk', '1', '2415', '50', '202206240910Tresiba-2490.jpg', 'Insulin Degludec Injection', '2022-06-24 03:10:50', '2022-06-24 03:10:50'),
(44, '11', 'Glimicron 80mg', 'DIABETIC', 'White Horse Pharma', '10', '64.4', '40', '202206240913txYh0DHxvBLrnc3VG8MguB3KauRK1MnzCvPwSsX6.jpg', 'Film-coated tablet: The usual initial dose is 40 to 80 mg daily. The dose can be increased up to 320 mg daily in divided doses when needed. The drug should be taken before meal. For children, Gliclazide is not used because it is contraindicated in juvenile-onset diabetes.\r\n\r\nModified release preparation: Always take this medicine exactly as your doctor or pharmacist has told you. Check with your doctor or pharmacist if you are not sure. The dose is determined by the doctor, depending on your blood and possibly urine sugar levels. Change in external factors (weight reduction, lifestyle, stress) or improvements in the blood sugar control may require changed gliclazide doses.\r\n\r\nThe recommended daily dose is one to four tablets (maximum 120 mg) in a single intake at breakfast time. This depends on the response to treatment. Gliclazide MR tablet is for oral use. Take your tablet(s) with a glass of water at breakfast time (and preferably at the same time each day). Swallow your whole tablet(s) in one piece. Do not chew or crush. You must always eat a meal after taking your tablet(s).\r\n\r\nIf a combination therapy of gliclazide with metformin, an alpha-glucosidase inhibitor, a thiazolidinedione, a dipeptidyl peptidase-4 inhibitor a GLP-1 receptor agonist or insulin is initiated your doctor will determine the proper dose of each medicine individually for you. If you notice that your blood sugar levels are high although you are taking the medicine as prescribed, you should contact your doctor or pharmacist.\r\n\r\nIf you take more Gliclazide tablets than you should: If you take too many tablets, contact your doctor or the nearest hospital Accident & Emergency department immediately. The signs of overdose are those of low blood sugar (hypoglycaemia). The symptoms can be helped by taking sugar (4 to 6 lumps) or sugary drinks straight away, followed by a substantial snack or meal. If the patient is unconscious immediately inform a doctor and call the emergency services. The same should be done if somebody, (for instance a child), has taken the product unintentionally. Unconscious patients must not be given food or drink. It should be ensured that there is always a pre-informed person that can call a doctor in case of emergency.\r\n\r\nIf you forget to take Gliclazide tablet: It is important to take your medicine every day as regular treatment works better. However, if you forget to take a dose of Gliclazide MR tablet, take the next dose at the usual time. Do not take a double dose to make up for a forgotten dose.\r\n\r\nIf you stop taking Gliclazide MR tablet: As the treatment for diabetes is usually lifelong, you should discuss with your doctor before stopping this medicinal product. Stopping could cause high blood sugar (hyperglycaemia) which increases the risk of developing complications of diabetes. If you have any further questions on the use of this product, ask your doctor or pharmacist.', '2022-06-24 03:13:55', '2022-06-24 03:13:55'),
(45, '11', 'NovoPen 4', 'DIABETIC', 'Injection', '1', '589', '38', '202206240919novopen-4.jpg', 'This product is a reusable pen for the injection of insulin and does not contain any insulin itself. You will need to obtain insulin cartridges separately. Simplicity - Quick and simple to use, right from the very first time Durability and accuracy - Built to last: Accurate insulin delivery for at least 5 years Convenience - Reassuring end-of-dose click for patient convenience.', '2022-06-24 03:19:30', '2022-06-24 03:19:30'),
(46, '11', 'VivaChek Ino Blood Glucose 50 Test Strips', 'DIABETIC', 'Glusco pharma', '50', '782', '35', '2022062409494URt1NFIdU6NGQB978cfoo88yLwkBM6sP603JnxF.jpeg', '50 test strips\r\nEasy to use\r\nGives first and accurate results\r\nKeep away from heat\r\nDo not keep it at the fridge.', '2022-06-24 03:49:33', '2022-06-24 03:49:33'),
(47, '12', 'Simple Kind to Skin Hydrating Cleansing Oil', 'BEAUTY CARE', 'Simple', '1', '920', '46', '202206241008Simple-Kind-to-Skin-Hydrating-Cleansing-Oil-new.webp', 'Made with pure grapeseed oil and vitamin A and E, deeply cleanses and removes make up and impurities while instantly hydrating your skin leaving it feeling soft and smooth. Our Hydrating Cleansing Oil contains no artificial color and no artificial perfume that can upset your skin. Dermatologically tested . Hypoallergenic, non-comedogenic.\r\n \r\nMade in EU', '2022-06-24 04:08:59', '2022-06-24 04:08:59'),
(48, '12', 'Nivea Essential Lip Care', 'BEAUTY CARE', 'Nivea', '1 (10gm)', '680', '20', '202206241013Nivea-Essential-Lip-Care_sku12763-1-750x750.webp', 'Provides long lasting and intensive care\r\nEffectively protects your lips from dryness in any weather\r\nMoisturizing formula with Shea Butter\r\nDermatologically tested\r\nMineral oil free formula\r\nMild mint fragrance\r\nHelps provide deep and long-lasting moisturisation\r\nHelps to repair sore lips with a protection film with dexpanthenol\r\nIs a light, fast-absorbing and non-greasy formula\r\n \r\nProduct of Germany.\r\nMade in India.', '2022-06-24 04:13:14', '2022-06-24 04:13:14'),
(49, '12', 'Atoderm Intensive Gel Moussant(200ml)', 'BEAUTY CARE', 'Bioderma', '1', '1746', '15', '202206241021Atoderm_Intensive_Gel_Moussant.jpg', 'Cream', '2022-06-24 04:21:35', '2022-06-24 04:21:35'),
(50, '12', 'White Objective Fluid (30ml)', 'BEAUTY CARE', 'Bioderma', '1', '2134', '10', '202206241024White-Objective-Fluid-30ml.jpg', 'White product', '2022-06-24 04:24:12', '2022-06-24 04:24:12'),
(51, '12', 'Bioderma Pigmentbio Night Renewer 50ml', 'BEAUTY CARE', 'Bioderma', '1', '2328', '12', '202206241026lM7ODc0AXLRH3n9X1js2EUw4yYgj42yQHior2BvQ.jpeg', 'Bioderma Pigmentbio Night Renewer is a night cream that not only helps prevent and reduce the appearance of hyperpigmentations but also boosts collagen production and cell renewal, lending you a plumped, radiant and youthful look in the morning.', '2022-06-24 04:26:16', '2022-06-24 04:26:16'),
(52, '12', 'Splendora 5%', 'BEAUTY CARE', 'Square', '1', '553.64', '25', '202206241033pRE1USmtQifyyAAEkWY2fY3fca800Z6QgXQpgsST.jpeg', 'Topical Solution 60ml. Generic Name: Minoxidil\r\n\r\nMinoxidil is indicated in the treatment of androgenic alopecia in males and females and stabilisation of hair loss in patients with androgenic alopecia, and also of alopecia areata.', '2022-06-24 04:33:22', '2022-06-24 04:33:22'),
(53, '12', 'Xtreme 3 in 1 condom', 'SEXUAL WELLBEING', 'SMC', '3', '64.4', '89', '202206241057udigIXpQ48ir1MlMPsAjI722zCSHecxE8xgb3iqI.jpeg', 'XTREME Premium condom will provide your partner all the tingling sensation with their robbed, dotted and contoured features.\r\n\r\nXtreme condoms are designed for pleasure and total reliability. Made from premium quality, natural rubber latex, each Xtreme condom is electrically tested to provide maximum protection and safety.\r\n\r\nXtreme condom will help to reduce the risk of transmission of HIV (AIDS) and many other sexually transmitted diseases (STDs).\r\n\r\nCondom size: 52mm (Width) (Standard)\r\n\r\nA product of Social Marketing Company (SMC)', '2022-06-24 04:57:31', '2022-06-24 04:57:31'),
(54, '12', 'Sensinity Banana Dotted Condom', 'SEXUAL WELLBEING', 'China', '12', '266.8', '50', '202206241101cqQsKYhBoUHx0IO3TYO26GDBYkfsunNZlPq6eUvo.jpeg', 'Made in China', '2022-06-24 05:01:10', '2022-06-24 05:01:10'),
(55, '12', 'Edysta 2.5 mg 10pcs', 'SEXUAL WELLBEING', 'Unimed & Unihealth Manufacturers Ltd.', '10', '100', '50', '202206241106ngqJNMeNiLboryNX3GtGG1tPRbEsOtYFlFw8gx9x.jpg', 'Erectile Dysfunction: For most patients the recommended starting dose is 10 mg. The dose may be increased to 20 mg or decreased to 5 mg based on requirement. The maximum dosing frequency is once daily. Tadalafil is effective for up to 36 hours.\r\n\r\nBenign prostatic hyperplasia: The recommended dose is 5 mg taken at the same time every day.\r\n\r\nCombined Erectile Dysfunction and Benign prostatic hyperplasia: The recommended dose is 5 mg at the same time every day.\r\n\r\nHeadache, Dyspepsia, Back pain, Myalgia, Nasal pharyngitis, Nasal congestion are common side effects. Change in Color Vision, Sudden vision loss, Hearing loss, Stevens-Johnson Syndrome, Exfoliative dermatitis, Angina, Stroke, Myocardial infarction, Severe hypotension, Tachycardia may also occur rarely.', '2022-06-24 05:06:24', '2022-06-24 05:06:24'),
(56, '12', 'Valenty 20mg(box) 4pcs', 'SEXUAL WELLBEING', 'Eskayef Bangladesh Ltd.', '4', '220.8', '45', '202206241206yF5Gecp4mZeUieWHU6EyJ2EIrET5PcGawpm8c0Xe.jpg', 'Vardenafil is used to treat erectile dysfunction (ED).\r\n\r\nDosage: Initial dose: 10 mg orally once a day, as needed, approximately 60 minutes before sexual activity. Increase to 20 mg or decrease to 5 mg based on efficacy and tolerability.\r\nMaximum dose: 20 mg once a day\r\nUsual Geriatric Dose for Erectile Dysfunction (65 years or older): 5 mg orally once a day, as needed, approximately 60 minutes before sexual activity\r\nPatients on stable alpha blocker therapy: 5 mg orally once a day\r\n \r\n\r\nSide effects: Dyspepsia, vomiting, headache, flushing, dizziness, visual disturbances, colour vision changes, raised intra-ocular pressure, nasal congestion, hypersensitivity reactions, nausea, photosensitivity reactions, hypotension, hypertension, priapism, palpitations, myalgia, increased creatinine kinase, sudden decrease or loss of hearing, tinnitus.', '2022-06-24 06:06:32', '2022-06-24 06:06:32'),
(57, '12', 'Pawar 30mg', 'SEXUAL WELLBEING', 'Aristopharma Limited', '10', '322', '30', '202206241210PNVjPflYUQkC1MwGeqn93CtkdtIzMdmCUlQjstS4.jpg', 'tadalafil', '2022-06-24 06:10:15', '2022-06-24 06:10:15'),
(58, '12', 'Silagra 100mg (4Pcs)', 'SEXUAL WELLBEING', 'Incepta Pharmaceuticals Ltd.', '4', '184', '60', '202206241213RCvvsvWyW9dkMqwjTurilBxW1gVL1AzizIu28y8I.jpeg', 'Dosage: The usual starting dose of Sildenafil is 50 mg once daily. lt should be taken before 30-40 minutes of intercourse. Depending on effectiveness and tolerance; the dose may be increased to a maximum recommended dose of 100 mg or decreased to 25 mg. The maximum dosing frequency is once per day. \r\n\r\nSome factors are associated with increased plasma levels of sildenafil: age>65, hepatic impairment, severe renal impairment and concomitant use of ketoconazole, itraconazole, erythromycin. Since higher plasma levels may increase both the efficacy and incidence of adverse events, a starting dose of 25 mg should be considered in these patients.\r\n\r\nSide effects: Like all medicines, Sildenafil can cause side effects although not everybody gets them.The side effects reported in association with the use of Sildenafil are usually mild to moderate and of a short duration. All medicines including Sildenafil can cause allergic reactions. \r\n\r\nContact with doctors immediately if experiences any of the following symptoms after taking Sildenafil: sudden wheeziness, difficulty in breathing or dizziness, swelling of the eyelids, face, lips or throat. Common side effect includes headache, facial flushing, indigestion, effects on vision, light sensitivity, blurred vision or reduced, stuffy nose and dizziness. Uncommon side effect includes vomiting, skin rash, bleeding at the back of the eye, red eyes, eye pain, double vision, abnormal sensation in the eye, irregular or rapid heartbeat, muscle pain, feeling sleepy, reduced sense of touch, vertigo, ringing in the ears, nausea, dry mouth, chest pain & feeling tired.', '2022-06-24 06:13:46', '2022-06-24 06:13:46'),
(59, '12', 'Phenocept 500mg', 'PERSONAL CARE', 'Renata Limited', '30', '1876', '70', '202206241219rlosLAUV5ogeXZatbkACkjMLGjzds2yFwKfAnPCT.jpg', 'Mycophenolate Mofetil', '2022-06-24 06:19:58', '2022-06-24 06:19:58'),
(60, '12', 'Hot water bag -Medium Size', 'PERSONAL CARE', 'Netural rubber', '1', '290', '100', '202206241226hot_bag.jpg', 'Per Pc Hot water bag made of netural rubber.', '2022-06-24 06:26:35', '2022-06-24 06:26:35'),
(61, '12', 'Electric Hot Bottle', 'PERSONAL CARE', 'Square', '1', '290', '58', '202206241229EcFbuOL9Z1MBcM9wjjstz37aHKzdP2Zj2qYXsnqD.jpeg', 'Electric hot bottle', '2022-06-24 06:29:32', '2022-06-24 06:29:32'),
(62, '12', 'Latex Hand Gloves', 'PERSONAL CARE', 'none', '100', '782', '300', '202206241234xEvWCKDZPYA21uoKzOTFAdN3BKp25tdeog1mn9LK.jpeg', 'Hand safety', '2022-06-24 06:34:39', '2022-06-24 06:34:39'),
(63, '12', 'Savlon Liquid Antiseptic 1litre', 'PERSONAL CARE', 'ACI Limited', '1', '202', '400', '202206241237RHhJFHb27zfmyEZkbLfc3eZw6alpGUsWe9QPaPTB.jpeg', 'Antiseptic Liquid', '2022-06-24 06:37:49', '2022-06-24 06:37:49'),
(64, '12', 'Roll Bandage (12pcs) 3\'\'', 'PERSONAL CARE', 'Luna United Co.', '12', '82', '300', '2022062412403_inch_roll_bandage.jpg', 'for surgical dressing', '2022-06-24 06:40:18', '2022-06-24 06:40:18'),
(65, '12', 'Travel Safety Kit (Red Color)', 'PERSONAL CARE', 'epharma', '13', '690', '78', '202206241243zmZphIQbKCratfDhmEEiqSEW8fQAUUEpqsqmE4Ff.jpeg', 'First Aid. Gastric, Fever, Dysentery medicines( adviced to take medicines based on doctor recomndation', '2022-06-24 06:43:23', '2022-06-24 06:43:23'),
(66, '12', 'Good health meltblown face mask 50pcs box', 'PERSONAL CARE', 'Square', '50', '195', '500', '202206241246ysrq3YIx7cS99QPGyK7yfyoLlz0v79EgQqcYgROd.jpeg', 'Mask', '2022-06-24 06:46:49', '2022-06-24 06:46:49'),
(67, '13', 'Vitacare hand sanitizer 260ml - Lemon', 'COVID 19', 'Agrivita', '1', '276', '60', '2022062416336uitjOdeJ8rJijyv6X80aDGNqJiHcFT1cYlqXZux.jpeg', 'Kills 99.99% of germs. With moisturiser and emollient', '2022-06-24 10:33:56', '2022-06-24 10:33:56'),
(68, '13', 'Ivera 12mg', 'COVID 19', 'Beximco Pharmaceuticals Ltd.', '10', '194', '200', '2022062416383I1BLxolB97i3STEopQRQsp2nmC8eH1rrsPYQuCG.jpg', 'Tablet, Ivermectin 12mg', '2022-06-24 10:38:47', '2022-06-24 10:38:47'),
(69, '13', 'Molenzavir 200mg', 'COVID 19', 'Incepta Pharmaceuticals Ltd.', '20', '428', '300', '20220624164355QAffU9WUJw3iyjl1DQgNnKKBpR6ImDh2ITTZla.jpg', 'Molnupiravir is an antiviral medicine used to treat mild to moderate COVID-19 (caused by SARS-CoV-2) in adults who are at risk for developing severe illness. Molnupiravir may help people with COVID-19 stay out of the hospital and feel better.\r\n\r\nMolnupiravir inhibits viral reproduction by promoting widespread mutations in the replication of viral RNA by RNA-directed RNA polymerase. It is metabolized into a ribonucleoside analog that resembles cytidine, β-D-N 4-Hydroxycytidine 5′-triphosphate (also called EIDD-1931 5′-triphosphate or NHC-TP). During replication, the virus\'s enzyme incorporates NHC-TP into newly-made RNA instead of using real cytidine.\r\n\r\nMolnupiravir can swap between two forms (tautomers), one of which mimics cytidine (C) and the other of which mimics uridine (U). NHC-TP is not recognized as an error by the virus\' proofreading exonuclease enzymes, which can replace mutated nucleotides with corrected versions. When the viral RNA polymerase attempts to copy RNA containing molnupiravir, it sometimes interprets it as C and sometimes as U. This causes more mutations in all downstream copies than the virus can survive, an effect called viral error catastrophe or lethal mutagenesis.\r\n\r\nDosage: The recommended dose of Molnupiravir is 800 mg (four 200 mg capsules), every 12 hours for 5 days. Molnupiravir should be started within 5 days of the onset of COVID-19 symptoms.', '2022-06-24 10:43:22', '2022-06-24 10:43:22'),
(70, '13', 'Vitacare hand sanitizer 260ml', 'COVID 19', 'Agrivita', '1', '270', '80', '202206241652YaXbSybc27xqTxjk04tlUdmfJLDycCuh1Z699m3C.jpeg', 'Kills 99.99% of germs. With moisturiser and emollient.', '2022-06-24 10:52:25', '2022-06-24 10:52:25'),
(71, '13', 'Monuvir 200mg', 'COVID 19', 'Eskayef Bangladesh Ltd.', '10', '460', '250', '202206241655lVxW0BJUELFdKBgixgTOyaZR3BxUTeDmHeM41XJ1.jpg', 'Molnupiravir is an antiviral medicine used to treat mild to moderate COVID-19 (caused by SARS-CoV-2) in adults who are at risk for developing severe illness. Molnupiravir may help people with COVID-19 stay out of the hospital and feel better.\r\n\r\nMolnupiravir inhibits viral reproduction by promoting widespread mutations in the replication of viral RNA by RNA-directed RNA polymerase. It is metabolized into a ribonucleoside analog that resembles cytidine, β-D-N 4-Hydroxycytidine 5′-triphosphate (also called EIDD-1931 5′-triphosphate or NHC-TP). During replication, the virus\'s enzyme incorporates NHC-TP into newly-made RNA instead of using real cytidine.\r\n\r\nMolnupiravir can swap between two forms (tautomers), one of which mimics cytidine (C) and the other of which mimics uridine (U). NHC-TP is not recognized as an error by the virus\' proofreading exonuclease enzymes, which can replace mutated nucleotides with corrected versions. When the viral RNA polymerase attempts to copy RNA containing molnupiravir, it sometimes interprets it as C and sometimes as U. This causes more mutations in all downstream copies than the virus can survive, an effect called viral error catastrophe or lethal mutagenesis.\r\n\r\nDosage: The recommended dose of Molnupiravir is 800 mg (four 200 mg capsules), every 12 hours for 5 days. Molnupiravir should be started within 5 days of the onset of COVID-19 symptoms.', '2022-06-24 10:55:51', '2022-06-24 10:55:51'),
(72, '13', 'Molvir 200mg', 'COVID 19', 'Square Pharmaceuticals Ltd.', '10', '460', '150', '202206241658mX5cvjBAcOiawDj0lknD2S4x8NhRIhANadhJ41rY.jpg', 'Molnupiravir is an antiviral medicine used to treat mild to moderate COVID-19 (caused by SARS-CoV-2) in adults who are at risk for developing severe illness. Molnupiravir may help people with COVID-19 stay out of the hospital and feel better.\r\n\r\nMolnupiravir inhibits viral reproduction by promoting widespread mutations in the replication of viral RNA by RNA-directed RNA polymerase. It is metabolized into a ribonucleoside analog that resembles cytidine, β-D-N 4-Hydroxycytidine 5′-triphosphate (also called EIDD-1931 5′-triphosphate or NHC-TP). During replication, the virus\'s enzyme incorporates NHC-TP into newly-made RNA instead of using real cytidine.\r\n\r\nMolnupiravir can swap between two forms (tautomers), one of which mimics cytidine (C) and the other of which mimics uridine (U). NHC-TP is not recognized as an error by the virus\' proofreading exonuclease enzymes, which can replace mutated nucleotides with corrected versions. When the viral RNA polymerase attempts to copy RNA containing molnupiravir, it sometimes interprets it as C and sometimes as U. This causes more mutations in all downstream copies than the virus can survive, an effect called viral error catastrophe or lethal mutagenesis.\r\n\r\nDosage: The recommended dose of Molnupiravir is 800 mg (four 200 mg capsules), every 12 hours for 5 days. Molnupiravir should be started within 5 days of the onset of COVID-19 symptoms.\r\n\r\nThis medicine can be taken with or without food.\r\n\r\nSide Effects: Common side effects include diarrhoea, nausea, feeling dizzy, headache.', '2022-06-24 10:58:51', '2022-06-24 10:58:51'),
(73, '13', 'Mccons KN95 Mask 1pc', 'COVID 19', 'McCons, GB 2626-2006', '1 pac', '90', '480', '202206241702JxDddQ4tETyZOjAYaB7SB9GLsCMyjtMevZu1eAB8.jpeg', 'Filters out dust, Bacteria, Smoke & Pollen', '2022-06-24 11:02:49', '2022-06-24 11:02:49'),
(74, '13', 'PPE white L or XL size 1 set', 'COVID 19', 'Square', '1 pac', '290', '480', '202206241714a0F3duvQID3xRPH7xIyQ8TPtUIcB6sOAJT73KcY2.jpg', 'Washable PPE (1 Pc Shirt, 1 Pc Pant, 1 Pc Head cover, 1 Pair shoe cover, 1 Pair hand gloves, 1 Pc surgical mask )\r\n\r\nColor: White with black border\r\n\r\nSize: L or XL', '2022-06-24 11:14:20', '2022-06-24 11:14:20'),
(75, '13', 'Surgical Mask 3ply Nose bar 1pc', 'COVID 19', 'None', '1', '5', '1499', '202206241718AiT9cqnHEDCbpfAW251jyODntnp8eMNV6MEqxLdV.jpeg', 'Surgical Mask 3ply with nose bar. Virus protection', '2022-06-24 11:18:45', '2022-06-24 11:18:45'),
(76, '13', 'Favipira 200mg (10pcs)', 'COVID 19', 'Beacon Pharmaceuticals Ltd.', '20 pack', '1900', '60', '202206241725dsCcxDhKWOUkL86oNaZxx5RrnyGUT18XgphmITQL.jpeg', 'Treatment of novel or re-emerging pandemic influenza virus infections (limited to cases in which other influenza antiviral drugs are ineffective or not sufficiently effective).\r\n\r\nDosage: The usual adult dosage is 1600 mg of Favipiravir administered orally twice daily on Day 1, followed by 600 mg orally twice daily from Day 2 to Day 5 or as directed by physicians. The total treatment duration should be 5 days.\r\n\r\nSide effects: Most common side effects are Diarrhea and increase of blood uric acid levels.', '2022-06-24 11:25:54', '2022-06-24 11:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user1_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user2_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user2_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user1_id`, `user1_name`, `user2_id`, `user2_name`, `status`, `created_at`, `updated_at`) VALUES
(118, '12', 'test User', '2', 'Md. Rezuan Huusen', 'open', '2022-06-24 21:24:38', '2022-06-24 21:24:38'),
(119, '6', 'rezuan', '11', 'Infinity Pharma', 'open', '2022-06-24 22:25:03', '2022-06-24 22:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `acc_status`, `phone`, `address`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'rezuan', 'rezuan@gmail.com', 'active', '01703048018', 'Uttora', '$2y$10$e10.vBY1rVvQzIL7KoDu1OGdSqOBXtbdf3ZH0gDN78AQRnqkTcHlW', NULL, NULL, '2022-04-13 13:05:04', '2022-06-18 15:29:19'),
(11, 'Sariful Islam', '2018000000138@seu.edu.bd', 'active', '01626026508', 'Nikunju, Dhaka', '$2y$10$e10.vBY1rVvQzIL7KoDu1OGdSqOBXtbdf3ZH0gDN78AQRnqkTcHlW', NULL, NULL, '2022-06-23 12:28:26', '2022-06-23 12:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `shopname`, `acc_status`, `phone`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Infinity Pharma', 'active', '01626026508', 'Uttara, Dhaka', 'infinity@gmail.com', NULL, '$2y$10$.luPm51Lqz4ue9KFlHctt.yjtb.D6tZA/txuQS.krxMhQlDbnyMqW', NULL, '2022-06-23 22:04:34', '2022-06-24 15:24:08'),
(12, 'Hashi_khusi Pharma', 'active', '01715450508', 'Khilkhet, Dhaka', 'hashikhushi@gmail.com', NULL, '$2y$10$.luPm51Lqz4ue9KFlHctt.yjtb.D6tZA/txuQS.krxMhQlDbnyMqW', NULL, '2022-06-24 04:00:06', '2022-06-24 04:02:10'),
(13, 'Anik Pharma', 'active', '01769845634', 'Nikunju-2,Dhaka', 'anikpharma@gmail.com', NULL, '$2y$10$.luPm51Lqz4ue9KFlHctt.yjtb.D6tZA/txuQS.krxMhQlDbnyMqW', NULL, '2022-06-24 09:44:20', '2022-06-24 09:48:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
