/*
  Warnings:

  - You are about to drop the column `Endereco` on the `cliente` table. All the data in the column will be lost.
  - Added the required column `Numero` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Rua` to the `Cliente` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `cliente` DROP COLUMN `Endereco`,
    ADD COLUMN `Numero` INTEGER NOT NULL,
    ADD COLUMN `Rua` VARCHAR(191) NOT NULL;
