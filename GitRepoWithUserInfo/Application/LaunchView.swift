//
//  LaunchView.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 05/02/2023.
//

import Foundation
import SwiftUI


struct LaunchView: View {
    
    @StateObject var appCoordinator: AppCoordinator
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var userDefault: UserDefaultsHelperDelegate
    
    var body: some View {
        Text("GitRepoWithUserInfo")
            .font(Font.custom("Baskerville-Bold", size: 26))
            .foregroundColor(.black.opacity(0.80))
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 1.2)) {
                self.size = 0.9
                self.opacity = 1.00
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    userDefault.hasShowLaunchView = AppCoordinatorViewFlow.tab.rawValue
                    appCoordinator.appView = .tab
                }
            }
        }
        .onDisappear {
            print("\(LaunchView.self) is out")
        }
    }
}

struct LaunchViewView_Previews: PreviewProvider {
    
    static var previews: some View {
        let dependencies = Dependencies()
        LaunchView(appCoordinator: dependencies.makeAppCoordinator(), userDefault: dependencies.makeUserDefaultsHelper())
    }
}
