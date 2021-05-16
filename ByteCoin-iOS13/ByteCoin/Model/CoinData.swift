//
//  CoinData.swift
//  ByteCoin
//
//  Created by 이창준 on 2021/05/16.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Decodable {
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}
