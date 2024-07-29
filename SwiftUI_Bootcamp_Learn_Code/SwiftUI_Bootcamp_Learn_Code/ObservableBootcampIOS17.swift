//
//  ObservableBootcampIOS17.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

//1
@Observable private class ObservableViewModel{
    //2
    var title: String = "Some title"
}

struct ObservableBootcampIOS17: View {
    //3
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.title){
                viewModel.title = "new title~"
            }
            .font(.largeTitle)
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdChildView()
        }
        //4
        .environment(viewModel)
    }
}

private struct SomeChildView: View {
    //接收  使用`@ObservedObjec`t，调用的时候要初始化给值
    //6
    @Bindable var viewModel: ObservableViewModel
    var body: some View {
        Button(viewModel.title){
            viewModel.title = "subView title~"
        }
        .font(.largeTitle)
    }
}

private struct SomeThirdChildView: View {
    //接收 使用`@EnvironmentObject`t，调用的时候不需要初始化给值，但是需要手动写：`.environmentObject(viewModel)`
    //5
    @Environment(ObservableViewModel.self) var viewModel
    var body: some View {
        Button(viewModel.title){
            viewModel.title = "thirdChildView title~"
        }
        .font(.largeTitle)
    }
}


#Preview {
    ObservableBootcampIOS17()
}
