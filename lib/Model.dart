
class Rate {
  String channel;
  String ask;
  String bid;
  String high;
  String last;
  String low;
  String symbol;
  String timestamp;
  String volume;

  Rate({
    this.channel,
    this.ask,
    this.bid,
    this.high,
    this.last,
    this.low,
    this.symbol,
    this.timestamp,
    this.volume
  });

  Rate.fromJson(Map<String, dynamic> json) {
    channel= json['channel'] ?? '';
    ask= json['ask'] ?? '';
    bid= json['bid'] ?? '';
    high= json['high'] ?? '';
    last= json['last'] ?? '';
    low= json['low'] ?? '';
    symbol= json['symbol'] ?? '';
    timestamp= json['timestamp'] ?? '';
    volume= json['volume'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['channel'] = this.channel;
    data['ask'] = this.ask;
    data['bid'] = this.bid;
    data['high'] = this.high;
    data['last'] = this.last;
    data['low'] = this.low;
    data['symbol'] = this.symbol;
    data['timestamp'] = this.timestamp;
    data['volume'] = this.volume;

    return data;
  }

}

class OrderBook {
  String channel;
  List<BIDASK> bids;
  List<BIDASK> asks;

  OrderBook({
    this.channel,
    this.bids,
    this.asks
  });
  OrderBook.fromJson(Map<String, dynamic> json) {
    channel= json['channel'] ?? '';
    bids= ((json['bids']) as List).map((i) => BIDASK.fromJson(i)).toList();
    asks= ((json['asks']) as List).map((i) => BIDASK.fromJson(i)).toList();
  }
}

class BIDASK {
  String price;
  String size;

  BIDASK({
    this.price,
    this.size
  });

  BIDASK.fromJson(Map<String, dynamic> json) {
    price= json['price'] ?? '';
    size= json['size'] ?? '';
  }
}

class InterestSumaryData {
  final String typeMoney;
  final String typeBidAsk;
  final String interestQuantity;
  final String underCover;
  final String average;
  final String evaluationRate;
  final String valuation;
  final String swap;

  const InterestSumaryData({
   this.typeMoney,
   this.typeBidAsk,
   this.interestQuantity,
   this.underCover,
   this.average,
   this.evaluationRate,
   this.valuation,
   this.swap
  });
}