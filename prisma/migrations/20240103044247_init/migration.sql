-- CreateEnum
CREATE TYPE "PartNo" AS ENUM ('P_CT_SL_01', 'P_CT_SL_02', 'P_CT_SL_03', 'P_CT_SL_04', 'P_CT_SL_05', 'P_3VA9687_0FK21', 'P_3VA9988_0BL30', 'P_3VA9267_0FK21', 'P_3VA9988_0AA11', 'P_ECIA', 'P_4BZFMOH_Stromag_Brake', 'P_BLANK');

-- CreateEnum
CREATE TYPE "ShipmentNo" AS ENUM ('Shipment_1', 'Shipment_2', 'Shipment_3', 'Shipment_4', 'Shipment_5', 'Shipment_6', 'Shipment_7', 'Shipment_8', 'BLANK');

-- CreateEnum
CREATE TYPE "PackingList" AS ENUM ('PACKING_SLIP_50000456', 'PACKING_SLIP_50000421', 'PACKING_SLIP_50000384', 'PACKING_SLIP_50000495', 'BLANK');

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "name" VARCHAR(255) NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Parts" (
    "ksewSNo" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "partNo" "PartNo" NOT NULL DEFAULT 'P_BLANK',
    "partName" TEXT NOT NULL,
    "requirement" INTEGER NOT NULL,
    "qtyReceived" INTEGER NOT NULL,
    "shipmentNo" "ShipmentNo" NOT NULL DEFAULT 'BLANK',
    "packingList" "PackingList" NOT NULL DEFAULT 'BLANK',
    "qtyIssued" INTEGER,
    "qtyBalanced" INTEGER,
    "dateOfIssued" TIMESTAMP(3),
    "ccTktNo" TEXT,
    "name" TEXT,
    "remarks" TEXT,
    "categoryId" INTEGER NOT NULL,

    CONSTRAINT "Parts_pkey" PRIMARY KEY ("ksewSNo")
);

-- AddForeignKey
ALTER TABLE "Parts" ADD CONSTRAINT "Parts_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
