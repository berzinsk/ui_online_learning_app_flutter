class SearchResult {
  final String name;
  final String author;
  final double rating;
  final int reviews;
  final double price;
  final String image;
  final bool isBestSeller;

  const SearchResult({
    required this.name,
    required this.author,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.image,
    this.isBestSeller = false,
  });
}
