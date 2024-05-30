//
//  Project.swift
//  DBProjectTracker
//
//  Created by Jev Smolnikov on 30/05/2024.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable {
	
	@Attribute(.unique) var id: String
	var name = ""
	var startDate = Date()
	var focus = ""
	
	@Relationship(deleteRule: .cascade, inverse: \ProjectUpdate.project)
	var update: [ProjectUpdate] = [ProjectUpdate]()
	
	init() {
		// create unique string ID
		id = UUID().uuidString
	}
}

