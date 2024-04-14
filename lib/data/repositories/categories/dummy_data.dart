import 'package:trendy_waves_ecommerce/data/models/cart_model.dart';
import 'package:trendy_waves_ecommerce/data/models/order_model.dart';
import 'package:trendy_waves_ecommerce/features/shop/models/banner_category_model.dart';
import 'package:trendy_waves_ecommerce/features/shop/models/brand_model.dart';
import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

class TDummyData {
  //! Banners
  // static final List<BannerModel> banner = [
  //   BannerModel(
  //       imageUrl: TImages.promoBanner1,
  //       targetScreen: TRoutes.order,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner2,
  //       targetScreen: TRoutes.cart,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner3,
  //       targetScreen: TRoutes.favourites,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner4,
  //       targetScreen: TRoutes.search,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner5,
  //       targetScreen: TRoutes.settings,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner6,
  //       targetScreen: TRoutes.userAddress,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.promoBanner4,
  //       targetScreen: TRoutes.checkout,
  //       active: true),
  // ];

  //! users

  // static final UserModel user = UserModel(
  //     id: '',
  //     email: 'maazarfidi.ma47@gmail.com',
  //     firstName: 'maaz',
  //     lastName: 'khan',
  //     userName: 'M-K',
  //     phoneNumber: '+923121915579',
  //     addresses: [
  //       AddressModel(
  //           id: '1',
  //           name: 'Codint With T',
  //           phoneNumber: '923121915579',
  //           street: 'razgir banda billitang',
  //           city: 'kohat',
  //           state: 'kpk',
  //           postalCode: '26000',
  //           country: 'pakistan'),
  //     ],
  //     profilePicture: TImages.user);

  //! cart model

  static final CartModel cart = CartModel(
    cartId: '001',
    items: [
      CartItemModel(
        productId: '001',
        variantId: '1',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation:
            products[0].productVariations![0].attributesValues.values.toList(),
      ),
      CartItemModel(
          productId: '002',
          variantId: '',
          quantity: 2,
          title: products[0].title,
          image: products[0].thumbnail,
          brandName: products[0].brand!.name,
          price: products[0].productVariations![0].price,
          selectedVariation: products[0]
              .productVariations![0]
              .attributesValues
              .values
              .toList()),
    ],
  );

  //! orders model
  static final List<OrderModel> orders = [
    OrderModel(
      id: 'CWT0012',
      status: OrderStatus.processing,
      items: cart.items,
      totalAmount: 259,
      orderDate: DateTime(2024, 01, 01),
      deliveryDate: DateTime(2024, 01, 10),
    ),
    OrderModel(
      id: 'CWT1432',
      status: OrderStatus.shipped,
      items: cart.items,
      totalAmount: 599,
      orderDate: DateTime(2024, 01, 01),
      deliveryDate: DateTime(2024, 01, 10),
    ),
  ];

  //! all categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sports', image: TImages.sportIcon, isFeatured: true),
    CategoryModel(
        id: '5',
        name: 'Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Electronics',
        image: TImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '3', name: 'Clothes', image: TImages.clothIcon, isFeatured: true),
    CategoryModel(
        id: '4', name: 'Animals', image: TImages.animalIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: TImages.shoeIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: TImages.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: '14',
        name: 'Jewelary',
        image: TImages.jeweleryIcon,
        isFeatured: true),

    //! sub categories
    CategoryModel(
        id: '8',
        name: 'Sports Shoes',
        image: TImages.sportIcon,
        isFeatured: true,
        parentId: '1'),
    CategoryModel(
        id: '9',
        name: 'Track Suit',
        image: TImages.sportIcon,
        isFeatured: true,
        parentId: '1'),
    CategoryModel(
        id: '10',
        name: 'Sports Equipment',
        image: TImages.sportIcon,
        isFeatured: true,
        parentId: '1'),

    //! Furniture
    CategoryModel(
        id: '11',
        name: 'Bedroom Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true,
        parentId: '5'),
    CategoryModel(
        id: '12',
        name: 'Kitchen Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true,
        parentId: '5'),
    CategoryModel(
        id: '13',
        name: 'Office Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true,
        parentId: '5'),

    //! electronics
    CategoryModel(
        id: '15',
        name: 'Laptops',
        image: TImages.electronicsIcon,
        isFeatured: true,
        parentId: '2'),
    CategoryModel(
        id: '16',
        name: 'Mobiles',
        image: TImages.electronicsIcon,
        isFeatured: true,
        parentId: '2'),

    CategoryModel(
        id: '17',
        name: 'Clothes',
        image: TImages.clothIcon,
        isFeatured: true,
        parentId: '3'),
  ];

//! brands
  static final List<BrandModel> brands = [
    BrandModel(
        id: '1',
        image: TImages.nikeLogo,
        name: 'Nike',
        productsCount: 265,
        isFeatured: true),
    BrandModel(
        id: '2',
        image: TImages.adidasLogo,
        name: 'Adidas',
        productsCount: 95,
        isFeatured: true),
    BrandModel(
        id: '8',
        image: TImages.kenwoodLogo,
        name: 'Kenwood',
        productsCount: 36,
        isFeatured: false),
    BrandModel(
        id: '9',
        image: TImages.ikeaLogo,
        name: 'Ikea',
        productsCount: 26,
        isFeatured: false),
    BrandModel(
        id: '5',
        image: TImages.appleLogo,
        name: 'Apple',
        productsCount: 15,
        isFeatured: false),
    BrandModel(
        id: '10',
        image: TImages.acerlogo,
        name: 'Acer',
        productsCount: 36,
        isFeatured: false),
    BrandModel(
        id: '11',
        image: TImages.electronicsIcon,
        name: 'Samsung',
        productsCount: 36,
        isFeatured: false),
    BrandModel(
        id: '3',
        image: TImages.jordanLogo,
        name: 'Jordan',
        productsCount: 265,
        isFeatured: true),
    BrandModel(
        id: '4',
        image: TImages.pumaLogo,
        name: 'Puma',
        productsCount: 65,
        isFeatured: true),
    BrandModel(
        id: '6',
        image: TImages.zaraLogo,
        name: 'Zara',
        productsCount: 36,
        isFeatured: true),
  ];

  //! list of all the brnds

  static final List<BrandCategoryModel> brandCategory = [
    BrandCategoryModel(brandId: '1', categoryId: '1'),
    BrandCategoryModel(brandId: '1', categoryId: '8'),
    BrandCategoryModel(brandId: '1', categoryId: '9'),
    BrandCategoryModel(brandId: '1', categoryId: '10'),
    BrandCategoryModel(brandId: '2', categoryId: '1'),
    BrandCategoryModel(brandId: '2', categoryId: '8'),
    BrandCategoryModel(brandId: '2', categoryId: '9'),
    BrandCategoryModel(brandId: '2', categoryId: '10'),
    BrandCategoryModel(brandId: '3', categoryId: '1'),
    BrandCategoryModel(brandId: '3', categoryId: '8'),
    BrandCategoryModel(brandId: '3', categoryId: '9'),
    BrandCategoryModel(brandId: '3', categoryId: '10'),
    BrandCategoryModel(brandId: '4', categoryId: '1'),
    BrandCategoryModel(brandId: '4', categoryId: '8'),
    BrandCategoryModel(brandId: '4', categoryId: '9'),
    BrandCategoryModel(brandId: '4', categoryId: '10'),
    BrandCategoryModel(brandId: '5', categoryId: '15'),
    BrandCategoryModel(brandId: '5', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '14'),
    BrandCategoryModel(brandId: '6', categoryId: '3'),
    BrandCategoryModel(brandId: '6', categoryId: '16'),
    BrandCategoryModel(brandId: '7', categoryId: '2'),
    BrandCategoryModel(brandId: '8', categoryId: '5'),
    BrandCategoryModel(brandId: '8', categoryId: '11'),
    BrandCategoryModel(brandId: '8', categoryId: '12'),
    BrandCategoryModel(brandId: '8', categoryId: '13'),
    BrandCategoryModel(brandId: '9', categoryId: '5'),
    BrandCategoryModel(brandId: '9', categoryId: '11'),
    BrandCategoryModel(brandId: '9', categoryId: '12'),
    BrandCategoryModel(brandId: '9', categoryId: '13'),
  ];

//! list of all product categories

//   static final List<ProductCategoryModel> productCategories = [
//     ProductCategoryModel(categoryId: '001', productId: '1'),
//     ProductCategoryModel(categoryId: '001', productId: '8'),
//     ProductCategoryModel(categoryId: '004', productId: '3'),
//     ProductCategoryModel(categoryId: '002', productId: '3'),
//     ProductCategoryModel(categoryId: '002', productId: '16'),
//     ProductCategoryModel(categoryId: '003', productId: '3'),
//     ProductCategoryModel(categoryId: '005', productId: '1'),
//     ProductCategoryModel(categoryId: '005', productId: '8'),
//     ProductCategoryModel(categoryId: '040', productId: '2'),
//     ProductCategoryModel(categoryId: '040', productId: '15'),
//     ProductCategoryModel(categoryId: '006', productId: '2'),
//     ProductCategoryModel(categoryId: '007', productId: '4'),
//     ProductCategoryModel(categoryId: '009', productId: '1'),
//     ProductCategoryModel(categoryId: '009', productId: '8'),
//     ProductCategoryModel(categoryId: '010', productId: '1'),
//     ProductCategoryModel(categoryId: '010', productId: '8'),
//     ProductCategoryModel(categoryId: '011', productId: '1'),
//     ProductCategoryModel(categoryId: '011', productId: '8'),
//     ProductCategoryModel(categoryId: '012', productId: '1'),
//     ProductCategoryModel(categoryId: '012', productId: '8'),
//     ProductCategoryModel(categoryId: '013', productId: '1'),
//     ProductCategoryModel(categoryId: '013', productId: '8'),
//     ProductCategoryModel(categoryId: '014', productId: '1'),
//     ProductCategoryModel(categoryId: '014', productId: '9'),
//     ProductCategoryModel(categoryId: '015', productId: '1'),
//     ProductCategoryModel(categoryId: '015', productId: '9'),
//     ProductCategoryModel(categoryId: '016', productId: '1'),
//     ProductCategoryModel(categoryId: '016', productId: '9'),
//     ProductCategoryModel(categoryId: '017', productId: '1'),
//     ProductCategoryModel(categoryId: '017', productId: '9'),
//     ProductCategoryModel(categoryId: '018', productId: '1'),
//     ProductCategoryModel(categoryId: '018', productId: '9'),
//     ProductCategoryModel(categoryId: '019', productId: '1'),
//     ProductCategoryModel(categoryId: '019', productId: '10'),
//     ProductCategoryModel(categoryId: '020', productId: '1'),
//     ProductCategoryModel(categoryId: '020', productId: '10'),
//     ProductCategoryModel(categoryId: '021', productId: '1'),
//     ProductCategoryModel(categoryId: '021', productId: '10'),
//     ProductCategoryModel(categoryId: '022', productId: '5'),
//     ProductCategoryModel(categoryId: '022', productId: '11'),
//     ProductCategoryModel(categoryId: '023', productId: '5'),
//     ProductCategoryModel(categoryId: '023', productId: '11'),
//     ProductCategoryModel(categoryId: '024', productId: '5'),
//     ProductCategoryModel(categoryId: '024', productId: '11'),
//     ProductCategoryModel(categoryId: '025', productId: '5'),
//     ProductCategoryModel(categoryId: '025', productId: '11'),
//     ProductCategoryModel(categoryId: '026', productId: '5'),
//     ProductCategoryModel(categoryId: '026', productId: '12'),
//     ProductCategoryModel(categoryId: '027', productId: '5'),
//     ProductCategoryModel(categoryId: '027', productId: '12'),
//     ProductCategoryModel(categoryId: '028', productId: '5'),
//     ProductCategoryModel(categoryId: '028', productId: '12'),
//     ProductCategoryModel(categoryId: '029', productId: '5'),
//     ProductCategoryModel(categoryId: '029', productId: '13'),
//     ProductCategoryModel(categoryId: '030', productId: '5'),
//     ProductCategoryModel(categoryId: '030', productId: '13'),
//     ProductCategoryModel(categoryId: '031', productId: '5'),
//     ProductCategoryModel(categoryId: '031', productId: '13'),
//     ProductCategoryModel(categoryId: '032', productId: '5'),
//     ProductCategoryModel(categoryId: '032', productId: '13'),
//     ProductCategoryModel(categoryId: '033', productId: '2'),
//     ProductCategoryModel(categoryId: '033', productId: '14'),
//     ProductCategoryModel(categoryId: '034', productId: '2'),
//     ProductCategoryModel(categoryId: '034', productId: '14'),
//     ProductCategoryModel(categoryId: '035', productId: '2'),
//     ProductCategoryModel(categoryId: '035', productId: '14'),
//     ProductCategoryModel(categoryId: '036', productId: '2'),
//     ProductCategoryModel(categoryId: '036', productId: '14'),
//     ProductCategoryModel(categoryId: '037', productId: '2'),
//     ProductCategoryModel(categoryId: '037', productId: '15'),
//     ProductCategoryModel(categoryId: '038', productId: '2'),
//     ProductCategoryModel(categoryId: '038', productId: '15'),
//     ProductCategoryModel(categoryId: '039', productId: '2'),
//     ProductCategoryModel(categoryId: '039', productId: '15'),
//     ProductCategoryModel(categoryId: '008', productId: '2'),
//   ];

//   //! list of all the products

//   static final List<ProductModel> products = [
//     ProductModel(
//       id: '001',
//       title: 'Green Nike sports shoes',
//       stock: 15,
//       price: 110,
//       isFeatured: true,
//       thumbnail: TImages.productImage1,
//       description:
//           'These are Green Nike sports shoes and this is the description of the product the description has been changed after adfafadfas ',
//       brand: BrandModel(
//           id: '1',
//           image: TImages.nikelogo,
//           name: 'Nike',
//           productsCount: 215,
//           isFeatured: true),
//       images: [
//         TImages.productImage23,
//         TImages.productImage1,
//         TImages.productImage44,
//         TImages.productImage50,
//         TImages.productImage28,
//         TImages.productImage21,
//       ],
//       salePrice: 190,
//       sku: 'ABR4568',
//       categoryId: '1',
//       productAttributes: [
//         ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
//         ProductAttributeModel(
//             name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//       ],
//       productVariations: [
//         ProductVariationModel(
//           id: '1',
//           stock: 34,
//           price: 134,
//           salePrice: 120.4,
//           image: TImages.productImage1,
//           description:
//               'this product description is for a nike product with a price of i dont know',
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//         ProductVariationModel(
//           id: '2',
//           stock: 15,
//           price: 132,
//           image: TImages.productImage23,
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//         ProductVariationModel(
//           id: '3',
//           stock: 0,
//           price: 234,
//           image: TImages.productImage23,
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//         ProductVariationModel(
//           id: '4',
//           stock: 222,
//           price: 254,
//           image: TImages.productImage1,
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//         ProductVariationModel(
//           id: '5',
//           stock: 0,
//           price: 634,
//           image: TImages.productImage21,
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//         ProductVariationModel(
//           id: '6',
//           stock: 11,
//           price: 332,
//           image: TImages.productImage21,
//           attributesValues: {'Color': 'Green', 'Size': 'EU 34'},
//         ),
//       ],
//       productType: 'ProductType.variable',
//     ),
//     ProductModel(
//         id: '002',
//         title: 'Blue TShirts for all ages',
//         stock: 15,
//         price: 45,
//         isFeatured: true,
//         thumbnail: TImages.productImage69,
//         description:
//             'this is a product description for blue NIKE Sleeve less vest. There are more things that can be added.',
//         brand: BrandModel(id: '6', image: TImages.zara, name: 'ZARA'),
//         images: [
//           TImages.productImage68,
//           TImages.productImage69,
//           TImages.productImage5
//         ],
//         salePrice: 30,
//         sku: 'ABR4568',
//         categoryId: '16',
//         productAttributes: [
//           ProductAttributeModel(name: 'Size', values: ['EU 34', 'EU 32']),
//           ProductAttributeModel(
//               name: 'Color', values: ['Red', 'Green', 'Blue']),
//         ],
//         productType: 'ProductType.single'),
//     ProductModel(
//         id: '003',
//         title: 'Leather brown jackets',
//         stock: 15,
//         price: 38000,
//         isFeatured: false,
//         thumbnail: TImages.productImage64,
//         description:
//             'this is a product description for brown jacket. There are more things that can be added.',
//         brand: BrandModel(id: '6', image: TImages.zara, name: 'ZARA'),
//         images: [
//           TImages.productImage64,
//           TImages.productImage65,
//           TImages.productImage66,
//           TImages.productImage67,
//         ],
//         salePrice: 30,
//         sku: 'ABR4568',
//         categoryId: '16',
//         productAttributes: [
//           ProductAttributeModel(name: 'Size', values: ['EU 34', 'EU 32']),
//           ProductAttributeModel(
//               name: 'Color', values: ['Red', 'Green', 'Blue']),
//         ],
//         productType: 'ProductType.single'),
//     ProductModel(
//         id: '004',
//         title: '4 Color collar t-shirt dry fit.',
//         stock: 15,
//         price: 135,
//         isFeatured: false,
//         thumbnail: TImages.productImage60,
//         description:
//             'this is a product description for collar t-shirt. There are more things that can be added.',
//         brand: BrandModel(id: '6', image: TImages.zara, name: 'ZARA'),
//         images: [
//           TImages.productImage60,
//           TImages.productImage61,
//           TImages.productImage62,
//           TImages.productImage63,
//         ],
//         salePrice: 30,
//         sku: 'ABR4568',
//         categoryId: '16',
//         productAttributes: [
//           ProductAttributeModel(
//               name: 'Size', values: ['EU 34', 'EU 32', 'EU 30']),
//           ProductAttributeModel(
//               name: 'Color', values: ['Red', 'Green', 'Blue']),
//         ],
//         productVariations: [
//           ProductVariationModel(
//               id: '1',
//               stock: 34,
//               price: 134,
//               salePrice: 122.5,
//               image: TImages.productImage60,
//               attributesValues: {'Color': 'Red', 'Size': 'EU 34'}),
//           ProductVariationModel(
//               id: '2',
//               stock: 15,
//               price: 131,
//               image: TImages.productImage60,
//               attributesValues: {'Color': 'Red', 'Size': 'EU 34'}),
//           ProductVariationModel(
//               id: '3',
//               stock: 0,
//               price: 234,
//               image: TImages.productImage61,
//               attributesValues: {'Color': 'Yellow', 'Size': 'EU 34'}),
//           ProductVariationModel(
//               id: '4',
//               stock: 222,
//               price: 324,
//               image: TImages.productImage61,
//               attributesValues: {'Color': 'Yellow', 'Size': 'EU 32'}),
//           ProductVariationModel(
//               id: '5',
//               stock: 0,
//               price: 334,
//               image: TImages.productImage62,
//               attributesValues: {'Color': 'Green', 'Size': 'EU 34'}),
//           ProductVariationModel(
//               id: '6',
//               stock: 11,
//               price: 332,
//               image: TImages.productImage62,
//               attributesValues: {'Color': 'Green', 'Size': 'EU 30'}),
//           ProductVariationModel(
//               id: '7',
//               stock: 0,
//               price: 299,
//               image: TImages.productImage63,
//               attributesValues: {'Color': 'Blue', 'Size': 'EU 30'}),
//           ProductVariationModel(
//               id: '7',
//               stock: 10,
//               price: 199,
//               image: TImages.productImage63,
//               attributesValues: {'Color': 'Blue', 'Size': 'EU 30'}),
//           ProductVariationModel(
//               id: '8',
//               stock: 10,
//               price: 199,
//               image: TImages.productImage63,
//               attributesValues: {'Color': 'Blue', 'Size': 'EU 34'}),
//         ],
//         productType: 'ProductType.single'),

// //!  products after banners.

//     ProductModel(
//         id: '005',
//         title: 'NIKE Air Jordan shoes',
//         stock: 15,
//         price: 35,
//         isFeatured: false,
//         thumbnail: TImages.productImage69,
//         description: 'Nike Air shoes for better performance',
//         brand: BrandModel(
//             id: '1',
//             image: TImages.nikelogo,
//             name: 'Nike',
//             productsCount: 265,
//             isFeatured: true),
//         images: [
//           TImages.productImage7,
//           TImages.productImage8,
//           TImages.productImage9,
//           TImages.productImage10,
//         ],
//         salePrice: 30,
//         sku: 'ABR457',
//         categoryId: '8',
//         productAttributes: [
//           ProductAttributeModel(
//               name: 'Color', values: ['Orange', 'Black', 'Brown']),
//           ProductAttributeModel(
//               name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
//         ],
//         productVariations: [
//           ProductVariationModel(
//               id: '1',
//               stock: 16,
//               price: 36,
//               salePrice: 12.5,
//               image: TImages.productImage8,
//               attributesValues: {'Color': 'Orange', 'Size': 'EU 30'}),
//           ProductVariationModel(
//               id: '2',
//               stock: 15,
//               price: 35,
//               image: TImages.productImage7,
//               attributesValues: {'Color': 'Black', 'Size': 'EU 30'}),
//           ProductVariationModel(
//               id: '3',
//               stock: 14,
//               price: 34,
//               image: TImages.productImage9,
//               attributesValues: {'Color': 'Brown', 'Size': 'EU 34'}),
//           ProductVariationModel(
//               id: '4',
//               stock: 12,
//               price: 32,
//               image: TImages.productImage7,
//               attributesValues: {'Color': 'Brown', 'Size': 'EU 32'}),
//           ProductVariationModel(
//               id: '5',
//               stock: 11,
//               price: 31,
//               image: TImages.productImage9,
//               attributesValues: {'Color': 'Brown', 'Size': 'EU 32'}),
//           ProductVariationModel(
//               id: '6',
//               stock: 10,
//               price: 30,
//               image: TImages.productImage8,
//               attributesValues: {'Color': 'Orange', 'Size': 'EU 32'}),
//         ],
//         productType: 'ProductType.variable'),

//     ProductModel(
//         id: '006',
//         title: 'Samsung Galaxy S9 (Pink 64 GB)',
//         stock: 15,
//         price: 750,
//         isFeatured: false,
//         thumbnail: TImages.productImage11,
//         description:
//             'Samsung galaxy s9 with long lasting batterty performance.',
//         brand: BrandModel(id: '7', image: TImages.applelogo, name: 'Samsung'),
//         images: [
//           TImages.productImage11,
//           TImages.productImage12,
//           TImages.productImage13,
//           TImages.productImage14,
//         ],
//         salePrice: 650,
//         sku: 'ABR4828',
//         categoryId: '2',
//         productAttributes: [
//           ProductAttributeModel(
//               name: 'Color', values: ['Green', 'Black', 'White']),
//           ProductAttributeModel(name: 'Size', values: ['EU 32', 'EU 34']),
//         ],
//         productType: 'ProductType.single'),

//     ProductModel(
//         id: '007',
//         title: 'Tomi dog food',
//         stock: 15,
//         price: 50,
//         isFeatured: false,
//         thumbnail: TImages.productImage18,
//         description: 'This is dog food for dog better health.',
//         brand: BrandModel(id: '7', image: TImages.applelogo, name: 'Tomi'),
//         salePrice: 10,
//         sku: 'ABR4528',
//         categoryId: '4',
//         productAttributes: [
//           ProductAttributeModel(
//               name: 'Color', values: ['Green', 'Black', 'White']),
//           ProductAttributeModel(name: 'Size', values: ['EU 32', 'EU 34']),
//         ],
//         productType: 'ProductType.single'),
//     ProductModel(
//         id: '009',
//         title: 'Nike Air Jordan 19 blue',
//         stock: 15,
//         price: 400,
//         isFeatured: false,
//         thumbnail: TImages.productImage19,
//         description:
//             'This is another product of jordan with good cloth and a very small price for the product with a price of 400',
//         brand: BrandModel(id: '1', image: TImages.nikelogo, name: 'NIKE'),
//         images: [
//           TImages.productImage19,
//           TImages.productImage20,
//           TImages.productImage21,
//           TImages.productImage22,
//         ],
//         salePrice: 200,
//         sku: 'ABR4528',
//         categoryId: '4',
//         productAttributes: [
//           ProductAttributeModel(
//               name: 'Color', values: ['Green', 'Black', 'White']),
//           ProductAttributeModel(name: 'Size', values: ['EU 32', 'EU 34']),
//         ],
//         productType: 'ProductType.single'),
//   ];
}
