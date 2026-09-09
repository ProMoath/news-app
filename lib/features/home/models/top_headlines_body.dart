class TopHeadlinesBody {
  final String country;
  final String? category;
  final String? sources;
  final String? q;
  final int? pageSize;
  final int? page;

  const TopHeadlinesBody({
    this.country ='us',
    this.category,
    this.sources,
    this.q,
    this.pageSize,
    this.page
  });
  Map<String, dynamic> toMap(){
    final resault = <String,dynamic>{};

    resault.addAll({'country': country});
    if(category !=null) {
      resault.addAll({'category': category});
    }
    if(sources !=null) {
      resault.addAll({'sources': sources});
    }
    if(q !=null) {
      resault.addAll({'q': q});
    }
    if(pageSize !=null) {
      resault.addAll({'pageSize': pageSize});
    }
    if(page !=null) {
      resault.addAll({'page': page});
    }

    return resault;
  }
  factory TopHeadlinesBody.fromMap(Map<String,dynamic> map){
    return TopHeadlinesBody(
      country: map['country']?? '',
      category: map['category'],
      sources: map['sources'],
      q: map['q'],
      pageSize: map['pageSize']?.toInt(),
      page: map['page']?.toInt(),
    );
  }
}