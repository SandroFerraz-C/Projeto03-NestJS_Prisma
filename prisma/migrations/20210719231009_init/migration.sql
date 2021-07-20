/*
  Warnings:

  - You are about to drop the column `material` on the `modelo` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `modelo` DROP COLUMN `material`,
    ADD COLUMN `Valor` INTEGER;
