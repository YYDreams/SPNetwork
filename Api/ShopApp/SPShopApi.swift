//
//  SPShopApi.swift
//  SPNetwork
//
//  Created by flowerflower on 2021/12/3.
//

import Foundation
import PromiseKit
import HandyJSON
import Moya
public class NetworkLoginApi: NSObject {
    
    enum Api: NetworkPublicApi {
     
        // 登录
        case requestMobile(code: String,mobile:String)
        
        var path: String {
            switch self {
            case .requestMobile:
                return "/api/v1/sams/sams-user/authorization/mobile"
            }
        }
        var method: Moya.Method {
            return .post
        }
        var originParams: [String: Any]? {
            switch self {
            case let .requestMobile(code,mobile):
                let params: [String: Any] = ["code": code,"mobile":mobile]
                return params
            }
            
        }
        
    }
}


extension MoyaProvider{
    
//    open func request<T: HandyJSON>(_ target: Target,
//                                    model: T.Type,
//                                    completion: ((_ returnData: T?) -> Void)?) -> Cancellable? {
//        
//        return request(target, completion: { (result) in
//            guard let completion = completion else { return }
//            guard let returnData = try? result.value?.mapModel(ResponseData<T>.self) else {
//                completion(nil)
//                return
//            }
//            completion(returnData.data?.returnData)
//        })
//    }
    
}
