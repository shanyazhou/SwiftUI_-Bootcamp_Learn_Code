//
//  ViewModelBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/19.
//

import SwiftUI

struct FruitModel : Hashable, Identifiable{
    let id = UUID()
    let name: String
    let color: String
    let count: Int
}


class FruitViewModel: ObservableObject {
    @Published var fruitArray:[FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits(){
        let fruit1 = FruitModel(name: "apple", color: "green", count: 2)
        let fruit2 = FruitModel(name: "banana", color: "yellow", count: 1)
        let fruit3 = FruitModel(name: "grape", color: "purple", count: 100)
        let fruit4 = FruitModel(name: "orange", color: "orange", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    //监听对象的改变，并且在view刷新的时候，不会改变
    //在本view里面创建或者初始化
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    //监听对象的改变，并且在view刷新的时候也会改变
    //传递到下一个view使用，则使用ObservedObject
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { item in
                        HStack {
                            
                            NavigationLink {
                                //下一个View的内容
                                SecondScreen(fruitViewModel: fruitViewModel, selectedFruitModel: item)
                            } label: {
                                Text("\(item.count)个")
                                    .foregroundStyle(.red)
                                
                                Text(item.name)
                                    .foregroundStyle(Color(wordName: item.color) ?? .black)
                            }
                        }
                        .font(.title)
                        
                        
                     }
                    .onDelete(perform: { indexSet in
                        fruitViewModel.deleteFruit(index: indexSet)
                    })
                }
            }
            
            .navigationTitle("Fruit List")
        }
        
        .onAppear{
            fruitViewModel.getFruits()
        }
        
//        .onAppear(perform: {
//            fruitViewModel.getFruits()
//        })
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationModel
    //@Environment(\.isPresented) var isPresented
    
    @ObservedObject var fruitViewModel: FruitViewModel
    //不需要监听状态的改变，只是传值
    var selectedFruitModel: FruitModel
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5).ignoresSafeArea()
            
            VStack{
                Text(selectedFruitModel.name)
                    .font(.largeTitle)
                    .foregroundStyle(Color(wordName: selectedFruitModel.color) ?? .white)
                
                
                Button(action: {
                    //返回
    //                isPresented = true
                    presentationModel.wrappedValue.dismiss()
                }, label: {
                    Text("Back")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                })
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
