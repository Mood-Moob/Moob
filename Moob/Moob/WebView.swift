//
//  WebView.swift
//  Moob
//
//  Created by 노연주 on 2022/06/24.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    var urlToLoad: String
    
    //UIView Create
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: urlToLoad) else { return WKWebView() }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    //UIView Update
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
    }
}

struct MyWebView_Previews: PreviewProvider{
    static var previews: some View{
        WebView(urlToLoad: "")
    }
}
