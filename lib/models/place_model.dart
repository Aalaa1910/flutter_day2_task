class Landmark {
  final String name;
  final String description;
  final String price;
  final String currency;
  final double rating;
  final String imageUrl;
  bool isFavorite;

  Landmark({
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.rating,
    required this.imageUrl,
    this.isFavorite = false,
  });
}

final List<Landmark> landmarks = [
  Landmark(
    name: 'برج خليفة',
    description:
    'أطول مبنى في العالم، يقع في دبي، ويوفر إطلالات بانورامية مذهلة على المدينة والخليج.',
    price: '150',
    currency: 'درهم',
    rating: 4.9,
    imageUrl:
    'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=800&q=80',
  ),
  Landmark(
    name: 'أهرامات الجيزة',
    description:
    'إحدى عجائب الدنيا السبع القديمة، تقع في القاهرة وتعكس عظمة الحضارة المصرية القديمة.',
    price: '200',
    currency: 'جنيه',
    rating: 4.8,
    imageUrl:
    'https://www.mobtada.com/resize?src=uploads/images/2023/02/16762963820.jpg&w=750&h=450&zc=0&q=70',

  ),
  Landmark(
    name: 'تاج محل',
    description:
    'ضريح رائع من الرخام الأبيض يقع في مدينة أغرا بالهند، وهو رمز للحب والعمارة الإسلامية.',
    price: '45',
    currency: 'دولار',
    rating: 4.9,
    imageUrl:
    'https://images.unsplash.com/photo-1564507592333-c60657eea523?w=800&q=80',
  ),
  Landmark(
    name: 'برج إيفل',
    description:
    'الرمز الأيقوني لمدينة باريس، يطل على نهر السين ويستقطب ملايين الزوار سنوياً.',
    price: '26',
    currency: 'يورو',
    rating: 4.7,
    imageUrl:
    'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=800&q=80',
  ),
];
