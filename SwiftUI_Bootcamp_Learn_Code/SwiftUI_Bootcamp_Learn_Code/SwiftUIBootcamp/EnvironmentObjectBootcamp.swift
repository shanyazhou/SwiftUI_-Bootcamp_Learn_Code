//
//  EnvironmentObjectBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/23.
//

import SwiftUI

class EnvironmentObjectViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var viewMolde: EnvironmentObjectViewModel = EnvironmentObjectViewModel()
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(viewMolde.dataArray, id: \.self) { item in
                    NavigationLink {
                        SecondView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        ///在这写上后，后面所有的NavigationView的子view都有这个属性
        .environmentObject(viewMolde)
    }
}

struct SecondView: View {
    var selectedItem: String
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink {
                ThirdView()
            } label: {
                Text(selectedItem)
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                    .padding()
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct ThirdView: View {
    //@EnvironmentObject 接收上面已经定义的属性
    @EnvironmentObject var viewModel: EnvironmentObjectViewModel
    var body: some View{
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]),
                           startPoint: .leading,
                           endPoint: .trailing)
            .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
