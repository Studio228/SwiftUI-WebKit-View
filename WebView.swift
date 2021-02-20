//
//  WebView.swift
//  WebView Test View
//
//  Created by Loden Stamper on 2/20/21.
//

import SwiftUI
import WebKit

struct WebView:UIViewRepresentable {
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
