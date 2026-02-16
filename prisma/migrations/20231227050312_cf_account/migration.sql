-- CreateTable
CREATE TABLE "cf_account" (
    "cf_handle" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "regno" TEXT NOT NULL,

    CONSTRAINT "cf_account_pkey" PRIMARY KEY ("cf_handle")
);

-- CreateIndex
CREATE UNIQUE INDEX "cf_account_email_key" ON "cf_account"("email");

-- CreateIndex
CREATE UNIQUE INDEX "cf_account_regno_key" ON "cf_account"("regno");
