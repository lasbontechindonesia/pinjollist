import 'package:pinjollist/model/company.dart';
import 'package:pinjollist/repository/company_api_provider.dart';

class CompanyRepository {
  CompanyApiProvider _apiProvider = CompanyApiProvider();

  Future<CompaniesResponse> getCompanies() {
    return _apiProvider.getCompanies();
  }
}