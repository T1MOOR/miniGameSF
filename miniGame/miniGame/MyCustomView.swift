//
//  MyCustomView.swift
//  miniGame
//
//  Created by Тимур Гарипов on 23.08.22.
//

import UIKit

@IBDesignable class MyCustomView: UIView, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var labelForView: UILabel!
    
    @IBInspectable var labelText: String {
        get {
            return labelForView.text!
        }
        set(labelText) {
            labelForView.text = labelText
        }
    }
    
    var workingsView: UIView!
    var xibName: String = "MyCustomView"

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate( withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setCustomView() {
        workingsView = getFromXib()
        workingsView.frame = bounds
        workingsView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        workingsView.layer.cornerRadius = frame.size.height / 2
        workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5)
        
//        workingsView.backgroundColor = #colorLiteral(red: 0.1220164075, green: 0.3601873517, blue: 0.3994541764, alpha: 1)
        addSubview(workingsView)
    }
}

extension MyCustomView {
    func intersects(_ her: MyCustomView) -> Bool {
        let herInMyGeometry = convert(her.bounds, from: her)
        return bounds.intersects(herInMyGeometry)
    }
}
