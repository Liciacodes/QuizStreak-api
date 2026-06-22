/*
  Warnings:

  - A unique constraint covering the columns `[userId,date]` on the table `DailyAttempt` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "User" ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP;

-- CreateIndex
CREATE UNIQUE INDEX "DailyAttempt_userId_date_key" ON "DailyAttempt"("userId", "date");
