/*
  Warnings:

  - You are about to drop the column `produtoId` on the `image` table. All the data in the column will be lost.
  - You are about to drop the column `Valor` on the `modelo` table. All the data in the column will be lost.
  - You are about to drop the column `produto` on the `modelo` table. All the data in the column will be lost.
  - Added the required column `nameId` to the `Image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `image` DROP FOREIGN KEY `image_ibfk_1`;

-- AlterTable
ALTER TABLE `image` DROP COLUMN `produtoId`,
    ADD COLUMN `nameId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `modelo` DROP COLUMN `Valor`,
    DROP COLUMN `produto`,
    ADD COLUMN `material` VARCHAR(191),
    ADD COLUMN `name` VARCHAR(191);

-- AddForeignKey
ALTER TABLE `Image` ADD FOREIGN KEY (`nameId`) REFERENCES `Modelo`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
