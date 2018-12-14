//
//  FileProviderEnumerator.swift
//  FileProviderExtension
//
//  Created by Ernesto Badillo on 12/13/18.
//

import FileProvider

class FileProviderEnumerator: NSObject, NSFileProviderEnumerator {
    
    var enumeratedItemIdentifier: NSFileProviderItemIdentifier
    
    init(enumeratedItemIdentifier: NSFileProviderItemIdentifier) {
        self.enumeratedItemIdentifier = enumeratedItemIdentifier
        super.init()
    }

    func invalidate() {
        // TODO: perform invalidation of server connection if necessary
    }

    func enumerateItems(for observer: NSFileProviderEnumerationObserver, startingAt page: NSFileProviderPage) {
        DispatchQueue.main.async {
            let items: [FileProviderItem] = [
                FileProviderItem(itemIdentifier: NSFileProviderItemIdentifier("item1"),
                                 parentIdentifier: self.enumeratedItemIdentifier,
                                 filename: "File 1"),
                FileProviderItem(itemIdentifier: NSFileProviderItemIdentifier("item2"),
                                 parentIdentifier: self.enumeratedItemIdentifier,
                                 filename: "File 2")
            ]
            observer.didEnumerate(items)
            observer.finishEnumerating(upTo: nil)
        }
    }
    
    func enumerateChanges(for observer: NSFileProviderChangeObserver, from anchor: NSFileProviderSyncAnchor) {
        /* TODO:
         - query the server for updates since the passed-in sync anchor
         
         If this is an enumerator for the active set:
         - note the changes in your local database
         
         - inform the observer about item deletions and updates (modifications + insertions)
         - inform the observer when you have finished enumerating up to a subsequent sync anchor
         */
    }

}
