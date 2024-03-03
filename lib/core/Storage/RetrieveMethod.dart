import 'DataAccess.dart';

abstract class RetrieveMethod {
  DataAccess getMethod();

  Map getData() {
    return getMethod().getData();
  }
}