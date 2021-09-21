//
//  SearchBar.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 04/08/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import SwiftUI
struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    var onSearchButtonChanged: (() -> Void)? = nil
    
    class Coordinator: NSObject, UISearchBarDelegate {
        let searchBarView: SearchBar
        init(_ searchBar: SearchBar) {
            self.searchBarView = searchBar
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            searchBarView.text = searchText
            searchBarView.onSearchButtonChanged?()
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBarView.onSearchButtonChanged?()
            searchBar.resignFirstResponder()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.delegate = context.coordinator
        
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = self.text
    }
    
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
