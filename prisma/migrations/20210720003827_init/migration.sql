/*
  Warnings:

  - Added the required column `Email` to the `Cliente` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `cliente` ADD COLUMN `Email` VARCHAR(191) NOT NULL;
