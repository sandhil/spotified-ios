//
//  URL+Util.swift
//  Spotified
//
//  Created by Sandhil Eldhose on 11/12/2021.
//

import Foundation

extension URL {
    
    static func tel(phoneNumber: String) -> URL? {
        return URL(string: "tel:\(phoneNumber.removing(.whitespaces))")
    }
    
    static func mailTo(email: String) -> URL? {
        return URL(string: "mailto:\(email)")
    }
    
}

extension String {
    
    func toURL() -> URL? {
        return URL(string: self)
    }
    
}
