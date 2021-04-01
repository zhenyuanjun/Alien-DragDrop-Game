//
//  Bundle-WordLoading.swift
//  gesture
//
//  Created by 陳元浚 on 2021/3/31.
//

import Foundation

extension Bundle {
    func words(from filename: String) -> Set<String> {
        guard let fileURL = url(forResource: filename, withExtension: nil) else {
            fatalError("Can't find \(filename)")
        }

        guard let contents = try? String(contentsOf: fileURL) else {
            fatalError("Can't load \(filename)")
        }

        return Set(contents.components(separatedBy: "\n"))
    }
}
