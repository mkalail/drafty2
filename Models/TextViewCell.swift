//
//  TableViewCell.swift
//  Drafty2
//
//  Created by Michael Kalail on 1/19/22.
//

import UIKit



protocol TextViewCellDelegate {
    func updateCellHeight()
}

class TextViewCell: UITableViewCell {
    
    var delegate: TextViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textView.delegate = self
    }

    @IBOutlet weak var textView: UITextView!
    
}

extension TextViewCell : UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        delegate?.updateCellHeight()
    }
}
