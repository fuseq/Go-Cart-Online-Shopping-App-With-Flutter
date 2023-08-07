class Product {
  final String id;
  final String productName;
  final String productDescription;
  final List<String> productImageUrl; // Changed to list of strings
  final String currentPrice;
  final String oldPrice;
  final double rating;
  List<String> colorStrings;
  final bool isLiked;

  Product({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productImageUrl,
    required this.currentPrice,
    required this.oldPrice,
    required this.rating,
    required this.colorStrings,
    required this.isLiked,
  });
}

class Category {
  final String categoryName;
  final String productCount;
  final String thumbnailImage;

  Category({
    required this.categoryName,
    required this.productCount,
    required this.thumbnailImage,
  });
}

final List<String> productImageUrls = [
  "https://images.unsplash.com/photo-1588117305388-c2631a279f82?ix",
  "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?ix",
  "https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ix",
  "https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ix",
  "https://images.unsplash.com/photo-1509631179647-0177331693ae?ix",
  "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ix",
  "https://images.unsplash.com/photo-1475178626620-a4d074967452?ix",
  "https://images.unsplash.com/photo-1517298257259-f72ccd2db392?ix",
  "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ix",
  "https://images.unsplash.com/photo-1475178626620-a4d074967452?ix",
  "https://images.unsplash.com/photo-1517298257259-f72ccd2db392?ix",
];

final categories = [
  Category(
      categoryName: "T-SHIRT",
      productCount: "240",
      thumbnailImage:
          "https://images.unsplash.com/photo-1576871337622-98d48d1cf531?ix"),
  Category(
      categoryName: "SHOES",
      productCount: "120",
      thumbnailImage:
          "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ix"),
  Category(
      categoryName: "HOODIE",
      productCount: "200",
      thumbnailImage:
          "https://images.unsplash.com/photo-1647771746277-eac927afab2c?ix"),
  Category(
      categoryName: "JEANS",
      productCount: "240",
      thumbnailImage:
          "https://images.unsplash.com/photo-1576995853123-5a10305d93c0"),
];

final products = [
  // Product 1
  Product(
      id: "3e7H9fKp",
      productName: "MNML - Oversized Tshirt",
      productImageUrl: [
        productImageUrls[0],
        productImageUrls[2],
        productImageUrls[3],
        productImageUrls[4]
      ],
      currentPrice: "500",
      oldPrice: "700",
      isLiked: true,
      rating: 3.5,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Stay comfortable and stylish with our MNML Oversized Tshirt. Made from high-quality cotton, this Tshirt is perfect for casual outings and everyday wear. The oversized fit provides a relaxed look, while the trendy design keeps you on-trend."),

  // Product 2
  Product(
      id: "rT6j2L5q",
      productName: "Crop Top Hoodie",
      productImageUrl: [
        productImageUrls[1],
        productImageUrls[5],
        productImageUrls[6],
        productImageUrls[7]
      ],
      currentPrice: "392",
      oldPrice: "400",
      isLiked: false,
      rating: 3.6,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Upgrade your hoodie collection with our Crop Top Hoodie. The cropped design adds a modern twist to the classic hoodie, making it a versatile piece for both active and leisure wear. The soft and breathable fabric ensures comfort, while the stylish colors let you express your unique style."),

  // Product 3
  Product(
      id: "Z9LmV2Fp",
      productName: "High-Waisted Skinny Jeans",
      productImageUrl: [
        productImageUrls[3],
        productImageUrls[8],
        productImageUrls[9],
        productImageUrls[10]
      ],
      currentPrice: "650",
      oldPrice: "800",
      isLiked: true,
      rating: 4.2,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Look effortlessly chic with our High-Waisted Skinny Jeans. Crafted with stretchy denim, these jeans offer a flattering fit that enhances your curves. The high-waisted design pairs perfectly with crop tops or tucked-in blouses, making it a must-have for any fashion-forward wardrobe."),

  // Product 4
  Product(
      id: "8Grj1Ydm",
      productName: "Classic Leather Watch",
      productImageUrl: [productImageUrls[4]],
      currentPrice: "220",
      oldPrice: "280",
      isLiked: true,
      rating: 4.8,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Add a touch of elegance to your wrist with our Classic Leather Watch. Featuring a genuine leather strap and a timeless design, this watch is suitable for both formal and casual occasions. The precise quartz movement ensures accurate timekeeping, making it a reliable accessory for everyday use."),

  // Product 5
  Product(
      id: "kRtM7Q3n",
      productName: "Sporty Crossbody Bag",
      productImageUrl: [productImageUrls[5], productImageUrls[8]],
      currentPrice: "320",
      oldPrice: "400",
      isLiked: false,
      rating: 4.1,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Stay organized and stylish with our Sporty Crossbody Bag. This compact and versatile bag features multiple compartments to keep your essentials within reach. The adjustable shoulder strap offers a comfortable fit, while the sporty design adds a trendy touch to your outfit."),

  // Product 6
  Product(
      id: "W5T2YhNb",
      productName: "Cozy Knit Sweater",
      productImageUrl: [productImageUrls[6], productImageUrls[9]],
      currentPrice: "420",
      oldPrice: "500",
      isLiked: true,
      rating: 4.4,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Wrap yourself in warmth and style with our Cozy Knit Sweater. Made from soft and breathable knit fabric, this sweater is perfect for chilly days and nights. The relaxed fit and classic design make it a versatile piece for layering or wearing on its own."),

  // Product 7
  Product(
      id: "J3LnVdUz",
      productName: "Casual Slip-On Sneakers",
      productImageUrl: [productImageUrls[7]],
      currentPrice: "280",
      oldPrice: "320",
      isLiked: false,
      rating: 3.9,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Step into comfort and style with our Casual Slip-On Sneakers. These lightweight and flexible sneakers provide a snug fit and cushioned insoles for all-day wear. The slip-on design allows for easy on and off, making them perfect for your everyday activities."),

  // Product 8
  Product(
      id: "Y6VtTqRj",
      productName: "Elegant Evening Dress",
      productImageUrl: [productImageUrls[8]],
      currentPrice: "980",
      oldPrice: "1200",
      isLiked: true,
      rating: 4.7,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Make a statement at any event with our Elegant Evening Dress. The figure-flattering silhouette and exquisite detailing create a timeless look that will turn heads. Whether it's a gala, wedding, or formal dinner, this dress will ensure you look and feel stunning."),

  // Product 9
  Product(
      id: "T4GsP9Km",
      productName: "Minimalist Leather Wallet",
      productImageUrl: [productImageUrls[9]],
      currentPrice: "180",
      oldPrice: "220",
      isLiked: false,
      rating: 4.0,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Carry your essentials in style with our Minimalist Leather Wallet. Crafted from genuine leather, this slim and sleek wallet fits comfortably in your pocket or bag. The minimalist design keeps it lightweight and functional, making it an ideal accessory for everyday use."),

  // Product 10
  Product(
      id: "M8UtC2Wb",
      productName: "Athletic Running Shoes",
      productImageUrl: [productImageUrls[10]],
      currentPrice: "560",
      oldPrice: "600",
      isLiked: false,
      rating: 4.5,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Hit the ground running with our Athletic Running Shoes. Designed for performance and comfort, these shoes feature advanced cushioning and support to enhance your running experience. The breathable upper keeps your feet cool, while the durable outsole provides excellent traction on various surfaces."),

  // Product 11
  Product(
      id: "P5VjR7Lq",
      productName: "Stylish Cat-Eye Sunglasses",
      productImageUrl: [productImageUrls[8]],
      currentPrice: "150",
      oldPrice: "180",
      isLiked: true,
      rating: 4.3,
      colorStrings: [
        "#FF0000", // Kırmızı renk
        "#0000FF", // Mavi renk
        "#00FF00", // Yeşil renk
      ],
      productDescription:
          "Complete your look with our Stylish Cat-Eye Sunglasses. These chic and trendy sunglasses feature a classic cat-eye shape that adds a touch of glamour to any outfit. The UV-protected lenses ensure your eyes stay safe from the sun's harmful rays while making a fashion statement."),
];
