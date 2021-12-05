//
//  NetworkResultModel.swift
//  SPNetwork
//
//  Created by flowerflower on 2021/12/4.
//

import HandyJSON

struct NetworkResultDataModel<T:HandyJSON>: HandyJSON {
    
    var message: String?
    var reslutData: T?
    var stateCode: Int = 0
}

struct NetworkResultModel<T: HandyJSON>: HandyJSON {
    
    var code: Int = 0
 
    var data: NetworkResultDataModel<T>?
    
}



