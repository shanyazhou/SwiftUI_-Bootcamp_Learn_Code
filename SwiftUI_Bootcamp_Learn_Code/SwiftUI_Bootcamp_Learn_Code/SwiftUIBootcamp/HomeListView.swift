//
//  HomeListView.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/15.
//

import SwiftUI

struct HomeListView: View {
    var body: some View {
        NavigationStack {
            List{
                Section {
                    ///需要点击跳转的，加上NavigationLink
                    NavigationLink("小例子") {
                        //下一个View的内容
                        ContentView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ShapesBootcamp") {
                        ShapesBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("Color") {
                        ColorView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TextView") {
                        TextView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("GradientsView") {
                        GradientsView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("Frame") {
                        FrameView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("BackgroundAndOverlayView") {
                        BackgroundAndOverlayView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("StacksView") {
                        StacksView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SpacerView") {
                        SpacerView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ScrollViewBootcamp") {
                        ScrollViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SafeView") {
                        SafeView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("LearnGridView") {
                        LearnGridView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("GridBootcamp") {
                        GridBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("LearnButtonView") {
                        LearnButtonView()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ExtractSubViewBootcamp") {
                        ExtractSubViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("BindingBootcamp") {
                        BindingBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ConditionalBootcamp") {
                        ConditionalBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AnimationBootcamp") {
                        AnimationBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TransitionBootcamp") {
                        TransitionBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SheetsBootcamp") {
                        SheetsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("NavigationViewBootcamp") {
                        NavigationViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ListBootcamp") {
                        ListBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AlertBootcamp") {
                        AlertBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ActionsheetBootcamp") {
                        ActionsheetBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ContextMenuBootcamp") {
                        ContextMenuBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TextfieldBootcamp") {
                        TextfieldBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TextEditorBootcamp") {
                        TextEditorBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ToggleBootcamp") {
                        ToggleBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("PickerBootcamp") {
                        PickerBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ColorPickerBootcamp") {
                        ColorPickerBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("DatePickerBootcamp") {
                        DatePickerBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("StepperBootcamp") {
                        StepperBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SliderBootcamp") {
                        SliderBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TabViewBootcamp") {
                        TabViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("DarkModeBootcamp") {
                        DarkModeBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("OnAppearBootcamp") {
                        OnAppearBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("TapGestureBootcamp") {
                        TapGestureBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ModelBootcamp") {
                        ModelBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ViewModelBootcamp") {
                        ViewModelBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("EnvironmentObjectBootcamp") {
                        EnvironmentObjectBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AppStorageBootcamp") {
                        AppStorageBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AsyncImageBootcamp") {
                        AsyncImageBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("BackgroundMaterialsBootcamp") {
                        BackgroundMaterialsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ButtonStylesBootcamp") {
                        ButtonStylesBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ListSwipeActionsBootcamp") {
                        ListSwipeActionsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("BadgesBootcamp") {
                        BadgesBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("NavigationStackBootcamp") {
                        NavigationStackBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ToolbarBootcamp") {
                        ToolbarBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ResizableSheetBootcamp") {
                        ResizableSheetBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("SafeAreaInsetBootcamp") {
                        SafeAreaInsetBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("GroupBootcamp") {
                        GroupBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AnimationUpdateBootcamp") {
                        AnimationUpdateBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    
                    NavigationLink("MenuBootcamp") {
                        MenuBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("NativePopoverBootcamp") {
                        NativePopoverBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("AnyLayoutBootcamp") {
                        AnyLayoutBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    
                    NavigationLink("ViewThatFitsBootcamp") {
                        ViewThatFitsBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("NavigationSplitViewBootcamp") {
                        NavigationSplitViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("GridViewBootcamp") {
                        GridViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    
                    NavigationLink("ContentUnavailableViewBootcamp") {
                        ContentUnavailableViewBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ObservableBootcamp") {
                        ObservableBootcamp()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    NavigationLink("ObservableBootcampIOS17") {
                        ObservableBootcampIOS17()
                            .toolbar(.hidden, for: .tabBar)
                    }
                    
                    
                    
                } header: {
                    HStack{
                        Text("示例集合")
                    }
                    //设置section的样式
                    .font(.title)
                    .foregroundColor(.purple)
                }
            }
        }
//        .accentColor(.red)
    }
}

#Preview {
    HomeListView()
}
