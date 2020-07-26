import 'package:covid_19_job/models/error.dart';

class ResponseHandler{
  Map response;
  Map<String,String> headers;
  int httpStatus;
  Error error;
  ResponseHandler({this.response,this.headers,this.httpStatus,this.error});
  int getHttpCode(){
    return this.httpStatus;
  }
  Error getError(){
    return this.error;
  }

}