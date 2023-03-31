-- AlterTable
ALTER TABLE `users` ADD COLUMN `transactionsId` INTEGER NULL;

-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(191) NOT NULL,
    `product_thumb` VARCHAR(191) NOT NULL,
    `product_price` DOUBLE NOT NULL,
    `product_description` VARCHAR(191) NOT NULL,
    `product_type` VARCHAR(191) NOT NULL,
    `product_quantity` VARCHAR(191) NOT NULL,
    `product_attributes` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transactions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code_bill` VARCHAR(191) NOT NULL,
    `nguoithuchien` VARCHAR(191) NOT NULL,
    `order_date` DATETIME(3) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `total_amount_without_discount` DOUBLE NOT NULL,
    `combo_discount` DOUBLE NOT NULL,
    `VAT` DOUBLE NOT NULL,
    `discount` DOUBLE NOT NULL,
    `total_amount_after_discount` DOUBLE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `published` BOOLEAN NOT NULL DEFAULT false,
    `transactions_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction_lines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `oderhistory_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `number_of` INTEGER NOT NULL,
    `price` DOUBLE NOT NULL,
    `img` VARCHAR(191) NOT NULL,
    `total_sale` DOUBLE NOT NULL,
    `transaction_id` INTEGER NULL,
    `products_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transaction_payment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `oderhistory_id` INTEGER NOT NULL,
    `payment_methods` VARCHAR(191) NOT NULL,
    `account_name` VARCHAR(191) NOT NULL,
    `bank_name` VARCHAR(191) NOT NULL,
    `total_sale` DOUBLE NOT NULL,
    `account_number` VARCHAR(191) NOT NULL,
    `transaction_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_transactionsId_fkey` FOREIGN KEY (`transactionsId`) REFERENCES `transactions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_transactions_id_fkey` FOREIGN KEY (`transactions_id`) REFERENCES `transactions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_lines` ADD CONSTRAINT `transaction_lines_transaction_id_fkey` FOREIGN KEY (`transaction_id`) REFERENCES `transactions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_lines` ADD CONSTRAINT `transaction_lines_products_id_fkey` FOREIGN KEY (`products_id`) REFERENCES `products`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `transaction_payment` ADD CONSTRAINT `transaction_payment_transaction_id_fkey` FOREIGN KEY (`transaction_id`) REFERENCES `transactions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
