//
//  DetailEditView.swift
//  ScrumDinger
//
//  Created by Frank Jover on 02/08/2023.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum

    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5 ... 30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
