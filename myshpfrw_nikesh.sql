-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2021 at 09:47 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshpfrw_nikesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `adjustment` int(11) NOT NULL DEFAULT 0,
  `activity` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(1, 'Fresh Food', 1),
(2, 'Frozen Food', 1),
(3, 'Groceries', 1),
(4, 'Beverages', 1),
(5, 'Dairy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `price` varchar(255) NOT NULL DEFAULT '500',
  `discount` int(255) NOT NULL DEFAULT 0,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `shop_loc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `order_no` varchar(200) NOT NULL,
  `p_id` varchar(200) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `bprice` varchar(255) DEFAULT NULL,
  `price` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `sub_t` varchar(200) NOT NULL,
  `store` varchar(200) DEFAULT NULL,
  `route` varchar(200) NOT NULL,
  `town` varchar(200) NOT NULL,
  `r_price` varchar(200) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `exchange` varchar(255) DEFAULT NULL,
  `collected` int(11) DEFAULT NULL,
  `packed` int(11) DEFAULT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_added` varchar(255) DEFAULT NULL,
  `cancel_items` int(255) NOT NULL DEFAULT 0,
  `add_items` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_session`
--

CREATE TABLE `cart_session` (
  `id` int(11) NOT NULL,
  `p_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `colour` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `store` varchar(255) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `c_id` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_phone` varchar(200) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `added_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`, `description`, `brand_id`, `images`) VALUES
(1, 'Fruits and Vegetables', 1, NULL, 3, 'kales.png'),
(2, 'Cereals', 1, NULL, 3, 'rice.jpg'),
(6, 'Frozen food', 1, NULL, 2, 'beef.png'),
(7, 'Food Menu', 1, NULL, 1, 'biryani.png'),
(8, 'Non Alcoholic Drinks', 1, NULL, 4, 'soda.png'),
(9, ' Alcoholic Drinks', 1, NULL, 4, 'johnnywalker.png'),
(10, 'Dairy Product', 1, NULL, 5, 'milk.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories_sub`
--

CREATE TABLE `categories_sub` (
  `id` int(11) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `subcat_id` varchar(255) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_sub`
--

INSERT INTO `categories_sub` (`id`, `subcategory`, `subcat_id`, `cat_id`, `images`) VALUES
(1, 'vegetables', NULL, 1, 'kales.png'),
(2, 'fruits', NULL, 1, 'mangoes.png'),
(3, 'Frozen Meat', NULL, 6, 'beef.png'),
(4, 'SeaFood', NULL, 6, 'lobster.png'),
(5, 'Icecream', NULL, 2, 'vanilla.png'),
(6, 'Main Course', '', 7, 'biryani.png'),
(7, 'Snacks', '', 7, 'chips.png'),
(8, 'Desserts', '', 7, 'oreo dessert pot.png'),
(9, 'Beer', NULL, 4, 'tusker.png'),
(10, 'Wine', NULL, 4, 'whitewine.png'),
(11, 'Dairy Products', NULL, 5, 'milk.png'),
(12, 'Cognac', NULL, 9, 'hennessy.png'),
(13, 'Soft Drinks', NULL, 8, 'soda.png'),
(14, 'vodka', NULL, 9, 'smirnoffvodka.png'),
(15, 'whiskey', NULL, 9, 'johnnywalker.png'),
(16, 'hot beverages', NULL, 8, 'tea.png'),
(19, 'cereals', NULL, 2, 'rice.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `message_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `recipient_id` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colour_group`
--

CREATE TABLE `colour_group` (
  `colour_id` int(11) NOT NULL,
  `colour` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

CREATE TABLE `counties` (
  `id` int(11) NOT NULL,
  `county` varchar(255) NOT NULL,
  `Courier` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `county_towns`
--

CREATE TABLE `county_towns` (
  `id` int(11) NOT NULL,
  `county_id` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `credit` varchar(255) NOT NULL DEFAULT '0',
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `location` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `avatar` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `add_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `logged` varchar(255) DEFAULT '1601265600'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `store_credit` varchar(255) DEFAULT NULL,
  `register_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cust_suggestions`
--

CREATE TABLE `cust_suggestions` (
  `suggestion_id` int(11) NOT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `bill_id` varchar(100) NOT NULL,
  `rider_id` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `cash` varchar(255) DEFAULT NULL,
  `cod` varchar(200) NOT NULL DEFAULT '0',
  `cash_received` varchar(200) DEFAULT NULL,
  `admin_received` varchar(255) DEFAULT NULL,
  `mpesa` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `accept` varchar(200) NOT NULL DEFAULT '0',
  `priority` varchar(200) DEFAULT NULL,
  `reasons` varchar(1000) DEFAULT NULL,
  `exchange` int(11) DEFAULT NULL,
  `rejection` varchar(200) DEFAULT NULL,
  `returned` int(11) DEFAULT NULL,
  `stocked` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `assigned_dt` varchar(255) DEFAULT NULL,
  `dt` timestamp NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `swapper` varchar(255) DEFAULT NULL,
  `date_swapped` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `Code_id` int(11) NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `Min_quantity_req` varchar(255) DEFAULT NULL,
  `min_type` varchar(255) NOT NULL DEFAULT 'items',
  `Usage_limits` varchar(255) NOT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts_used`
--

CREATE TABLE `discounts_used` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `times` varchar(255) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecommusers`
--

CREATE TABLE `ecommusers` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `date_added` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense` varchar(100) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `dt` varchar(255) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `field_expenses`
--

CREATE TABLE `field_expenses` (
  `id` int(11) NOT NULL,
  `rider_id` varchar(255) NOT NULL,
  `rider_name` varchar(255) NOT NULL,
  `expense` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `received_status` varchar(255) DEFAULT NULL,
  `date_added` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `index_manager`
--

CREATE TABLE `index_manager` (
  `uploads_id` int(11) NOT NULL,
  `wt2` varchar(255) NOT NULL,
  `wt3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_payments`
--

CREATE TABLE `mobile_payments` (
  `transLoID` int(11) NOT NULL,
  `TransactionType` varchar(255) NOT NULL,
  `TransID` varchar(255) NOT NULL,
  `TransTime` varchar(255) NOT NULL,
  `TransAmount` varchar(255) NOT NULL,
  `BusinessShortCode` varchar(255) NOT NULL,
  `BillRefNumber` varchar(255) NOT NULL,
  `InvoiceNumber` varchar(255) NOT NULL,
  `OrgAccountBalance` varchar(255) NOT NULL,
  `ThirdPartyTransID` varchar(255) NOT NULL,
  `MSISDN` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `request_id` int(11) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL DEFAULT '0',
  `service_charge` varchar(255) NOT NULL DEFAULT '0',
  `vat_charge_rate` varchar(255) NOT NULL DEFAULT '0',
  `vat_charge` varchar(255) NOT NULL DEFAULT '0',
  `net_amount` varchar(255) NOT NULL,
  `o_net` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `free_delivery` varchar(255) DEFAULT NULL,
  `delfee` varchar(255) DEFAULT NULL,
  `paid_status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `packed` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `exchange` int(11) DEFAULT NULL,
  `shared` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `partial` varchar(255) DEFAULT NULL,
  `partial_amount` varchar(255) NOT NULL DEFAULT '0',
  `partial_pay` varchar(255) DEFAULT NULL,
  `partial_pay_cash` varchar(255) DEFAULT NULL,
  `partial_pay_amount` varchar(255) DEFAULT NULL,
  `store_credit` int(11) NOT NULL DEFAULT 0,
  `partial_location` varchar(255) DEFAULT NULL,
  `partial_user_id` varchar(255) DEFAULT NULL,
  `partial_shift_id` varchar(255) DEFAULT NULL,
  `partial_dt` varchar(255) DEFAULT NULL,
  `eqCode` varchar(255) DEFAULT NULL,
  `partial_eqCode` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL DEFAULT '0000',
  `reciept_no` varchar(200) NOT NULL DEFAULT '0000',
  `shift_id` varchar(255) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `cancel_order` int(11) NOT NULL DEFAULT 0,
  `add_order` int(11) NOT NULL DEFAULT 0,
  `archive` int(11) NOT NULL DEFAULT 0,
  `cancelled_by` varchar(255) DEFAULT NULL,
  `cancelled_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `Exchange` varchar(255) DEFAULT NULL,
  `Approved` varchar(255) DEFAULT NULL,
  `Collected` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT '0',
  `packed` varchar(255) DEFAULT NULL,
  `store` varchar(255) NOT NULL DEFAULT 'G12',
  `cancel_items` int(255) NOT NULL DEFAULT 0,
  `add_items` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parcel`
--

CREATE TABLE `parcel` (
  `id` int(11) NOT NULL,
  `bill_id` varchar(100) NOT NULL,
  `rider_id` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `cod` varchar(200) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `accept` varchar(200) NOT NULL DEFAULT '0',
  `priority` varchar(200) DEFAULT NULL,
  `reasons` varchar(1000) DEFAULT NULL,
  `receipt` varchar(200) DEFAULT NULL,
  `dt` timestamp NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `swapper` varchar(255) DEFAULT NULL,
  `date_swapped` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments_table`
--

CREATE TABLE `payments_table` (
  `payment_id` int(11) NOT NULL,
  `Amount` varchar(255) NOT NULL,
  `MpesaReceipt` varchar(255) NOT NULL,
  `TransactionDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `PhoneNumber` varchar(255) NOT NULL,
  `CheckoutRequestID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_order`
--

CREATE TABLE `pre_order` (
  `pre_order_id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `CheckoutRequestID` varchar(255) NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `dprice` int(11) NOT NULL,
  `per` varchar(255) NOT NULL DEFAULT '1',
  `discode` varchar(255) DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `sizes` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `stock_status` varchar(255) NOT NULL DEFAULT '1',
  `date_stocked` varchar(255) DEFAULT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `cost`, `price`, `dprice`, `per`, `discode`, `discount`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`, `sizes`, `quantity`, `stock_status`, `date_stocked`, `sub_category_id`) VALUES
(1, 'mango', 'MA13', 0, 50, 0, '1', NULL, 10, 14, 'mangoes.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(2, 'Avocado', 'MA13', 0, 30, 0, '1', NULL, 8, 39, 'Avocado.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(3, 'Oranges', 'MA13', 0, 30, 0, '1', NULL, 6, 12, 'oranges.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(4, 'pineapples', 'MA13', 0, 30, 0, '1', NULL, 8, 10, 'pineapple.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(5, 'Bananas', 'MA13', 0, 50, 0, '1', NULL, 7, 25, 'banana.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(6, 'Tomatos', 'MA13', 0, 30, 0, '1', NULL, 12, 21, 'tomatos.jpg', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 2),
(7, 'Cabbages', 'MA13', 0, 30, 0, '1', NULL, 5, 54, 'cabbages.jpg', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(8, 'Corriander Leaves', 'MA13', 0, 30, 0, '1', NULL, 7, 10, 'Corriander_leaves.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(9, 'Brocollis', 'MA13', 0, 30, 0, '1', NULL, 0, 30, 'brocoli.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(10, 'Garlic', 'MA13', 0, 30, 0, '1', NULL, 0, 15, 'Garlic.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(11, 'Kales', 'MA13', 0, 30, 0, '1', NULL, 0, 16, 'kales.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(12, 'Peas', 'MA13', 0, 30, 0, '1', NULL, 0, 48, 'peas.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(13, 'Carrots', 'MA13', 0, 30, 0, '1', NULL, 0, 20, 'Carrots.png', '', NULL, '3', 1, 0, 0, NULL, 0, '1', NULL, 1),
(14, 'crab', 'MA13', 0, 200, 0, '1', NULL, 0, 16, 'crab.png', '', NULL, '2', 1, 0, 0, NULL, 0, '1', NULL, 4),
(15, 'lobster', 'MA13', 0, 200, 0, '1', NULL, 0, 18, 'lobster.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 4),
(16, 'octopus', 'MA13', 0, 1200, 0, '1', NULL, 0, 27, 'Octopus.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 4),
(17, 'shrimps', 'MA13', 0, 200, 0, '1', NULL, 0, 21, 'shrimps.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 4),
(18, 'tuna', 'MA13', 0, 300, 0, '1', NULL, 0, 20, 'tuna.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 4),
(19, 'Beef', 'MA13', 0, 550, 0, '1', NULL, 0, 25, 'beef.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 3),
(20, 'Mutton', 'MA13', 0, 300, 0, '1', NULL, 0, 20, 'mutton.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 3),
(21, 'Bacon', 'MA13', 0, 500, 0, '1', NULL, 0, 15, 'bacon.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 3),
(22, 'chicken', 'MA13', 0, 700, 0, '1', NULL, 0, 10, 'chicken.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 3),
(23, 'lamb', 'MA13', 0, 200, 0, '1', NULL, 0, 45, 'lamb.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 3),
(24, 'vanilla', 'MA13', 0, 200, 0, '1', NULL, 0, 65, 'vanilla.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 5),
(25, 'chocolate', 'MA13', 0, 200, 0, '1', NULL, 0, 70, 'chocolate.png', '', NULL, '2', 6, 0, 0, NULL, 0, '1', NULL, 5),
(26, 'White wine', 'MA13', 0, 200, 0, '1', NULL, 0, 40, 'whitewine.png', '', NULL, '2', 0, 0, 0, NULL, 0, '1', NULL, 0),
(27, 'REd Wine', 'MA13', 0, 200, 0, '1', NULL, 0, 34, 'redwine.png', '', NULL, '2', 0, 0, 0, NULL, 0, '1', NULL, 0),
(28, 'Tusker', 'MK13', 0, 350, 0, '1', NULL, 0, 45, 'tusker.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 9),
(29, 'Plisner', 'MK13', 0, 350, 0, '1', NULL, 0, 54, 'pilsner.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 9),
(30, 'biryani', 'MK13', 0, 400, 0, '1', NULL, 0, 23, 'biryani.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 6),
(31, 'pilau', 'MK13', 0, 400, 0, '1', NULL, 0, 15, 'pilau.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 6),
(32, 'pasta', 'MK13', 0, 300, 0, '1', NULL, 0, 14, 'pasta.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 6),
(33, 'sandwich', 'MK13', 0, 400, 0, '1', NULL, 0, 45, 'sandwich.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 7),
(34, 'hamburger', 'MK13', 0, 350, 0, '1', NULL, 0, 32, 'hamburger.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 7),
(35, 'Bhajia', 'MK13', 0, 350, 0, '1', NULL, 0, 56, 'bhajia.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 7),
(36, 'pizza', 'MK13', 0, 350, 0, '1', NULL, 0, 66, 'pizza.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 7),
(37, 'oreo desser pot', 'MK13', 0, 250, 0, '1', NULL, 0, 45, 'oreo dessert pot.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 8),
(38, 'fudge cake', 'MK13', 0, 250, 0, '1', NULL, 0, 36, 'fudgecake.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 8),
(40, 'Chocolate cake roll', 'MK13', 0, 250, 0, '1', NULL, 0, 45, 'chocolate_cake_roll.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 7),
(41, 'vanilla', 'MK13', 0, 150, 0, '1', NULL, 0, 23, 'vanilla.png', '', NULL, '1', 7, 0, 0, NULL, 0, '1', NULL, 6),
(42, 'Martell', 'MK13', 0, 5000, 0, '1', NULL, 0, 223, 'martell.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 12),
(43, 'Hennessy', 'MK13', 0, 5000, 0, '1', NULL, 0, 35, 'hennessy.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 12),
(44, 'Absolute vodka', 'MK13', 0, 2000, 0, '1', NULL, 0, 45, 'absolutevodka.jpg', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 114),
(45, 'Blue Ice', 'MK13', 0, 1500, 0, '1', NULL, 0, 0, 'blueicevodka.jpg', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 14),
(46, 'Smirnoff Vodka', 'MK13', 0, 1500, 0, '1', NULL, 0, 0, 'smirnoffvodka.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 14),
(47, 'Black and White', 'MK13', 0, 1500, 0, '1', NULL, 0, 0, 'blackandwhite.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 15),
(48, 'Jack Daniels', 'MK13', 0, 5000, 0, '1', NULL, 0, 0, 'jackdaniels.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 15),
(49, 'Johny Walker', 'MK13', 0, 6000, 0, '1', NULL, 0, 0, 'johnnywalker.png', '', NULL, '4', 9, 0, 0, NULL, 0, '1', NULL, 15),
(50, 'Afia Juice', 'MK13', 0, 200, 0, '1', NULL, 0, 0, 'afiajuice.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 13),
(51, ' soda', 'MK13', 0, 100, 0, '1', NULL, 0, 0, 'soda.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 13),
(52, 'Fresh mango juice', 'MK13', 0, 150, 0, '1', NULL, 0, 66, 'mangojuice.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 13),
(53, 'Fresh Apple Juice', 'MK13', 0, 150, 0, '1', NULL, 0, 56, 'applejuice.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 13),
(54, 'tea', 'MK13', 0, 5000, 0, '1', NULL, 0, 0, 'tea.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 16),
(55, 'Coffee', 'MK13', 0, 5000, 0, '1', NULL, 0, 0, 'coffee.png', '', NULL, '4', 8, 0, 0, NULL, 0, '1', NULL, 16),
(56, 'Milk', 'MK13', 0, 100, 0, '1', NULL, 0, 0, 'milk.png', '', NULL, '5', 10, 0, 0, NULL, 0, '1', NULL, 11),
(57, 'Yoghurt', 'MK13', 0, 150, 0, '1', NULL, 0, 0, 'yoghurt.png', '', NULL, '5', 10, 0, 0, NULL, 0, '1', NULL, 11),
(58, 'Butter', 'MK13', 0, 100, 0, '1', NULL, 0, 0, 'butter.png', '', NULL, '5', 10, 0, 0, NULL, 0, '1', NULL, 11),
(59, 'rice', 'MK13', 0, 300, 0, '1', NULL, 0, 0, 'rice.jpg', '', NULL, '3', 2, 0, 0, NULL, 0, '1', NULL, 19),
(60, 'barley', 'MK13', 0, 300, 0, '1', NULL, 0, 0, 'barley.jpg', '', NULL, '3', 2, 0, 0, NULL, 0, '1', NULL, 19),
(61, 'sorghum', 'MK13', 0, 300, 0, '1', NULL, 0, 0, 'sorghum.png', '', NULL, '3', 2, 0, 0, NULL, 0, '1', NULL, 19),
(62, 'oats', 'MK13', 0, 300, 0, '1', NULL, 0, 0, 'oats.png', '', NULL, '3', 2, 0, 0, NULL, 0, '1', NULL, 19),
(63, 'popcorn', 'MK13', 0, 300, 0, '1', NULL, 0, 36, 'popcorn.png', '', NULL, '3', 2, 0, 0, NULL, 0, '1', NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `orders` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantty` varchar(255) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `colour` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contacts` varchar(255) NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `stocked` int(11) DEFAULT NULL,
  `approved` varchar(255) DEFAULT '0',
  `collected` varchar(255) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `stocker` varchar(255) DEFAULT NULL,
  `date_stocked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `level` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'rider',
  `assistant` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `place_of_residence` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `next_of_kin` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `good_conduct` varchar(255) DEFAULT NULL,
  `logged` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_location`
--

CREATE TABLE `saved_location` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `route_id` varchar(255) DEFAULT NULL,
  `town_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'D',
  `user_id` varchar(255) DEFAULT NULL,
  `LandMark` varchar(255) DEFAULT NULL,
  `saved_date` varchar(2555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(11) NOT NULL,
  `shift_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `close` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speftown`
--

CREATE TABLE `speftown` (
  `id` int(11) NOT NULL,
  `town_id` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_thoughts`
--

CREATE TABLE `staff_thoughts` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT '2',
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swap`
--

CREATE TABLE `swap` (
  `id` int(11) NOT NULL,
  `ordid` varchar(255) DEFAULT NULL,
  `swapper_id` varchar(255) DEFAULT NULL,
  `swapper` varchar(255) DEFAULT NULL,
  `swappee` varchar(255) DEFAULT NULL,
  `date_swapped` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testcart`
--

CREATE TABLE `testcart` (
  `id` int(11) NOT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `p_id` varchar(50) NOT NULL,
  `p_name` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `town` varchar(200) NOT NULL,
  `pseudo` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testorders`
--

CREATE TABLE `testorders` (
  `bill_no` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `customer_phone` varchar(200) NOT NULL,
  `gross_amount` varchar(200) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `eqCode` varchar(200) NOT NULL,
  `delfee` varchar(200) NOT NULL,
  `reciept_no` varchar(200) NOT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `user_id` int(50) NOT NULL,
  `date_time` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `totals`
--

CREATE TABLE `totals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trx` varchar(255) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `transfer` int(11) NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `rider_id` varchar(255) NOT NULL,
  `rider_name` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `stop` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `used`
--

CREATE TABLE `used` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `transLoID` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `assistant` int(11) NOT NULL DEFAULT 0,
  `location` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `logged` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wallhist`
--

CREATE TABLE `wallhist` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `approve` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_session`
--
ALTER TABLE `cart_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_sub`
--
ALTER TABLE `categories_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colour_group`
--
ALTER TABLE `colour_group`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county_towns`
--
ALTER TABLE `county_towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cust_suggestions`
--
ALTER TABLE `cust_suggestions`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`Code_id`);

--
-- Indexes for table `ecommusers`
--
ALTER TABLE `ecommusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_expenses`
--
ALTER TABLE `field_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_manager`
--
ALTER TABLE `index_manager`
  ADD PRIMARY KEY (`uploads_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_payments`
--
ALTER TABLE `mobile_payments`
  ADD PRIMARY KEY (`transLoID`),
  ADD UNIQUE KEY `TransID` (`TransID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel`
--
ALTER TABLE `parcel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_table`
--
ALTER TABLE `payments_table`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pre_order`
--
ALTER TABLE `pre_order`
  ADD PRIMARY KEY (`pre_order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `saved_location`
--
ALTER TABLE `saved_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speftown`
--
ALTER TABLE `speftown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_thoughts`
--
ALTER TABLE `staff_thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swap`
--
ALTER TABLE `swap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testcart`
--
ALTER TABLE `testcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totals`
--
ALTER TABLE `totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used`
--
ALTER TABLE `used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallhist`
--
ALTER TABLE `wallhist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_session`
--
ALTER TABLE `cart_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories_sub`
--
ALTER TABLE `categories_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colour_group`
--
ALTER TABLE `colour_group`
  MODIFY `colour_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counties`
--
ALTER TABLE `counties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `county_towns`
--
ALTER TABLE `county_towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cust_suggestions`
--
ALTER TABLE `cust_suggestions`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `Code_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommusers`
--
ALTER TABLE `ecommusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_expenses`
--
ALTER TABLE `field_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `index_manager`
--
ALTER TABLE `index_manager`
  MODIFY `uploads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_payments`
--
ALTER TABLE `mobile_payments`
  MODIFY `transLoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parcel`
--
ALTER TABLE `parcel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_table`
--
ALTER TABLE `payments_table`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_order`
--
ALTER TABLE `pre_order`
  MODIFY `pre_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_location`
--
ALTER TABLE `saved_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speftown`
--
ALTER TABLE `speftown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_thoughts`
--
ALTER TABLE `staff_thoughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `swap`
--
ALTER TABLE `swap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testcart`
--
ALTER TABLE `testcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `totals`
--
ALTER TABLE `totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `used`
--
ALTER TABLE `used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallhist`
--
ALTER TABLE `wallhist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
