-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `surname` CHAR(10) NULL,
    `user_extension` VARCHAR(191) NULL,
    `sub_extension` VARCHAR(191) NULL,
    `first_name` VARCHAR(191) NOT NULL,
    `sub_surname` VARCHAR(191) NULL,
    `device_id` VARCHAR(191) NULL,
    `branch_id` INTEGER NULL,
    `type` VARCHAR(191) NOT NULL DEFAULT 'normal',
    `last_name` VARCHAR(191) NULL,
    `username` VARCHAR(191) NOT NULL,
    `operating_code` VARCHAR(191) NULL,
    `phong_ban` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `thoi_gian_lv` INTEGER NULL,
    `salary_status` INTEGER NULL,
    `user_kpi` INTEGER NULL,
    `email` VARCHAR(191) NULL,
    `password` VARCHAR(191) NOT NULL,
    `language` CHAR(4) NOT NULL DEFAULT 'vi',
    `contact_no` CHAR(15) NULL,
    `address` TEXT NULL,
    `remember_token` VARCHAR(100) NULL,
    `business_id` INTEGER UNSIGNED NULL,
    `status` ENUM('active', 'inactive', 'terminated') NOT NULL DEFAULT 'active',
    `is_cmmsn_agnt` BOOLEAN NOT NULL DEFAULT false,
    `cmmsn_percent` DECIMAL(4, 2) NOT NULL DEFAULT 0.00,
    `selected_contacts` BOOLEAN NOT NULL DEFAULT false,
    `dob` DATE NULL,
    `marital_status` ENUM('married', 'unmarried', 'divorced') NULL,
    `blood_group` CHAR(10) NULL,
    `contact_number` CHAR(20) NULL,
    `fb_link` VARCHAR(191) NULL,
    `twitter_link` VARCHAR(191) NULL,
    `social_media_1` VARCHAR(191) NULL,
    `social_media_2` VARCHAR(191) NULL,
    `permanent_address` TEXT NULL,
    `current_address` TEXT NULL,
    `guardian_name` VARCHAR(191) NULL,
    `so_hoa_don` INTEGER NULL,
    `date_of_birth` DATE NOT NULL,
    `user_type` VARCHAR(191) NULL,
    `phan_quyen` VARCHAR(191) NOT NULL DEFAULT 'nv',
    `user_group_id` INTEGER NULL,
    `ngay_nghi_phep` FLOAT NOT NULL DEFAULT 7,
    `lan_nghi_sai_qd` FLOAT NOT NULL DEFAULT 0,
    `gender` VARCHAR(191) NULL,
    `id_proof_date` DATE NULL,
    `id_proof_position` TEXT NULL,
    `end_at` DATE NULL,
    `operating_available` INTEGER NOT NULL DEFAULT 1,
    `training_status` INTEGER NOT NULL DEFAULT 0,
    `custom_field_1` DATE NULL,
    `custom_field_2` VARCHAR(191) NULL,
    `custom_field_3` FLOAT NULL DEFAULT 26,
    `custom_field_4` DATE NULL,
    `bank_account_number` VARCHAR(191) NULL,
    `bank_name` VARCHAR(191) NULL,
    `bank_account_name` VARCHAR(191) NULL,
    `cookie_first_device` VARCHAR(191) NULL,
    `cookie_second_device` VARCHAR(191) NULL,
    `bank_details` LONGTEXT NULL,
    `id_proof_name` VARCHAR(191) NULL,
    `id_proof_number` VARCHAR(191) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `tg_bat_dau_lv` DATE NULL,
    `tg_ket_thuc_lv` DATE NULL,
    `chiet_khau_vuot` INTEGER NOT NULL DEFAULT 0,
    `last_seen` TIMESTAMP(0) NULL,
    `phu_cap` INTEGER NOT NULL DEFAULT 0,
    `start_at` DATE NULL,
    `login_failed` INTEGER NOT NULL DEFAULT 0,
    `ip_address_login_failed` VARCHAR(191) NULL,
    `company_ip_address` VARCHAR(191) NULL,
    `last_sessid` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `rolesId` INTEGER UNSIGNED NULL,

    UNIQUE INDEX `users_username_unique`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ApiKey` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `key` VARCHAR(191) NOT NULL,
    `status` BOOLEAN NOT NULL DEFAULT true,
    `permissions` JSON NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `ApiKey_key_key`(`key`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Keys` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `privateKey` VARCHAR(191) NOT NULL,
    `publicKey` VARCHAR(191) NOT NULL,
    `refeshToken` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `usersId` INTEGER UNSIGNED NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `accept_daily_result_details` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `accept_daily_result_id` INTEGER NOT NULL,
    `daily_result_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `ole` INTEGER NOT NULL DEFAULT 0,
    `type` VARCHAR(191) NOT NULL,
    `department_id` INTEGER NULL,
    `branch_id` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `user_group_id` INTEGER NULL,
    `salary_status` INTEGER NULL,
    `thoi_gian_lv` INTEGER NULL,
    `so_cong` FLOAT NOT NULL,
    `user_level_code` VARCHAR(191) NULL,
    `user_kpi` INTEGER NULL,
    `luong_cb` INTEGER NOT NULL,
    `doanh_so` INTEGER NOT NULL,
    `chiet_khau_don_them` INTEGER NOT NULL,
    `ca` VARCHAR(11) NOT NULL,
    `doanh_so_yc` INTEGER NOT NULL,
    `so_don_yc` FLOAT NOT NULL,
    `tb_don_yc` INTEGER NOT NULL,
    `don_ps` INTEGER NOT NULL,
    `don_bao_hanh` INTEGER NOT NULL,
    `don_vs` INTEGER NOT NULL,
    `thuong` INTEGER NOT NULL,
    `phat` INTEGER NOT NULL,
    `chiet_khau` INTEGER NOT NULL,
    `tru_thieu_don` INTEGER NOT NULL DEFAULT 0,
    `tru_sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `tg_dam_thoai_yc` INTEGER NOT NULL DEFAULT 0,
    `sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `sl_nghe_may_yc` FLOAT NOT NULL DEFAULT 0,
    `tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `tru_tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `don_ps_dinh_ky` INTEGER NOT NULL DEFAULT 0,
    `don_ps_ton` INTEGER NOT NULL DEFAULT 0,
    `don_them` INTEGER NOT NULL,
    `thu_nhap_ngay` INTEGER NOT NULL,
    `ngay` DATE NULL,
    `status` VARCHAR(191) NOT NULL,
    `note` TEXT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `denied_note_1` TEXT NULL,
    `denied_note_2` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `accept_user_transfers` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `trans_level_from` VARCHAR(191) NULL,
    `trans_level_to` VARCHAR(191) NULL,
    `trans_kpi_from` INTEGER NULL,
    `trans_kpi_to` INTEGER NULL,
    `trans_status_from` INTEGER NULL,
    `trans_status_to` INTEGER NULL,
    `user_id` INTEGER NOT NULL,
    `user_transfer_id` INTEGER NULL,
    `date` DATE NOT NULL,
    `tinh_tu_luc` DATE NOT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `denied_note` TEXT NULL,
    `note` VARCHAR(191) NOT NULL,
    `ghi_chu` TEXT NULL,
    `status` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `activity_log` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `log_name` VARCHAR(191) NULL,
    `description` MEDIUMTEXT NOT NULL,
    `subject_id` INTEGER NULL,
    `subject_type` VARCHAR(191) NULL,
    `causer_id` INTEGER NULL,
    `causer_type` VARCHAR(191) NULL,
    `properties` MEDIUMTEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `activity_log_log_name_index`(`log_name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `barcodes` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `description` MEDIUMTEXT NULL,
    `width` DOUBLE NULL,
    `height` DOUBLE NULL,
    `paper_width` DOUBLE NULL,
    `paper_height` DOUBLE NULL,
    `top_margin` DOUBLE NULL,
    `left_margin` DOUBLE NULL,
    `row_distance` DOUBLE NULL,
    `col_distance` DOUBLE NULL,
    `stickers_in_one_row` INTEGER NULL,
    `is_default` BOOLEAN NOT NULL DEFAULT false,
    `is_continuous` BOOLEAN NOT NULL DEFAULT false,
    `stickers_in_one_sheet` INTEGER NULL,
    `business_id` INTEGER UNSIGNED NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `barcodes_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bo_phans` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `phong_ban` INTEGER NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `branch_locations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `code` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `description` TEXT NULL,
    `nguoi_giam_sat` INTEGER NULL,
    `status` VARCHAR(20) NOT NULL DEFAULT 'active',
    `longitude` VARCHAR(191) NULL,
    `latitude` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `brands` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` MEDIUMTEXT NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `brands_business_id_foreign`(`business_id`),
    INDEX `brands_created_by_foreign`(`created_by`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(256) NOT NULL,
    `currency_id` INTEGER UNSIGNED NOT NULL,
    `start_date` DATE NULL,
    `tax_number_1` VARCHAR(100) NULL,
    `tax_label_1` VARCHAR(10) NULL,
    `tax_number_2` VARCHAR(100) NULL,
    `tax_label_2` VARCHAR(10) NULL,
    `default_sales_tax` INTEGER UNSIGNED NULL,
    `default_profit_percent` DOUBLE NOT NULL DEFAULT 0.00,
    `owner_id` INTEGER UNSIGNED NOT NULL,
    `time_zone` VARCHAR(191) NOT NULL DEFAULT 'Asia/Kolkata',
    `fy_start_month` TINYINT NOT NULL DEFAULT 1,
    `accounting_method` ENUM('fifo', 'lifo', 'avco') NOT NULL DEFAULT 'fifo',
    `default_sales_discount` DECIMAL(5, 2) NULL,
    `sell_price_tax` ENUM('includes', 'excludes') NOT NULL DEFAULT 'includes',
    `logo` VARCHAR(191) NULL,
    `sku_prefix` VARCHAR(191) NULL,
    `enable_product_expiry` BOOLEAN NOT NULL DEFAULT false,
    `expiry_type` ENUM('add_expiry', 'add_manufacturing') NOT NULL DEFAULT 'add_expiry',
    `on_product_expiry` ENUM('keep_selling', 'stop_selling', 'auto_delete') NOT NULL DEFAULT 'keep_selling',
    `stop_selling_before` INTEGER NOT NULL,
    `enable_tooltip` BOOLEAN NOT NULL DEFAULT true,
    `purchase_in_diff_currency` BOOLEAN NOT NULL DEFAULT false,
    `purchase_currency_id` INTEGER UNSIGNED NULL,
    `p_exchange_rate` DECIMAL(20, 3) NOT NULL DEFAULT 1.000,
    `transaction_edit_days` INTEGER UNSIGNED NOT NULL DEFAULT 30,
    `stock_expiry_alert_days` INTEGER UNSIGNED NOT NULL DEFAULT 30,
    `keyboard_shortcuts` TEXT NULL,
    `pos_settings` TEXT NULL,
    `enable_brand` BOOLEAN NOT NULL DEFAULT true,
    `enable_category` BOOLEAN NOT NULL DEFAULT true,
    `enable_sub_category` BOOLEAN NOT NULL DEFAULT true,
    `enable_price_tax` BOOLEAN NOT NULL DEFAULT true,
    `enable_purchase_status` BOOLEAN NULL DEFAULT true,
    `enable_lot_number` BOOLEAN NOT NULL DEFAULT false,
    `default_unit` INTEGER NULL,
    `enable_sub_units` BOOLEAN NOT NULL DEFAULT false,
    `enable_racks` BOOLEAN NOT NULL DEFAULT false,
    `enable_row` BOOLEAN NOT NULL DEFAULT false,
    `enable_position` BOOLEAN NOT NULL DEFAULT false,
    `enable_editing_product_from_purchase` BOOLEAN NOT NULL DEFAULT true,
    `sales_cmsn_agnt` ENUM('logged_in_user', 'user', 'cmsn_agnt') NULL,
    `item_addition_method` BOOLEAN NOT NULL DEFAULT true,
    `enable_inline_tax` BOOLEAN NOT NULL DEFAULT true,
    `currency_symbol_placement` ENUM('before', 'after') NOT NULL DEFAULT 'before',
    `enabled_modules` TEXT NULL,
    `date_format` VARCHAR(191) NOT NULL DEFAULT 'm/d/Y',
    `time_format` VARCHAR(191) NOT NULL DEFAULT 24,
    `ref_no_prefixes` TEXT NULL,
    `theme_color` CHAR(20) NULL,
    `created_by` INTEGER NULL,
    `enable_rp` BOOLEAN NOT NULL DEFAULT false,
    `rp_name` VARCHAR(191) NULL,
    `amount_for_unit_rp` DECIMAL(22, 4) NOT NULL DEFAULT 1.0000,
    `min_order_total_for_rp` DECIMAL(22, 4) NOT NULL DEFAULT 1.0000,
    `max_rp_per_order` INTEGER NULL,
    `redeem_amount_per_unit_rp` DECIMAL(22, 4) NOT NULL DEFAULT 1.0000,
    `min_order_total_for_redeem` DECIMAL(22, 4) NOT NULL DEFAULT 1.0000,
    `min_redeem_point` INTEGER NULL,
    `max_redeem_point` INTEGER NULL,
    `rp_expiry_period` INTEGER NULL,
    `rp_expiry_type` ENUM('month', 'year') NOT NULL DEFAULT 'year',
    `email_settings` TEXT NULL,
    `sms_settings` TEXT NULL,
    `custom_labels` TEXT NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT true,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `business_currency_id_foreign`(`currency_id`),
    INDEX `business_default_sales_tax_foreign`(`default_sales_tax`),
    INDEX `business_owner_id_foreign`(`owner_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_file_managements` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `created_by` INTEGER NULL,
    `phong_ban` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `to_group` INTEGER NULL,
    `user_id` INTEGER NULL,
    `apply_position_id` INTEGER NULL,
    `todo_list_id` INTEGER NULL,
    `todo_id` INTEGER NULL,
    `type` VARCHAR(50) NULL,
    `content` TEXT NULL,
    `file_name` VARCHAR(191) NULL,
    `file_ext` VARCHAR(50) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_locations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `location_id` VARCHAR(191) NULL,
    `branch_id` INTEGER NULL,
    `name` VARCHAR(256) NOT NULL,
    `landmark` TEXT NULL,
    `country` VARCHAR(100) NOT NULL,
    `state` VARCHAR(100) NOT NULL,
    `city` VARCHAR(100) NOT NULL,
    `zip_code` CHAR(7) NOT NULL,
    `invoice_scheme_id` INTEGER UNSIGNED NOT NULL,
    `invoice_layout_id` INTEGER UNSIGNED NOT NULL,
    `print_receipt_on_invoice` BOOLEAN NULL DEFAULT true,
    `receipt_printer_type` ENUM('browser', 'printer') NOT NULL DEFAULT 'browser',
    `printer_id` INTEGER NULL,
    `mobile` VARCHAR(191) NULL,
    `alternate_number` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `website` VARCHAR(191) NULL,
    `nguoi_giam_sat` INTEGER NULL,
    `custom_field1` DATE NULL,
    `custom_field2` VARCHAR(191) NULL,
    `custom_field3` FLOAT NULL DEFAULT 26,
    `custom_field4` VARCHAR(191) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `status` VARCHAR(191) NULL DEFAULT 'active',
    `level` INTEGER NOT NULL DEFAULT 3,
    `default_location_code` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `business_locations_business_id_index`(`business_id`),
    INDEX `business_locations_invoice_layout_id_foreign`(`invoice_layout_id`),
    INDEX `business_locations_invoice_scheme_id_foreign`(`invoice_scheme_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cash_register_transactions` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `cash_register_id` INTEGER UNSIGNED NOT NULL,
    `amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `pay_method` ENUM('cash', 'card', 'cheque', 'bank_transfer', 'custom_pay_1', 'custom_pay_2', 'custom_pay_3', 'other') NULL,
    `type` ENUM('debit', 'credit') NOT NULL,
    `transaction_type` ENUM('initial', 'sell', 'transfer', 'refund') NOT NULL,
    `transaction_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `cash_register_transactions_cash_register_id_foreign`(`cash_register_id`),
    INDEX `cash_register_transactions_transaction_id_index`(`transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cash_registers` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `user_id` INTEGER UNSIGNED NULL,
    `status` ENUM('close', 'open') NOT NULL DEFAULT 'open',
    `closed_at` DATETIME(0) NULL,
    `closing_amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `total_card_slips` INTEGER NOT NULL DEFAULT 0,
    `total_cheques` INTEGER NOT NULL DEFAULT 0,
    `closing_note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `cash_registers_business_id_foreign`(`business_id`),
    INDEX `cash_registers_user_id_foreign`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `short_code` VARCHAR(191) NULL,
    `parent_id` INTEGER NOT NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `categories_business_id_foreign`(`business_id`),
    INDEX `categories_created_by_foreign`(`created_by`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cham_cong_images` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `ip_connect` VARCHAR(191) NOT NULL,
    `user_id` INTEGER NOT NULL,
    `surname` VARCHAR(191) NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `image_name` VARCHAR(191) NOT NULL,
    `date` DATE NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cham_cong_users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `vao_sang` TIME(0) NULL,
    `ra_sang` TIME(0) NULL,
    `vao_chieu` TIME(0) NULL,
    `ra_chieu` TIME(0) NULL,
    `vao_toi` TIME(0) NULL,
    `ra_toi` TIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `de_nghi_id` INTEGER NULL,
    `customer_care_id` INTEGER NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `order_id` INTEGER NOT NULL,
    `types` VARCHAR(191) NULL,
    `parent_id` INTEGER NOT NULL DEFAULT 1,
    `content` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `order_id`(`order_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `contacts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `type` ENUM('customer', 'supplier', 'both') NOT NULL,
    `supplier_business_name` VARCHAR(191) NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NULL,
    `contact_id` VARCHAR(191) NULL,
    `tax_number` VARCHAR(191) NULL,
    `city` VARCHAR(191) NULL,
    `state` VARCHAR(191) NULL,
    `open_phone_request` BOOLEAN NOT NULL DEFAULT false,
    `country` VARCHAR(191) NULL,
    `landmark` VARCHAR(191) NULL,
    `mobile` TEXT NULL,
    `landline` VARCHAR(191) NULL,
    `alternate_number` VARCHAR(191) NULL,
    `pay_term_number` INTEGER NULL,
    `pay_term_type` ENUM('days', 'months') NULL,
    `credit_limit` DECIMAL(22, 4) NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `phone` VARCHAR(191) NULL,
    `sub_name` VARCHAR(50) NULL,
    `sub_phone` VARCHAR(20) NULL,
    `total_rp` INTEGER NOT NULL DEFAULT 0,
    `total_rp_used` INTEGER NOT NULL DEFAULT 0,
    `total_rp_expired` INTEGER NOT NULL DEFAULT 0,
    `is_default` BOOLEAN NOT NULL DEFAULT false,
    `longitude` VARCHAR(191) NULL,
    `latitude` VARCHAR(191) NULL,
    `map_link` TEXT NULL,
    `formatted_address` TEXT NULL,
    `customer_group_id` INTEGER NULL,
    `sub_long` VARCHAR(191) NULL,
    `sub_lat` VARCHAR(191) NULL,
    `phan_loai_no` VARCHAR(191) NULL DEFAULT 'bt',
    `custom_field1` VARCHAR(191) NULL,
    `custom_field2` VARCHAR(191) NULL,
    `custom_field3` VARCHAR(191) NULL,
    `custom_field4` VARCHAR(191) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `contacts_business_id_foreign`(`business_id`),
    INDEX `contacts_created_by_foreign`(`created_by`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cskh_histories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `from_time` TIME(0) NOT NULL,
    `to_time` TIME(0) NOT NULL,
    `ca` INTEGER NOT NULL,
    `is_gay` INTEGER NOT NULL DEFAULT 0,
    `status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `nay_status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `mai_status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `ngay_nghi_status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `key_address` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `can_hen_them_kd` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them_cskh` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them_mai_kd` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them_mai_cskh` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them_ngay_nghi` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them_ngay_nghi_kd` INTEGER NOT NULL DEFAULT 0,
    `sl_nvkt_du_kien` INTEGER NOT NULL DEFAULT 0,
    `can_hen_them` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `currencies` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `country` VARCHAR(100) NOT NULL,
    `currency` VARCHAR(100) NOT NULL,
    `code` VARCHAR(25) NOT NULL,
    `symbol` VARCHAR(25) NOT NULL,
    `thousand_separator` VARCHAR(10) NOT NULL,
    `decimal_separator` VARCHAR(10) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `daily_results` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `ngay` DATE NULL,
    `ca` VARCHAR(191) NOT NULL,
    `chiet_khau_vuot` INTEGER NOT NULL DEFAULT 0,
    `don_tinh_chiet_khau` INTEGER NOT NULL DEFAULT 0,
    `ole` INTEGER NOT NULL DEFAULT 0,
    `phong_ban` INTEGER NULL,
    `branch_id` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `user_group_id` INTEGER NULL,
    `salary_status` INTEGER NULL,
    `thoi_gian_lv` INTEGER NULL,
    `so_cong` DOUBLE NOT NULL,
    `bac_luong` VARCHAR(191) NOT NULL,
    `user_kpi` INTEGER NULL,
    `luong_cb` INTEGER NOT NULL,
    `doanh_so` INTEGER NOT NULL,
    `chiet_khau_mo_moi` INTEGER NOT NULL DEFAULT 0,
    `doanh_so_yc` INTEGER NOT NULL,
    `so_don_yc` FLOAT NOT NULL,
    `tb_don_yc` INTEGER NOT NULL,
    `ds_ban_may` INTEGER NOT NULL,
    `don_ban_may` INTEGER NOT NULL,
    `ko_tinh_don_ps` INTEGER NOT NULL DEFAULT 0,
    `ko_tinh_don_vs` INTEGER NOT NULL DEFAULT 0,
    `ko_tinh_ds` INTEGER NOT NULL DEFAULT 0,
    `don_ps` INTEGER NOT NULL,
    `don_ps_dinh_ky` INTEGER NOT NULL DEFAULT 0,
    `don_ps_ton` INTEGER NOT NULL DEFAULT 0,
    `don_bao_hanh` INTEGER NOT NULL DEFAULT 0,
    `don_vs` INTEGER NOT NULL,
    `thuong` INTEGER NOT NULL,
    `phat` INTEGER NOT NULL,
    `chiet_khau` INTEGER NOT NULL,
    `don_them` INTEGER NOT NULL,
    `thu_nhap_ngay` INTEGER NOT NULL,
    `status` VARCHAR(191) NULL,
    `ghi_chu` TEXT NULL,
    `gio_vao1` TIME(0) NULL,
    `gio_ra1` TIME(0) NULL,
    `gio_vao2` TIME(0) NULL,
    `gio_ra2` TIME(0) NULL,
    `gio_vao3` TIME(0) NULL,
    `gio_ra3` TIME(0) NULL,
    `so_cong_theo_gio` FLOAT NULL DEFAULT 0,
    `vao_tre` FLOAT NULL,
    `ra_som` FLOAT NULL,
    `khai_thac_dinh_ky` INTEGER NULL,
    `khai_thac_ton` INTEGER NULL,
    `sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `sl_ko_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `sl_nghe_may_yc` FLOAT NOT NULL DEFAULT 0,
    `tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `tg_dam_thoai_yc` INTEGER NOT NULL DEFAULT 0,
    `phu_cap_ngay` INTEGER NOT NULL DEFAULT 0,
    `luong_kpi` INTEGER NOT NULL DEFAULT 0,
    `custom_field_1` VARCHAR(191) NULL,
    `custom_field_2` VARCHAR(191) NULL,
    `custom_field_3` VARCHAR(191) NULL,
    `custom_field_4` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `tru_thieu_don` INTEGER NOT NULL DEFAULT 0,
    `tru_sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `tru_tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `debt_managements` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `user_name` VARCHAR(191) NULL,
    `transaction_id` INTEGER NULL,
    `type` VARCHAR(50) NOT NULL DEFAULT 'in',
    `status` VARCHAR(20) NOT NULL DEFAULT 'active',
    `comment` VARCHAR(191) NULL,
    `total` BIGINT NOT NULL DEFAULT 0,
    `total_paid` BIGINT NOT NULL DEFAULT 0,
    `transaction_date` DATETIME(0) NULL,
    `description` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `default_locations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL DEFAULT 1,
    `default_location_code` VARCHAR(191) NOT NULL,
    `location_standard_product_id` INTEGER NULL,
    `product_id` INTEGER NOT NULL,
    `sku` VARCHAR(191) NOT NULL,
    `quantity` INTEGER NOT NULL,
    `custom_field_1` VARCHAR(191) NULL,
    `custom_field_2` VARCHAR(191) NULL,
    `custom_field_3` VARCHAR(191) NULL,
    `custom_field_4` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `departments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `demarcation` INTEGER NOT NULL DEFAULT 0,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `detail_phieu_chis` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(191) NULL,
    `material_id` INTEGER NULL,
    `phieu_chi_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `price` INTEGER NOT NULL,
    `quantity` INTEGER NULL,
    `don_vi_tinh` VARCHAR(191) NULL,
    `tax` FLOAT NOT NULL DEFAULT 0,
    `note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `detail_phieu_xuats` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NULL,
    `confirm_id` INTEGER NOT NULL,
    `thuc_ban` INTEGER NOT NULL,
    `cho_muon` INTEGER NOT NULL DEFAULT 0,
    `da_muon` INTEGER NOT NULL DEFAULT 0,
    `ton_kho_sau_xuat` INTEGER NULL,
    `thoi_gian_xuat` DATETIME(0) NULL,
    `chenh_lech` INTEGER NOT NULL DEFAULT 0,
    `discount_amount` INTEGER NOT NULL DEFAULT 0,
    `tax_amount` INTEGER NOT NULL DEFAULT 0,
    `sl_tieu_chuan` INTEGER NOT NULL DEFAULT 0,
    `ton_kho_365` INTEGER NOT NULL,
    `thuc_xuat` INTEGER NOT NULL,
    `da_xuat` INTEGER NOT NULL,
    `sl_tra_lai` INTEGER NOT NULL,
    `ton_kho` INTEGER NOT NULL,
    `location_id` INTEGER NOT NULL,
    `transfer_location_id` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `is_thu_hoi` BOOLEAN NOT NULL DEFAULT false,
    `kho_no` INTEGER NOT NULL DEFAULT 0,
    `cap_bu` INTEGER NOT NULL DEFAULT 0,
    `ghi_chu` TEXT NULL,
    `custom_field_2` VARCHAR(191) NULL,
    `custom_field_3` VARCHAR(191) NULL,
    `custom_field_4` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `note` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `discounts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `business_id` INTEGER NOT NULL,
    `brand_id` INTEGER NULL,
    `category_id` INTEGER NULL,
    `location_id` INTEGER NULL,
    `priority` INTEGER NULL,
    `discount_type` VARCHAR(191) NULL,
    `discount_amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `starts_at` DATETIME(0) NULL,
    `ends_at` DATETIME(0) NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT true,
    `applicable_in_spg` BOOLEAN NULL DEFAULT false,
    `applicable_in_cg` BOOLEAN NULL DEFAULT false,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `discounts_brand_id_index`(`brand_id`),
    INDEX `discounts_business_id_index`(`business_id`),
    INDEX `discounts_category_id_index`(`category_id`),
    INDEX `discounts_location_id_index`(`location_id`),
    INDEX `discounts_priority_index`(`priority`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dk_lich_details` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `dk_lich_id` INTEGER NULL,
    `user_id` INTEGER NULL,
    `code` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL DEFAULT 'day',
    `date` DATE NULL,
    `name` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `sang` VARCHAR(191) NOT NULL,
    `chieu` VARCHAR(191) NOT NULL,
    `toi` VARCHAR(191) NOT NULL,
    `sang_vao` TIME(0) NULL,
    `sang_ra` TIME(0) NULL,
    `chieu_vao` TIME(0) NULL,
    `chieu_ra` TIME(0) NULL,
    `toi_vao` TIME(0) NULL,
    `toi_ra` TIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dk_lich_lv` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(50) NOT NULL DEFAULT 'day',
    `user_name` VARCHAR(191) NOT NULL,
    `phan_quyen` VARCHAR(191) NOT NULL,
    `phong_ban` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `from_date` DATE NULL,
    `to_date` DATE NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `denied_note` TEXT NULL,
    `date` DATETIME(0) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `don_xin_nghi_pheps` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `ca` VARCHAR(191) NULL,
    `phan_quyen` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `from_date` DATETIME(0) NOT NULL,
    `to_date` DATETIME(0) NOT NULL,
    `description` TEXT NULL,
    `tt_xac_nhan` INTEGER NULL,
    `tbp_xac_nhan` INTEGER NULL,
    `tphc_xac_nhan` INTEGER NULL,
    `gd_xac_nhan` INTEGER NULL,
    `ban_giao_xac_nhan` INTEGER NULL,
    `time_nghi_viec` DATE NULL,
    `time_xn_0` DATETIME(0) NULL,
    `time_xn_1` DATETIME(0) NULL,
    `time_xn_2` DATETIME(0) NULL,
    `time_xn_3` DATETIME(0) NULL,
    `time_xn_4` DATETIME(0) NULL,
    `pns_xac_nhan` INTEGER NULL,
    `time_xn_5` DATETIME(0) NULL,
    `so_ngay_nghi` FLOAT NOT NULL DEFAULT 0,
    `so_ngay_con_lai` FLOAT NULL,
    `ban_giao_cv` INTEGER NULL,
    `so_lan_nghi_sai` INTEGER NULL,
    `cam_ket` TEXT NULL,
    `cv_ban_giao` TEXT NULL,
    `note` VARCHAR(191) NULL,
    `denied_note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `duyet_luong_details` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `status` VARCHAR(50) NOT NULL DEFAULT 'cho_xn',
    `denied_status` VARCHAR(191) NULL,
    `thang` VARCHAR(191) NULL,
    `denied_note` TEXT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `phong_ban` INTEGER NULL,
    `phu_cap_xang_xe` INTEGER NOT NULL DEFAULT 0,
    `so_don_pc_xang` INTEGER NOT NULL DEFAULT 0,
    `to_group` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `salary_status` INTEGER NULL,
    `thoi_gian_lv` INTEGER NULL,
    `duyet_luong_id` INTEGER NULL,
    `duyet_luong_phong_id` INTEGER NULL,
    `phan_quyen` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `luong_cb` INTEGER NOT NULL DEFAULT 0,
    `ngay_cong` FLOAT NOT NULL DEFAULT 0,
    `luong_cb_theo_cong` INTEGER NOT NULL DEFAULT 0,
    `luong_2p` INTEGER NOT NULL DEFAULT 0,
    `luong_3p` INTEGER NOT NULL DEFAULT 0,
    `chiet_khau_vuot_ds` INTEGER NOT NULL DEFAULT 0,
    `chiet_khau_mo_moi` INTEGER NOT NULL DEFAULT 0,
    `doanh_so` INTEGER NULL,
    `doanhso_yc` INTEGER NULL,
    `so_don_vs` INTEGER NULL,
    `so_don_ps` INTEGER NULL,
    `so_don_yc` INTEGER NULL,
    `tb_don_yc` INTEGER NOT NULL DEFAULT 0,
    `ti_le_chot` INTEGER NOT NULL DEFAULT 0,
    `ti_le_chot_yc` INTEGER NOT NULL DEFAULT 0,
    `sl_nghe_may_yc` FLOAT NOT NULL DEFAULT 0,
    `sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_dinh_ky_yc` INTEGER NOT NULL DEFAULT 0,
    `no_da_thu_kh` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_dinh_ky` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_ton_yc` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_ton` INTEGER NOT NULL DEFAULT 0,
    `kpi_sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `kpi_khai_thac_ton` INTEGER NOT NULL DEFAULT 0,
    `kpi_khai_thac_dinh_ky` INTEGER NOT NULL DEFAULT 0,
    `kpi_ti_le_chot` INTEGER NOT NULL DEFAULT 0,
    `kpi_tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `from_date` DATETIME(0) NULL,
    `to_date` DATETIME(0) NULL,
    `luong_tn` INTEGER NOT NULL DEFAULT 0,
    `phu_cap` INTEGER NOT NULL DEFAULT 0,
    `note_phu_cap` TEXT NULL,
    `luong_kpi` INTEGER NOT NULL DEFAULT 0,
    `tong_luong` INTEGER NOT NULL DEFAULT 0,
    `khau_tru_kpi` INTEGER NOT NULL DEFAULT 0,
    `social_insurance_fee` INTEGER NOT NULL DEFAULT 0,
    `phat` INTEGER NOT NULL DEFAULT 0,
    `tam_ung` INTEGER NOT NULL DEFAULT 0,
    `cty_giu` INTEGER NOT NULL DEFAULT 0,
    `cong_no` INTEGER NOT NULL DEFAULT 0,
    `thuc_linh` INTEGER NOT NULL DEFAULT 0,
    `thuc_tra` INTEGER NOT NULL DEFAULT 0,
    `thuong_nong` INTEGER NOT NULL DEFAULT 0,
    `de_nghi_tra` INTEGER NOT NULL DEFAULT 0,
    `ghi_chu` TEXT NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `salary_id` INTEGER NULL,
    `tg_dam_thoai` INTEGER NULL DEFAULT 0,
    `tg_dam_thoai_yc` INTEGER NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `duyet_luongs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `month` INTEGER NULL,
    `year` INTEGER NULL,
    `status` VARCHAR(191) NOT NULL,
    `is_read` BOOLEAN NOT NULL DEFAULT false,
    `type` VARCHAR(191) NOT NULL DEFAULT 'cty',
    `phong_ban_target` INTEGER NULL,
    `created_by` INTEGER NOT NULL,
    `tp_hanh_chinh` INTEGER NULL,
    `tro_ly_tc` INTEGER NULL,
    `giam_doc` INTEGER NULL,
    `chu_tich` INTEGER NULL,
    `thu_quy` INTEGER NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `xac_nhan_5` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `time_xac_nhan_5` DATETIME(0) NULL,
    `ghi_chu` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `editing_invoice_payments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `editing_invoice_id` INTEGER NOT NULL,
    `transaction_payment_id` INTEGER NOT NULL,
    `method_before` VARCHAR(191) NULL,
    `method_after` VARCHAR(191) NULL,
    `bank_account_number_before` TEXT NULL,
    `bank_account_number_after` TEXT NULL,
    `real_paid_on_before` DATETIME(0) NULL,
    `real_paid_on_after` DATETIME(0) NULL,
    `created_at` DATETIME(0) NOT NULL,
    `updated_at` DATETIME(0) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `editing_invoices` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `user_object` VARCHAR(191) NULL DEFAULT 'nvkt',
    `status` VARCHAR(191) NOT NULL,
    `so_hoa_don_before` INTEGER NOT NULL,
    `transaction_id` INTEGER NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `editing_method` VARCHAR(50) NOT NULL DEFAULT 'list',
    `so_hoa_don_after` INTEGER NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `denied_note` VARCHAR(191) NULL,
    `xac_nhan_0` VARCHAR(191) NULL,
    `xac_nhan_5` VARCHAR(191) NULL,
    `time_xac_nhan_0` DATETIME(0) NULL,
    `time_xac_nhan_5` DATETIME(0) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `giay_de_nghis` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `phan_quyen` VARCHAR(191) NOT NULL,
    `daily_result_detail_id` INTEGER NULL,
    `phong_ban` VARCHAR(191) NULL,
    `noi_dung` TEXT NULL,
    `cam_ket` TEXT NULL,
    `type` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NULL,
    `denied_note` TEXT NULL,
    `date` DATE NOT NULL,
    `note` TEXT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `xac_nhan_5` VARCHAR(191) NULL,
    `time_xac_nhan_5` DATETIME(0) NULL,
    `xac_nhan_6` VARCHAR(191) NULL,
    `time_xac_nhan_6` DATETIME(0) NULL,
    `xac_nhan_7` VARCHAR(191) NULL,
    `time_xac_nhan_7` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `hand_over_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `confirm_id` INTEGER NOT NULL,
    `location_id` INTEGER NULL,
    `transaction_id` INTEGER NOT NULL,
    `hand_over` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL DEFAULT 'chua_ban_giao',
    `sub_type` VARCHAR(191) NULL DEFAULT '',
    `description` VARCHAR(191) NULL,
    `denied_note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `invoice_layouts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `header_text` TEXT NULL,
    `invoice_no_prefix` VARCHAR(191) NULL,
    `quotation_no_prefix` VARCHAR(191) NULL,
    `invoice_heading` VARCHAR(191) NULL,
    `sub_heading_line1` VARCHAR(191) NULL,
    `sub_heading_line2` VARCHAR(191) NULL,
    `sub_heading_line3` VARCHAR(191) NULL,
    `sub_heading_line4` VARCHAR(191) NULL,
    `sub_heading_line5` VARCHAR(191) NULL,
    `invoice_heading_not_paid` VARCHAR(191) NULL,
    `invoice_heading_paid` VARCHAR(191) NULL,
    `quotation_heading` VARCHAR(191) NULL,
    `sub_total_label` VARCHAR(191) NULL,
    `discount_label` VARCHAR(191) NULL,
    `tax_label` VARCHAR(191) NULL,
    `total_label` VARCHAR(191) NULL,
    `total_due_label` VARCHAR(191) NULL,
    `paid_label` VARCHAR(191) NULL,
    `show_client_id` BOOLEAN NOT NULL DEFAULT false,
    `client_id_label` VARCHAR(191) NULL,
    `client_tax_label` VARCHAR(191) NULL,
    `date_label` VARCHAR(191) NULL,
    `date_time_format` VARCHAR(191) NULL,
    `show_time` BOOLEAN NOT NULL DEFAULT true,
    `show_brand` BOOLEAN NOT NULL DEFAULT false,
    `show_sku` BOOLEAN NOT NULL DEFAULT true,
    `show_cat_code` BOOLEAN NOT NULL DEFAULT true,
    `show_expiry` BOOLEAN NOT NULL DEFAULT false,
    `show_lot` BOOLEAN NOT NULL DEFAULT false,
    `show_image` BOOLEAN NOT NULL DEFAULT false,
    `show_sale_description` BOOLEAN NOT NULL DEFAULT false,
    `sales_person_label` VARCHAR(191) NULL,
    `show_sales_person` BOOLEAN NOT NULL DEFAULT false,
    `table_product_label` VARCHAR(191) NULL,
    `table_qty_label` VARCHAR(191) NULL,
    `table_unit_price_label` VARCHAR(191) NULL,
    `table_subtotal_label` VARCHAR(191) NULL,
    `cat_code_label` VARCHAR(191) NULL,
    `logo` VARCHAR(191) NULL,
    `show_logo` BOOLEAN NOT NULL DEFAULT false,
    `show_business_name` BOOLEAN NOT NULL DEFAULT false,
    `show_location_name` BOOLEAN NOT NULL DEFAULT true,
    `show_landmark` BOOLEAN NOT NULL DEFAULT true,
    `show_city` BOOLEAN NOT NULL DEFAULT true,
    `show_state` BOOLEAN NOT NULL DEFAULT true,
    `show_zip_code` BOOLEAN NOT NULL DEFAULT true,
    `show_country` BOOLEAN NOT NULL DEFAULT true,
    `show_mobile_number` BOOLEAN NOT NULL DEFAULT true,
    `show_alternate_number` BOOLEAN NOT NULL DEFAULT false,
    `show_email` BOOLEAN NOT NULL DEFAULT false,
    `show_tax_1` BOOLEAN NOT NULL DEFAULT true,
    `show_tax_2` BOOLEAN NOT NULL DEFAULT false,
    `show_barcode` BOOLEAN NOT NULL DEFAULT false,
    `show_payments` BOOLEAN NOT NULL DEFAULT false,
    `show_customer` BOOLEAN NOT NULL DEFAULT false,
    `customer_label` VARCHAR(191) NULL,
    `show_reward_point` BOOLEAN NOT NULL DEFAULT false,
    `highlight_color` VARCHAR(10) NULL,
    `footer_text` TEXT NULL,
    `module_info` TEXT NULL,
    `is_default` BOOLEAN NOT NULL DEFAULT false,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `design` VARCHAR(256) NULL DEFAULT 'classic',
    `cn_heading` VARCHAR(191) NULL,
    `cn_no_label` VARCHAR(191) NULL,
    `cn_amount_label` VARCHAR(191) NULL,
    `table_tax_headings` TEXT NULL,
    `show_previous_bal` BOOLEAN NOT NULL DEFAULT false,
    `prev_bal_label` VARCHAR(191) NULL,
    `product_custom_fields` TEXT NULL,
    `contact_custom_fields` TEXT NULL,
    `location_custom_fields` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `invoice_layouts_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `invoice_schemes` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `scheme_type` ENUM('blank', 'year') NOT NULL,
    `prefix` VARCHAR(191) NULL,
    `start_number` INTEGER NULL,
    `invoice_count` INTEGER NOT NULL DEFAULT 0,
    `total_digits` INTEGER NULL,
    `is_default` BOOLEAN NOT NULL DEFAULT false,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `invoice_schemes_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `jobs` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `queue` VARCHAR(191) NOT NULL,
    `payload` LONGTEXT NOT NULL,
    `attempts` TINYINT UNSIGNED NOT NULL,
    `reserved_at` INTEGER UNSIGNED NULL,
    `available_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    INDEX `jobs_queue_index`(`queue`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `location_standard_products` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `name` VARCHAR(191) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `note` TEXT NULL,
    `status` VARCHAR(50) NOT NULL DEFAULT 'active',
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `location_standard_users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `location_standard_id` INTEGER NOT NULL,
    `location_id` INTEGER NULL,
    `type` VARCHAR(20) NULL DEFAULT 'user',
    `note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `media` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `file_name` VARCHAR(191) NOT NULL,
    `model_type` VARCHAR(191) NOT NULL,
    `model_id` BIGINT UNSIGNED NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `media_model_type_model_id_index`(`model_type`, `model_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `model_has_permissions` (
    `permission_id` INTEGER UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) NOT NULL,
    `model_id` BIGINT UNSIGNED NOT NULL,

    INDEX `model_has_permissions_model_type_model_id_index`(`model_type`, `model_id`),
    PRIMARY KEY (`permission_id`, `model_id`, `model_type`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `model_has_roles` (
    `role_id` INTEGER UNSIGNED NOT NULL,
    `model_type` VARCHAR(191) NOT NULL,
    `model_id` BIGINT UNSIGNED NOT NULL,

    INDEX `model_has_roles_model_type_model_id_index`(`model_type`, `model_id`),
    PRIMARY KEY (`role_id`, `model_id`, `model_type`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `money_hand_overs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `confirm_id` INTEGER NOT NULL,
    `tien_mat` BIGINT NOT NULL,
    `chuyen_khoan` BIGINT NOT NULL,
    `ck_vietinbank` BIGINT NOT NULL,
    `ck_techcombank` BIGINT NOT NULL,
    `ck_vietcombank` BIGINT NOT NULL,
    `thu_no_tm` BIGINT NOT NULL,
    `thu_no_ck` BIGINT NOT NULL,
    `thu_no_ck_vietcombank` BIGINT NOT NULL,
    `thu_no_ck_vietinbank` BIGINT NOT NULL,
    `thu_no_ck_techcombank` BIGINT NOT NULL,
    `con_no` BIGINT NOT NULL,
    `note` TEXT NULL,
    `status` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `money_report_details` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `phieu_ban_giao_id` INTEGER NOT NULL,
    `phieu_xuat_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `money_reports` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `confirm_id` INTEGER NOT NULL,
    `location_id` INTEGER NULL,
    `branch_id` INTEGER NULL,
    `ca` VARCHAR(191) NOT NULL,
    `date` DATE NOT NULL,
    `doanh_thu` INTEGER NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `tien_mat` INTEGER NOT NULL,
    `chuyen_khoan` INTEGER NOT NULL,
    `ck_vietinbank` INTEGER NOT NULL DEFAULT 0,
    `ck_techcombank` INTEGER NOT NULL DEFAULT 0,
    `ck_vietcombank` INTEGER NOT NULL DEFAULT 0,
    `thu_no_ck_vietinbank` INTEGER NOT NULL DEFAULT 0,
    `thu_no_ck_techcombank` INTEGER NOT NULL DEFAULT 0,
    `thu_no_ck_vietcombank` INTEGER NOT NULL DEFAULT 0,
    `khach_no` INTEGER NOT NULL,
    `no_da_thu_tm` INTEGER NOT NULL,
    `no_da_thu_ck` INTEGER NOT NULL,
    `kho_ban_tm` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_vietinbank` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_techcombank` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_vietcombank` INTEGER NOT NULL DEFAULT 0,
    `chua_bg_tm` INTEGER NOT NULL DEFAULT 0,
    `chua_bg_ck` INTEGER NOT NULL DEFAULT 0,
    `chua_bg_ck_vietinbank` INTEGER NOT NULL DEFAULT 0,
    `chua_bg_ck_techcombank` INTEGER NOT NULL DEFAULT 0,
    `chua_bg_ck_vietcombank` INTEGER NOT NULL DEFAULT 0,
    `list_transaction` TEXT NULL,
    `list_transaction_no` TEXT NULL,
    `list_don_thu_no_id` TEXT NULL,
    `list_payment_id` TEXT NULL,
    `list_target_id` TEXT NULL,
    `accepted_by` INTEGER NULL,
    `note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notification_templates` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `template_for` VARCHAR(191) NOT NULL,
    `email_body` TEXT NULL,
    `sms_body` TEXT NULL,
    `subject` VARCHAR(191) NULL,
    `auto_send` BOOLEAN NOT NULL DEFAULT false,
    `auto_send_sms` BOOLEAN NOT NULL DEFAULT false,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notifications` (
    `id` CHAR(36) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `notifiable_type` VARCHAR(191) NOT NULL,
    `notifiable_id` BIGINT UNSIGNED NOT NULL,
    `data` TEXT NOT NULL,
    `read_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type`, `notifiable_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL DEFAULT 'active',
    `ord_status` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `order_id` INTEGER NOT NULL,
    `loai_don` VARCHAR(191) NOT NULL DEFAULT 'binh_thuong',
    `is_mo_moi` VARCHAR(191) NULL DEFAULT 'normal',
    `is_tinh_thoi_gian` INTEGER NOT NULL DEFAULT 1,
    `nvkt_id` INTEGER NOT NULL,
    `location_id` INTEGER NULL,
    `nvkd_id` INTEGER NOT NULL,
    `customer_id` INTEGER NULL,
    `start_order_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `end_order_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `paid_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `thanh_toan_stt` VARCHAR(191) NULL,
    `due_stt` VARCHAR(191) NULL,
    `up_anh_stt` VARCHAR(191) NULL,
    `bao_hanh_stt` VARCHAR(191) NULL,
    `bao_hanh_lai` VARCHAR(191) NULL,
    `ve_sinh_stt` VARCHAR(191) NULL,
    `huy_stt` VARCHAR(191) NULL,
    `danh_gia` INTEGER NOT NULL DEFAULT 0,
    `is_vsbd_280` VARCHAR(11) NOT NULL DEFAULT 'no',
    `is_tl_vs_bd` BOOLEAN NOT NULL DEFAULT false,
    `vsbd_add_minutes` INTEGER NOT NULL DEFAULT 0,
    `danh_gia_cua_kt` INTEGER NOT NULL DEFAULT 0,
    `ca` INTEGER NULL,
    `qr_code` VARCHAR(191) NULL,
    `source` VARCHAR(191) NULL,
    `services` VARCHAR(191) NULL,
    `do_can_mang` VARCHAR(191) NULL,
    `tg_den_nha_khach` INTEGER NULL,
    `tg_lam_don` INTEGER NULL,
    `diem_thai_do` FLOAT NULL,
    `diem_trinh_do` FLOAT NULL,
    `diem_gon_gang` FLOAT NULL,
    `is_danh_gia_kh` INTEGER NULL DEFAULT 0,
    `comment` TEXT NULL,
    `km_diff` FLOAT NOT NULL DEFAULT 0,
    `km_distance` FLOAT NOT NULL DEFAULT 0,
    `km_distance_return` FLOAT NOT NULL DEFAULT 0,
    `km_distance_minutes` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `ordersId` INTEGER UNSIGNED NULL,
    `transactionsId` INTEGER UNSIGNED NULL,
    `contactsId` INTEGER UNSIGNED NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_images` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NULL,
    `customer_id` INTEGER NULL,
    `contact_id` VARCHAR(191) NULL,
    `order_id` INTEGER NULL,
    `time_chup` TIMESTAMP(0) NULL,
    `filename` VARCHAR(191) NULL,
    `caring_history_id` INTEGER NULL,
    `folder_id` VARCHAR(191) NULL,
    `types` VARCHAR(191) NULL,
    `upload_by` INTEGER NULL,
    `time_upload` DATETIME(0) NULL,
    `longitude` VARCHAR(191) NULL,
    `latitude` VARCHAR(191) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `ord_code` VARCHAR(191) NOT NULL,
    `ctv_check_status` VARCHAR(11) NOT NULL DEFAULT 'normal',
    `loai_don` VARCHAR(191) NOT NULL DEFAULT 'binh_thuong',
    `order_type` VARCHAR(191) NOT NULL DEFAULT 'normal',
    `description` TEXT NULL,
    `working_with` VARCHAR(191) NULL,
    `more_request` VARCHAR(191) NULL,
    `other_more_request` TEXT NULL,
    `machine_problem` VARCHAR(191) NULL,
    `other_machine_problem` TEXT NULL,
    `status` INTEGER NOT NULL DEFAULT 1,
    `source` VARCHAR(20) NULL,
    `ord_status` VARCHAR(11) NULL,
    `text_status` VARCHAR(191) NULL,
    `ctv_hll_status` VARCHAR(50) NOT NULL DEFAULT 'normal',
    `dh_status` INTEGER NULL DEFAULT 1,
    `thanh_toan_stt` VARCHAR(191) NULL,
    `hotline_source` VARCHAR(191) NULL,
    `due_stt` VARCHAR(191) NULL,
    `up_anh_stt` VARCHAR(191) NULL,
    `bao_hanh_stt` VARCHAR(191) NULL,
    `bao_hanh_lai` VARCHAR(191) NULL,
    `ve_sinh_stt` VARCHAR(191) NULL,
    `huy_stt` VARCHAR(191) NULL,
    `is_giam_gia` INTEGER NOT NULL DEFAULT 0,
    `prepare_nvkt_id` INTEGER NULL,
    `nvkt_id` INTEGER NULL DEFAULT 0,
    `nvkd_id` INTEGER NULL DEFAULT 0,
    `gio_hen` TIMESTAMP(0) NULL,
    `handler` INTEGER NULL,
    `gio_goi` VARCHAR(191) NULL,
    `gio_den` VARCHAR(191) NULL,
    `thu_nhap` VARCHAR(191) NULL,
    `tinh_cach` VARCHAR(191) NULL,
    `don_them_status` VARCHAR(191) NOT NULL DEFAULT 'moi',
    `don_them_sub_status` VARCHAR(191) NULL,
    `slot_id` INTEGER NULL,
    `check_in` TIMESTAMP(0) NULL,
    `check_out` TIMESTAMP(0) NULL,
    `service_type` VARCHAR(191) NULL,
    `km_distance` FLOAT NOT NULL DEFAULT 0,
    `km_distance_return` FLOAT NOT NULL DEFAULT 0,
    `visible` INTEGER NOT NULL DEFAULT 1,
    `is_den_sp` VARCHAR(191) NOT NULL DEFAULT 'no',
    `ca` INTEGER NULL DEFAULT 1,
    `is_vsbd_280` VARCHAR(191) NOT NULL DEFAULT 'no',
    `vsbd_280_status` VARCHAR(191) NOT NULL DEFAULT 'vsbd_280',
    `qr_code` VARCHAR(191) NULL,
    `do_can_mang` TEXT NULL,
    `services` VARCHAR(191) NULL,
    `vsbd_add_minutes` INTEGER NOT NULL DEFAULT 0,
    `km_distance_minutes` INTEGER NOT NULL DEFAULT 0,
    `is_mo_moi` VARCHAR(191) NULL DEFAULT 'normal',
    `denied_note` TEXT NULL,
    `ord_trans_id` INTEGER NULL,
    `deleted_status` VARCHAR(11) NULL,
    `start_ord` TIMESTAMP(0) NULL,
    `end_ord` TIMESTAMP(0) NULL,
    `is_cho_no` INTEGER NOT NULL DEFAULT 0,
    `show_phone_status` VARCHAR(191) NOT NULL DEFAULT 'inactive',
    `show_phone_pdh` VARCHAR(20) NULL,
    `request_open_phone` BOOLEAN NOT NULL DEFAULT false,
    `is_checked` INTEGER NOT NULL DEFAULT 0,
    `is_som` INTEGER NOT NULL DEFAULT 0,
    `is_kt_cung` INTEGER NOT NULL DEFAULT 0,
    `is_dung_gio` INTEGER NOT NULL DEFAULT 0,
    `is_tinh_thoi_gian` INTEGER NULL DEFAULT 1,
    `huy_note` TEXT NULL,
    `tra_ve_note` TEXT NULL,
    `so_phut_them` INTEGER NOT NULL DEFAULT 0,
    `status_change_at` TIMESTAMP(0) NULL,
    `note` TEXT NULL,
    `support_request` VARCHAR(191) NULL,
    `tag_time` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `contactsId` INTEGER UNSIGNED NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `password_resets` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) NOT NULL,
    `token` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_back_ups` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `transaction_id` INTEGER UNSIGNED NULL,
    `business_id` INTEGER NULL,
    `is_return` BOOLEAN NOT NULL DEFAULT false,
    `amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `method` ENUM('cash', 'card', 'cheque', 'bank_transfer', 'custom_pay_1', 'custom_pay_2', 'custom_pay_3', 'other') NULL,
    `accepted_at` DATETIME(0) NULL,
    `accepted_by` INTEGER NOT NULL,
    `is_accepted` INTEGER NOT NULL DEFAULT 0,
    `is_ban_giao_ck` INTEGER NOT NULL DEFAULT 0,
    `transaction_no` VARCHAR(191) NULL,
    `card_transaction_number` VARCHAR(191) NULL,
    `card_number` VARCHAR(191) NULL,
    `card_type` VARCHAR(191) NULL,
    `card_holder_name` VARCHAR(191) NULL,
    `card_month` VARCHAR(191) NULL,
    `card_year` VARCHAR(191) NULL,
    `card_security` VARCHAR(5) NULL,
    `cheque_number` VARCHAR(191) NULL,
    `ktnb_accept` INTEGER NULL,
    `ktnb_accept_time` DATETIME(0) NULL,
    `ktk_accept` INTEGER NULL,
    `ktk_accept_time` DATETIME(0) NULL,
    `bank_account_number` VARCHAR(191) NULL,
    `bank_account_number1` VARCHAR(191) NULL,
    `bank_account_number2` VARCHAR(191) NULL,
    `paid_on` DATETIME(0) NULL,
    `real_paid_on` DATETIME(0) NULL,
    `created_by` INTEGER NOT NULL,
    `payment_for` INTEGER NULL,
    `parent_id` INTEGER NULL,
    `note` VARCHAR(191) NULL,
    `document` VARCHAR(191) NULL,
    `payment_ref_no` VARCHAR(191) NULL,
    `account_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `transaction_payments_created_by_index`(`created_by`),
    INDEX `transaction_payments_parent_id_index`(`parent_id`),
    INDEX `transaction_payments_transaction_id_foreign`(`transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_confirmations` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `code` VARCHAR(191) NULL,
    `user_target_id` INTEGER NULL,
    `is_tapped` BOOLEAN NOT NULL DEFAULT false,
    `user_name` VARCHAR(191) NOT NULL,
    `ca` VARCHAR(191) NULL,
    `business_id` INTEGER NOT NULL DEFAULT 1,
    `transaction_id` INTEGER NULL,
    `ref_no` VARCHAR(191) NULL,
    `accepted_by` INTEGER NULL,
    `location_id` INTEGER NOT NULL,
    `branch_id` INTEGER NULL,
    `nguoi_xuat` INTEGER NULL,
    `xac_nhan` INTEGER NULL,
    `kt_xac_nhan` INTEGER NULL,
    `tphc_xac_nhan` INTEGER NULL,
    `thu_quy_xac_nhan` INTEGER NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `chu_tich_xn` INTEGER NULL,
    `list_transactions` TEXT NULL,
    `list_transaction_no` TEXT NULL,
    `list_don_thu_no_id` TEXT NULL,
    `list_payment_id` TEXT NULL,
    `list_target_ids` VARCHAR(191) NULL,
    `transfer_location_id` INTEGER NULL,
    `tien_mat` INTEGER NULL,
    `chuyen_khoan` INTEGER NULL,
    `ck_vietinbank` INTEGER NULL,
    `ck_techcombank` INTEGER NULL,
    `ck_vietcombank` INTEGER NULL,
    `chuyen_khoan_chua_xn` BIGINT NULL,
    `ck_vietinbank_chua_xn` BIGINT NULL,
    `ck_techcombank_chua_xn` BIGINT NULL,
    `ck_vietcombank_chua_xn` BIGINT NULL,
    `thu_no_ck_vietcombank` INTEGER NULL,
    `thu_no_ck_vietinbank` INTEGER NULL,
    `thu_no_ck_techcombank` INTEGER NULL,
    `kho_ban_tm` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_vietinbank` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_techcombank` INTEGER NOT NULL DEFAULT 0,
    `kho_ban_ck_vietcombank` INTEGER NOT NULL DEFAULT 0,
    `con_no` INTEGER NULL,
    `tax_amount` INTEGER NOT NULL DEFAULT 0,
    `doanh_thu` INTEGER NULL,
    `giam_gia` INTEGER NOT NULL DEFAULT 0,
    `giam_gia_combo` INTEGER NOT NULL DEFAULT 0,
    `thu_no_ck` INTEGER NULL,
    `thu_no_tm` INTEGER NULL,
    `don_ps_kd` INTEGER NULL,
    `don_ps_hotline` INTEGER NULL,
    `don_bh_vs` INTEGER NULL,
    `don_bh_ps` INTEGER NULL,
    `don_vs` INTEGER NULL,
    `don_no_da_thu` INTEGER NULL,
    `so_don_da_tt` INTEGER NULL,
    `so_don_chua_tt` INTEGER NULL,
    `hoa_don_chua_tt` TEXT NULL,
    `date` DATE NOT NULL,
    `tu_luc` TIMESTAMP(0) NULL,
    `den_luc` TIMESTAMP(0) NULL,
    `level` VARCHAR(191) NULL,
    `ban_giao_status` VARCHAR(191) NULL DEFAULT 'chua_ban_giao',
    `to_group` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NULL,
    `ghi_chu` VARCHAR(191) NULL,
    `is_checked_2` INTEGER NULL DEFAULT 0,
    `is_checked` INTEGER NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_slips` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `transaction_id` INTEGER NULL,
    `user_name` VARCHAR(191) NULL,
    `location_id` INTEGER NULL,
    `date` DATE NULL,
    `level` VARCHAR(191) NULL,
    `to_group` VARCHAR(191) NULL,
    `thanh_toan_stt` VARCHAR(191) NULL,
    `expense_category_id` INTEGER NULL,
    `edit_status` FLOAT NOT NULL DEFAULT 0,
    `type` VARCHAR(191) NULL,
    `phieu_chi_id` INTEGER NULL,
    `noi_dung` VARCHAR(5000) NULL,
    `so_tien` INTEGER NOT NULL,
    `chenh_lech` INTEGER NULL,
    `so_tai_khoan` VARCHAR(191) NULL,
    `tk_ngan_hang` TEXT NULL,
    `chu_tk` TEXT NULL,
    `status` TEXT NULL,
    `truong_bp` INTEGER NULL,
    `tp_hanh_chinh` INTEGER NULL,
    `giam_doc` INTEGER NULL,
    `chu_tich` INTEGER NULL,
    `nv_hanh_chinh` INTEGER NULL,
    `ke_toan` INTEGER NULL,
    `ghi_chu` TEXT NULL,
    `expense_type` VARCHAR(191) NULL,
    `is_cp_co_dinh` INTEGER NOT NULL DEFAULT 0,
    `chi_phi_co_dinh_id` INTEGER NULL,
    `denied_by` INTEGER NULL,
    `denied_note` TEXT NULL,
    `time_xn_1` DATETIME(0) NULL,
    `time_xn_2` DATETIME(0) NULL,
    `time_xn_3` DATETIME(0) NULL,
    `time_xn_4` DATETIME(0) NULL,
    `time_xn_5` DATETIME(0) NULL,
    `accepted_by` INTEGER NULL,
    `ban_ke` VARCHAR(191) NULL,
    `note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `permissions` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `guard_name` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `phieu_phats` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `transaction_id` INTEGER NULL,
    `user_id` INTEGER NOT NULL,
    `code` VARCHAR(191) NULL,
    `quy_trinh_code` VARCHAR(191) NULL,
    `quantity` INTEGER NOT NULL DEFAULT 0,
    `name` VARCHAR(191) NOT NULL,
    `tien_phat` INTEGER NOT NULL,
    `create_type` VARCHAR(191) NULL DEFAULT 'auto',
    `status` VARCHAR(191) NOT NULL DEFAULT 'all',
    `description` TEXT NULL,
    `ghi_chu` TEXT NULL,
    `comment` TEXT NULL,
    `ngay_phat` TIMESTAMP(0) NULL,
    `denied_note` TEXT NULL,
    `is_accept` VARCHAR(191) NULL,
    `cham_cong_id` INTEGER NULL,
    `nhan_vien_note` TEXT NOT NULL,
    `truong_cn_note` TEXT NOT NULL,
    `truong_phong_note` TEXT NOT NULL,
    `giam_doc_note` TEXT NOT NULL,
    `nhan_vien_note_time` TIMESTAMP(0) NULL,
    `truong_cn_note_time` TIMESTAMP(0) NULL,
    `truong_phong_note_time` TIMESTAMP(0) NULL,
    `giam_doc_note_time` TIMESTAMP(0) NULL,
    `nhan_vien_xn` VARCHAR(191) NULL,
    `truong_cn_xn` VARCHAR(191) NULL,
    `truong_phong_xn` VARCHAR(191) NULL,
    `giam_doc_xn` VARCHAR(191) NULL,
    `pdh_xn` VARCHAR(191) NULL,
    `pdh_note` TEXT NULL,
    `pdh_note_time` TIMESTAMP(0) NULL,
    `accepted_by` VARCHAR(191) NULL,
    `accepted_at` DATETIME(0) NULL,
    `created_by` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `phieu_thus` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `user_name` VARCHAR(191) NULL,
    `status` VARCHAR(50) NULL,
    `type` VARCHAR(191) NULL,
    `total_paid` INTEGER NULL,
    `description` TEXT NULL,
    `transaction_date` TIMESTAMP(0) NULL,
    `denied_note` TEXT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` TIMESTAMP(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` TIMESTAMP(0) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_3` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `position_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `user_name` VARCHAR(191) NULL DEFAULT '',
    `deviceName` VARCHAR(191) NULL,
    `uniqueId` VARCHAR(191) NULL,
    `protocol` VARCHAR(191) NULL,
    `serverTime` TIMESTAMP(0) NULL,
    `deviceTime` TIMESTAMP(0) NULL,
    `fixTime` INTEGER NULL,
    `outdated` BOOLEAN NULL,
    `valid` BOOLEAN NULL,
    `latitude` VARCHAR(191) NULL,
    `longitude` VARCHAR(191) NULL,
    `altitude` VARCHAR(191) NULL,
    `speed` FLOAT NULL DEFAULT 0,
    `course` INTEGER NULL DEFAULT 0,
    `address` TEXT NULL,
    `accuracy` FLOAT NULL DEFAULT 0,
    `network` VARCHAR(191) NULL,
    `status` VARCHAR(50) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `post_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `types` VARCHAR(11) NOT NULL,
    `image_check` INTEGER NULL,
    `post_id` INTEGER NOT NULL,
    `custom_1` INTEGER NULL,
    `custom_2` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `post_targets` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `post_id` INTEGER NOT NULL,
    `target_id` INTEGER NOT NULL,
    `accepted_time` DATETIME(0) NULL,
    `accepted_by` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `posts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `content` TEXT NOT NULL,
    `status` VARCHAR(191) NULL,
    `post_no` INTEGER NULL,
    `type` VARCHAR(191) NOT NULL,
    `thong_bao_group` VARCHAR(191) NOT NULL DEFAULT 'toan_cty',
    `created_by` INTEGER NOT NULL,
    `accepted_by` VARCHAR(191) NULL,
    `accepted_time` DATETIME(0) NULL,
    `tb_title` VARCHAR(191) NOT NULL,
    `custom_2` VARCHAR(191) NULL,
    `custom_3` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `printers` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(256) NOT NULL,
    `connection_type` ENUM('network', 'windows', 'linux') NOT NULL,
    `capability_profile` ENUM('default', 'simple', 'SP2000', 'TEP-200M', 'P822D') NOT NULL DEFAULT 'default',
    `char_per_line` VARCHAR(191) NULL,
    `ip_address` VARCHAR(191) NULL,
    `port` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `printers_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_racks` (
    `id` INTEGER UNSIGNED NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `location_id` INTEGER UNSIGNED NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `rack` VARCHAR(191) NULL,
    `row` VARCHAR(191) NULL,
    `position` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_variations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `variation_template_id` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `is_dummy` BOOLEAN NOT NULL DEFAULT true,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `product_variations_name_index`(`name`),
    INDEX `product_variations_product_id_index`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `type` ENUM('single', 'variable', 'modifier', 'combo') NULL,
    `unit_id` INTEGER UNSIGNED NULL,
    `sub_unit_ids` TEXT NULL,
    `brand_id` INTEGER UNSIGNED NULL,
    `category_id` INTEGER UNSIGNED NULL,
    `sub_category_id` INTEGER UNSIGNED NULL,
    `tax` INTEGER UNSIGNED NULL,
    `tax_type` ENUM('inclusive', 'exclusive') NOT NULL,
    `enable_stock` BOOLEAN NOT NULL DEFAULT false,
    `alert_quantity` INTEGER NOT NULL DEFAULT 0,
    `sku` VARCHAR(191) NOT NULL,
    `price` INTEGER NOT NULL,
    `barcode_type` ENUM('C39', 'C128', 'EAN13', 'EAN8', 'UPCA', 'UPCE') NULL DEFAULT 'C128',
    `expiry_period` DECIMAL(4, 2) NULL,
    `expiry_period_type` ENUM('days', 'months') NULL,
    `enable_sr_no` BOOLEAN NOT NULL DEFAULT false,
    `weight` VARCHAR(191) NULL,
    `kt_cskh_tv1` INTEGER NULL DEFAULT 0,
    `kt_cskh_tv2` INTEGER NULL DEFAULT 0,
    `kt_cskh_ct` INTEGER NULL DEFAULT 0,
    `kt_kd_tv1` INTEGER NULL DEFAULT 0,
    `kt_kd_tv2` INTEGER NULL DEFAULT 0,
    `kt_kd_ct` INTEGER NULL DEFAULT 0,
    `image` VARCHAR(191) NULL,
    `product_description` TEXT NULL,
    `product_check` VARCHAR(11) NOT NULL DEFAULT 'sp',
    `created_by` INTEGER UNSIGNED NOT NULL,
    `is_inactive` BOOLEAN NOT NULL DEFAULT false,
    `not_for_selling` BOOLEAN NOT NULL DEFAULT false,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `products_brand_id_foreign`(`brand_id`),
    INDEX `products_business_id_index`(`business_id`),
    INDEX `products_category_id_foreign`(`category_id`),
    INDEX `products_created_by_index`(`created_by`),
    INDEX `products_name_index`(`name`),
    INDEX `products_sub_category_id_foreign`(`sub_category_id`),
    INDEX `products_tax_foreign`(`tax`),
    INDEX `products_unit_id_index`(`unit_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products_discounts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_code` VARCHAR(191) NOT NULL,
    `category_id` INTEGER NOT NULL,
    `discount` INTEGER NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `purchase_lines` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `transaction_id` INTEGER UNSIGNED NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `variation_id` INTEGER UNSIGNED NOT NULL,
    `quantity` INTEGER NOT NULL,
    `pp_without_discount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `discount_percent` DECIMAL(5, 2) NOT NULL DEFAULT 0.00,
    `purchase_price` DECIMAL(22, 4) NOT NULL,
    `purchase_price_inc_tax` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `item_tax` DECIMAL(22, 4) NOT NULL,
    `tax_id` INTEGER UNSIGNED NULL,
    `quantity_sold` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `quantity_adjusted` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `quantity_returned` DECIMAL(20, 4) NOT NULL DEFAULT 0.0000,
    `mfg_quantity_used` DECIMAL(20, 4) NOT NULL DEFAULT 0.0000,
    `mfg_date` DATE NULL,
    `exp_date` DATE NULL,
    `lot_number` VARCHAR(256) NULL,
    `sub_unit_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `purchase_lines_product_id_foreign`(`product_id`),
    INDEX `purchase_lines_sub_unit_id_index`(`sub_unit_id`),
    INDEX `purchase_lines_tax_id_foreign`(`tax_id`),
    INDEX `purchase_lines_transaction_id_foreign`(`transaction_id`),
    INDEX `purchase_lines_variation_id_foreign`(`variation_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `push_subscriptions` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `subscribable_type` VARCHAR(191) NOT NULL,
    `subscribable_id` BIGINT UNSIGNED NOT NULL,
    `endpoint` VARCHAR(500) NOT NULL,
    `public_key` VARCHAR(191) NULL,
    `auth_token` VARCHAR(191) NULL,
    `content_encoding` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    UNIQUE INDEX `push_subscriptions_endpoint_unique`(`endpoint`),
    INDEX `push_subscriptions_subscribable_type_subscribable_id_index`(`subscribable_type`, `subscribable_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qr_code_campaigns` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `name` VARCHAR(191) NOT NULL,
    `note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qr_codes` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `location_id` INTEGER NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `date` DATE NOT NULL,
    `created_by` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `quan_ly_don_no_payments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `transaction_id` INTEGER UNSIGNED NULL,
    `quan_ly_don_no_id` INTEGER NULL,
    `amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `method` ENUM('cash', 'card', 'cheque', 'bank_transfer', 'custom_pay_1', 'custom_pay_2', 'custom_pay_3', 'other') NULL,
    `transaction_no` VARCHAR(191) NULL,
    `bank_account_number` VARCHAR(191) NULL,
    `paid_on` DATETIME(0) NULL,
    `real_paid_on` DATETIME(0) NULL,
    `note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `transaction_payments_transaction_id_foreign`(`transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `quan_ly_don_nos` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `type` VARCHAR(191) NULL,
    `transaction_id` INTEGER NOT NULL,
    `tien_no` INTEGER NOT NULL,
    `con_no` INTEGER NULL,
    `method` VARCHAR(191) NULL,
    `bank_account` VARCHAR(191) NULL,
    `order_history_id` INTEGER NULL,
    `nhan_vien_thu_no` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `note` VARCHAR(191) NOT NULL,
    `transaction_date` TIMESTAMP(0) NULL,
    `hand_over_status` VARCHAR(191) NULL DEFAULT 'thanh_toan',
    `is_ban_giao` INTEGER NOT NULL DEFAULT 0,
    `paid_at` DATETIME(0) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reference_counts` (
    `id` INTEGER UNSIGNED NOT NULL,
    `ref_type` VARCHAR(191) NOT NULL,
    `ref_count` INTEGER NOT NULL,
    `business_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `res_product_modifier_sets` (
    `modifier_set_id` INTEGER UNSIGNED NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,

    INDEX `res_product_modifier_sets_modifier_set_id_foreign`(`modifier_set_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `res_tables` (
    `id` INTEGER UNSIGNED NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `location_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` TEXT NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `res_tables_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `rest_days` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `he_so_luong` FLOAT NULL DEFAULT 1,
    `is_kpi` INTEGER NOT NULL DEFAULT 1,
    `is_luong` INTEGER NOT NULL DEFAULT 0,
    `date` DATE NULL,
    `code` VARCHAR(191) NOT NULL,
    `note` VARCHAR(191) NULL,
    `updated_by` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `role_has_permissions` (
    `permission_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `role_id` INTEGER UNSIGNED NOT NULL,

    INDEX `role_has_permissions_role_id_foreign`(`role_id`),
    PRIMARY KEY (`permission_id`, `role_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `roles` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `phong_ban` INTEGER NULL,
    `vai_tro` VARCHAR(191) NULL,
    `guard_name` VARCHAR(191) NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `is_default` BOOLEAN NOT NULL DEFAULT false,
    `is_service_staff` BOOLEAN NOT NULL DEFAULT false,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `roles_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `salaries` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `business_id` INTEGER NOT NULL,
    `status` VARCHAR(191) NULL,
    `denied_note` TEXT NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `thang` VARCHAR(191) NOT NULL,
    `tu_ngay` TIMESTAMP(0) NULL,
    `den_ngay` TIMESTAMP(0) NULL,
    `bac_luong` VARCHAR(255) NOT NULL,
    `cong_no` FLOAT NOT NULL DEFAULT 0,
    `tam_ung` INTEGER NOT NULL DEFAULT 0,
    `cty_giu` INTEGER NOT NULL DEFAULT 0,
    `tb_don_yc` INTEGER NULL,
    `doanh_so` INTEGER NOT NULL DEFAULT 0,
    `phu_cap_xang_xe` INTEGER NOT NULL DEFAULT 0,
    `doanhso_yc` INTEGER NOT NULL DEFAULT 0,
    `so_don_vs` INTEGER NOT NULL DEFAULT 0,
    `ti_le_chot` INTEGER NOT NULL DEFAULT 0,
    `ti_le_chot_yc` INTEGER NOT NULL DEFAULT 0,
    `so_don_ps` INTEGER NOT NULL DEFAULT 0,
    `sl_nghe_may_yc` FLOAT NOT NULL DEFAULT 0,
    `sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_dinh_ky_yc` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_dinh_ky` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_ton_yc` INTEGER NOT NULL DEFAULT 0,
    `khai_thac_ton` INTEGER NOT NULL DEFAULT 0,
    `chiet_khau` INTEGER NOT NULL DEFAULT 0,
    `chiet_khau_mo_moi` INTEGER NOT NULL DEFAULT 0,
    `ngay_cong` FLOAT NOT NULL DEFAULT 0,
    `luong_cb` INTEGER NOT NULL DEFAULT 0,
    `luong_cb_trong_thang` INTEGER NULL DEFAULT 0,
    `luong_2p` INTEGER NOT NULL DEFAULT 0,
    `luong_3p` INTEGER NOT NULL DEFAULT 0,
    `luong_tn` INTEGER NOT NULL DEFAULT 0,
    `phu_cap` INTEGER NOT NULL DEFAULT 0,
    `note_phu_cap` TEXT NULL,
    `don_them` INTEGER NULL DEFAULT 0,
    `so_don_yc` INTEGER NOT NULL DEFAULT 0,
    `tong_luong` INTEGER NOT NULL DEFAULT 0,
    `khau_tru_kpi` INTEGER NOT NULL DEFAULT 0,
    `kpi_gia_tri_dh` INTEGER NOT NULL DEFAULT 0,
    `tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `tg_dam_thoai_yc` INTEGER NOT NULL DEFAULT 0,
    `luong_kpi` INTEGER NOT NULL DEFAULT 0,
    `no_da_thu_kh` INTEGER NOT NULL DEFAULT 0,
    `kpi_doanh_so` INTEGER NOT NULL DEFAULT 0,
    `so_don_pc_xang` INTEGER NOT NULL DEFAULT 0,
    `social_insurance_fee` INTEGER NOT NULL DEFAULT 0,
    `kpi_so_don` INTEGER NOT NULL DEFAULT 0,
    `kpi_ti_le_vs` INTEGER NOT NULL DEFAULT 0,
    `kpi_sl_nghe_may` INTEGER NOT NULL DEFAULT 0,
    `kpi_khai_thac_ton` INTEGER NOT NULL DEFAULT 0,
    `kpi_tg_dam_thoai` INTEGER NOT NULL DEFAULT 0,
    `kpi_khai_thac_dinh_ky` INTEGER NOT NULL,
    `kpi_ti_le_chot` INTEGER NOT NULL DEFAULT 0,
    `thuong_nong` INTEGER NOT NULL DEFAULT 0,
    `thuong` INTEGER NOT NULL DEFAULT 0,
    `phat` INTEGER NOT NULL DEFAULT 0,
    `ghi_chu` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `salary_statuses` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `phong_ban` INTEGER NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `selling_price_groups` (
    `id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` TEXT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `selling_price_groups_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sessions` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` INTEGER UNSIGNED NULL,
    `ip_address` VARCHAR(45) NULL,
    `user_agent` TEXT NULL,
    `payload` TEXT NOT NULL,
    `last_activity` INTEGER NOT NULL,

    UNIQUE INDEX `sessions_id_unique`(`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `social_insurance_fees` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(191) NULL,
    `status` VARCHAR(20) NULL,
    `created_by` INTEGER NULL,
    `total_fee` INTEGER NOT NULL DEFAULT 0,
    `paid_on` DATE NULL,
    `description` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stock_adjustment_lines` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `transaction_id` INTEGER UNSIGNED NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `variation_id` INTEGER UNSIGNED NOT NULL,
    `quantity` DECIMAL(22, 4) NOT NULL,
    `unit_price` DECIMAL(22, 4) NULL,
    `removed_purchase_line` INTEGER NULL,
    `lot_no_line_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `stock_adjustment_lines_product_id_foreign`(`product_id`),
    INDEX `stock_adjustment_lines_transaction_id_index`(`transaction_id`),
    INDEX `stock_adjustment_lines_variation_id_foreign`(`variation_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stock_adjustments_temp` (
    `id` INTEGER NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `support_orders` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `user_name` VARCHAR(191) NULL,
    `order_id` INTEGER NULL,
    `order_code` VARCHAR(191) NULL,
    `note` TEXT NULL,
    `type` VARCHAR(50) NOT NULL DEFAULT 'order',
    `name` VARCHAR(191) NULL,
    `support_by` INTEGER NULL,
    `support_by_name` VARCHAR(191) NULL,
    `time_supported` TIMESTAMP(0) NULL,
    `status` VARCHAR(191) NULL DEFAULT 'active',
    `so_phut_them` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `system` (
    `id` INTEGER UNSIGNED NOT NULL,
    `key` VARCHAR(191) NOT NULL,
    `value` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `target_details` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `user_code_add` VARCHAR(191) NULL,
    `target_id` INTEGER NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `date` DATE NULL,
    `phong_ban` INTEGER NULL,
    `to_group` INTEGER NULL,
    `bo_phan` INTEGER NULL,
    `ca` VARCHAR(191) NOT NULL,
    `sl_don_du_kien` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `targets` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `phong_ban_code` VARCHAR(191) NOT NULL,
    `date` DATE NULL,
    `from_date` DATE NULL,
    `to_date` DATE NULL,
    `xac_nhan_1` VARCHAR(191) NULL,
    `time_xac_nhan_1` DATETIME(0) NULL,
    `xac_nhan_2` VARCHAR(191) NULL,
    `time_xac_nhan_2` DATETIME(0) NULL,
    `xac_nhan_3` VARCHAR(191) NULL,
    `time_xac_nhan_3` DATETIME(0) NULL,
    `xac_nhan_4` VARCHAR(191) NULL,
    `time_xac_nhan_4` DATETIME(0) NULL,
    `so_don` INTEGER NOT NULL DEFAULT 0,
    `doanh_so` INTEGER NOT NULL DEFAULT 0,
    `status` VARCHAR(191) NULL DEFAULT 'cho_xn',
    `denied_note` TEXT NULL,
    `note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tax_rates` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `amount` DOUBLE NOT NULL,
    `is_tax_group` BOOLEAN NOT NULL DEFAULT false,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `tax_rates_business_id_foreign`(`business_id`),
    INDEX `tax_rates_created_by_foreign`(`created_by`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `time_books` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL DEFAULT 1,
    `ma_nhanvien` VARCHAR(100) NULL,
    `ten_nhanvien` VARCHAR(100) NULL,
    `phong_ban` VARCHAR(100) NULL,
    `chuc_vu` VARCHAR(100) NULL,
    `ngay_cham` DATE NULL,
    `thu` VARCHAR(50) NULL,
    `gio_vao1` TIME(0) NULL,
    `gio_ra1` TIME(0) NULL,
    `gio_vao2` TIME(0) NULL,
    `gio_ra2` TIME(0) NULL,
    `gio_vao3` TIME(0) NULL,
    `gio_ra3` TIME(0) NULL,
    `cong` FLOAT NULL,
    `status` VARCHAR(191) NOT NULL DEFAULT 'confimred',
    `gio` FLOAT NULL,
    `cong+` FLOAT NULL,
    `gio+` FLOAT NULL,
    `vao_tre` FLOAT NULL,
    `ra_som` FLOAT NULL,
    `longitude` VARCHAR(191) NULL,
    `latitude` VARCHAR(191) NULL,
    `tc1` FLOAT NULL,
    `tc2` FLOAT NULL,
    `tc3` FLOAT NULL,
    `ten_ca` VARCHAR(100) NULL,
    `kyhieu` VARCHAR(100) NULL,
    `kyhieu+` VARCHAR(100) NULL,
    `tong_gio` FLOAT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction_payments` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `transaction_id` INTEGER UNSIGNED NULL,
    `business_id` INTEGER NULL,
    `is_return` BOOLEAN NOT NULL DEFAULT false,
    `amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `method` ENUM('cash', 'card', 'cheque', 'bank_transfer', 'custom_pay_1', 'custom_pay_2', 'custom_pay_3', 'other') NULL,
    `accepted_at` DATETIME(0) NULL,
    `accepted_by` INTEGER NOT NULL,
    `is_accepted` INTEGER NOT NULL DEFAULT 0,
    `is_ban_giao_ck` INTEGER NOT NULL DEFAULT 0,
    `transaction_no` VARCHAR(191) NULL,
    `card_transaction_number` VARCHAR(191) NULL,
    `card_number` VARCHAR(191) NULL,
    `card_type` VARCHAR(191) NULL,
    `card_holder_name` VARCHAR(191) NULL,
    `card_month` VARCHAR(191) NULL,
    `card_year` VARCHAR(191) NULL,
    `card_security` VARCHAR(5) NULL,
    `cheque_number` VARCHAR(191) NULL,
    `bank_account_number` VARCHAR(191) NULL,
    `bank_account_number1` VARCHAR(191) NULL,
    `bank_account_number2` VARCHAR(191) NULL,
    `paid_on` DATETIME(0) NULL,
    `real_paid_on` DATETIME(0) NULL,
    `created_by` INTEGER NOT NULL,
    `payment_for` INTEGER NULL,
    `parent_id` INTEGER NULL,
    `ktk_accept` INTEGER NULL,
    `ktk_accept_time` DATETIME(0) NULL,
    `ktnb_accept` INTEGER NULL,
    `ktnb_accept_time` DATETIME(0) NULL,
    `note` VARCHAR(191) NULL,
    `document` VARCHAR(191) NULL,
    `payment_ref_no` VARCHAR(191) NULL,
    `account_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `transaction_payments_created_by_index`(`created_by`),
    INDEX `transaction_payments_parent_id_index`(`parent_id`),
    INDEX `transaction_payments_transaction_id_foreign`(`transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction_sell_lines` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `variation_id` INTEGER UNSIGNED NOT NULL,
    `quantity` INTEGER NOT NULL,
    `quantity_returned` DECIMAL(20, 0) NOT NULL DEFAULT 0,
    `unit_price_before_discount` DECIMAL(22, 1) NOT NULL DEFAULT 0.0,
    `unit_price` DECIMAL(22, 1) NULL,
    `line_discount_type` ENUM('fixed', 'percentage') NULL,
    `line_discount_amount` DECIMAL(22, 0) NOT NULL DEFAULT 0,
    `unit_price_inc_tax` DECIMAL(22, 1) NULL,
    `item_tax` DECIMAL(22, 4) NOT NULL,
    `tax_id` INTEGER UNSIGNED NULL,
    `tax_amount` INTEGER NOT NULL DEFAULT 0,
    `discount_amount` INTEGER NOT NULL DEFAULT 0,
    `discount_id` INTEGER NULL,
    `lot_no_line_id` INTEGER NULL,
    `sell_line_note` TEXT NULL,
    `res_service_staff_id` INTEGER NULL,
    `res_line_order_status` VARCHAR(191) NULL,
    `parent_sell_line_id` INTEGER NULL,
    `children_type` VARCHAR(191) NULL DEFAULT '',
    `sub_unit_id` INTEGER NULL,
    `is_den_sp` VARCHAR(191) NOT NULL DEFAULT 'no',
    `note` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `product_id` INTEGER NOT NULL,
    `transaction_id` INTEGER UNSIGNED NOT NULL,
    `contactsId` INTEGER UNSIGNED NULL,

    UNIQUE INDEX `transaction_sell_lines_product_id_key`(`product_id`),
    INDEX `transaction_sell_lines_children_type_index`(`children_type`),
    INDEX `transaction_sell_lines_parent_sell_line_id_index`(`parent_sell_line_id`),
    INDEX `transaction_sell_lines_tax_id_foreign`(`tax_id`),
    INDEX `transaction_sell_lines_variation_id_foreign`(`variation_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction_sell_lines_purchase_lines` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `sell_line_id` INTEGER UNSIGNED NULL,
    `stock_adjustment_line_id` INTEGER UNSIGNED NULL,
    `purchase_line_id` INTEGER UNSIGNED NOT NULL,
    `quantity` DECIMAL(22, 4) NOT NULL,
    `qty_returned` DECIMAL(20, 4) NOT NULL DEFAULT 0.0000,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `purchase_line_id`(`purchase_line_id`),
    INDEX `sell_line_id`(`sell_line_id`),
    INDEX `stock_adjustment_line_id`(`stock_adjustment_line_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transactions` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `location_id` INTEGER UNSIGNED NULL,
    `nvkd_id` INTEGER UNSIGNED NULL,
    `nvkt_id` INTEGER NULL,
    `is_mo_moi` VARCHAR(191) NULL DEFAULT 'normal',
    `is_xuat_vat` BOOLEAN NOT NULL DEFAULT false,
    `res_table_id` INTEGER UNSIGNED NULL,
    `res_waiter_id` INTEGER UNSIGNED NULL,
    `res_order_status` ENUM('received', 'cooked', 'served') NULL,
    `type` VARCHAR(255) NULL,
    `sub_type` VARCHAR(20) NULL,
    `status` ENUM('received', 'pending', 'ordered', 'draft', 'final') NOT NULL,
    `is_quotation` BOOLEAN NOT NULL DEFAULT false,
    `payment_status` ENUM('paid', 'due', 'partial') NULL,
    `adjustment_type` ENUM('normal', 'abnormal') NULL,
    `contact_id` INTEGER UNSIGNED NULL,
    `customer_group_id` INTEGER NULL,
    `invoice_no` VARCHAR(191) NULL,
    `ref_no` VARCHAR(191) NULL,
    `subscription_no` VARCHAR(191) NULL,
    `transaction_date` DATETIME(0) NOT NULL,
    `total_before_tax` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `tax_id` INTEGER UNSIGNED NULL,
    `tax_amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `discount_type` ENUM('fixed', 'percentage') NULL,
    `discount_amount` VARCHAR(10) NULL,
    `rp_redeemed` INTEGER NOT NULL DEFAULT 0,
    `rp_redeemed_amount` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `shipping_details` VARCHAR(191) NULL,
    `shipping_charges` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `additional_notes` TEXT NULL,
    `staff_note` TEXT NULL,
    `final_total` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `chiet_khau` INTEGER NULL,
    `loai_don` VARCHAR(191) NULL DEFAULT 'binh_thuong',
    `giam_gia` INTEGER NOT NULL DEFAULT 0,
    `xuat_kho_stt` VARCHAR(191) NOT NULL DEFAULT 'ban_hang',
    `expense_category_id` INTEGER UNSIGNED NULL,
    `expense_for` INTEGER UNSIGNED NULL,
    `commission_agent` INTEGER NULL,
    `document` VARCHAR(191) NULL,
    `is_direct_sale` BOOLEAN NOT NULL DEFAULT false,
    `is_suspend` BOOLEAN NOT NULL DEFAULT false,
    `exchange_rate` DECIMAL(20, 3) NOT NULL DEFAULT 1.000,
    `total_amount_recovered` DECIMAL(22, 4) NULL,
    `transfer_parent_id` INTEGER NULL,
    `return_parent_id` INTEGER NULL,
    `opening_stock_product_id` INTEGER NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `is_created_from_api` BOOLEAN NOT NULL DEFAULT false,
    `rp_earned` INTEGER NOT NULL DEFAULT 0,
    `order_addresses` TEXT NULL,
    `is_recurring` BOOLEAN NOT NULL DEFAULT false,
    `recur_interval` DOUBLE NULL,
    `recur_interval_type` ENUM('days', 'months', 'years') NULL,
    `recur_repetitions` INTEGER NULL,
    `recur_stopped_on` DATETIME(0) NULL,
    `recur_parent_id` INTEGER NULL,
    `invoice_token` VARCHAR(191) NULL,
    `pay_term_number` INTEGER NULL,
    `pay_term_type` ENUM('days', 'months') NULL,
    `selling_price_group_id` INTEGER NULL,
    `so_hoa_don` INTEGER NULL,
    `is_da_hen` INTEGER NOT NULL DEFAULT 0,
    `is_ban_giao` INTEGER NULL DEFAULT 0,
    `is_giam_gia` INTEGER NOT NULL DEFAULT 1,
    `ngay_hen_tra` DATE NULL,
    `is_giu_luong` INTEGER NOT NULL DEFAULT 0,
    `accepted_at` DATETIME(0) NULL,
    `ban_giao_status` VARCHAR(191) NOT NULL DEFAULT 'nvkt_chua_bg',
    `giu_luong_status` VARCHAR(50) NOT NULL DEFAULT 'no',
    `hand_over_location_id` INTEGER NULL,
    `hand_over_branch_id` INTEGER NULL,
    `accepted_by` INTEGER NULL,
    `is_accepted` INTEGER NOT NULL DEFAULT 0,
    `is_ban_giao_ck` INTEGER NOT NULL DEFAULT 0,
    `is_lap_may` INTEGER NOT NULL DEFAULT 0,
    `hand_over_status` VARCHAR(191) NULL DEFAULT 'thanh_toan',
    `hand_over_user_id` INTEGER NULL,
    `so_lan_gui` INTEGER NOT NULL DEFAULT 0,
    `accept_status` VARCHAR(191) NOT NULL DEFAULT 'accept',
    `denied_note` TEXT NULL,
    `dieu_hanh_note` TEXT NULL,
    `ly_do_chua_thu` TEXT NULL,
    `denied_code` VARCHAR(191) NULL,
    `ktk_accept` INTEGER NULL,
    `ktk_accept_time` DATETIME(0) NULL,
    `ktnb_accept` INTEGER NULL,
    `ktnb_accept_time` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `transactions_business_id_index`(`business_id`),
    INDEX `transactions_contact_id_index`(`contact_id`),
    INDEX `transactions_created_by_index`(`created_by`),
    INDEX `transactions_expense_category_id_index`(`expense_category_id`),
    INDEX `transactions_expense_for_foreign`(`expense_for`),
    INDEX `transactions_location_id_index`(`location_id`),
    INDEX `transactions_return_parent_id_index`(`return_parent_id`),
    INDEX `transactions_sub_type_index`(`sub_type`),
    INDEX `transactions_tax_id_foreign`(`tax_id`),
    INDEX `transactions_transaction_date_index`(`transaction_date`),
    INDEX `transactions_type_index`(`type`(191)),
    INDEX `type`(`type`(191)),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `turn_order_to_due_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `save_date` DATE NOT NULL,
    `transaction_id` INTEGER NOT NULL,
    `tong_tien` BIGINT NOT NULL DEFAULT 0,
    `tien_mat` BIGINT NOT NULL DEFAULT 0,
    `chuyen_khoan` BIGINT NOT NULL DEFAULT 0,
    `ck_vietinbank` BIGINT NOT NULL DEFAULT 0,
    `ck_vietcombank` BIGINT NOT NULL DEFAULT 0,
    `ck_techcombank` BIGINT NOT NULL DEFAULT 0,
    `con_no` BIGINT NOT NULL DEFAULT 0,
    `ban_giao_status` VARCHAR(191) NULL,
    `hand_over_location_id` INTEGER NULL,
    `hand_over_user_id` INTEGER NULL,
    `ghi_chu` BIGINT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `units` (
    `id` INTEGER UNSIGNED NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `actual_name` VARCHAR(191) NOT NULL,
    `short_name` VARCHAR(191) NOT NULL,
    `allow_decimal` BOOLEAN NOT NULL,
    `base_unit_id` INTEGER NULL,
    `base_unit_multiplier` DECIMAL(20, 4) NULL,
    `created_by` INTEGER UNSIGNED NOT NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `units_base_unit_id_index`(`base_unit_id`),
    INDEX `units_business_id_foreign`(`business_id`),
    INDEX `units_created_by_foreign`(`created_by`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_contact_access` (
    `id` INTEGER UNSIGNED NOT NULL,
    `user_id` INTEGER NOT NULL,
    `contact_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_groups` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `group_code` VARCHAR(191) NOT NULL,
    `group_name` VARCHAR(191) NOT NULL,
    `phong_ban` INTEGER NOT NULL,
    `bo_phan` INTEGER NULL,
    `group_type` VARCHAR(191) NOT NULL,
    `group_type_2` VARCHAR(191) NOT NULL,
    `status` VARCHAR(50) NOT NULL DEFAULT 'active',
    `description` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_kpis` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `kpi_code` VARCHAR(191) NOT NULL,
    `phong_ban` INTEGER NOT NULL,
    `kpi_name` VARCHAR(191) NOT NULL,
    `so_don_yc` FLOAT NOT NULL,
    `doanh_so_yc` INTEGER NOT NULL,
    `tb_don_yc` INTEGER NOT NULL,
    `tg_dam_thoai_yc` INTEGER NOT NULL DEFAULT 0,
    `muc_thuong_1` INTEGER NOT NULL DEFAULT 0,
    `muc_thuong_2` INTEGER NOT NULL DEFAULT 0,
    `muc_thuong_3` INTEGER NOT NULL DEFAULT 0,
    `moc_ds_thuong_1` INTEGER NOT NULL DEFAULT 0,
    `moc_ds_thuong_2` INTEGER NOT NULL DEFAULT 0,
    `moc_ds_thuong_3` INTEGER NOT NULL DEFAULT 0,
    `tien_thuong_1` INTEGER NOT NULL DEFAULT 0,
    `tien_thuong_2` INTEGER NOT NULL DEFAULT 0,
    `tien_thuong_3` INTEGER NOT NULL DEFAULT 0,
    `desctiption` TEXT NULL,
    `ti_le_chot` INTEGER NOT NULL DEFAULT 0,
    `lui_huy_cskh` FLOAT NULL,
    `lui_huy_pkd` FLOAT NULL,
    `khai_thac_dinh_ky` INTEGER NULL,
    `khai_thac_ton` INTEGER NULL,
    `sl_nghe_may` INTEGER NULL,
    `data_su_kien_yc` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_level` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL DEFAULT 1,
    `department_id` INTEGER NULL,
    `code` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `luong_cb_sang` INTEGER NOT NULL DEFAULT 0,
    `luong_cb_chieu` INTEGER NOT NULL DEFAULT 0,
    `don_yc` DOUBLE NOT NULL,
    `tb_don` INTEGER NOT NULL,
    `luong_kpi` INTEGER NOT NULL DEFAULT 0,
    `phu_cap` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_log_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `updated_by` INTEGER NOT NULL,
    `time_updated` DATETIME(0) NOT NULL,
    `target_id` INTEGER NOT NULL,
    `action` VARCHAR(191) NOT NULL,
    `before_log` VARCHAR(191) NULL,
    `after_log` VARCHAR(191) NULL,
    `note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_login_histories` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `status` VARCHAR(20) NOT NULL DEFAULT 'active',
    `user_status` VARCHAR(191) NULL DEFAULT 'active',
    `is_disable_user` INTEGER NOT NULL DEFAULT 0,
    `ip_address` VARCHAR(191) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_qr_codes` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NULL,
    `campaign_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `user_id` INTEGER NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `surname` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `note` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_tracking_locations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(50) NOT NULL DEFAULT 'normal',
    `user_name` VARCHAR(191) NOT NULL,
    `user_code` VARCHAR(191) NOT NULL,
    `work_days` INTEGER NULL DEFAULT 0,
    `mentality_status` INTEGER NOT NULL DEFAULT 5,
    `order_id` INTEGER NULL,
    `lat` VARCHAR(191) NOT NULL,
    `long` VARCHAR(191) NOT NULL,
    `km_per_order` FLOAT NULL,
    `distance` INTEGER NULL DEFAULT 0,
    `so_don_ps` INTEGER NULL,
    `doanh_so` INTEGER NULL,
    `loi_dang_het` VARCHAR(191) NULL,
    `gio_hen` DATETIME(0) NULL,
    `date` DATE NULL,
    `is_bao_hanh` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `variation_group_prices` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `variation_id` INTEGER UNSIGNED NOT NULL,
    `price_group_id` INTEGER UNSIGNED NOT NULL,
    `price_inc_tax` DECIMAL(22, 0) NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `variation_group_prices_price_group_id_foreign`(`price_group_id`),
    INDEX `variation_group_prices_variation_id_foreign`(`variation_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `variation_location_details` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `product_variation_id` INTEGER UNSIGNED NOT NULL,
    `variation_id` INTEGER UNSIGNED NOT NULL,
    `location_id` INTEGER UNSIGNED NOT NULL,
    `qty_available` DECIMAL(22, 0) NULL,
    `loai_1` INTEGER NOT NULL DEFAULT 0,
    `loai_2` INTEGER NOT NULL DEFAULT 0,
    `loai_3` INTEGER NOT NULL DEFAULT 0,
    `loai_4` INTEGER NOT NULL DEFAULT 0,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `id`(`id`),
    INDEX `id_2`(`id`),
    INDEX `variation_location_details_location_id_foreign`(`location_id`),
    INDEX `variation_location_details_product_id_index`(`product_id`),
    INDEX `variation_location_details_product_variation_id_index`(`product_variation_id`),
    INDEX `variation_location_details_variation_id_index`(`variation_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `variation_templates` (
    `id` INTEGER UNSIGNED NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `business_id` INTEGER UNSIGNED NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `variation_templates_business_id_foreign`(`business_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `variations` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `sub_sku` VARCHAR(191) NULL,
    `product_variation_id` INTEGER UNSIGNED NOT NULL,
    `variation_value_id` INTEGER NULL,
    `default_purchase_price` DECIMAL(22, 4) NULL,
    `dpp_inc_tax` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `profit_percent` DECIMAL(22, 4) NOT NULL DEFAULT 0.0000,
    `default_sell_price` DECIMAL(22, 0) NULL,
    `sell_price_inc_tax` DECIMAL(22, 0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `combo_variations` TEXT NULL,

    INDEX `variations_name_index`(`name`),
    INDEX `variations_product_id_foreign`(`product_id`),
    INDEX `variations_product_variation_id_foreign`(`product_variation_id`),
    INDEX `variations_sub_sku_index`(`sub_sku`),
    INDEX `variations_variation_value_id_index`(`variation_value_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `weekly_points` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `user_id` INTEGER NOT NULL,
    `user_name` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `date` DATE NOT NULL,
    `tuan` INTEGER NOT NULL,
    `thang` INTEGER NOT NULL,
    `nam` INTEGER NOT NULL,
    `phong_ban` INTEGER NOT NULL,
    `bo_phan` INTEGER NOT NULL,
    `to_group` INTEGER NOT NULL,
    `chuyen_mon` FLOAT NULL,
    `lam_viec_nhom` FLOAT NULL,
    `tim_duong` FLOAT NULL,
    `tu_van` FLOAT NULL,
    `xu_ly_tinh_huong` FLOAT NULL,
    `trung_thuc` FLOAT NULL,
    `nhiet_tinh` FLOAT NULL,
    `tac_phong` FLOAT NULL,
    `ton_trong_dong_nghiep` FLOAT NULL,
    `can_trong` FLOAT NULL,
    `ham_hoc_hoi` FLOAT NULL,
    `dieu_hanh_to` FLOAT NULL,
    `dao_tao_nv` FLOAT NULL,
    `hoan_thanh_cv` FLOAT NULL,
    `quan_ly_nv` FLOAT NULL,
    `trung_binh_nang_luc` FLOAT NOT NULL,
    `trung_binh_thai_do` FLOAT NOT NULL,
    `trung_binh` FLOAT NULL,
    `description` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `working_times` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `business_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_order_historiesTousers` (
    `A` INTEGER UNSIGNED NOT NULL,
    `B` INTEGER UNSIGNED NOT NULL,

    UNIQUE INDEX `_order_historiesTousers_AB_unique`(`A`, `B`),
    INDEX `_order_historiesTousers_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_rolesId_fkey` FOREIGN KEY (`rolesId`) REFERENCES `roles`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Keys` ADD CONSTRAINT `Keys_usersId_fkey` FOREIGN KEY (`usersId`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_histories` ADD CONSTRAINT `order_histories_ordersId_fkey` FOREIGN KEY (`ordersId`) REFERENCES `orders`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_histories` ADD CONSTRAINT `order_histories_transactionsId_fkey` FOREIGN KEY (`transactionsId`) REFERENCES `transactions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_histories` ADD CONSTRAINT `order_histories_contactsId_fkey` FOREIGN KEY (`contactsId`) REFERENCES `contacts`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_contactsId_fkey` FOREIGN KEY (`contactsId`) REFERENCES `contacts`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_sell_lines` ADD CONSTRAINT `transaction_sell_lines_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_sell_lines` ADD CONSTRAINT `transaction_sell_lines_transaction_id_fkey` FOREIGN KEY (`transaction_id`) REFERENCES `transactions`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_sell_lines` ADD CONSTRAINT `transaction_sell_lines_contactsId_fkey` FOREIGN KEY (`contactsId`) REFERENCES `contacts`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_order_historiesTousers` ADD CONSTRAINT `_order_historiesTousers_A_fkey` FOREIGN KEY (`A`) REFERENCES `order_histories`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_order_historiesTousers` ADD CONSTRAINT `_order_historiesTousers_B_fkey` FOREIGN KEY (`B`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
