//
//  SocialView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/13/24.
//

import SwiftUI

enum SocialType {
    case git, linked, web
    
    var text: String {
        switch self {
        case .git: return "Git"
        case .linked: return "Linked"
        case .web: return "Web"
        }
    }
    
    var icon: String {
        switch self {
        case .git: return "git"
        case .linked: return "linked"
        case .web: return "web"
        }
    }
    
    var link: String {
        switch self {
        case .git: return "https://github.com/AKogut91"
        case .linked: return "https://www.linkedin.com/in/alexander-kogut/"
        case .web: return "http://alexkogut.tilda.ws"
        }
    }
}

struct SocialView: View {
    let type: SocialType
    
    var body: some View {
        HStack {
            Text(type.text)
            Spacer()
            Image(type.icon)
                .resizable()
                .frame(width: 30, height: 30)
        }
        .padding()
        .onTapGesture {
            openLink(urlString: type.link)
        }
    }
    
    private func openLink(urlString: String) {
           if let url = URL(string: urlString) {
               UIApplication.shared.open(url)
           }
       }
}
