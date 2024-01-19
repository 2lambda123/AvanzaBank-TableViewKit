//
//  TableViewKit
//
//  Copyright (c) 2017 Alek Åström.
//  Licensed under the MIT license, see LICENSE file.
//

import UIKit

/// For classes where there is a Nib with the same filename as the class.
protocol NibLoadable: class { }

extension NibLoadable where Self: UIView {
    
    static func loadFromNib(named nibName: String? = nil, bundle: Bundle? = nil) -> Self {
        let nibName = nibName ?? String(describing: self)
        let bundle = bundle ?? Bundle(for: self)
        return bundle.loadNibNamed(nibName, owner: self, options: nil)!.first as! Self
    }
    
}
