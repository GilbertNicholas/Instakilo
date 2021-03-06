//
//  SearchView.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 10/09/21.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var isSearchMode = false
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
            // SEARCH BAR
            SearchBar(text: $searchText, isSearchMode: $isSearchMode)
                .padding()
            
            // GRID VIEW / USER LIST VIEW
            ZStack {
                if isSearchMode {
                    UserListView(viewModel: viewModel, searchText: $searchText)
                } else {
                    PostGridView(config: .explore)
                }
            }
        } //: SCROLL
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
