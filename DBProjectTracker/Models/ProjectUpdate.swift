//
//  ProjectUpdate.swift
//  DBProjectTracker
//
//  Created by Jev Smolnikov on 30/05/2024.
//

import Foundation
import SwiftData

@Model
class ProjectUpdate: Identifiable {
	
	@Attribute(.unique) var id: String
	var headline = ""
	var summary = ""
	var date = Date()
	var hours = 0.0
	var updateType = UpdateType.log
	var project: Project?
	
	init() {
		// create unique string ID
		id = UUID().uuidString
	}
}

enum UpdateType: Codable {
	case log
	case milestone
}
