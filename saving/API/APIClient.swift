import Foundation
import Moya

protocol ApiClientInterface {
    func request<T: ApiTargetType>(_ request: T, completion: @escaping (Result<T.Response, MoyaResponseError>) -> Void)
}

class ApiClient: ApiClientInterface {
    func request<T>(_ request: T, completion: @escaping (Result<T.Response, MoyaResponseError>) -> Void) where T: ApiTargetType {
        let provider = MoyaProvider<T>()
        provider.request(request) { result in
            switch result {
            case let .success(response):
                do {
                    let model = try response.map(T.Response.self)
                    completion(.success(model))
                } catch {
                    do {
                        let errorModel = try response.map(ErrorResponse.self)
                        completion(.failure(.badRequestError(errorModel.code)))
                    } catch {
                        if let error = error as? MoyaError {
                            completion(.failure(.moyaError(error)))
                        } else {
                            completion(.failure(.unknownError))
                        }
                    }
                }

            case let .failure(moyaError):
                completion(.failure(.moyaError(moyaError)))
            }
        }
    }
}

struct ErrorResponse: Decodable {
    var code: Int
    var message: String
}

enum MoyaResponseError: Error {
    case moyaError(Moya.MoyaError)
    case badRequestError(Int)
    case unknownError
}
