import prisma from "../db";

export const getCategories = async (req, res, next) => {
    const category = await prisma.category.findMany()


}