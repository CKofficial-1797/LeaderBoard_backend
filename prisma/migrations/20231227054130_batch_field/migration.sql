/*
  Warnings:

  - Added the required column `batch` to the `cf_account` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "cf_account" ADD COLUMN     "batch" INTEGER NOT NULL;
