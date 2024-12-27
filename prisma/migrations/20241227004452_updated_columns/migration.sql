/*
  Warnings:

  - Added the required column `currentSubtask` to the `Task` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Task" ADD COLUMN     "currentSubtask" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "DeadlineExtensions" (
    "id" SERIAL NOT NULL,
    "extendedBy" INTEGER NOT NULL,

    CONSTRAINT "DeadlineExtensions_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "DeadlineExtensions" ADD CONSTRAINT "DeadlineExtensions_extendedBy_fkey" FOREIGN KEY ("extendedBy") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
