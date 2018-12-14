//
//  FileProviderItem.swift
//  FileProviderExtension
//
//  Created by Ernesto Badillo on 12/13/18.
//

import FileProvider

class FileProviderItem: NSObject, NSFileProviderItem {
    
    init(itemIdentifier: NSFileProviderItemIdentifier, parentIdentifier: NSFileProviderItemIdentifier, filename: String) {
        self.itemIdentifier = itemIdentifier
        self.parentItemIdentifier = parentIdentifier
        self.filename = filename
    }
    
    let itemIdentifier: NSFileProviderItemIdentifier
    
    let parentItemIdentifier: NSFileProviderItemIdentifier
    
    let filename: String
    
    var typeIdentifier: String {
        return "public.text"
    }
    
    var documentSize: NSNumber? {
        return 1 as NSNumber
    }
    
    var capabilities: NSFileProviderItemCapabilities {
        return .allowsAll
    }
}
