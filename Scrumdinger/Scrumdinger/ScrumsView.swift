//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 若生優希 on 2023/08/11.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
  
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
