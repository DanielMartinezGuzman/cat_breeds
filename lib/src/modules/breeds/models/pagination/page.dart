class Page {
  Page({required this.page, this.limit = 10});
  final int page;
  final int limit;

  String get toQueryParams => 'page=$page&limit=$limit';
}
