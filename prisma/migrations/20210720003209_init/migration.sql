/*
  Warnings:

  - You are about to drop the column `FormaPagamento` on the `cliente` table. All the data in the column will be lost.
  - Made the column `Municipio` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Referencia` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Telefone` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `DataEntrega` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ValorCompra` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `Numero` on table `cliente` required. This step will fail if there are existing NULL values in that column.
  - Made the column `EnderecoEntrega` on table `cliente` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `cliente` DROP COLUMN `FormaPagamento`,
    MODIFY `Municipio` VARCHAR(191) NOT NULL,
    MODIFY `Referencia` VARCHAR(191) NOT NULL,
    MODIFY `Telefone` INTEGER NOT NULL,
    MODIFY `DataEntrega` VARCHAR(191) NOT NULL,
    MODIFY `ValorCompra` INTEGER NOT NULL,
    MODIFY `Numero` INTEGER NOT NULL,
    MODIFY `EnderecoEntrega` VARCHAR(191) NOT NULL;
