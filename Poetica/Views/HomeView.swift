//
// Created by Evan Luo on 2/12/23.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "TimesNewRomanPS-BoldMT", size: 40)!]
    }

    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Daily Comment").font(.custom("TimesNewRomanPS-BoldMT", size: 30)).padding([.bottom])) {
                    Card()
                }
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .textCase(nil)
                .headerProminence(.increased)
                
                Section(header: Text("Daily Poems").font(.custom("TimesNewRomanPS-BoldMT", size: 30)).offset(x: -16)) {
                    NavigationLink {
                        Text("ABC")
                    } label: {
                        PoemPreview()
                    }
                    NavigationLink {
                        Text("ABC")
                    } label: {
                        PoemPreview()
                    }
                    NavigationLink {
                        Text("ABC")
                    } label: {
                        PoemPreview()
                    }
                }
                .textCase(nil)
                .headerProminence(.increased)
                
                Section(header: Text("Daily Collections").font(.custom("TimesNewRomanPS-BoldMT", size: 30))) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            CollectionPreview()
                            CollectionPreview()
                            CollectionPreview()
                            CollectionPreview()
                        }.padding([.top])
                    }
                }
                .listRowBackground(Color.clear)
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .textCase(nil)
                .headerProminence(.increased)
            }
            .refreshable {
                print("A")
            }
            .navigationTitle("Today")
        }
    }
}
