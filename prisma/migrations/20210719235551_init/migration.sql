/*
  Warnings:

  - You are about to drop the column `modeloId` on the `image` table. All the data in the column will be lost.
  - Added the required column `ClienteId` to the `Image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `image` DROP FOREIGN KEY `image_ibfk_1`;

-- AlterTable
ALTER TABLE `image` DROP COLUMN `modeloId`,
    ADD COLUMN `ClienteId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Image` ADD FOREIGN KEY (`ClienteId`) REFERENCES `Cliente`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
