//
//  SpecialLabelsGroupView.swift
//  ReusableCustomView
//
//  Created by Melissa Yung on 11/10/16.
//  Copyright © 2016 MY. All rights reserved.
//

import UIKit

@IBDesignable class SpecialLabelsGroupView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    // When the SpecialLabelsGroupView is instantiated from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
        // now that the view is loaded, we can initialise our views
        setupDefaultData()
    }
    
    // When the SpecialLabelsGroupView is used in Interface Builder / Storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        
        // now that the view is loaded, we can initialise our views
        setupDefaultData()
    }
    
    // Convenience initialiser
    convenience init(textOne: String, textTwo: String, textThree: String) {
        
        self.init() // has to call a designated initialiser
        
        setupView()
        
        firstLabel.text = textOne
        secondLabel.text = textTwo
        thirdLabel.text = textThree
    }
    
    func setupView() {
        // load from the .xib
        
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("SpecialLabelsGroupView", owner: self, options: nil)
        
        guard let content = contentView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        addSubview(content) // add the loaded nib to this view
    }
    
    func setupDefaultData() {
        firstLabel.text = "But I must explain to you how all this mistaken idea of denouncing of a pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"
        
        secondLabel.text = "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."
        
        thirdLabel.text = "The end"
    }
}
