/*
  Warnings:

  - You are about to drop the column `Rua` on the `cliente` table. All the data in the column will be lost.
  - Added the required column `EnderecoEntrega` to the `Cliente` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `cliente` DROP COLUMN `Rua`,
    ADD COLUMN `EnderecoEntrega` VARCHAR(191) NOT NULL;
