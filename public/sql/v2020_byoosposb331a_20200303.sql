-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 03 mars 2020 à 11:34
-- Version du serveur :  10.3.22-MariaDB-1:10.3.22+maria~stretch-log
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `v2020_byoosposb331`
--

-- --------------------------------------------------------

--
-- Structure de la table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(50) NOT NULL,
  `value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Elig Essono \r\nYaoundé'),
('allow_duplicate_barcodes', '0'),
('barcode_content', 'id'),
('barcode_first_row', 'category'),
('barcode_font', '0'),
('barcode_font_size', '10'),
('barcode_formats', 'null'),
('barcode_generate_if_empty', '0'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('cash_decimals', '2'),
('cash_rounding_code', '1'),
('company', 'BLUE POWER'),
('company_logo', 'company_logo.png'),
('country_codes', 'fr'),
('currency_code', 'XXX'),
('currency_decimals', '2'),
('currency_symbol', 'XAF'),
('customer_reward_enable', '0'),
('dateformat', 'd/m/Y'),
('date_or_time_format', ''),
('default_receivings_discount', '0'),
('default_receivings_discount_type', '0'),
('default_register_mode', 'sale'),
('default_sales_discount', '0'),
('default_sales_discount_type', '0'),
('default_tax_1_name', ''),
('default_tax_1_rate', ''),
('default_tax_2_name', ''),
('default_tax_2_rate', ''),
('default_tax_category', 'Standard'),
('default_tax_code', ''),
('default_tax_jurisdiction', ''),
('default_tax_rate', '8'),
('derive_sale_quantity', '0'),
('dinner_table_enable', '0'),
('email', 'contact@bluepower.energy'),
('email_receipt_check_behaviour', 'last'),
('enforce_privacy', '0'),
('fax', ''),
('financial_year', '1'),
('gcaptcha_enable', '0'),
('gcaptcha_secret_key', ''),
('gcaptcha_site_key', ''),
('giftcard_number', 'series'),
('include_hsn', '0'),
('invoice_default_comments', 'This is a default comment'),
('invoice_email_message', 'Dear {CU}, In attachment the receipt for sale {ISEQ}'),
('invoice_enable', '1'),
('invoice_type', 'invoice'),
('language', 'french'),
('language_code', 'fr'),
('last_used_invoice_number', '0'),
('last_used_quote_number', '0'),
('last_used_work_order_number', '0'),
('lines_per_page', '25'),
('line_sequence', '0'),
('mailpath', '/usr/sbin/sendmail'),
('msg_msg', ''),
('msg_pwd', ''),
('msg_src', ''),
('msg_uid', ''),
('multi_pack_enabled', '0'),
('notify_horizontal_position', 'center'),
('notify_vertical_position', 'bottom'),
('number_locale', 'fr'),
('payment_options_order', 'cashdebitcredit'),
('phone', '+237655121152'),
('print_bottom_margin', '0'),
('print_delay_autoreturn', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_receipt_check_behaviour', 'last'),
('print_right_margin', '0'),
('print_silently', '1'),
('print_top_margin', '0'),
('protocol', 'mail'),
('quantity_decimals', '0'),
('quote_default_comments', 'This is a default quote comment'),
('receipt_font_size', '12'),
('receipt_show_company_name', '1'),
('receipt_show_description', '1'),
('receipt_show_serialnumber', '1'),
('receipt_show_taxes', '0'),
('receipt_show_tax_ind', '0'),
('receipt_show_total_discount', '1'),
('receipt_template', 'receipt_default'),
('receiving_calculate_average_price', '0'),
('recv_invoice_format', '{CO}'),
('return_policy', 'https://lemonde.co.il/actualites-israel/la-multinationale-israelienne-blue-power-va-developper-un-projet-denergie-solaire-au-cameroun/'),
('sales_invoice_format', '{CO}'),
('sales_quote_format', 'Q%y{QSEQ:6}'),
('smtp_crypto', 'ssl'),
('smtp_host', ''),
('smtp_pass', ''),
('smtp_port', '465'),
('smtp_timeout', '5'),
('smtp_user', ''),
('suggestions_first_column', 'name'),
('suggestions_second_column', ''),
('suggestions_third_column', ''),
('tax_decimals', '2'),
('tax_id', ''),
('tax_included', '0'),
('theme', 'flatly'),
('thousands_separator', '1'),
('timeformat', 'H:i:s'),
('timezone', 'America/New_York'),
('use_destination_based_tax', '0'),
('website', 'https://www.bluepower.energy/accueil'),
('work_order_enable', '0'),
('work_order_format', 'W%y{WSEQ:6}');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_attribute_definitions`
--

CREATE TABLE `ospos_attribute_definitions` (
  `definition_id` int(10) NOT NULL,
  `definition_name` varchar(255) NOT NULL,
  `definition_type` varchar(45) NOT NULL,
  `definition_unit` varchar(16) DEFAULT NULL,
  `definition_flags` tinyint(4) NOT NULL,
  `definition_fk` int(10) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_attribute_links`
--

CREATE TABLE `ospos_attribute_links` (
  `attribute_id` int(11) DEFAULT NULL,
  `definition_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `receiving_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_attribute_values`
--

CREATE TABLE `ospos_attribute_values` (
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) DEFAULT NULL,
  `attribute_date` date DEFAULT NULL,
  `attribute_decimal` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_cash_up`
--

CREATE TABLE `ospos_cash_up` (
  `cashup_id` int(10) NOT NULL,
  `open_date` timestamp NULL DEFAULT current_timestamp(),
  `close_date` timestamp NULL DEFAULT NULL,
  `open_amount_cash` decimal(15,2) NOT NULL,
  `transfer_amount_cash` decimal(15,2) NOT NULL,
  `note` int(1) NOT NULL,
  `closed_amount_cash` decimal(15,2) NOT NULL,
  `closed_amount_card` decimal(15,2) NOT NULL,
  `closed_amount_check` decimal(15,2) NOT NULL,
  `closed_amount_total` decimal(15,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `open_employee_id` int(10) NOT NULL,
  `close_employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `closed_amount_due` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT 1,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `package_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(10) NOT NULL,
  `consent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `tax_id`, `sales_tax_code_id`, `discount`, `discount_type`, `package_id`, `points`, `deleted`, `date`, `employee_id`, `consent`) VALUES
(2, NULL, NULL, 1, '', NULL, '0.00', 0, NULL, NULL, 0, '2020-02-29 02:45:11', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_customers_packages`
--

CREATE TABLE `ospos_customers_packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `points_percent` float NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_customers_packages`
--

INSERT INTO `ospos_customers_packages` (`package_id`, `package_name`, `points_percent`, `deleted`) VALUES
(1, 'Default', 0, 0),
(2, 'Bronze', 10, 0),
(3, 'Silver', 20, 0),
(4, 'Gold', 30, 0),
(5, 'Premium', 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_customers_points`
--

CREATE TABLE `ospos_customers_points` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_dinner_tables`
--

CREATE TABLE `ospos_dinner_tables` (
  `dinner_table_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_dinner_tables`
--

INSERT INTO `ospos_dinner_tables` (`dinner_table_id`, `name`, `status`, `deleted`) VALUES
(1, 'Delivery', 0, 0),
(2, 'Take Away', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `hash_version` int(1) NOT NULL DEFAULT 2,
  `language` varchar(48) DEFAULT NULL,
  `language_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`, `hash_version`, `language`, `language_code`) VALUES
('admin', '$2y$10$jq98SQCnYwScKCfaaHLCUew7vSXFBbAXLgv1xpshvYpOGHZGAUN0S', 1, 0, 2, '', ''),
('pstrauss', '$2y$10$leVMdwErfAi4KhSghF5hn.ODx2paDP4QPa.Y46dVCTsoFIj6lpjSS', 4, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_expenses`
--

CREATE TABLE `ospos_expenses` (
  `expense_id` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `amount` decimal(15,2) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `supplier_tax_code` varchar(255) DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_expense_categories`
--

CREATE TABLE `ospos_expense_categories` (
  `expense_category_id` int(10) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_expense_categories`
--

INSERT INTO `ospos_expense_categories` (`expense_category_id`, `category_name`, `category_description`, `deleted`) VALUES
(1, 'panneaux solaires', 'panneaux solaires', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `menu_group` varchar(32) DEFAULT 'home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`, `menu_group`) VALUES
('analytics', 1, 'home'),
('attributes', 1, 'office'),
('attributes', 4, 'home'),
('cashups', 1, 'home'),
('cashups', 4, 'home'),
('config', 1, 'office'),
('config', 4, 'home'),
('customers', 1, 'home'),
('customers', 4, 'home'),
('employees', 1, 'office'),
('employees', 4, 'home'),
('expenses', 1, 'home'),
('expenses', 4, 'home'),
('expenses_categories', 1, 'home'),
('expenses_categories', 4, 'home'),
('giftcards', 1, 'home'),
('giftcards', 4, 'home'),
('home', 1, 'office'),
('home', 4, 'home'),
('items', 1, 'home'),
('items', 4, 'home'),
('items_stock', 1, '--'),
('items_stock', 4, '--'),
('item_kits', 1, 'home'),
('item_kits', 4, 'home'),
('messages', 1, 'home'),
('messages', 4, 'home'),
('office', 1, 'home'),
('office', 4, 'home'),
('receivings', 1, 'home'),
('receivings', 4, 'home'),
('receivings_stock', 1, '--'),
('receivings_stock', 4, '--'),
('reports', 1, 'home'),
('reports', 4, 'home'),
('reports_categories', 1, '--'),
('reports_categories', 4, '--'),
('reports_customers', 1, '--'),
('reports_customers', 4, '--'),
('reports_discounts', 1, '--'),
('reports_discounts', 4, '--'),
('reports_employees', 1, '--'),
('reports_employees', 4, '--'),
('reports_expenses_categories', 1, '--'),
('reports_expenses_categories', 4, '--'),
('reports_inventory', 1, '--'),
('reports_inventory', 4, '--'),
('reports_items', 1, '--'),
('reports_items', 4, '--'),
('reports_payments', 1, '--'),
('reports_payments', 4, '--'),
('reports_receivings', 1, '--'),
('reports_receivings', 4, '--'),
('reports_sales', 1, '--'),
('reports_sales', 4, '--'),
('reports_sales_taxes', 1, '--'),
('reports_sales_taxes', 4, '--'),
('reports_suppliers', 1, '--'),
('reports_suppliers', 4, '--'),
('reports_taxes', 1, '--'),
('reports_taxes', 4, '--'),
('sales', 1, 'home'),
('sales', 4, 'home'),
('sales_delete', 1, '--'),
('sales_delete', 4, '--'),
('sales_stock', 1, '--'),
('sales_stock', 4, '--'),
('suppliers', 1, 'home'),
('suppliers', 4, 'home'),
('taxes', 1, 'office'),
('taxes', 4, 'home');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT 0,
  `trans_user` int(11) NOT NULL DEFAULT 0,
  `trans_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_location`, `trans_inventory`) VALUES
(1, 1, 1, '2020-03-01 01:54:20', 'Édition Manuelle de Quantité', 1, '10.000'),
(2, 2, 1, '2020-03-01 03:14:43', 'Édition Manuelle de Quantité', 1, '0.000'),
(3, 2, 1, '2020-03-01 03:15:09', 'RECV 1', 1, '1.000'),
(4, 2, 1, '2020-03-01 03:16:41', 'POS 1', 1, '-1.000'),
(5, 2, 1, '2020-03-01 04:55:59', 'RECV 2', 1, '10.000');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,3) NOT NULL DEFAULT 0.000,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000,
  `item_id` int(10) NOT NULL,
  `pic_filename` varchar(255) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `stock_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_type` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `tax_category_id` int(10) DEFAULT NULL,
  `qty_per_pack` decimal(15,3) NOT NULL DEFAULT 1.000,
  `pack_name` varchar(8) DEFAULT 'Each',
  `low_sell_item_id` int(10) DEFAULT 0,
  `hsn_code` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `reorder_level`, `receiving_quantity`, `item_id`, `pic_filename`, `allow_alt_description`, `is_serialized`, `stock_type`, `item_type`, `deleted`, `tax_category_id`, `qty_per_pack`, `pack_name`, `low_sell_item_id`, `hsn_code`) VALUES
('BW', 'solaire', NULL, '12345678', '', '2500.00', '3000.00', '2.000', '10.000', 1, NULL, 0, 0, 0, 0, 0, 0, '1.000', 'items_de', 1, ''),
('BWATT', 'panneaux solaires', NULL, NULL, '', '1000.00', '1500.00', '1.000', '1.000', 2, NULL, 0, 0, 0, 0, 0, 0, '1.000', 'items_de', 2, '');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `kit_discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `kit_discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `price_option` tinyint(2) NOT NULL DEFAULT 0,
  `print_option` tinyint(2) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `kit_sequence` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_item_quantities`
--

INSERT INTO `ospos_item_quantities` (`item_id`, `location_id`, `quantity`) VALUES
(1, 1, '10.000'),
(2, 1, '10.000');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_migrations`
--

CREATE TABLE `ospos_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_migrations`
--

INSERT INTO `ospos_migrations` (`version`) VALUES
(20191008100000);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_analytics', 'module_analytics_desc', 120, 'analytics'),
('module_attributes', 'module_attributes_desc', 107, 'attributes'),
('module_cashups', 'module_cashups_desc', 110, 'cashups'),
('module_config', 'module_config_desc', 900, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_expenses', 'module_expenses_desc', 108, 'expenses'),
('module_expenses_categories', 'module_expenses_categories_desc', 109, 'expenses_categories'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_home', 'module_home_desc', 1, 'home'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_messages', 'module_messages_desc', 98, 'messages'),
('module_office', 'module_office_desc', 999, 'office'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers'),
('module_taxes', 'module_taxes_desc', 105, 'taxes');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Digital', 'Byoos', 1, '+237696654756', 'support@byoosdigital', 'Address 1', '', '', '', '', '', '', 1),
('Bobard', 'Gabriel', 1, '696654756', 'gbobard@gmail.com', 'Chapelle ESSOS', '', '', '', '', '', '', 2),
('Byoos', 'Byoos', 1, '', 'support@byoosdigital.com', 'mobile ESSOS Yaoundé', '', '', '', '', '', '', 3),
('Philippe', 'Strauss', 1, '+237696100089', 'philippebluepower@gmail.com', '', '', '', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('analytics', 'analytics', NULL),
('attributes', 'attributes', NULL),
('cashups', 'cashups', NULL),
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('expenses', 'expenses', NULL),
('expenses_categories', 'expenses_categories', NULL),
('giftcards', 'giftcards', NULL),
('home', 'home', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('messages', 'messages', NULL),
('office', 'office', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_expenses_categories', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_sales_taxes', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_delete', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL),
('taxes', 'taxes', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`, `reference`) VALUES
('2020-03-01 03:15:09', 3, 1, '', 1, 'Espèce', NULL),
('2020-03-01 04:55:59', 3, 1, '', 2, 'Espèce', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `receiving_quantity` decimal(15,3) NOT NULL DEFAULT 1.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `receiving_quantity`) VALUES
(1, 2, '', '', 1, '1.000', '1000.00', '1000.00', '0.00', 0, 1, '1.000'),
(2, 2, '', NULL, 1, '10.000', '1000.00', '1000.00', '0.00', 0, 1, '1.000');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `quote_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_status` tinyint(2) NOT NULL DEFAULT 0,
  `dinner_table_id` int(11) DEFAULT NULL,
  `work_order_number` varchar(32) DEFAULT NULL,
  `sale_type` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `invoice_number`, `quote_number`, `sale_id`, `sale_status`, `dinner_table_id`, `work_order_number`, `sale_type`) VALUES
('2020-03-01 03:16:41', NULL, 1, '', '0', NULL, 1, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `quantity_purchased` decimal(15,3) NOT NULL DEFAULT 0.000,
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_type` tinyint(2) NOT NULL DEFAULT 0,
  `item_location` int(11) NOT NULL,
  `print_option` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount`, `discount_type`, `item_location`, `print_option`) VALUES
(1, 2, '', '', 1, '1.000', '1000.00', '1500.00', '0.00', 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_type` tinyint(2) NOT NULL DEFAULT 0,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `item_tax_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `payment_id` int(11) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `cash_refund` decimal(15,2) NOT NULL DEFAULT 0.00,
  `employee_id` int(11) DEFAULT NULL,
  `payment_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_code` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`payment_id`, `sale_id`, `payment_type`, `payment_amount`, `cash_refund`, `employee_id`, `payment_time`, `reference_code`) VALUES
(1, 1, 'Espèce', '1500.00', '0.00', 1, '2020-03-01 09:16:41', '');

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales_reward_points`
--

CREATE TABLE `ospos_sales_reward_points` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `earned` float NOT NULL,
  `used` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sales_taxes`
--

CREATE TABLE `ospos_sales_taxes` (
  `sales_taxes_id` int(11) NOT NULL,
  `sale_id` int(10) NOT NULL,
  `jurisdiction_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `tax_type` smallint(2) NOT NULL,
  `tax_group` varchar(32) NOT NULL,
  `sale_tax_basis` decimal(15,4) NOT NULL,
  `sale_tax_amount` decimal(15,4) NOT NULL,
  `print_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL,
  `sales_tax_code_id` int(11) DEFAULT NULL,
  `rounding_code` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('untd3epsi0vp1og0ffrrpbhcs989lgc7', '127.0.0.1', 1582799740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323739393734303b),
('3bitnh8s04v4fqm718elppb07en6gkb7', '127.0.0.1', 1582800406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323830303430363b),
('be45dgvsvkmk2p7auev18kd7dguh5rst', '127.0.0.1', 1582800550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323830303535303b),
('egf03htif4hmlg9fq0hkkd2gnc69oea3', '127.0.0.1', 1582908535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323930383533353b),
('d74f4dp35chbqsod59u62aldod8561g3', '127.0.0.1', 1582908614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323930383533353b),
('i1bejqskgh3ljn78ghpi6c814uj0dgf6', '127.0.0.1', 1582964453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936343435333b),
('6d4fivlq2h3q591oelslnndr6556dovn', '127.0.0.1', 1582964025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936343032353b),
('1dg0tq12436pf3um33nr35rshdikamlj', '127.0.0.1', 1582964837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936343833373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('r5rtd7j8rqbrlm7m7vnuurm4to516ug8', '127.0.0.1', 1582965371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936353337313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b),
('dnlfsdlmehjijeeh695csuvojr2upgjv', '127.0.0.1', 1582965908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936353930383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('aim4ilspivo54omrr6k2mqj1drjfhfmg', '127.0.0.1', 1582967227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936373232373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('3vqtl2sfpbus7q5g1ahcgef02oll7gvj', '127.0.0.1', 1582967740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936373734303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('od6o41d8n1k6dtddlpfon3a0ef98t7cg', '127.0.0.1', 1582968310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936383331303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('67lj0ao3a5nctpnt0g4229bqp0fiuqca', '127.0.0.1', 1582968677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936383637373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('rnou8m3gt5ahfui1hldpuv5r1r24fvu8', '127.0.0.1', 1582969014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936393031343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('buifotuav73b58difsfh2lq6it7fjn9c', '127.0.0.1', 1582969622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323936393632323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('cra0e1foeuok820ln37tkrqh94m8b3h5', '127.0.0.1', 1582972844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937323834343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('7fr23nnfsn6fd1d53h8lnvocbjobsh9l', '127.0.0.1', 1582973163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937333136333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('431fdp5mjef6q02mta6k46m63vkr7201', '127.0.0.1', 1582973559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937333535393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('fjei50h33rp0cqumplfqhhg5dgbqbvph', '127.0.0.1', 1582973922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937333932323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a313b6974656d5f6c6f636174696f6e7c733a313a2231223b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('g30l5g47irpshr5kdfdv2rafr9rri8aq', '127.0.0.1', 1582974776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937343737363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('kr22ummfjuvp9g9vbl3eek6f9rc055j3', '127.0.0.1', 1582975148, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937353134383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('0o6gre5u5iesiuk0a1v4m1qhmrtk7ill', '127.0.0.1', 1582975150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323937353134383b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('lrj8g25mg62185njfqn39caj41gli3vd', '127.0.0.1', 1582994808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538323939343737363b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('qav07qi9j0abaof33isdatqqe3r6g4jj', '127.0.0.1', 1583045139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333034353133393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('pdj6tqr770vufistuaane4o64v2n4ab5', '127.0.0.1', 1583047141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333034373134313b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b),
('gtf80kbrlp2gcdheof3tfbm7ej8c052m', '127.0.0.1', 1583048740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333034383734303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('61e2oh50k945pspuvesu4pg3oodsi61m', '127.0.0.1', 1583049042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333034393034323b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('gjf3mp8q7hnkbh49v7ir037lejmd81gb', '127.0.0.1', 1583050115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035303131353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('fb3vcppib4k5ct7ikar5ti1ji99ge81i', '127.0.0.1', 1583053543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035333534333b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('s0jug33rurm7cm4gvgeirfskvmsc63c5', '127.0.0.1', 1583053850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035333835303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b726563765f636172747c613a303a7b7d726563765f6d6f64657c733a373a2272656365697665223b726563765f737570706c6965727c693a2d313b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b),
('obs0qdliu0pn0ec85o2m3hvgpnk9pqms', '127.0.0.1', 1583054159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035343135393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a313b73616c655f69647c693a2d313b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b),
('d9e7kl58tgmert1bbq933kr5ktmpceub', '127.0.0.1', 1583054479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035343437393b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('ars591lgrp519j6rkplgsncvtvio2r26', '127.0.0.1', 1583059915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333035393931353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('fbd3vl7mnjtrjppnres7gf64s4tmq3cn', '127.0.0.1', 1583061487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333036313438373b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('3qtmgiv1bfph99v6s4ogu2eri7ece4qo', '127.0.0.1', 1583061975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333036313937353b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b616c6c6f775f74656d705f6974656d737c693a303b73616c655f69647c693a2d313b73616c65735f6d6f64657c733a343a2273616c65223b73616c65735f6c6f636174696f6e7c733a313a2231223b6974656d5f6c6f636174696f6e7c733a313a2231223b726563765f73746f636b5f736f757263657c733a313a2231223b73616c65735f696e766f6963655f6e756d6265725f656e61626c65647c623a303b73616c65735f636172747c613a303a7b7d73616c65735f637573746f6d65727c733a313a2232223b73616c65735f7061796d656e74737c613a303a7b7d636173685f6d6f64657c693a303b636173685f726f756e64696e677c693a303b73616c65735f696e766f6963655f6e756d6265727c4e3b),
('ke4jfjb8ci48srk1ulbsmsigctnsodvf', '127.0.0.1', 1583062064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333036323033303b706572736f6e5f69647c733a313a2234223b6d656e755f67726f75707c733a343a22686f6d65223b),
('jvb4kan8rfge47housihklm3n0io1qk1', '127.0.0.1', 1583078350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333037383335303b),
('bh960k7ln5lp7hkqmlrdlfidbb246kjp', '127.0.0.1', 1583137450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333133373435303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('rtdgv2ho4cdjbd173bb3urd7h7rdtr4n', '127.0.0.1', 1583137810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333133373831303b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a363a226f6666696365223b),
('hdee0vi82dmi2dcpqibfa344iu111u2l', '127.0.0.1', 1583137974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333133373833343b706572736f6e5f69647c733a313a2231223b6d656e755f67726f75707c733a343a22686f6d65223b616c6c6f775f74656d705f6974656d737c693a303b6974656d5f6c6f636174696f6e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT 0,
  `category` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `tax_id`, `deleted`, `category`) VALUES
(3, 'BYOOS digital', 'BYOOS solutions', NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ospos_tax_categories`
--

CREATE TABLE `ospos_tax_categories` (
  `tax_category_id` int(10) NOT NULL,
  `tax_category` varchar(32) NOT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_tax_codes`
--

CREATE TABLE `ospos_tax_codes` (
  `tax_code_id` int(11) NOT NULL,
  `tax_code` varchar(32) NOT NULL,
  `tax_code_name` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_tax_jurisdictions`
--

CREATE TABLE `ospos_tax_jurisdictions` (
  `jurisdiction_id` int(11) NOT NULL,
  `jurisdiction_name` varchar(255) DEFAULT NULL,
  `tax_group` varchar(32) NOT NULL,
  `tax_type` smallint(2) NOT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `tax_group_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `cascade_sequence` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_tax_rates`
--

CREATE TABLE `ospos_tax_rates` (
  `tax_rate_id` int(11) NOT NULL,
  `rate_tax_code_id` int(11) NOT NULL,
  `rate_tax_category_id` int(10) NOT NULL,
  `rate_jurisdiction_id` int(11) NOT NULL,
  `tax_rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax_rounding_code` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ospos_visitor_activity`
--

CREATE TABLE `ospos_visitor_activity` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `ip` varchar(127) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `agent_type` varchar(10) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `agent_version` varchar(127) DEFAULT NULL,
  `agent_string` varchar(1023) DEFAULT NULL,
  `referrer` varchar(1023) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ospos_visitor_activity`
--

INSERT INTO `ospos_visitor_activity` (`id`, `timestamp`, `ip`, `uri`, `agent_type`, `agent_name`, `agent_version`, `agent_string`, `referrer`) VALUES
(1, '2020-03-02 12:35:26', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(2, '2020-03-02 12:35:31', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(3, '2020-03-02 12:45:13', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(4, '2020-03-02 12:45:16', '127.0.0.1', 'items', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(5, '2020-03-02 12:45:17', '127.0.0.1', 'items/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/items'),
(6, '2020-03-02 12:45:19', '127.0.0.1', 'item_kits', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/items'),
(7, '2020-03-02 12:45:19', '127.0.0.1', 'item_kits/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/item_kits'),
(8, '2020-03-02 12:45:23', '127.0.0.1', 'suppliers', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/item_kits'),
(9, '2020-03-02 12:45:23', '127.0.0.1', 'suppliers/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/suppliers'),
(10, '2020-03-02 12:45:25', '127.0.0.1', 'reports', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/suppliers'),
(11, '2020-03-02 12:45:26', '127.0.0.1', 'receivings', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/reports'),
(12, '2020-03-02 12:45:28', '127.0.0.1', 'sales', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/receivings'),
(13, '2020-03-02 12:45:29', '127.0.0.1', 'giftcards', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/sales'),
(14, '2020-03-02 12:45:29', '127.0.0.1', 'giftcards/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/giftcards'),
(15, '2020-03-02 12:45:31', '127.0.0.1', 'messages', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/giftcards'),
(16, '2020-03-02 12:45:32', '127.0.0.1', 'expenses', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/messages'),
(17, '2020-03-02 12:45:32', '127.0.0.1', 'expenses/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses'),
(18, '2020-03-02 12:45:33', '127.0.0.1', 'expenses_categories', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses'),
(19, '2020-03-02 12:45:34', '127.0.0.1', 'expenses_categories/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses_categories'),
(20, '2020-03-02 12:45:34', '127.0.0.1', 'cashups', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses_categories'),
(21, '2020-03-02 12:45:35', '127.0.0.1', 'cashups/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/cashups'),
(22, '2020-03-02 12:45:37', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/cashups'),
(23, '2020-03-02 12:48:14', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(24, '2020-03-02 12:48:19', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(25, '2020-03-02 12:49:48', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(26, '2020-03-02 12:51:49', '127.0.0.1', 'config/backup_db', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(27, '2020-03-02 13:01:48', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(28, '2020-03-02 13:04:40', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(29, '2020-03-02 13:04:52', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(30, '2020-03-02 13:04:58', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(31, '2020-03-02 13:17:08', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(32, '2020-03-02 14:57:10', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(33, '2020-03-02 14:57:36', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(34, '2020-03-02 14:58:59', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(35, '2020-03-02 14:59:43', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(36, '2020-03-02 15:01:18', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(37, '2020-03-02 15:05:05', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(38, '2020-03-03 07:54:42', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(39, '2020-03-03 07:54:44', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(40, '2020-03-03 07:54:47', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(41, '2020-03-03 08:03:14', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(42, '2020-03-03 08:10:47', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(43, '2020-03-03 08:10:57', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(44, '2020-03-03 08:11:02', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(45, '2020-03-03 08:11:03', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(46, '2020-03-03 08:15:41', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(47, '2020-03-03 08:15:46', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(48, '2020-03-03 08:15:47', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(49, '2020-03-03 08:17:09', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(50, '2020-03-03 08:21:20', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(51, '2020-03-03 08:22:20', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(52, '2020-03-03 08:23:32', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(53, '2020-03-03 08:23:34', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(54, '2020-03-03 08:23:36', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(55, '2020-03-03 08:24:37', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(56, '2020-03-03 08:24:39', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(57, '2020-03-03 08:24:41', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(58, '2020-03-03 08:27:51', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, ''),
(59, '2020-03-03 08:31:05', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, ''),
(60, '2020-03-03 08:36:17', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, ''),
(61, '2020-03-03 08:36:22', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(62, '2020-03-03 08:36:26', '127.0.0.1', 'attributes', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(63, '2020-03-03 08:36:27', '127.0.0.1', 'attributes/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/attributes'),
(64, '2020-03-03 08:36:45', '127.0.0.1', 'attributes/view', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/attributes'),
(65, '2020-03-03 08:37:11', '127.0.0.1', 'attributes/view', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/attributes'),
(66, '2020-03-03 08:37:38', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/attributes'),
(67, '2020-03-03 08:43:30', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(68, '2020-03-03 08:43:32', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(69, '2020-03-03 09:44:30', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, ''),
(70, '2020-03-03 09:55:55', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(71, '2020-03-03 09:55:57', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(72, '2020-03-03 09:56:01', '127.0.0.1', 'config', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(73, '2020-03-03 09:56:11', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/config'),
(74, '2020-03-03 09:56:17', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(75, '2020-03-03 09:58:43', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(76, '2020-03-03 10:01:10', '127.0.0.1', 'employees', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(77, '2020-03-03 10:01:10', '127.0.0.1', 'employees/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(78, '2020-03-03 10:01:17', '127.0.0.1', 'employees/view/1', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(79, '2020-03-03 10:02:20', '127.0.0.1', 'employees/save/1', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(80, '2020-03-03 10:02:20', '127.0.0.1', 'employees/get_row/1', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(81, '2020-03-03 10:02:33', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(82, '2020-03-03 10:02:38', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(83, '2020-03-03 10:02:50', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/employees'),
(84, '2020-03-03 10:04:41', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(85, '2020-03-03 10:04:53', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(86, '2020-03-03 10:04:58', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(87, '2020-03-03 10:05:00', '127.0.0.1', 'cashups', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(88, '2020-03-03 10:05:01', '127.0.0.1', 'cashups/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/cashups'),
(89, '2020-03-03 10:05:05', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/cashups'),
(90, '2020-03-03 10:06:27', '127.0.0.1', 'expenses', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(91, '2020-03-03 10:06:27', '127.0.0.1', 'expenses/search', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses'),
(92, '2020-03-03 10:06:36', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/expenses'),
(93, '2020-03-03 10:07:18', '127.0.0.1', 'office', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(94, '2020-03-03 10:07:38', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/office'),
(95, '2020-03-03 10:07:59', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home'),
(96, '2020-03-03 10:10:44', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(97, '2020-03-03 10:10:47', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(98, '2020-03-03 10:12:06', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(99, '2020-03-03 10:14:12', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(100, '2020-03-03 10:15:49', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(101, '2020-03-03 10:16:31', '127.0.0.1', 'reports', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/analytics'),
(102, '2020-03-03 10:16:40', '127.0.0.1', 'reports/graphical_summary_employees', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/reports'),
(103, '2020-03-03 10:16:49', '127.0.0.1', 'reports/graphical_summary_employees/2020-03-03/2020-03-03/sales/all/0', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/reports/graphical_summary_employees'),
(104, '2020-03-03 10:17:02', '127.0.0.1', 'home', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/reports/graphical_summary_employees/2020-03-03/2020-03-03/sales/all/0'),
(105, '2020-03-03 10:26:43', '127.0.0.1', 'analytics', 'Browser', 'Firefox', '71.0', NULL, 'http://127.0.0.1/1__codeigniter_dev/1__2020/1__stocks_2020/byoospos_v2020b331/home');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD PRIMARY KEY (`definition_id`),
  ADD KEY `definition_fk` (`definition_fk`);

--
-- Index pour la table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD UNIQUE KEY `attribute_links_uq1` (`attribute_id`,`definition_id`,`item_id`,`sale_id`,`receiving_id`),
  ADD KEY `attribute_id` (`attribute_id`),
  ADD KEY `definition_id` (`definition_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `receiving_id` (`receiving_id`);

--
-- Index pour la table `ospos_attribute_values`
--
ALTER TABLE `ospos_attribute_values`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `attribute_value` (`attribute_value`);

--
-- Index pour la table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD PRIMARY KEY (`cashup_id`),
  ADD KEY `open_employee_id` (`open_employee_id`),
  ADD KEY `close_employee_id` (`close_employee_id`);

--
-- Index pour la table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sales_tax_code_id` (`sales_tax_code_id`);

--
-- Index pour la table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Index pour la table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Index pour la table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  ADD PRIMARY KEY (`dinner_table_id`);

--
-- Index pour la table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_category_id` (`expense_category_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `ospos_expenses_ibfk_3` (`supplier_id`),
  ADD KEY `date` (`date`);

--
-- Index pour la table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Index pour la table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`);

--
-- Index pour la table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`),
  ADD KEY `trans_date` (`trans_date`);

--
-- Index pour la table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Index pour la table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Index pour la table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Index pour la table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Index pour la table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Index pour la table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Index pour la table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Index pour la table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `reference` (`reference`),
  ADD KEY `receiving_time` (`receiving_time`);

--
-- Index pour la table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`),
  ADD KEY `dinner_table_id` (`dinner_table_id`);

--
-- Index pour la table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Index pour la table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_sale` (`sale_id`,`payment_type`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `payment_time` (`payment_time`);

--
-- Index pour la table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Index pour la table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  ADD PRIMARY KEY (`sales_taxes_id`),
  ADD KEY `print_sequence` (`sale_id`,`print_sequence`,`tax_group`);

--
-- Index pour la table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Index pour la table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Index pour la table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  ADD PRIMARY KEY (`tax_category_id`);

--
-- Index pour la table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  ADD PRIMARY KEY (`tax_code_id`);

--
-- Index pour la table `ospos_tax_jurisdictions`
--
ALTER TABLE `ospos_tax_jurisdictions`
  ADD PRIMARY KEY (`jurisdiction_id`);

--
-- Index pour la table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `rate_tax_category_id` (`rate_tax_category_id`),
  ADD KEY `rate_tax_code_id` (`rate_tax_code_id`),
  ADD KEY `rate_jurisdiction_id` (`rate_jurisdiction_id`);

--
-- Index pour la table `ospos_visitor_activity`
--
ALTER TABLE `ospos_visitor_activity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  MODIFY `definition_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_attribute_values`
--
ALTER TABLE `ospos_attribute_values`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  MODIFY `cashup_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_customers_packages`
--
ALTER TABLE `ospos_customers_packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ospos_customers_points`
--
ALTER TABLE `ospos_customers_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_dinner_tables`
--
ALTER TABLE `ospos_dinner_tables`
  MODIFY `dinner_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  MODIFY `expense_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_expense_categories`
--
ALTER TABLE `ospos_expense_categories`
  MODIFY `expense_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ospos_sales_reward_points`
--
ALTER TABLE `ospos_sales_reward_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_sales_taxes`
--
ALTER TABLE `ospos_sales_taxes`
  MODIFY `sales_taxes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ospos_tax_categories`
--
ALTER TABLE `ospos_tax_categories`
  MODIFY `tax_category_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_tax_codes`
--
ALTER TABLE `ospos_tax_codes`
  MODIFY `tax_code_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_tax_jurisdictions`
--
ALTER TABLE `ospos_tax_jurisdictions`
  MODIFY `jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ospos_visitor_activity`
--
ALTER TABLE `ospos_visitor_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ospos_attribute_definitions`
--
ALTER TABLE `ospos_attribute_definitions`
  ADD CONSTRAINT `fk_ospos_attribute_definitions_ibfk_1` FOREIGN KEY (`definition_fk`) REFERENCES `ospos_attribute_definitions` (`definition_id`);

--
-- Contraintes pour la table `ospos_attribute_links`
--
ALTER TABLE `ospos_attribute_links`
  ADD CONSTRAINT `ospos_attribute_links_ibfk_1` FOREIGN KEY (`definition_id`) REFERENCES `ospos_attribute_definitions` (`definition_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `ospos_attribute_values` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_attribute_links_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_attribute_links_ibfk_4` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`),
  ADD CONSTRAINT `ospos_attribute_links_ibfk_5` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Contraintes pour la table `ospos_cash_up`
--
ALTER TABLE `ospos_cash_up`
  ADD CONSTRAINT `ospos_cash_up_ibfk_1` FOREIGN KEY (`open_employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_cash_up_ibfk_2` FOREIGN KEY (`close_employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Contraintes pour la table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_3` FOREIGN KEY (`sales_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`);

--
-- Contraintes pour la table `ospos_expenses`
--
ALTER TABLE `ospos_expenses`
  ADD CONSTRAINT `ospos_expenses_ibfk_1` FOREIGN KEY (`expense_category_id`) REFERENCES `ospos_expense_categories` (`expense_category_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_expenses_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Contraintes pour la table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_payments_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`);

--
-- Contraintes pour la table `ospos_tax_rates`
--
ALTER TABLE `ospos_tax_rates`
  ADD CONSTRAINT `ospos_tax_rates_ibfk_1` FOREIGN KEY (`rate_tax_category_id`) REFERENCES `ospos_tax_categories` (`tax_category_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_2` FOREIGN KEY (`rate_tax_code_id`) REFERENCES `ospos_tax_codes` (`tax_code_id`),
  ADD CONSTRAINT `ospos_tax_rates_ibfk_3` FOREIGN KEY (`rate_jurisdiction_id`) REFERENCES `ospos_tax_jurisdictions` (`jurisdiction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
