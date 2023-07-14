class FeeData{
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;


  FeeData(this.receiptNo,this.date,this.month, this.paymentStatus, this.totalAmount,this.btnStatus,);
}
List<FeeData>fee =[
  FeeData("90871", "November", "8 Nov 2020", "pending", "980\$", "pay Now"),
  FeeData("90870", "september", "8 sep 2020", "pending", "1000\$", "DOWNLOAD"),
  FeeData("908860", "August", "8 Aug 2020", "pending", "980\$", "DOWNLOAD"),

  //  FeeData("90870", "september", "8 sep 2020", "pending", "980\$", "Pay Now"),
  //   FeeData("90870", "september", "8 sep 2020", "pending", "980\$", "Pay Now"),
];