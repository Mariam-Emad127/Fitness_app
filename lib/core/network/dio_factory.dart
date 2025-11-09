 import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {


DioFactory._(); 
static Dio ? dio ;
 static Dio  getDio()   {
if(dio==null){
Duration timeOut=Duration(seconds: 60);
  dio=Dio();
dio!

        ..options.connectTimeout = timeOut 
        ..options.receiveTimeout = timeOut;
         
         addDioInterceptor();
        addDioHeaders();
return dio!;
}else{
        return dio!;
}

 }
 
  static void addDioHeaders() async {
    dio?.options.headers = {
       "X-RapidAPI-Key":"25a94da6a5mshd8b5eb683cab4bcp1395dbjsn636c704b8a42", 
       "X-RapidAPI-Host": "exercisedb.p.rapidapi.com",
       };
      }
 
 
 /*
//   عشان يحفظ التوكين وهو  بيعمل  " لوجين"  ويرجعة تانى لمما ييجى يعمل جيت  
static void setTokenIntoHeaderAfterLogin(String token){
        dio?.options.headers={
"X-RapidAPI-Key": 'application/json',
//"Authorization":"Bearer $token"

        };
}
*/
 
static void addDioInterceptor(){
 
 dio?.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,));

}


}