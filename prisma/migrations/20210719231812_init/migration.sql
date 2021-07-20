/*
  Warnings:

  - You are about to drop the column `nameId` on the `image` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `modelo` table. All the data in the column will be lost.
  - Added the required column `produtoId` to the `Image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `image` DROP FOREIGN KEY `image_ibfk_1`;

-- AlterTable
ALTER TABLE `image` DROP COLUMN `nameId`,
    ADD COLUMN `produtoId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `modelo` DROP COLUMN `name`,
    ADD COLUMN `produto` VARCHAR(191);

-- AddForeignKey
ALTER TABLE `Image` ADD FOREIGN KEY (`produtoId`) REFERENCES `Modelo`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
