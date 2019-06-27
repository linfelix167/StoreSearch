//
//  Search.swift
//  StoreSearch
//
//  Created by Felix Lin on 6/27/19.
//  Copyright © 2019 Felix Lin. All rights reserved.
//

import Foundation

class Search {
    var searchResults: [SearchResult] = []
    var hasSearched = false
    var isLoading = false
    
    private var dataTask: URLSessionDataTask? = nil
    
    func performSearch(for text: String, category: Int) {
        print("Searching...")
    }
}
