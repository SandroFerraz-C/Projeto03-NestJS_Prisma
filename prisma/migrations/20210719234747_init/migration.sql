/*
  Warnings:

  - You are about to drop the column `nameId` on the `image` table. All the data in the column will be lost.
  - You are about to drop the `modelo` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `modeloId` to the `Image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `image` DROP FOREIGN KEY `image_ibfk_1`;

-- AlterTable
ALTER TABLE `image` DROP COLUMN `nameId`,
    ADD COLUMN `modeloId` INTEGER NOT NULL;

-- DropTable
DROP TABLE `modelo`;

-- CreateTable
CREATE TABLE `Cliente` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(191) NOT NULL,
    `Endereco` VARCHAR(191) NOT NULL,
    `Municipio` VARCHAR(191) NOT NULL,
    `Referencia` VARCHAR(191) NOT NULL,
    `Telefone` INTEGER NOT NULL,
    `DataEntrega` VARCHAR(191) NOT NULL,
    `ValorCompra` INTEGER NOT NULL,

    UNIQUE INDEX `Cliente.Nome_unique`(`Nome`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Image` ADD FOREIGN KEY (`modeloId`) REFERENCES `Cliente`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
