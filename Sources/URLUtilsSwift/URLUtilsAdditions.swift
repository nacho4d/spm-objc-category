//
//  URLUtilsAdditions.swift
//
//
//  Created by Guillermo Ignacio Enriquez Gutierrez on 2023/06/14.
//

import Foundation
import URLUtils

extension URL {
    public var queryParams: [String: String] {
        (self as NSURL).queryParams
    }
}
