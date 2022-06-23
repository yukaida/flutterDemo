/// code : 1
/// msg : "数据返回成功！"
/// data : {"page":2,"totalCount":999,"totalPage":100,"limit":10,"list":[{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1usf35qmtj31c00u0jw9.jpg","imageSize":"1728x1080","imageFileLength":172914},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpggy1g1uq1a5fmrj31400p0wg9.jpg","imageSize":"1440x900","imageFileLength":75657},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpgly1g1ut4v5ldjj31c00u077q.jpg","imageSize":"1728x1080","imageFileLength":134186},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpgly1g1urphzevej31hc0u0dpo.jpg","imageSize":"1920x1080","imageFileLength":319985},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1us8z7l5ej31hc0u044j.jpg","imageSize":"1920x1080","imageFileLength":235538},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpggy1g1uq58noj7j31c00u0tdi.jpg","imageSize":"1728x1080","imageFileLength":146924},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1us97zs5kj31c00u0n2s.jpg","imageSize":"1728x1080","imageFileLength":206456},{"imageUrl":"https://tvax4.sinaimg.cn/large/005BYqpgly1g1ut8v42bsj31c00u0q5g.jpg","imageSize":"1728x1080","imageFileLength":103187},{"imageUrl":"https://tvax2.sinaimg.cn/large/005BYqpggy1g3jt5q2p7tj315o0rtwri.jpg","imageSize":"1500x1001","imageFileLength":382351},{"imageUrl":"https://tvax2.sinaimg.cn/large/005BYqpggy1g1uqffq7doj31hc0u0aib.jpg","imageSize":"1920x1080","imageFileLength":261938}]}

class Aaa {
  Aaa({
      int code, 
      String msg, 
      Data data,}){
    _code = code;
    _msg = msg;
    _data = data;
}

  Aaa.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int _code;
  String _msg;
  Data _data;
Aaa copyWith({  int code,
  String msg,
  Data data,
}) => Aaa(  code: code ?? _code,
  msg: msg ?? _msg,
  data: data ?? _data,
);
  int get code => _code;
  String get msg => _msg;
  Data get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data.toJson();
    }
    return map;
  }

}

/// page : 2
/// totalCount : 999
/// totalPage : 100
/// limit : 10
/// list : [{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1usf35qmtj31c00u0jw9.jpg","imageSize":"1728x1080","imageFileLength":172914},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpggy1g1uq1a5fmrj31400p0wg9.jpg","imageSize":"1440x900","imageFileLength":75657},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpgly1g1ut4v5ldjj31c00u077q.jpg","imageSize":"1728x1080","imageFileLength":134186},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpgly1g1urphzevej31hc0u0dpo.jpg","imageSize":"1920x1080","imageFileLength":319985},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1us8z7l5ej31hc0u044j.jpg","imageSize":"1920x1080","imageFileLength":235538},{"imageUrl":"https://tvax3.sinaimg.cn/large/005BYqpggy1g1uq58noj7j31c00u0tdi.jpg","imageSize":"1728x1080","imageFileLength":146924},{"imageUrl":"https://tvax1.sinaimg.cn/large/005BYqpgly1g1us97zs5kj31c00u0n2s.jpg","imageSize":"1728x1080","imageFileLength":206456},{"imageUrl":"https://tvax4.sinaimg.cn/large/005BYqpgly1g1ut8v42bsj31c00u0q5g.jpg","imageSize":"1728x1080","imageFileLength":103187},{"imageUrl":"https://tvax2.sinaimg.cn/large/005BYqpggy1g3jt5q2p7tj315o0rtwri.jpg","imageSize":"1500x1001","imageFileLength":382351},{"imageUrl":"https://tvax2.sinaimg.cn/large/005BYqpggy1g1uqffq7doj31hc0u0aib.jpg","imageSize":"1920x1080","imageFileLength":261938}]

class Data {
  Data({
      int page, 
      int totalCount, 
      int totalPage, 
      int limit, 
      List<List> list,}){
    _page = page;
    _totalCount = totalCount;
    _totalPage = totalPage;
    _limit = limit;
    _list = list;
}

  Data.fromJson(dynamic json) {
    _page = json['page'];
    _totalCount = json['totalCount'];
    _totalPage = json['totalPage'];
    _limit = json['limit'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list.add(List.fromJson(v));
      });
    }
  }
  int _page;
  int _totalCount;
  int _totalPage;
  int _limit;
  List<List> _list;
Data copyWith({  int page,
  int totalCount,
  int totalPage,
  int limit,
  List<List> list,
}) => Data(  page: page ?? _page,
  totalCount: totalCount ?? _totalCount,
  totalPage: totalPage ?? _totalPage,
  limit: limit ?? _limit,
  list: list ?? _list,
);
  int get page => _page;
  int get totalCount => _totalCount;
  int get totalPage => _totalPage;
  int get limit => _limit;
  List<List> get list => _list;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = _page;
    map['totalCount'] = _totalCount;
    map['totalPage'] = _totalPage;
    map['limit'] = _limit;
    if (_list != null) {
      map['list'] = _list.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// imageUrl : "https://tvax1.sinaimg.cn/large/005BYqpgly1g1usf35qmtj31c00u0jw9.jpg"
/// imageSize : "1728x1080"
/// imageFileLength : 172914

class List {
  List({
      String imageUrl, 
      String imageSize, 
      int imageFileLength,}){
    _imageUrl = imageUrl;
    _imageSize = imageSize;
    _imageFileLength = imageFileLength;
}

  List.fromJson(dynamic json) {
    _imageUrl = json['imageUrl'];
    _imageSize = json['imageSize'];
    _imageFileLength = json['imageFileLength'];
  }
  String _imageUrl;
  String _imageSize;
  int _imageFileLength;
List copyWith({  String imageUrl,
  String imageSize,
  int imageFileLength,
}) => List(  imageUrl: imageUrl ?? _imageUrl,
  imageSize: imageSize ?? _imageSize,
  imageFileLength: imageFileLength ?? _imageFileLength,
);
  String get imageUrl => _imageUrl;
  String get imageSize => _imageSize;
  int get imageFileLength => _imageFileLength;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['imageUrl'] = _imageUrl;
    map['imageSize'] = _imageSize;
    map['imageFileLength'] = _imageFileLength;
    return map;
  }

}