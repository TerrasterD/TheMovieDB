//
//  ContentView.swift
//  TheMovieDB
//
//  Created by Victor Dângelo Teixeira Ciccarini on 19/01/21.
//

import SwiftUI

struct Result {
    var id = UUID()
    var score: Int
}

struct ContentView2: View {
    
    let results = [Result(score: 8), Result(score: 5), Result(score: 10)]

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            ForEach(results, id: \.id) { result in
                HStack(alignment: .top, spacing: 40){
                    Text("Item \(result.score)")
                }
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
