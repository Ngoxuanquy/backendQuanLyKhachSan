-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2023 lúc 09:34 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accept_daily_result_details`
--

CREATE TABLE `accept_daily_result_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `accept_daily_result_id` int(11) NOT NULL,
  `daily_result_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ole` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `salary_status` int(11) DEFAULT NULL,
  `thoi_gian_lv` int(11) DEFAULT NULL,
  `so_cong` float NOT NULL,
  `user_level_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_kpi` int(11) DEFAULT NULL,
  `luong_cb` int(11) NOT NULL,
  `doanh_so` int(11) NOT NULL,
  `chiet_khau_don_them` int(11) NOT NULL,
  `ca` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doanh_so_yc` int(11) NOT NULL,
  `so_don_yc` float NOT NULL,
  `tb_don_yc` int(11) NOT NULL,
  `don_ps` int(11) NOT NULL,
  `don_bao_hanh` int(11) NOT NULL,
  `don_vs` int(11) NOT NULL,
  `thuong` int(11) NOT NULL,
  `phat` int(11) NOT NULL,
  `chiet_khau` int(11) NOT NULL,
  `tru_thieu_don` int(11) NOT NULL DEFAULT 0,
  `tru_sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `tg_dam_thoai_yc` int(11) NOT NULL DEFAULT 0,
  `sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `sl_nghe_may_yc` float NOT NULL DEFAULT 0,
  `tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `tru_tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `don_ps_dinh_ky` int(11) NOT NULL DEFAULT 0,
  `don_ps_ton` int(11) NOT NULL DEFAULT 0,
  `don_them` int(11) NOT NULL,
  `thu_nhap_ngay` int(11) NOT NULL,
  `ngay` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `denied_note_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denied_note_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accept_user_transfers`
--

CREATE TABLE `accept_user_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `trans_level_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_level_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_kpi_from` int(11) DEFAULT NULL,
  `trans_kpi_to` int(11) DEFAULT NULL,
  `trans_status_from` int(11) DEFAULT NULL,
  `trans_status_to` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_transfer_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `tinh_tu_luc` date NOT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf16 DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf16 NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) CHARACTER SET utf16 DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf16 DEFAULT NULL,
  `properties` mediumtext CHARACTER SET utf16 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf16 NOT NULL,
  `description` mediumtext CHARACTER SET utf16 DEFAULT NULL,
  `width` double(22,4) DEFAULT NULL,
  `height` double(22,4) DEFAULT NULL,
  `paper_width` double(22,4) DEFAULT NULL,
  `paper_height` double(22,4) DEFAULT NULL,
  `top_margin` double(22,4) DEFAULT NULL,
  `left_margin` double(22,4) DEFAULT NULL,
  `row_distance` double(22,4) DEFAULT NULL,
  `col_distance` double(22,4) DEFAULT NULL,
  `stickers_in_one_row` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_continuous` tinyint(1) NOT NULL DEFAULT 0,
  `stickers_in_one_sheet` int(11) DEFAULT NULL,
  `business_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bo_phans`
--

CREATE TABLE `bo_phans` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phong_ban` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `branch_locations`
--

CREATE TABLE `branch_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nguoi_giam_sat` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf16 NOT NULL,
  `description` mediumtext CHARACTER SET utf16 DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `business`
--

CREATE TABLE `business` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `tax_number_1` varchar(100) DEFAULT NULL,
  `tax_label_1` varchar(10) DEFAULT NULL,
  `tax_number_2` varchar(100) DEFAULT NULL,
  `tax_label_2` varchar(10) DEFAULT NULL,
  `default_sales_tax` int(10) UNSIGNED DEFAULT NULL,
  `default_profit_percent` double(5,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `time_zone` varchar(191) NOT NULL DEFAULT 'Asia/Kolkata',
  `fy_start_month` tinyint(4) NOT NULL DEFAULT 1,
  `accounting_method` enum('fifo','lifo','avco') NOT NULL DEFAULT 'fifo',
  `default_sales_discount` decimal(5,2) DEFAULT NULL,
  `sell_price_tax` enum('includes','excludes') NOT NULL DEFAULT 'includes',
  `logo` varchar(191) DEFAULT NULL,
  `sku_prefix` varchar(191) DEFAULT NULL,
  `enable_product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `expiry_type` enum('add_expiry','add_manufacturing') NOT NULL DEFAULT 'add_expiry',
  `on_product_expiry` enum('keep_selling','stop_selling','auto_delete') NOT NULL DEFAULT 'keep_selling',
  `stop_selling_before` int(11) NOT NULL COMMENT 'Stop selling expied item n days before expiry',
  `enable_tooltip` tinyint(1) NOT NULL DEFAULT 1,
  `purchase_in_diff_currency` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Allow purchase to be in different currency then the business currency',
  `purchase_currency_id` int(10) UNSIGNED DEFAULT NULL,
  `p_exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `transaction_edit_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `stock_expiry_alert_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `keyboard_shortcuts` text DEFAULT NULL,
  `pos_settings` text DEFAULT NULL,
  `enable_brand` tinyint(1) NOT NULL DEFAULT 1,
  `enable_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_sub_category` tinyint(1) NOT NULL DEFAULT 1,
  `enable_price_tax` tinyint(1) NOT NULL DEFAULT 1,
  `enable_purchase_status` tinyint(1) DEFAULT 1,
  `enable_lot_number` tinyint(1) NOT NULL DEFAULT 0,
  `default_unit` int(11) DEFAULT NULL,
  `enable_sub_units` tinyint(1) NOT NULL DEFAULT 0,
  `enable_racks` tinyint(1) NOT NULL DEFAULT 0,
  `enable_row` tinyint(1) NOT NULL DEFAULT 0,
  `enable_position` tinyint(1) NOT NULL DEFAULT 0,
  `enable_editing_product_from_purchase` tinyint(1) NOT NULL DEFAULT 1,
  `sales_cmsn_agnt` enum('logged_in_user','user','cmsn_agnt') DEFAULT NULL,
  `item_addition_method` tinyint(1) NOT NULL DEFAULT 1,
  `enable_inline_tax` tinyint(1) NOT NULL DEFAULT 1,
  `currency_symbol_placement` enum('before','after') NOT NULL DEFAULT 'before',
  `enabled_modules` text DEFAULT NULL,
  `date_format` varchar(191) NOT NULL DEFAULT 'm/d/Y',
  `time_format` enum('12','24') NOT NULL DEFAULT '24',
  `ref_no_prefixes` text DEFAULT NULL,
  `theme_color` char(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `enable_rp` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_name` varchar(191) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `amount_for_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `max_rp_per_order` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `redeem_amount_per_unit_rp` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_order_total_for_redeem` decimal(22,4) NOT NULL DEFAULT 1.0000 COMMENT 'rp is the short form of reward points',
  `min_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `max_redeem_point` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_period` int(11) DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_type` enum('month','year') NOT NULL DEFAULT 'year' COMMENT 'rp is the short form of reward points',
  `email_settings` text DEFAULT NULL,
  `sms_settings` text DEFAULT NULL,
  `custom_labels` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `business_file_managements`
--

CREATE TABLE `business_file_managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `phong_ban` int(11) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `to_group` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `apply_position_id` int(11) DEFAULT NULL,
  `todo_list_id` int(11) DEFAULT NULL,
  `todo_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ext` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `business_locations`
--

CREATE TABLE `business_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_scheme_id` int(10) UNSIGNED NOT NULL,
  `invoice_layout_id` int(10) UNSIGNED NOT NULL,
  `print_receipt_on_invoice` tinyint(1) DEFAULT 1,
  `receipt_printer_type` enum('browser','printer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'browser',
  `printer_id` int(11) DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nguoi_giam_sat` int(11) DEFAULT NULL,
  `custom_field1` date DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` float DEFAULT 26,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `level` int(11) NOT NULL DEFAULT 3,
  `default_location_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('close','open') NOT NULL DEFAULT 'open',
  `closed_at` datetime DEFAULT NULL,
  `closing_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `total_card_slips` int(11) NOT NULL DEFAULT 0,
  `total_cheques` int(11) NOT NULL DEFAULT 0,
  `closing_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cash_register_transactions`
--

CREATE TABLE `cash_register_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_register_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `pay_method` enum('cash','card','cheque','bank_transfer','custom_pay_1','custom_pay_2','custom_pay_3','other') DEFAULT NULL,
  `type` enum('debit','credit') NOT NULL,
  `transaction_type` enum('initial','sell','transfer','refund') NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `short_code` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cham_cong_images`
--

CREATE TABLE `cham_cong_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `ip_connect` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cham_cong_users`
--

CREATE TABLE `cham_cong_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vao_sang` time DEFAULT NULL,
  `ra_sang` time DEFAULT NULL,
  `vao_chieu` time DEFAULT NULL,
  `ra_chieu` time DEFAULT NULL,
  `vao_toi` time DEFAULT NULL,
  `ra_toi` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `de_nghi_id` int(11) DEFAULT NULL,
  `customer_care_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) NOT NULL,
  `order_id` int(11) NOT NULL,
  `types` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 1,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `type` enum('customer','supplier','both') NOT NULL,
  `supplier_business_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `contact_id` varchar(191) DEFAULT NULL,
  `tax_number` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `open_phone_request` tinyint(1) NOT NULL DEFAULT 0,
  `country` varchar(191) DEFAULT NULL,
  `landmark` varchar(191) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `landline` varchar(191) DEFAULT NULL,
  `alternate_number` varchar(191) DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') DEFAULT NULL,
  `credit_limit` decimal(22,4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `sub_name` varchar(50) DEFAULT NULL,
  `sub_phone` varchar(20) DEFAULT NULL,
  `total_rp` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_used` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `total_rp_expired` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `formatted_address` text DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `sub_long` varchar(191) DEFAULT NULL,
  `sub_lat` varchar(191) DEFAULT NULL,
  `phan_loai_no` varchar(191) DEFAULT 'bt',
  `custom_field1` varchar(191) DEFAULT NULL,
  `custom_field2` varchar(191) DEFAULT NULL,
  `custom_field3` varchar(191) DEFAULT NULL,
  `custom_field4` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cskh_histories`
--

CREATE TABLE `cskh_histories` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `ca` int(11) NOT NULL,
  `is_gay` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `nay_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `mai_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `ngay_nghi_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `key_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `can_hen_them_kd` int(11) NOT NULL DEFAULT 0,
  `can_hen_them_cskh` int(11) NOT NULL DEFAULT 0,
  `can_hen_them_mai_kd` int(11) NOT NULL DEFAULT 0,
  `can_hen_them_mai_cskh` int(11) NOT NULL DEFAULT 0,
  `can_hen_them_ngay_nghi` int(11) NOT NULL DEFAULT 0,
  `can_hen_them_ngay_nghi_kd` int(11) NOT NULL DEFAULT 0,
  `sl_nvkt_du_kien` int(11) NOT NULL DEFAULT 0,
  `can_hen_them` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `code` varchar(25) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `thousand_separator` varchar(10) NOT NULL,
  `decimal_separator` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daily_results`
--

CREATE TABLE `daily_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay` date DEFAULT NULL,
  `ca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiet_khau_vuot` int(11) NOT NULL DEFAULT 0,
  `don_tinh_chiet_khau` int(11) NOT NULL DEFAULT 0,
  `ole` int(11) NOT NULL DEFAULT 0,
  `phong_ban` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `salary_status` int(11) DEFAULT NULL,
  `thoi_gian_lv` int(11) DEFAULT NULL,
  `so_cong` double(8,2) NOT NULL,
  `bac_luong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_kpi` int(11) DEFAULT NULL,
  `luong_cb` int(11) NOT NULL,
  `doanh_so` int(11) NOT NULL,
  `chiet_khau_mo_moi` int(11) NOT NULL DEFAULT 0,
  `doanh_so_yc` int(11) NOT NULL,
  `so_don_yc` float NOT NULL,
  `tb_don_yc` int(11) NOT NULL,
  `ds_ban_may` int(11) NOT NULL,
  `don_ban_may` int(11) NOT NULL,
  `ko_tinh_don_ps` int(11) NOT NULL DEFAULT 0,
  `ko_tinh_don_vs` int(11) NOT NULL DEFAULT 0,
  `ko_tinh_ds` int(11) NOT NULL DEFAULT 0,
  `don_ps` int(11) NOT NULL,
  `don_ps_dinh_ky` int(11) NOT NULL DEFAULT 0,
  `don_ps_ton` int(11) NOT NULL DEFAULT 0,
  `don_bao_hanh` int(11) NOT NULL DEFAULT 0,
  `don_vs` int(11) NOT NULL,
  `thuong` int(11) NOT NULL,
  `phat` int(11) NOT NULL,
  `chiet_khau` int(11) NOT NULL,
  `don_them` int(11) NOT NULL,
  `thu_nhap_ngay` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_vao1` time DEFAULT NULL,
  `gio_ra1` time DEFAULT NULL,
  `gio_vao2` time DEFAULT NULL,
  `gio_ra2` time DEFAULT NULL,
  `gio_vao3` time DEFAULT NULL,
  `gio_ra3` time DEFAULT NULL,
  `so_cong_theo_gio` float DEFAULT 0,
  `vao_tre` float DEFAULT NULL,
  `ra_som` float DEFAULT NULL,
  `khai_thac_dinh_ky` int(11) DEFAULT NULL,
  `khai_thac_ton` int(11) DEFAULT NULL,
  `sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `sl_ko_nghe_may` int(11) NOT NULL DEFAULT 0,
  `sl_nghe_may_yc` float NOT NULL DEFAULT 0,
  `tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `tg_dam_thoai_yc` int(11) NOT NULL DEFAULT 0,
  `phu_cap_ngay` int(11) NOT NULL DEFAULT 0,
  `luong_kpi` int(11) NOT NULL DEFAULT 0,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tru_thieu_don` int(11) NOT NULL DEFAULT 0,
  `tru_sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `tru_tg_dam_thoai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `debt_managements`
--

CREATE TABLE `debt_managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` bigint(20) NOT NULL DEFAULT 0,
  `total_paid` bigint(20) NOT NULL DEFAULT 0,
  `transaction_date` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `default_locations`
--

CREATE TABLE `default_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL DEFAULT 1,
  `default_location_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_standard_product_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demarcation` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_phieu_chis`
--

CREATE TABLE `detail_phieu_chis` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `phieu_chi_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `don_vi_tinh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` float NOT NULL DEFAULT 0,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_phieu_xuats`
--

CREATE TABLE `detail_phieu_xuats` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `confirm_id` int(11) NOT NULL,
  `thuc_ban` int(11) NOT NULL,
  `cho_muon` int(11) NOT NULL DEFAULT 0,
  `da_muon` int(11) NOT NULL DEFAULT 0,
  `ton_kho_sau_xuat` int(11) DEFAULT NULL,
  `thoi_gian_xuat` datetime DEFAULT NULL,
  `chenh_lech` int(11) NOT NULL DEFAULT 0,
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `tax_amount` int(11) NOT NULL DEFAULT 0,
  `sl_tieu_chuan` int(191) NOT NULL DEFAULT 0,
  `ton_kho_365` int(11) NOT NULL,
  `thuc_xuat` int(11) NOT NULL,
  `da_xuat` int(11) NOT NULL,
  `sl_tra_lai` int(11) NOT NULL,
  `ton_kho` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `transfer_location_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_thu_hoi` tinyint(1) NOT NULL DEFAULT 0,
  `kho_no` int(11) NOT NULL DEFAULT 0,
  `cap_bu` int(11) NOT NULL DEFAULT 0,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `discount_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `applicable_in_spg` tinyint(1) DEFAULT 0,
  `applicable_in_cg` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dk_lich_details`
--

CREATE TABLE `dk_lich_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `dk_lich_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `date` date DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chieu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sang_vao` time DEFAULT NULL,
  `sang_ra` time DEFAULT NULL,
  `chieu_vao` time DEFAULT NULL,
  `chieu_ra` time DEFAULT NULL,
  `toi_vao` time DEFAULT NULL,
  `toi_ra` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dk_lich_lv`
--

CREATE TABLE `dk_lich_lv` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phan_quyen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_ban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_xin_nghi_pheps`
--

CREATE TABLE `don_xin_nghi_pheps` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ca` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phan_quyen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_xac_nhan` int(11) DEFAULT NULL,
  `tbp_xac_nhan` int(11) DEFAULT NULL,
  `tphc_xac_nhan` int(11) DEFAULT NULL,
  `gd_xac_nhan` int(11) DEFAULT NULL,
  `ban_giao_xac_nhan` int(11) DEFAULT NULL,
  `time_nghi_viec` date DEFAULT NULL,
  `time_xn_0` datetime DEFAULT NULL,
  `time_xn_1` datetime DEFAULT NULL,
  `time_xn_2` datetime DEFAULT NULL,
  `time_xn_3` datetime DEFAULT NULL,
  `time_xn_4` datetime DEFAULT NULL,
  `pns_xac_nhan` int(191) DEFAULT NULL,
  `time_xn_5` datetime DEFAULT NULL,
  `so_ngay_nghi` float NOT NULL DEFAULT 0,
  `so_ngay_con_lai` float DEFAULT NULL,
  `ban_giao_cv` int(11) DEFAULT NULL,
  `so_lan_nghi_sai` int(11) DEFAULT NULL,
  `cam_ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_ban_giao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duyet_luongs`
--

CREATE TABLE `duyet_luongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `month` int(191) DEFAULT NULL,
  `year` int(191) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cty',
  `phong_ban_target` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `tp_hanh_chinh` int(11) DEFAULT NULL,
  `tro_ly_tc` int(11) DEFAULT NULL,
  `giam_doc` int(11) DEFAULT NULL,
  `chu_tich` int(11) DEFAULT NULL,
  `thu_quy` int(11) DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `time_xac_nhan_5` datetime DEFAULT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duyet_luong_details`
--

CREATE TABLE `duyet_luong_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cho_xn',
  `denied_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `phong_ban` int(11) DEFAULT NULL,
  `phu_cap_xang_xe` int(11) NOT NULL DEFAULT 0,
  `so_don_pc_xang` int(11) NOT NULL DEFAULT 0,
  `to_group` int(191) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `salary_status` int(11) DEFAULT NULL,
  `thoi_gian_lv` int(11) DEFAULT NULL,
  `duyet_luong_id` int(11) DEFAULT NULL,
  `duyet_luong_phong_id` int(11) DEFAULT NULL,
  `phan_quyen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong_cb` int(11) NOT NULL DEFAULT 0,
  `ngay_cong` float NOT NULL DEFAULT 0,
  `luong_cb_theo_cong` int(11) NOT NULL DEFAULT 0,
  `luong_2p` int(11) NOT NULL DEFAULT 0,
  `luong_3p` int(11) NOT NULL DEFAULT 0,
  `chiet_khau_vuot_ds` int(11) NOT NULL DEFAULT 0,
  `chiet_khau_mo_moi` int(191) NOT NULL DEFAULT 0,
  `doanh_so` int(11) DEFAULT NULL,
  `doanhso_yc` int(11) DEFAULT NULL,
  `so_don_vs` int(11) DEFAULT NULL,
  `so_don_ps` int(11) DEFAULT NULL,
  `so_don_yc` int(11) DEFAULT NULL,
  `tb_don_yc` int(11) NOT NULL DEFAULT 0,
  `ti_le_chot` int(11) NOT NULL DEFAULT 0,
  `ti_le_chot_yc` int(11) NOT NULL DEFAULT 0,
  `sl_nghe_may_yc` float NOT NULL DEFAULT 0,
  `sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `khai_thac_dinh_ky_yc` int(11) NOT NULL DEFAULT 0,
  `no_da_thu_kh` int(11) NOT NULL DEFAULT 0,
  `khai_thac_dinh_ky` int(11) NOT NULL DEFAULT 0,
  `khai_thac_ton_yc` int(11) NOT NULL DEFAULT 0,
  `khai_thac_ton` int(11) NOT NULL DEFAULT 0,
  `kpi_sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `kpi_khai_thac_ton` int(11) NOT NULL DEFAULT 0,
  `kpi_khai_thac_dinh_ky` int(11) NOT NULL DEFAULT 0,
  `kpi_ti_le_chot` int(11) NOT NULL DEFAULT 0,
  `kpi_tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `luong_tn` int(11) NOT NULL DEFAULT 0,
  `phu_cap` int(11) NOT NULL DEFAULT 0,
  `note_phu_cap` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luong_kpi` int(11) NOT NULL DEFAULT 0,
  `tong_luong` int(11) NOT NULL DEFAULT 0,
  `khau_tru_kpi` int(11) NOT NULL DEFAULT 0,
  `social_insurance_fee` int(11) NOT NULL DEFAULT 0,
  `phat` int(11) NOT NULL DEFAULT 0,
  `tam_ung` int(11) NOT NULL DEFAULT 0,
  `cty_giu` int(11) NOT NULL DEFAULT 0,
  `cong_no` int(11) NOT NULL DEFAULT 0,
  `thuc_linh` int(11) NOT NULL DEFAULT 0,
  `thuc_tra` int(11) NOT NULL DEFAULT 0,
  `thuong_nong` int(11) NOT NULL DEFAULT 0,
  `de_nghi_tra` int(11) NOT NULL DEFAULT 0,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `salary_id` int(11) DEFAULT NULL,
  `tg_dam_thoai` int(11) DEFAULT 0,
  `tg_dam_thoai_yc` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `editing_invoices`
--

CREATE TABLE `editing_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_object` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'nvkt',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_hoa_don_before` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editing_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'list',
  `so_hoa_don_after` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `denied_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_0` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_0` datetime DEFAULT NULL,
  `time_xac_nhan_5` datetime DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `editing_invoice_payments`
--

CREATE TABLE `editing_invoice_payments` (
  `id` int(11) NOT NULL,
  `editing_invoice_id` int(11) NOT NULL,
  `transaction_payment_id` int(11) NOT NULL,
  `method_before` varchar(191) DEFAULT NULL,
  `method_after` varchar(191) DEFAULT NULL,
  `bank_account_number_before` text DEFAULT NULL,
  `bank_account_number_after` text DEFAULT NULL,
  `real_paid_on_before` datetime DEFAULT NULL,
  `real_paid_on_after` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giay_de_nghis`
--

CREATE TABLE `giay_de_nghis` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phan_quyen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_result_detail_id` int(11) DEFAULT NULL,
  `phong_ban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cam_ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `xac_nhan_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_5` datetime DEFAULT NULL,
  `xac_nhan_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_6` datetime DEFAULT NULL,
  `xac_nhan_7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_7` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hand_over_histories`
--

CREATE TABLE `hand_over_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `confirm_id` int(11) NOT NULL,
  `location_id` int(191) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  `hand_over` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'chua_ban_giao',
  `sub_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denied_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_layouts`
--

CREATE TABLE `invoice_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `header_text` text DEFAULT NULL,
  `invoice_no_prefix` varchar(191) DEFAULT NULL,
  `quotation_no_prefix` varchar(191) DEFAULT NULL,
  `invoice_heading` varchar(191) DEFAULT NULL,
  `sub_heading_line1` varchar(191) DEFAULT NULL,
  `sub_heading_line2` varchar(191) DEFAULT NULL,
  `sub_heading_line3` varchar(191) DEFAULT NULL,
  `sub_heading_line4` varchar(191) DEFAULT NULL,
  `sub_heading_line5` varchar(191) DEFAULT NULL,
  `invoice_heading_not_paid` varchar(191) DEFAULT NULL,
  `invoice_heading_paid` varchar(191) DEFAULT NULL,
  `quotation_heading` varchar(191) DEFAULT NULL,
  `sub_total_label` varchar(191) DEFAULT NULL,
  `discount_label` varchar(191) DEFAULT NULL,
  `tax_label` varchar(191) DEFAULT NULL,
  `total_label` varchar(191) DEFAULT NULL,
  `total_due_label` varchar(191) DEFAULT NULL,
  `paid_label` varchar(191) DEFAULT NULL,
  `show_client_id` tinyint(1) NOT NULL DEFAULT 0,
  `client_id_label` varchar(191) DEFAULT NULL,
  `client_tax_label` varchar(191) DEFAULT NULL,
  `date_label` varchar(191) DEFAULT NULL,
  `date_time_format` varchar(191) DEFAULT NULL,
  `show_time` tinyint(1) NOT NULL DEFAULT 1,
  `show_brand` tinyint(1) NOT NULL DEFAULT 0,
  `show_sku` tinyint(1) NOT NULL DEFAULT 1,
  `show_cat_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `show_lot` tinyint(1) NOT NULL DEFAULT 0,
  `show_image` tinyint(1) NOT NULL DEFAULT 0,
  `show_sale_description` tinyint(1) NOT NULL DEFAULT 0,
  `sales_person_label` varchar(191) DEFAULT NULL,
  `show_sales_person` tinyint(1) NOT NULL DEFAULT 0,
  `table_product_label` varchar(191) DEFAULT NULL,
  `table_qty_label` varchar(191) DEFAULT NULL,
  `table_unit_price_label` varchar(191) DEFAULT NULL,
  `table_subtotal_label` varchar(191) DEFAULT NULL,
  `cat_code_label` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `show_logo` tinyint(1) NOT NULL DEFAULT 0,
  `show_business_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_location_name` tinyint(1) NOT NULL DEFAULT 1,
  `show_landmark` tinyint(1) NOT NULL DEFAULT 1,
  `show_city` tinyint(1) NOT NULL DEFAULT 1,
  `show_state` tinyint(1) NOT NULL DEFAULT 1,
  `show_zip_code` tinyint(1) NOT NULL DEFAULT 1,
  `show_country` tinyint(1) NOT NULL DEFAULT 1,
  `show_mobile_number` tinyint(1) NOT NULL DEFAULT 1,
  `show_alternate_number` tinyint(1) NOT NULL DEFAULT 0,
  `show_email` tinyint(1) NOT NULL DEFAULT 0,
  `show_tax_1` tinyint(1) NOT NULL DEFAULT 1,
  `show_tax_2` tinyint(1) NOT NULL DEFAULT 0,
  `show_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `show_payments` tinyint(1) NOT NULL DEFAULT 0,
  `show_customer` tinyint(1) NOT NULL DEFAULT 0,
  `customer_label` varchar(191) DEFAULT NULL,
  `show_reward_point` tinyint(1) NOT NULL DEFAULT 0,
  `highlight_color` varchar(10) DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `module_info` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `business_id` int(10) UNSIGNED NOT NULL,
  `design` varchar(256) DEFAULT 'classic',
  `cn_heading` varchar(191) DEFAULT NULL COMMENT 'cn = credit note',
  `cn_no_label` varchar(191) DEFAULT NULL,
  `cn_amount_label` varchar(191) DEFAULT NULL,
  `table_tax_headings` text DEFAULT NULL,
  `show_previous_bal` tinyint(1) NOT NULL DEFAULT 0,
  `prev_bal_label` varchar(191) DEFAULT NULL,
  `product_custom_fields` text DEFAULT NULL,
  `contact_custom_fields` text DEFAULT NULL,
  `location_custom_fields` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_schemes`
--

CREATE TABLE `invoice_schemes` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `scheme_type` enum('blank','year') NOT NULL,
  `prefix` varchar(191) DEFAULT NULL,
  `start_number` int(11) DEFAULT NULL,
  `invoice_count` int(11) NOT NULL DEFAULT 0,
  `total_digits` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_standard_products`
--

CREATE TABLE `location_standard_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `location_standard_users`
--

CREATE TABLE `location_standard_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location_standard_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `money_hand_overs`
--

CREATE TABLE `money_hand_overs` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `confirm_id` int(11) NOT NULL,
  `tien_mat` bigint(20) NOT NULL,
  `chuyen_khoan` bigint(20) NOT NULL,
  `ck_vietinbank` bigint(20) NOT NULL,
  `ck_techcombank` bigint(20) NOT NULL,
  `ck_vietcombank` bigint(20) NOT NULL,
  `thu_no_tm` bigint(20) NOT NULL,
  `thu_no_ck` bigint(20) NOT NULL,
  `thu_no_ck_vietcombank` bigint(20) NOT NULL,
  `thu_no_ck_vietinbank` bigint(20) NOT NULL,
  `thu_no_ck_techcombank` bigint(20) NOT NULL,
  `con_no` bigint(20) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `money_reports`
--

CREATE TABLE `money_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `confirm_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `ca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `doanh_thu` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tien_mat` int(11) NOT NULL,
  `chuyen_khoan` int(11) NOT NULL,
  `ck_vietinbank` int(11) NOT NULL DEFAULT 0,
  `ck_techcombank` int(11) NOT NULL DEFAULT 0,
  `ck_vietcombank` int(11) NOT NULL DEFAULT 0,
  `thu_no_ck_vietinbank` int(11) NOT NULL DEFAULT 0,
  `thu_no_ck_techcombank` int(11) NOT NULL DEFAULT 0,
  `thu_no_ck_vietcombank` int(11) NOT NULL DEFAULT 0,
  `khach_no` int(11) NOT NULL,
  `no_da_thu_tm` int(11) NOT NULL,
  `no_da_thu_ck` int(11) NOT NULL,
  `kho_ban_tm` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_vietinbank` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_techcombank` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_vietcombank` int(11) NOT NULL DEFAULT 0,
  `chua_bg_tm` int(11) NOT NULL DEFAULT 0,
  `chua_bg_ck` int(11) NOT NULL DEFAULT 0,
  `chua_bg_ck_vietinbank` int(11) NOT NULL DEFAULT 0,
  `chua_bg_ck_techcombank` int(11) NOT NULL DEFAULT 0,
  `chua_bg_ck_vietcombank` int(11) NOT NULL DEFAULT 0,
  `list_transaction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_transaction_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_don_thu_no_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_payment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_target_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_by` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `money_report_details`
--

CREATE TABLE `money_report_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `phieu_ban_giao_id` int(11) NOT NULL,
  `phieu_xuat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `template_for` varchar(191) NOT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `auto_send` tinyint(1) NOT NULL DEFAULT 0,
  `auto_send_sms` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ord_code` varchar(191) NOT NULL,
  `ctv_check_status` varchar(11) NOT NULL DEFAULT 'normal',
  `loai_don` varchar(191) NOT NULL DEFAULT 'binh_thuong',
  `order_type` varchar(191) NOT NULL DEFAULT 'normal',
  `description` text DEFAULT NULL,
  `working_with` varchar(191) DEFAULT NULL,
  `more_request` varchar(191) DEFAULT NULL,
  `other_more_request` text DEFAULT NULL,
  `machine_problem` varchar(191) DEFAULT NULL,
  `other_machine_problem` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `source` varchar(20) DEFAULT NULL,
  `ord_status` varchar(11) DEFAULT NULL,
  `text_status` varchar(191) DEFAULT NULL,
  `ctv_hll_status` varchar(50) NOT NULL DEFAULT 'normal',
  `dh_status` int(11) DEFAULT 1,
  `thanh_toan_stt` varchar(191) DEFAULT NULL,
  `hotline_source` varchar(191) DEFAULT NULL,
  `due_stt` varchar(191) DEFAULT NULL,
  `up_anh_stt` varchar(191) DEFAULT NULL,
  `bao_hanh_stt` varchar(191) DEFAULT NULL,
  `bao_hanh_lai` varchar(191) DEFAULT NULL,
  `ve_sinh_stt` varchar(191) DEFAULT NULL,
  `huy_stt` varchar(191) DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `is_giam_gia` int(11) NOT NULL DEFAULT 0,
  `prepare_nvkt_id` int(11) DEFAULT NULL,
  `nvkt_id` int(11) DEFAULT 0,
  `nvkd_id` int(11) DEFAULT 0,
  `gio_hen` timestamp NULL DEFAULT NULL,
  `handler` int(11) DEFAULT NULL,
  `gio_goi` varchar(191) DEFAULT NULL,
  `gio_den` varchar(191) DEFAULT NULL,
  `thu_nhap` varchar(191) DEFAULT NULL,
  `tinh_cach` varchar(191) DEFAULT NULL,
  `don_them_status` varchar(191) NOT NULL DEFAULT 'moi',
  `don_them_sub_status` varchar(191) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `service_type` varchar(191) DEFAULT NULL,
  `km_distance` float NOT NULL DEFAULT 0,
  `km_distance_return` float NOT NULL DEFAULT 0,
  `visible` int(11) NOT NULL DEFAULT 1,
  `is_den_sp` varchar(191) NOT NULL DEFAULT 'no',
  `ca` int(11) DEFAULT 1,
  `is_vsbd_280` varchar(191) NOT NULL DEFAULT 'no',
  `vsbd_280_status` varchar(191) NOT NULL DEFAULT 'vsbd_280',
  `qr_code` varchar(191) DEFAULT NULL,
  `do_can_mang` text DEFAULT NULL,
  `services` varchar(191) DEFAULT NULL,
  `vsbd_add_minutes` int(11) NOT NULL DEFAULT 0,
  `km_distance_minutes` int(11) NOT NULL DEFAULT 0,
  `is_mo_moi` varchar(191) DEFAULT 'normal',
  `denied_note` text DEFAULT NULL,
  `ord_trans_id` int(11) DEFAULT NULL,
  `deleted_status` varchar(11) DEFAULT NULL,
  `start_ord` timestamp NULL DEFAULT NULL,
  `end_ord` timestamp NULL DEFAULT NULL,
  `is_cho_no` int(11) NOT NULL DEFAULT 0,
  `show_phone_status` varchar(191) NOT NULL DEFAULT 'inactive',
  `show_phone_pdh` varchar(20) DEFAULT NULL,
  `request_open_phone` tinyint(1) NOT NULL DEFAULT 0,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `is_som` int(11) NOT NULL DEFAULT 0,
  `is_kt_cung` int(11) NOT NULL DEFAULT 0,
  `is_dung_gio` int(11) NOT NULL DEFAULT 0,
  `is_tinh_thoi_gian` int(11) DEFAULT 1,
  `huy_note` text DEFAULT NULL,
  `tra_ve_note` text DEFAULT NULL,
  `so_phut_them` int(11) NOT NULL DEFAULT 0,
  `status_change_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL,
  `support_request` varchar(191) DEFAULT NULL,
  `tag_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_histories`
--

CREATE TABLE `order_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `ord_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `loai_don` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'binh_thuong',
  `is_mo_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `is_tinh_thoi_gian` int(11) NOT NULL DEFAULT 1,
  `transaction_id` int(11) DEFAULT NULL,
  `nvkt_id` int(11) NOT NULL,
  `location_id` int(191) DEFAULT NULL,
  `nvkd_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `start_order_at` timestamp NULL DEFAULT current_timestamp(),
  `end_order_at` timestamp NULL DEFAULT current_timestamp(),
  `paid_at` timestamp NULL DEFAULT current_timestamp(),
  `thanh_toan_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `up_anh_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bao_hanh_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bao_hanh_lai` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ve_sinh_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huy_stt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danh_gia` int(11) NOT NULL DEFAULT 0,
  `is_vsbd_280` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_tl_vs_bd` tinyint(1) NOT NULL DEFAULT 0,
  `vsbd_add_minutes` int(11) NOT NULL DEFAULT 0,
  `danh_gia_cua_kt` int(11) NOT NULL DEFAULT 0,
  `ca` int(11) DEFAULT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_can_mang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg_den_nha_khach` int(11) DEFAULT NULL,
  `tg_lam_don` int(11) DEFAULT NULL,
  `diem_thai_do` float DEFAULT NULL,
  `diem_trinh_do` float DEFAULT NULL,
  `diem_gon_gang` float DEFAULT NULL,
  `is_danh_gia_kh` int(11) DEFAULT 0,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_diff` float NOT NULL DEFAULT 0,
  `km_distance` float NOT NULL DEFAULT 0,
  `km_distance_return` float NOT NULL DEFAULT 0,
  `km_distance_minutes` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_images`
--

CREATE TABLE `order_images` (
  `id` int(191) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `contact_id` varchar(191) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `time_chup` timestamp NULL DEFAULT NULL,
  `filename` varchar(191) DEFAULT NULL,
  `caring_history_id` int(11) DEFAULT NULL,
  `folder_id` varchar(191) DEFAULT NULL,
  `types` varchar(191) DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `time_upload` datetime DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_back_ups`
--

CREATE TABLE `payment_back_ups` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Used during sales to return the change',
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `method` enum('cash','card','cheque','bank_transfer','custom_pay_1','custom_pay_2','custom_pay_3','other') DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accepted_by` int(11) NOT NULL,
  `is_accepted` int(11) NOT NULL DEFAULT 0,
  `is_ban_giao_ck` int(11) NOT NULL DEFAULT 0,
  `transaction_no` varchar(191) DEFAULT NULL,
  `card_transaction_number` varchar(191) DEFAULT NULL,
  `card_number` varchar(191) DEFAULT NULL,
  `card_type` varchar(191) DEFAULT NULL,
  `card_holder_name` varchar(191) DEFAULT NULL,
  `card_month` varchar(191) DEFAULT NULL,
  `card_year` varchar(191) DEFAULT NULL,
  `card_security` varchar(5) DEFAULT NULL,
  `cheque_number` varchar(191) DEFAULT NULL,
  `ktnb_accept` int(11) DEFAULT NULL,
  `ktnb_accept_time` datetime DEFAULT NULL,
  `ktk_accept` int(11) DEFAULT NULL,
  `ktk_accept_time` datetime DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `bank_account_number1` varchar(191) DEFAULT NULL,
  `bank_account_number2` varchar(191) DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `real_paid_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `payment_for` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `payment_ref_no` varchar(191) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_confirmations`
--

CREATE TABLE `payment_confirmations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `user_target_id` int(11) DEFAULT NULL,
  `is_tapped` tinyint(1) NOT NULL DEFAULT 0,
  `user_name` varchar(191) NOT NULL,
  `ca` varchar(191) DEFAULT NULL,
  `business_id` int(11) NOT NULL DEFAULT 1,
  `transaction_id` int(191) DEFAULT NULL,
  `ref_no` varchar(191) DEFAULT NULL,
  `accepted_by` int(191) DEFAULT NULL,
  `location_id` int(191) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `nguoi_xuat` int(191) DEFAULT NULL,
  `xac_nhan` int(11) DEFAULT NULL,
  `kt_xac_nhan` int(11) DEFAULT NULL,
  `tphc_xac_nhan` int(191) DEFAULT NULL,
  `thu_quy_xac_nhan` int(191) DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `xac_nhan_1` varchar(191) DEFAULT NULL,
  `xac_nhan_2` varchar(191) DEFAULT NULL,
  `xac_nhan_3` varchar(191) DEFAULT NULL,
  `xac_nhan_4` varchar(191) DEFAULT NULL,
  `chu_tich_xn` int(11) DEFAULT NULL,
  `list_transactions` text DEFAULT NULL,
  `list_transaction_no` text DEFAULT NULL,
  `list_don_thu_no_id` text DEFAULT NULL,
  `list_payment_id` text DEFAULT NULL,
  `list_target_ids` varchar(191) DEFAULT NULL,
  `transfer_location_id` int(11) DEFAULT NULL,
  `tien_mat` int(11) DEFAULT NULL,
  `chuyen_khoan` int(11) DEFAULT NULL,
  `ck_vietinbank` int(191) DEFAULT NULL,
  `ck_techcombank` int(191) DEFAULT NULL,
  `ck_vietcombank` int(191) DEFAULT NULL,
  `chuyen_khoan_chua_xn` bigint(20) DEFAULT NULL,
  `ck_vietinbank_chua_xn` bigint(20) DEFAULT NULL,
  `ck_techcombank_chua_xn` bigint(20) DEFAULT NULL,
  `ck_vietcombank_chua_xn` bigint(20) DEFAULT NULL,
  `thu_no_ck_vietcombank` int(191) DEFAULT NULL,
  `thu_no_ck_vietinbank` int(191) DEFAULT NULL,
  `thu_no_ck_techcombank` int(191) DEFAULT NULL,
  `kho_ban_tm` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_vietinbank` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_techcombank` int(11) NOT NULL DEFAULT 0,
  `kho_ban_ck_vietcombank` int(11) NOT NULL DEFAULT 0,
  `con_no` int(11) DEFAULT NULL,
  `tax_amount` int(11) NOT NULL DEFAULT 0,
  `doanh_thu` int(11) DEFAULT NULL,
  `giam_gia` int(11) NOT NULL DEFAULT 0,
  `giam_gia_combo` int(11) NOT NULL DEFAULT 0,
  `thu_no_ck` int(191) DEFAULT NULL,
  `thu_no_tm` int(191) DEFAULT NULL,
  `don_ps_kd` int(11) DEFAULT NULL,
  `don_ps_hotline` int(11) DEFAULT NULL,
  `don_bh_vs` int(11) DEFAULT NULL,
  `don_bh_ps` int(11) DEFAULT NULL,
  `don_vs` int(11) DEFAULT NULL,
  `don_no_da_thu` int(11) DEFAULT NULL,
  `so_don_da_tt` int(191) DEFAULT NULL,
  `so_don_chua_tt` int(191) DEFAULT NULL,
  `hoa_don_chua_tt` text DEFAULT NULL,
  `date` date NOT NULL,
  `tu_luc` timestamp NULL DEFAULT NULL,
  `den_luc` timestamp NULL DEFAULT NULL,
  `level` varchar(191) DEFAULT NULL,
  `ban_giao_status` varchar(191) DEFAULT 'chua_ban_giao',
  `to_group` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `ghi_chu` varchar(191) DEFAULT NULL,
  `is_checked_2` int(11) DEFAULT 0,
  `is_checked` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_slips`
--

CREATE TABLE `payment_slips` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` int(191) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `location_id` int(191) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `level` varchar(191) DEFAULT NULL,
  `to_group` varchar(191) DEFAULT NULL,
  `thanh_toan_stt` varchar(191) DEFAULT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `edit_status` float NOT NULL DEFAULT 0,
  `type` varchar(191) DEFAULT NULL,
  `phieu_chi_id` int(11) DEFAULT NULL,
  `noi_dung` varchar(5000) DEFAULT NULL,
  `so_tien` int(191) NOT NULL,
  `chenh_lech` int(191) DEFAULT NULL,
  `so_tai_khoan` varchar(191) DEFAULT NULL,
  `tk_ngan_hang` text DEFAULT NULL,
  `chu_tk` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `truong_bp` int(11) DEFAULT NULL,
  `tp_hanh_chinh` int(11) DEFAULT NULL,
  `giam_doc` int(11) DEFAULT NULL,
  `chu_tich` int(11) DEFAULT NULL,
  `nv_hanh_chinh` int(11) DEFAULT NULL,
  `ke_toan` int(11) DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `expense_type` varchar(191) DEFAULT NULL,
  `is_cp_co_dinh` int(11) NOT NULL DEFAULT 0,
  `chi_phi_co_dinh_id` int(11) DEFAULT NULL,
  `denied_by` int(11) DEFAULT NULL,
  `denied_note` text DEFAULT NULL,
  `time_xn_1` datetime DEFAULT NULL,
  `time_xn_2` datetime DEFAULT NULL,
  `time_xn_3` datetime DEFAULT NULL,
  `time_xn_4` datetime DEFAULT NULL,
  `time_xn_5` datetime DEFAULT NULL,
  `accepted_by` int(191) DEFAULT NULL,
  `ban_ke` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_phats`
--

CREATE TABLE `phieu_phats` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quy_trinh_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tien_phat` int(191) NOT NULL,
  `create_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_phat` timestamp NULL DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_accept` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cham_cong_id` int(11) DEFAULT NULL,
  `nhan_vien_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `truong_cn_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `truong_phong_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `giam_doc_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhan_vien_note_time` timestamp NULL DEFAULT NULL,
  `truong_cn_note_time` timestamp NULL DEFAULT NULL,
  `truong_phong_note_time` timestamp NULL DEFAULT NULL,
  `giam_doc_note_time` timestamp NULL DEFAULT NULL,
  `nhan_vien_xn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truong_cn_xn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truong_phong_xn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giam_doc_xn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdh_xn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdh_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdh_note_time` timestamp NULL DEFAULT NULL,
  `accepted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_thus`
--

CREATE TABLE `phieu_thus` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` timestamp NULL DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` timestamp NULL DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_3` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `position_histories`
--

CREATE TABLE `position_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `deviceName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniqueId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protocol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serverTime` timestamp NULL DEFAULT NULL,
  `deviceTime` timestamp NULL DEFAULT NULL,
  `fixTime` int(11) DEFAULT NULL,
  `outdated` tinyint(1) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speed` float DEFAULT 0,
  `course` int(11) DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accuracy` float DEFAULT 0,
  `network` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_no` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thong_bao_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'toan_cty',
  `created_by` int(11) NOT NULL,
  `accepted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `tb_title` varchar(191) CHARACTER SET utf8 NOT NULL,
  `custom_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_images`
--

CREATE TABLE `post_images` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `types` varchar(11) NOT NULL,
  `image_check` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `custom_1` int(11) DEFAULT NULL,
  `custom_2` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_targets`
--

CREATE TABLE `post_targets` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `accepted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `printers`
--

CREATE TABLE `printers` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `connection_type` enum('network','windows','linux') NOT NULL,
  `capability_profile` enum('default','simple','SP2000','TEP-200M','P822D') NOT NULL DEFAULT 'default',
  `char_per_line` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `port` varchar(191) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `type` enum('single','variable','modifier','combo') DEFAULT NULL,
  `unit_id` int(11) UNSIGNED DEFAULT NULL,
  `sub_unit_ids` text DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_type` enum('inclusive','exclusive') NOT NULL,
  `enable_stock` tinyint(1) NOT NULL DEFAULT 0,
  `alert_quantity` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(191) NOT NULL,
  `barcode_type` enum('C39','C128','EAN13','EAN8','UPCA','UPCE') DEFAULT 'C128',
  `expiry_period` decimal(4,2) DEFAULT NULL,
  `expiry_period_type` enum('days','months') DEFAULT NULL,
  `enable_sr_no` tinyint(1) NOT NULL DEFAULT 0,
  `weight` varchar(191) DEFAULT NULL,
  `kt_cskh_tv1` int(11) DEFAULT 0,
  `kt_cskh_tv2` int(11) DEFAULT 0,
  `kt_cskh_ct` int(11) DEFAULT 0,
  `kt_kd_tv1` int(11) DEFAULT 0,
  `kt_kd_tv2` int(11) DEFAULT 0,
  `kt_kd_ct` int(11) DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_check` varchar(11) NOT NULL DEFAULT 'sp',
  `created_by` int(10) UNSIGNED NOT NULL,
  `is_inactive` tinyint(1) NOT NULL DEFAULT 0,
  `not_for_selling` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_discounts`
--

CREATE TABLE `products_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_racks`
--

CREATE TABLE `product_racks` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rack` varchar(191) DEFAULT NULL,
  `row` varchar(191) DEFAULT NULL,
  `position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_template_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `is_dummy` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `pp_without_discount` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Purchase price before inline discounts',
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'Inline discount percentage',
  `purchase_price` decimal(22,4) NOT NULL,
  `purchase_price_inc_tax` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity_sold` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Quanity sold from this purchase line',
  `quantity_adjusted` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Quanity adjusted in stock adjustment from this purchase line',
  `quantity_returned` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `mfg_quantity_used` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `lot_number` varchar(256) DEFAULT NULL,
  `sub_unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qr_code_campaigns`
--

CREATE TABLE `qr_code_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_ly_don_nos`
--

CREATE TABLE `quan_ly_don_nos` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  `tien_no` int(11) NOT NULL,
  `con_no` int(11) DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_history_id` int(11) DEFAULT NULL,
  `nhan_vien_thu_no` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `hand_over_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'thanh_toan',
  `is_ban_giao` int(11) NOT NULL DEFAULT 0,
  `paid_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_ly_don_no_payments`
--

CREATE TABLE `quan_ly_don_no_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED DEFAULT NULL,
  `quan_ly_don_no_id` int(11) DEFAULT NULL,
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `method` enum('cash','card','cheque','bank_transfer','custom_pay_1','custom_pay_2','custom_pay_3','other') DEFAULT NULL,
  `transaction_no` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `real_paid_on` datetime DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reference_counts`
--

CREATE TABLE `reference_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_type` varchar(191) NOT NULL,
  `ref_count` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rest_days`
--

CREATE TABLE `rest_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `he_so_luong` float DEFAULT 1,
  `is_kpi` int(11) NOT NULL DEFAULT 1,
  `is_luong` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `res_product_modifier_sets`
--

CREATE TABLE `res_product_modifier_sets` (
  `modifier_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Table use to store the modifier sets applicable for a product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `res_tables`
--

CREATE TABLE `res_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `phong_ban` int(11) DEFAULT NULL,
  `vai_tro` varchar(191) DEFAULT NULL,
  `guard_name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_service_staff` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salaries`
--

CREATE TABLE `salaries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(10) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `denied_note` text DEFAULT NULL,
  `xac_nhan_1` varchar(191) DEFAULT NULL,
  `xac_nhan_2` varchar(191) DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `thang` varchar(191) NOT NULL,
  `tu_ngay` timestamp NULL DEFAULT NULL,
  `den_ngay` timestamp NULL DEFAULT NULL,
  `bac_luong` varchar(255) NOT NULL,
  `cong_no` float NOT NULL DEFAULT 0,
  `tam_ung` int(11) NOT NULL DEFAULT 0,
  `cty_giu` int(11) NOT NULL DEFAULT 0,
  `tb_don_yc` int(11) DEFAULT NULL,
  `doanh_so` int(11) NOT NULL DEFAULT 0,
  `phu_cap_xang_xe` int(11) NOT NULL DEFAULT 0,
  `doanhso_yc` int(11) NOT NULL DEFAULT 0,
  `so_don_vs` int(11) NOT NULL DEFAULT 0,
  `ti_le_chot` int(11) NOT NULL DEFAULT 0,
  `ti_le_chot_yc` int(11) NOT NULL DEFAULT 0,
  `so_don_ps` int(11) NOT NULL DEFAULT 0,
  `sl_nghe_may_yc` float NOT NULL DEFAULT 0,
  `sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `khai_thac_dinh_ky_yc` int(11) NOT NULL DEFAULT 0,
  `khai_thac_dinh_ky` int(11) NOT NULL DEFAULT 0,
  `khai_thac_ton_yc` int(11) NOT NULL DEFAULT 0,
  `khai_thac_ton` int(11) NOT NULL DEFAULT 0,
  `chiet_khau` int(11) NOT NULL DEFAULT 0,
  `chiet_khau_mo_moi` int(191) NOT NULL DEFAULT 0,
  `ngay_cong` float NOT NULL DEFAULT 0,
  `luong_cb` int(11) NOT NULL DEFAULT 0,
  `luong_cb_trong_thang` int(11) DEFAULT 0,
  `luong_2p` int(11) NOT NULL DEFAULT 0,
  `luong_3p` int(11) NOT NULL DEFAULT 0,
  `luong_tn` int(11) NOT NULL DEFAULT 0,
  `phu_cap` int(11) NOT NULL DEFAULT 0,
  `note_phu_cap` text DEFAULT NULL,
  `don_them` int(191) DEFAULT 0,
  `so_don_yc` int(11) NOT NULL DEFAULT 0,
  `tong_luong` int(11) NOT NULL DEFAULT 0,
  `khau_tru_kpi` int(11) NOT NULL DEFAULT 0,
  `kpi_gia_tri_dh` int(11) NOT NULL DEFAULT 0,
  `tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `tg_dam_thoai_yc` int(11) NOT NULL DEFAULT 0,
  `luong_kpi` int(11) NOT NULL DEFAULT 0,
  `no_da_thu_kh` int(11) NOT NULL DEFAULT 0,
  `kpi_doanh_so` int(11) NOT NULL DEFAULT 0,
  `so_don_pc_xang` int(11) NOT NULL DEFAULT 0,
  `social_insurance_fee` int(11) NOT NULL DEFAULT 0,
  `kpi_so_don` int(11) NOT NULL DEFAULT 0,
  `kpi_ti_le_vs` int(11) NOT NULL DEFAULT 0,
  `kpi_sl_nghe_may` int(11) NOT NULL DEFAULT 0,
  `kpi_khai_thac_ton` int(11) NOT NULL DEFAULT 0,
  `kpi_tg_dam_thoai` int(11) NOT NULL DEFAULT 0,
  `kpi_khai_thac_dinh_ky` int(11) NOT NULL,
  `kpi_ti_le_chot` int(11) NOT NULL DEFAULT 0,
  `thuong_nong` int(11) NOT NULL DEFAULT 0,
  `thuong` int(11) NOT NULL DEFAULT 0,
  `phat` int(11) NOT NULL DEFAULT 0,
  `ghi_chu` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary_statuses`
--

CREATE TABLE `salary_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phong_ban` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `selling_price_groups`
--

CREATE TABLE `selling_price_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_insurance_fees`
--

CREATE TABLE `social_insurance_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `total_fee` int(11) NOT NULL DEFAULT 0,
  `paid_on` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_adjustments_temp`
--

CREATE TABLE `stock_adjustments_temp` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_adjustment_lines`
--

CREATE TABLE `stock_adjustment_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL,
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Last purchase unit price',
  `removed_purchase_line` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support_orders`
--

CREATE TABLE `support_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_by` int(11) DEFAULT NULL,
  `support_by_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_supported` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `so_phut_them` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system`
--

CREATE TABLE `system` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `targets`
--

CREATE TABLE `targets` (
  `id` int(10) UNSIGNED NOT NULL,
  `phong_ban_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `xac_nhan_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_1` datetime DEFAULT NULL,
  `xac_nhan_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_2` datetime DEFAULT NULL,
  `xac_nhan_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_3` datetime DEFAULT NULL,
  `xac_nhan_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_xac_nhan_4` datetime DEFAULT NULL,
  `so_don` int(11) NOT NULL DEFAULT 0,
  `doanh_so` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'cho_xn',
  `denied_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `target_details`
--

CREATE TABLE `target_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_code_add` varchar(191) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) NOT NULL,
  `date` date DEFAULT NULL,
  `phong_ban` int(11) DEFAULT NULL,
  `to_group` int(11) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `ca` varchar(191) NOT NULL,
  `sl_don_du_kien` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` double(22,4) NOT NULL,
  `is_tax_group` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_books`
--

CREATE TABLE `time_books` (
  `id` int(11) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ma_nhanvien` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_nhanvien` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phong_ban` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuc_vu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_cham` date DEFAULT NULL,
  `thu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_vao1` time DEFAULT NULL,
  `gio_ra1` time DEFAULT NULL,
  `gio_vao2` time DEFAULT NULL,
  `gio_ra2` time DEFAULT NULL,
  `gio_vao3` time DEFAULT NULL,
  `gio_ra3` time DEFAULT NULL,
  `cong` float DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'confimred',
  `gio` float DEFAULT NULL,
  `cong+` float DEFAULT NULL,
  `gio+` float DEFAULT NULL,
  `vao_tre` float DEFAULT NULL,
  `ra_som` float DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc1` float DEFAULT NULL,
  `tc2` float DEFAULT NULL,
  `tc3` float DEFAULT NULL,
  `ten_ca` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyhieu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyhieu+` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_gio` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `nvkd_id` int(10) UNSIGNED DEFAULT NULL,
  `nvkt_id` int(10) DEFAULT NULL,
  `is_mo_moi` varchar(191) DEFAULT 'normal',
  `is_xuat_vat` tinyint(1) NOT NULL DEFAULT 0,
  `res_table_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_waiter_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_order_status` enum('received','cooked','served') DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(20) DEFAULT NULL,
  `status` enum('received','pending','ordered','draft','final') NOT NULL,
  `is_quotation` tinyint(1) NOT NULL DEFAULT 0,
  `payment_status` enum('paid','due','partial') DEFAULT NULL,
  `adjustment_type` enum('normal','abnormal') DEFAULT NULL,
  `contact_id` int(11) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL COMMENT 'used to add customer group while selling',
  `invoice_no` varchar(191) DEFAULT NULL,
  `ref_no` varchar(191) DEFAULT NULL,
  `subscription_no` varchar(191) DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `total_before_tax` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'Total before the purchase/invoice tax, this includeds the indivisual product tax',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `discount_type` enum('fixed','percentage') DEFAULT NULL,
  `discount_amount` varchar(10) DEFAULT NULL,
  `rp_redeemed` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `rp_redeemed_amount` decimal(22,4) NOT NULL DEFAULT 0.0000 COMMENT 'rp is the short form of reward points',
  `shipping_details` varchar(191) DEFAULT NULL,
  `shipping_charges` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `additional_notes` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `final_total` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `chiet_khau` int(11) DEFAULT NULL,
  `loai_don` varchar(191) DEFAULT 'binh_thuong',
  `giam_gia` int(191) NOT NULL DEFAULT 0,
  `xuat_kho_stt` varchar(191) NOT NULL DEFAULT 'ban_hang',
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL,
  `expense_for` int(10) UNSIGNED DEFAULT NULL,
  `commission_agent` int(11) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `is_direct_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) NOT NULL DEFAULT 0,
  `exchange_rate` decimal(20,3) NOT NULL DEFAULT 1.000,
  `total_amount_recovered` decimal(22,4) DEFAULT NULL COMMENT 'Used for stock adjustment.',
  `transfer_parent_id` int(11) DEFAULT NULL,
  `return_parent_id` int(11) DEFAULT NULL,
  `opening_stock_product_id` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `is_created_from_api` tinyint(1) NOT NULL DEFAULT 0,
  `rp_earned` int(11) NOT NULL DEFAULT 0 COMMENT 'rp is the short form of reward points',
  `order_addresses` text DEFAULT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recur_interval` double(22,4) DEFAULT NULL,
  `recur_interval_type` enum('days','months','years') DEFAULT NULL,
  `recur_repetitions` int(11) DEFAULT NULL,
  `recur_stopped_on` datetime DEFAULT NULL,
  `recur_parent_id` int(11) DEFAULT NULL,
  `invoice_token` varchar(191) DEFAULT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` enum('days','months') DEFAULT NULL,
  `selling_price_group_id` int(11) DEFAULT NULL,
  `so_hoa_don` int(11) DEFAULT NULL,
  `is_da_hen` int(191) NOT NULL DEFAULT 0,
  `is_ban_giao` int(11) DEFAULT 0,
  `is_giam_gia` int(11) NOT NULL DEFAULT 1,
  `ngay_hen_tra` date DEFAULT NULL,
  `is_giu_luong` int(11) NOT NULL DEFAULT 0,
  `accepted_at` datetime DEFAULT NULL,
  `ban_giao_status` varchar(191) NOT NULL DEFAULT 'nvkt_chua_bg',
  `giu_luong_status` varchar(50) NOT NULL DEFAULT 'no',
  `hand_over_location_id` int(11) DEFAULT NULL,
  `hand_over_branch_id` int(11) DEFAULT NULL,
  `accepted_by` int(11) DEFAULT NULL,
  `is_accepted` int(11) NOT NULL DEFAULT 0,
  `is_ban_giao_ck` int(11) NOT NULL DEFAULT 0,
  `is_lap_may` int(11) NOT NULL DEFAULT 0,
  `hand_over_status` varchar(191) DEFAULT 'thanh_toan',
  `hand_over_user_id` int(191) DEFAULT NULL,
  `so_lan_gui` int(11) NOT NULL DEFAULT 0,
  `accept_status` varchar(191) NOT NULL DEFAULT 'accept',
  `denied_note` text DEFAULT NULL,
  `dieu_hanh_note` text DEFAULT NULL,
  `ly_do_chua_thu` text DEFAULT NULL,
  `denied_code` varchar(191) DEFAULT NULL,
  `ktk_accept` int(11) DEFAULT NULL,
  `ktk_accept_time` datetime DEFAULT NULL,
  `ktnb_accept` int(11) DEFAULT NULL,
  `ktnb_accept_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_payments`
--

CREATE TABLE `transaction_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Used during sales to return the change',
  `amount` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `method` enum('cash','card','cheque','bank_transfer','custom_pay_1','custom_pay_2','custom_pay_3','other') DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accepted_by` int(11) NOT NULL,
  `is_accepted` int(11) NOT NULL DEFAULT 0,
  `is_ban_giao_ck` int(11) NOT NULL DEFAULT 0,
  `transaction_no` varchar(191) DEFAULT NULL,
  `card_transaction_number` varchar(191) DEFAULT NULL,
  `card_number` varchar(191) DEFAULT NULL,
  `card_type` varchar(191) DEFAULT NULL,
  `card_holder_name` varchar(191) DEFAULT NULL,
  `card_month` varchar(191) DEFAULT NULL,
  `card_year` varchar(191) DEFAULT NULL,
  `card_security` varchar(5) DEFAULT NULL,
  `cheque_number` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `bank_account_number1` varchar(191) DEFAULT NULL,
  `bank_account_number2` varchar(191) DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `real_paid_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `payment_for` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ktk_accept` int(11) DEFAULT NULL,
  `ktk_accept_time` datetime DEFAULT NULL,
  `ktnb_accept` int(11) DEFAULT NULL,
  `ktnb_accept_time` datetime DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `payment_ref_no` varchar(191) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_sell_lines`
--

CREATE TABLE `transaction_sell_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_returned` decimal(20,0) NOT NULL DEFAULT 0,
  `unit_price_before_discount` decimal(22,1) NOT NULL DEFAULT 0.0,
  `unit_price` decimal(22,1) DEFAULT NULL COMMENT 'Sell price excluding tax',
  `line_discount_type` enum('fixed','percentage') DEFAULT NULL,
  `line_discount_amount` decimal(22,0) NOT NULL DEFAULT 0,
  `unit_price_inc_tax` decimal(22,1) DEFAULT NULL COMMENT 'Sell price including tax',
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` int(11) NOT NULL DEFAULT 0,
  `discount_amount` int(11) NOT NULL DEFAULT 0,
  `discount_id` int(11) DEFAULT NULL,
  `lot_no_line_id` int(11) DEFAULT NULL,
  `sell_line_note` text DEFAULT NULL,
  `res_service_staff_id` int(11) DEFAULT NULL,
  `res_line_order_status` varchar(191) DEFAULT NULL,
  `parent_sell_line_id` int(11) DEFAULT NULL,
  `children_type` varchar(191) DEFAULT '' COMMENT 'Type of children for the parent, like modifier or combo',
  `sub_unit_id` int(11) DEFAULT NULL,
  `is_den_sp` varchar(191) NOT NULL DEFAULT 'no',
  `note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_sell_lines_purchase_lines`
--

CREATE TABLE `transaction_sell_lines_purchase_lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `sell_line_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'id from transaction_sell_lines',
  `stock_adjustment_line_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'id from stock_adjustment_lines',
  `purchase_line_id` int(10) UNSIGNED NOT NULL COMMENT 'id from purchase_lines',
  `quantity` decimal(22,4) NOT NULL,
  `qty_returned` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `turn_order_to_due_histories`
--

CREATE TABLE `turn_order_to_due_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `save_date` date NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL DEFAULT 0,
  `tien_mat` bigint(20) NOT NULL DEFAULT 0,
  `chuyen_khoan` bigint(20) NOT NULL DEFAULT 0,
  `ck_vietinbank` bigint(20) NOT NULL DEFAULT 0,
  `ck_vietcombank` bigint(20) NOT NULL DEFAULT 0,
  `ck_techcombank` bigint(20) NOT NULL DEFAULT 0,
  `con_no` bigint(20) NOT NULL DEFAULT 0,
  `ban_giao_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hand_over_location_id` int(11) DEFAULT NULL,
  `hand_over_user_id` int(11) DEFAULT NULL,
  `ghi_chu` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `actual_name` varchar(191) NOT NULL,
  `short_name` varchar(191) NOT NULL,
  `allow_decimal` tinyint(1) NOT NULL,
  `base_unit_id` int(11) DEFAULT NULL,
  `base_unit_multiplier` decimal(20,4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `surname` char(10) DEFAULT NULL,
  `user_extension` varchar(191) DEFAULT NULL,
  `sub_extension` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `sub_surname` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'normal',
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `operating_code` varchar(191) DEFAULT NULL,
  `phong_ban` int(11) DEFAULT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `thoi_gian_lv` int(11) DEFAULT NULL,
  `salary_status` int(11) DEFAULT NULL,
  `user_kpi` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `language` char(4) NOT NULL DEFAULT 'vi',
  `contact_no` char(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `business_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive','terminated') NOT NULL DEFAULT 'active',
  `is_cmmsn_agnt` tinyint(1) NOT NULL DEFAULT 0,
  `cmmsn_percent` decimal(4,2) NOT NULL DEFAULT 0.00,
  `selected_contacts` tinyint(1) NOT NULL DEFAULT 0,
  `dob` date DEFAULT NULL,
  `marital_status` enum('married','unmarried','divorced') DEFAULT NULL,
  `blood_group` char(10) DEFAULT NULL,
  `contact_number` char(20) DEFAULT NULL,
  `fb_link` varchar(191) DEFAULT NULL,
  `twitter_link` varchar(191) DEFAULT NULL,
  `social_media_1` varchar(191) DEFAULT NULL,
  `social_media_2` varchar(191) DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `guardian_name` varchar(191) DEFAULT NULL,
  `so_hoa_don` int(11) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `phan_quyen` varchar(191) NOT NULL DEFAULT 'nv',
  `user_group_id` int(11) DEFAULT NULL,
  `ngay_nghi_phep` float NOT NULL DEFAULT 7,
  `lan_nghi_sai_qd` float NOT NULL DEFAULT 0,
  `gender` varchar(191) DEFAULT NULL,
  `id_proof_date` date DEFAULT NULL,
  `id_proof_position` text DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `operating_available` int(11) NOT NULL DEFAULT 1,
  `training_status` int(11) NOT NULL DEFAULT 0,
  `custom_field_1` date DEFAULT NULL,
  `custom_field_2` varchar(191) DEFAULT NULL,
  `custom_field_3` float DEFAULT 26,
  `custom_field_4` date DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_account_name` varchar(191) DEFAULT NULL,
  `cookie_first_device` varchar(191) DEFAULT NULL,
  `cookie_second_device` varchar(191) DEFAULT NULL,
  `bank_details` longtext DEFAULT NULL,
  `id_proof_name` varchar(191) DEFAULT NULL,
  `id_proof_number` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tg_bat_dau_lv` date DEFAULT NULL,
  `tg_ket_thuc_lv` date DEFAULT NULL,
  `chiet_khau_vuot` int(11) NOT NULL DEFAULT 0,
  `last_seen` timestamp NULL DEFAULT NULL,
  `phu_cap` int(11) NOT NULL DEFAULT 0,
  `start_at` date DEFAULT NULL,
  `login_failed` int(11) NOT NULL DEFAULT 0,
  `ip_address_login_failed` varchar(191) DEFAULT NULL,
  `company_ip_address` varchar(191) DEFAULT NULL,
  `last_sessid` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_contact_access`
--

CREATE TABLE `user_contact_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `group_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_ban` int(11) NOT NULL,
  `bo_phan` int(11) DEFAULT NULL,
  `group_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_type_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_kpis`
--

CREATE TABLE `user_kpis` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `kpi_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_ban` int(11) NOT NULL,
  `kpi_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_don_yc` float NOT NULL,
  `doanh_so_yc` int(11) NOT NULL,
  `tb_don_yc` int(11) NOT NULL,
  `tg_dam_thoai_yc` int(11) NOT NULL DEFAULT 0,
  `muc_thuong_1` int(11) NOT NULL DEFAULT 0,
  `muc_thuong_2` int(11) NOT NULL DEFAULT 0,
  `muc_thuong_3` int(11) NOT NULL DEFAULT 0,
  `moc_ds_thuong_1` int(11) NOT NULL DEFAULT 0,
  `moc_ds_thuong_2` int(11) NOT NULL DEFAULT 0,
  `moc_ds_thuong_3` int(11) NOT NULL DEFAULT 0,
  `tien_thuong_1` int(11) NOT NULL DEFAULT 0,
  `tien_thuong_2` int(11) NOT NULL DEFAULT 0,
  `tien_thuong_3` int(11) NOT NULL DEFAULT 0,
  `desctiption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ti_le_chot` int(11) NOT NULL DEFAULT 0,
  `lui_huy_cskh` float DEFAULT NULL,
  `lui_huy_pkd` float DEFAULT NULL,
  `khai_thac_dinh_ky` int(11) DEFAULT NULL,
  `khai_thac_ton` int(11) DEFAULT NULL,
  `sl_nghe_may` int(11) DEFAULT NULL,
  `data_su_kien_yc` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_level`
--

CREATE TABLE `user_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL DEFAULT 1,
  `department_id` int(11) DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong_cb_sang` int(11) NOT NULL DEFAULT 0,
  `luong_cb_chieu` int(11) NOT NULL DEFAULT 0,
  `don_yc` double(8,2) NOT NULL,
  `tb_don` int(11) NOT NULL,
  `luong_kpi` int(11) NOT NULL DEFAULT 0,
  `phu_cap` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_login_histories`
--

CREATE TABLE `user_login_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `user_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `is_disable_user` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_log_histories`
--

CREATE TABLE `user_log_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `updated_by` int(11) NOT NULL,
  `time_updated` datetime NOT NULL,
  `target_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_log` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_log` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_qr_codes`
--

CREATE TABLE `user_qr_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_tracking_locations`
--

CREATE TABLE `user_tracking_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_days` int(11) DEFAULT 0,
  `mentality_status` int(11) NOT NULL DEFAULT 5,
  `order_id` int(11) DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_per_order` float DEFAULT NULL,
  `distance` int(11) DEFAULT 0,
  `so_don_ps` int(191) DEFAULT NULL,
  `doanh_so` int(191) DEFAULT NULL,
  `loi_dang_het` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_hen` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_bao_hanh` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variations`
--

CREATE TABLE `variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `sub_sku` varchar(191) DEFAULT NULL,
  `product_variation_id` int(10) UNSIGNED NOT NULL,
  `variation_value_id` int(11) DEFAULT NULL,
  `default_purchase_price` decimal(22,4) DEFAULT NULL,
  `dpp_inc_tax` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `profit_percent` decimal(22,4) NOT NULL DEFAULT 0.0000,
  `default_sell_price` decimal(22,0) DEFAULT NULL,
  `sell_price_inc_tax` decimal(22,0) DEFAULT NULL COMMENT 'Sell price including tax',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `combo_variations` text DEFAULT NULL COMMENT 'Contains the combo variation details'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variation_group_prices`
--

CREATE TABLE `variation_group_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `price_group_id` int(10) UNSIGNED NOT NULL,
  `price_inc_tax` decimal(22,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variation_location_details`
--

CREATE TABLE `variation_location_details` (
  `id` int(10) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_variation_id` int(10) UNSIGNED NOT NULL COMMENT 'id from product_variations table',
  `variation_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `qty_available` decimal(22,0) DEFAULT NULL,
  `loai_1` int(11) NOT NULL DEFAULT 0,
  `loai_2` int(11) NOT NULL DEFAULT 0,
  `loai_3` int(11) NOT NULL DEFAULT 0,
  `loai_4` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variation_templates`
--

CREATE TABLE `variation_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `business_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `weekly_points`
--

CREATE TABLE `weekly_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `tuan` int(11) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `phong_ban` int(11) NOT NULL,
  `bo_phan` int(11) NOT NULL,
  `to_group` int(11) NOT NULL,
  `chuyen_mon` float DEFAULT NULL,
  `lam_viec_nhom` float DEFAULT NULL,
  `tim_duong` float DEFAULT NULL,
  `tu_van` float DEFAULT NULL,
  `xu_ly_tinh_huong` float DEFAULT NULL,
  `trung_thuc` float DEFAULT NULL,
  `nhiet_tinh` float DEFAULT NULL,
  `tac_phong` float DEFAULT NULL,
  `ton_trong_dong_nghiep` float DEFAULT NULL,
  `can_trong` float DEFAULT NULL,
  `ham_hoc_hoi` float DEFAULT NULL,
  `dieu_hanh_to` float DEFAULT NULL,
  `dao_tao_nv` float DEFAULT NULL,
  `hoan_thanh_cv` float DEFAULT NULL,
  `quan_ly_nv` float DEFAULT NULL,
  `trung_binh_nang_luc` float NOT NULL,
  `trung_binh_thai_do` float NOT NULL,
  `trung_binh` float DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `working_times`
--

CREATE TABLE `working_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accept_daily_result_details`
--
ALTER TABLE `accept_daily_result_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accept_user_transfers`
--
ALTER TABLE `accept_user_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Chỉ mục cho bảng `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcodes_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `bo_phans`
--
ALTER TABLE `bo_phans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `branch_locations`
--
ALTER TABLE `branch_locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_business_id_foreign` (`business_id`),
  ADD KEY `brands_created_by_foreign` (`created_by`);

--
-- Chỉ mục cho bảng `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_owner_id_foreign` (`owner_id`),
  ADD KEY `business_currency_id_foreign` (`currency_id`),
  ADD KEY `business_default_sales_tax_foreign` (`default_sales_tax`);

--
-- Chỉ mục cho bảng `business_file_managements`
--
ALTER TABLE `business_file_managements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `business_locations`
--
ALTER TABLE `business_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_locations_business_id_index` (`business_id`),
  ADD KEY `business_locations_invoice_scheme_id_foreign` (`invoice_scheme_id`),
  ADD KEY `business_locations_invoice_layout_id_foreign` (`invoice_layout_id`);

--
-- Chỉ mục cho bảng `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_registers_business_id_foreign` (`business_id`),
  ADD KEY `cash_registers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_register_transactions_cash_register_id_foreign` (`cash_register_id`),
  ADD KEY `cash_register_transactions_transaction_id_index` (`transaction_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_business_id_foreign` (`business_id`),
  ADD KEY `categories_created_by_foreign` (`created_by`);

--
-- Chỉ mục cho bảng `cham_cong_images`
--
ALTER TABLE `cham_cong_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cham_cong_users`
--
ALTER TABLE `cham_cong_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_business_id_foreign` (`business_id`),
  ADD KEY `contacts_created_by_foreign` (`created_by`);
ALTER TABLE `contacts` ADD FULLTEXT KEY `mobile` (`mobile`,`formatted_address`);

--
-- Chỉ mục cho bảng `cskh_histories`
--
ALTER TABLE `cskh_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `daily_results`
--
ALTER TABLE `daily_results`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `debt_managements`
--
ALTER TABLE `debt_managements`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `default_locations`
--
ALTER TABLE `default_locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_phieu_chis`
--
ALTER TABLE `detail_phieu_chis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_phieu_xuats`
--
ALTER TABLE `detail_phieu_xuats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_business_id_index` (`business_id`),
  ADD KEY `discounts_brand_id_index` (`brand_id`),
  ADD KEY `discounts_category_id_index` (`category_id`),
  ADD KEY `discounts_location_id_index` (`location_id`),
  ADD KEY `discounts_priority_index` (`priority`);

--
-- Chỉ mục cho bảng `dk_lich_details`
--
ALTER TABLE `dk_lich_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dk_lich_lv`
--
ALTER TABLE `dk_lich_lv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_xin_nghi_pheps`
--
ALTER TABLE `don_xin_nghi_pheps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `duyet_luongs`
--
ALTER TABLE `duyet_luongs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `duyet_luong_details`
--
ALTER TABLE `duyet_luong_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `editing_invoices`
--
ALTER TABLE `editing_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `editing_invoice_payments`
--
ALTER TABLE `editing_invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giay_de_nghis`
--
ALTER TABLE `giay_de_nghis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hand_over_histories`
--
ALTER TABLE `hand_over_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_layouts_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_schemes_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `location_standard_products`
--
ALTER TABLE `location_standard_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `location_standard_users`
--
ALTER TABLE `location_standard_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Chỉ mục cho bảng `money_hand_overs`
--
ALTER TABLE `money_hand_overs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `money_reports`
--
ALTER TABLE `money_reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `money_report_details`
--
ALTER TABLE `money_report_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_images`
--
ALTER TABLE `order_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payment_back_ups`
--
ALTER TABLE `payment_back_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_payments_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_payments_created_by_index` (`created_by`),
  ADD KEY `transaction_payments_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `payment_confirmations`
--
ALTER TABLE `payment_confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_slips`
--
ALTER TABLE `payment_slips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieu_phats`
--
ALTER TABLE `phieu_phats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieu_thus`
--
ALTER TABLE `phieu_thus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `position_histories`
--
ALTER TABLE `position_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_targets`
--
ALTER TABLE `post_targets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `printers_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_tax_foreign` (`tax`),
  ADD KEY `products_name_index` (`name`),
  ADD KEY `products_business_id_index` (`business_id`),
  ADD KEY `products_unit_id_index` (`unit_id`),
  ADD KEY `products_created_by_index` (`created_by`);

--
-- Chỉ mục cho bảng `products_discounts`
--
ALTER TABLE `products_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_racks`
--
ALTER TABLE `product_racks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_name_index` (`name`),
  ADD KEY `product_variations_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `purchase_lines_product_id_foreign` (`product_id`),
  ADD KEY `purchase_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `purchase_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `purchase_lines_sub_unit_id_index` (`sub_unit_id`);

--
-- Chỉ mục cho bảng `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Chỉ mục cho bảng `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `qr_code_campaigns`
--
ALTER TABLE `qr_code_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_ly_don_nos`
--
ALTER TABLE `quan_ly_don_nos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_ly_don_no_payments`
--
ALTER TABLE `quan_ly_don_no_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_payments_transaction_id_foreign` (`transaction_id`);

--
-- Chỉ mục cho bảng `reference_counts`
--
ALTER TABLE `reference_counts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rest_days`
--
ALTER TABLE `rest_days`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `res_product_modifier_sets`
--
ALTER TABLE `res_product_modifier_sets`
  ADD KEY `res_product_modifier_sets_modifier_set_id_foreign` (`modifier_set_id`);

--
-- Chỉ mục cho bảng `res_tables`
--
ALTER TABLE `res_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_tables_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `salary_statuses`
--
ALTER TABLE `salary_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_price_groups_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `social_insurance_fees`
--
ALTER TABLE `social_insurance_fees`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustment_lines_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustment_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `stock_adjustment_lines_transaction_id_index` (`transaction_id`);

--
-- Chỉ mục cho bảng `support_orders`
--
ALTER TABLE `support_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `targets`
--
ALTER TABLE `targets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `target_details`
--
ALTER TABLE `target_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_business_id_foreign` (`business_id`),
  ADD KEY `tax_rates_created_by_foreign` (`created_by`);

--
-- Chỉ mục cho bảng `time_books`
--
ALTER TABLE `time_books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tax_id_foreign` (`tax_id`),
  ADD KEY `transactions_business_id_index` (`business_id`),
  ADD KEY `transactions_type_index` (`type`(191)),
  ADD KEY `transactions_contact_id_index` (`contact_id`),
  ADD KEY `transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `transactions_created_by_index` (`created_by`),
  ADD KEY `transactions_location_id_index` (`location_id`),
  ADD KEY `transactions_expense_for_foreign` (`expense_for`),
  ADD KEY `transactions_expense_category_id_index` (`expense_category_id`),
  ADD KEY `transactions_sub_type_index` (`sub_type`),
  ADD KEY `transactions_return_parent_id_index` (`return_parent_id`),
  ADD KEY `type` (`type`(191));

--
-- Chỉ mục cho bảng `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_payments_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_payments_created_by_index` (`created_by`),
  ADD KEY `transaction_payments_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_sell_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_sell_lines_product_id_foreign` (`product_id`),
  ADD KEY `transaction_sell_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `transaction_sell_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `transaction_sell_lines_children_type_index` (`children_type`),
  ADD KEY `transaction_sell_lines_parent_sell_line_id_index` (`parent_sell_line_id`);

--
-- Chỉ mục cho bảng `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_line_id` (`sell_line_id`),
  ADD KEY `stock_adjustment_line_id` (`stock_adjustment_line_id`),
  ADD KEY `purchase_line_id` (`purchase_line_id`);

--
-- Chỉ mục cho bảng `turn_order_to_due_histories`
--
ALTER TABLE `turn_order_to_due_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_business_id_foreign` (`business_id`),
  ADD KEY `units_created_by_foreign` (`created_by`),
  ADD KEY `units_base_unit_id_index` (`base_unit_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `user_contact_access`
--
ALTER TABLE `user_contact_access`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_kpis`
--
ALTER TABLE `user_kpis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_login_histories`
--
ALTER TABLE `user_login_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_log_histories`
--
ALTER TABLE `user_log_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_tracking_locations`
--
ALTER TABLE `user_tracking_locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_product_id_foreign` (`product_id`),
  ADD KEY `variations_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `variations_name_index` (`name`),
  ADD KEY `variations_sub_sku_index` (`sub_sku`),
  ADD KEY `variations_variation_value_id_index` (`variation_value_id`);

--
-- Chỉ mục cho bảng `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_group_prices_variation_id_foreign` (`variation_id`),
  ADD KEY `variation_group_prices_price_group_id_foreign` (`price_group_id`);

--
-- Chỉ mục cho bảng `variation_location_details`
--
ALTER TABLE `variation_location_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_location_details_location_id_foreign` (`location_id`),
  ADD KEY `variation_location_details_product_id_index` (`product_id`),
  ADD KEY `variation_location_details_product_variation_id_index` (`product_variation_id`),
  ADD KEY `variation_location_details_variation_id_index` (`variation_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Chỉ mục cho bảng `variation_templates`
--
ALTER TABLE `variation_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_templates_business_id_foreign` (`business_id`);

--
-- Chỉ mục cho bảng `weekly_points`
--
ALTER TABLE `weekly_points`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `working_times`
--
ALTER TABLE `working_times`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accept_daily_result_details`
--
ALTER TABLE `accept_daily_result_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `accept_user_transfers`
--
ALTER TABLE `accept_user_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bo_phans`
--
ALTER TABLE `bo_phans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `branch_locations`
--
ALTER TABLE `branch_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `business`
--
ALTER TABLE `business`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `business_file_managements`
--
ALTER TABLE `business_file_managements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `business_locations`
--
ALTER TABLE `business_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cham_cong_images`
--
ALTER TABLE `cham_cong_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cham_cong_users`
--
ALTER TABLE `cham_cong_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cskh_histories`
--
ALTER TABLE `cskh_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `daily_results`
--
ALTER TABLE `daily_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `debt_managements`
--
ALTER TABLE `debt_managements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `default_locations`
--
ALTER TABLE `default_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail_phieu_chis`
--
ALTER TABLE `detail_phieu_chis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail_phieu_xuats`
--
ALTER TABLE `detail_phieu_xuats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dk_lich_details`
--
ALTER TABLE `dk_lich_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dk_lich_lv`
--
ALTER TABLE `dk_lich_lv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `don_xin_nghi_pheps`
--
ALTER TABLE `don_xin_nghi_pheps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `duyet_luongs`
--
ALTER TABLE `duyet_luongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `duyet_luong_details`
--
ALTER TABLE `duyet_luong_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `editing_invoices`
--
ALTER TABLE `editing_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `editing_invoice_payments`
--
ALTER TABLE `editing_invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giay_de_nghis`
--
ALTER TABLE `giay_de_nghis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hand_over_histories`
--
ALTER TABLE `hand_over_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `location_standard_products`
--
ALTER TABLE `location_standard_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `location_standard_users`
--
ALTER TABLE `location_standard_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `money_hand_overs`
--
ALTER TABLE `money_hand_overs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `money_reports`
--
ALTER TABLE `money_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `money_report_details`
--
ALTER TABLE `money_report_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_images`
--
ALTER TABLE `order_images`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_back_ups`
--
ALTER TABLE `payment_back_ups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_confirmations`
--
ALTER TABLE `payment_confirmations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_slips`
--
ALTER TABLE `payment_slips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieu_phats`
--
ALTER TABLE `phieu_phats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieu_thus`
--
ALTER TABLE `phieu_thus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `position_histories`
--
ALTER TABLE `position_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post_targets`
--
ALTER TABLE `post_targets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products_discounts`
--
ALTER TABLE `products_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `qr_code_campaigns`
--
ALTER TABLE `qr_code_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quan_ly_don_nos`
--
ALTER TABLE `quan_ly_don_nos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quan_ly_don_no_payments`
--
ALTER TABLE `quan_ly_don_no_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rest_days`
--
ALTER TABLE `rest_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `salary_statuses`
--
ALTER TABLE `salary_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `social_insurance_fees`
--
ALTER TABLE `social_insurance_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `support_orders`
--
ALTER TABLE `support_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `targets`
--
ALTER TABLE `targets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `target_details`
--
ALTER TABLE `target_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `time_books`
--
ALTER TABLE `time_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transaction_payments`
--
ALTER TABLE `transaction_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `turn_order_to_due_histories`
--
ALTER TABLE `turn_order_to_due_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_kpis`
--
ALTER TABLE `user_kpis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_login_histories`
--
ALTER TABLE `user_login_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_log_histories`
--
ALTER TABLE `user_log_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_qr_codes`
--
ALTER TABLE `user_qr_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_tracking_locations`
--
ALTER TABLE `user_tracking_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `variation_location_details`
--
ALTER TABLE `variation_location_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `weekly_points`
--
ALTER TABLE `weekly_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `working_times`
--
ALTER TABLE `working_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
