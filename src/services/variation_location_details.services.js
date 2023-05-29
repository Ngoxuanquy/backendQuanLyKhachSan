

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { variation_location_details } = new PrismaClient();
const prisma = new PrismaClient();
// define Factory class to create product
class VariationLocationDetailsServicesFactory {

    static async createVariationLocationDetailsServices(payload) {

        console.log(payload)

        const product = await variation_location_details.create({
            data: {
                user_id: Number(payload.user_id),
                business_id: 1,
                type: "your_type_value",
                ca: 0,
                ngay: new Date(),
                so_cong: 0,
                bac_luong: 0,
                luong_cb: 0,
                doanh_so: 0,
                doanh_so_yc: 0,
                so_don_yc: 0,
                tb_don_yc: 0,
                ds_ban_may: 0,
                don_ban_may: 0,
                don_ps: 0,
                don_vs: 0,
                thuong: 0,
                phat: 0,
                chiet_khau: 0,
                don_them: 0,
                thu_nhap_ngay: 0
            }
        });

        return product;

    }



    static async getVariationLocationDetailsServices(payload) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await variation_location_details.findMany({
            skip,
            take,
            where: {
                usersId: Number(payload.id),

            },
            include: {
                products: true
            }
        })

        return Get_product;

    }

    // Function to update inventory products
    static async updateInventoryProducts(inventoryData) {
        try {
            const updatePromises = inventoryData.Inventory.map(async (item) => {
                const { id, product_id, qty_available, user_id } = item;

                // Update the inventory product with the given id and usersId
                const updateVariationLocationDetails = await prisma.variation_location_details.updateMany({
                    where: {
                        products_id: Number(product_id),
                        usersId: Number(user_id)
                    },
                    data: {
                        qty_available: Number(qty_available)
                    }
                });

                console.log(`Inventory product with id ${id} updated successfully.`);
                return updateVariationLocationDetails;
            });

            // Wait for each update promise to complete
            const updateResults = await Promise.all(updatePromises);

            return updateResults;
        } catch (error) {
            console.error('Error updating inventory products:', error);
            throw error; // or return an error response
        } finally {
            await prisma.$disconnect();
        }
    }


}

// // define base product class
// class Product {
//     constructor({
//         product_name, product_thumb, product_description, product_price,
//         product_type, product_shop, product_attributes, product_quantity
//     }) {

//         this.product_attributes = product_attributes
//         this.product_quantity = product_quantity
//         this.product_name = product_name
//         this.product_thumb = product_thumb
//         this.product_description = product_description
//         this.product_price = product_price
//         this.product_type = product_type
//         this.product_shop = product_shop

//     }

//     // create new product
//     async createProduct() {
//         return await product.create(this)
//     }

// }


module.exports = VariationLocationDetailsServicesFactory