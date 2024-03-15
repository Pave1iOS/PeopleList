//
//  SectionView.swift
//  PeopleList
//
//  Created by Pavel Gribachev on 15.03.2024.
//

import SwiftUI

enum SectionImage {
    case email
    case phone
    
    var image: String {
        switch self {
        case .email:
            "envelope.fill"
        case .phone:
            "phone.fill"
        }
    }
}

struct SectionView: View {
    let systemImageName: SectionImage
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                Image(systemName: "\(systemImageName.image)")
                    .foregroundStyle(Color.blue)
                Text(text)
                    .font(.system(size: 15))
            }
        }.padding(.top, 3)
    }
}

#Preview {
    SectionView(systemImageName: .email, text: "myEmail@mail.com")
}
