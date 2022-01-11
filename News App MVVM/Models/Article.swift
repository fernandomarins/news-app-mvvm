//
//  Article.swift
//  News App MVVM
//
//  Created by Fernando Marins on 11/01/22.
//

import Foundation

struct Articles: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
