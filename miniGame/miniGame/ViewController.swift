//
//  ViewController.swift
//  miniGame
//
//  Created by Тимур Гарипов on 23.08.22.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var customViewElement: MyCustomView = MyCustomView(frame: CGRect())
    
    @IBOutlet weak var button1View: MyCustomView!
    @IBOutlet weak var button2View: MyCustomView!
    @IBOutlet weak var button3View: MyCustomView!
    @IBOutlet weak var button4View: MyCustomView!
    @IBOutlet weak var button5View: MyCustomView!
    @IBOutlet weak var button6View: MyCustomView!
    @IBOutlet weak var button7View: MyCustomView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        button3View.workingsView.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        button4View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        button5View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        button6View.workingsView.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        button7View.workingsView.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
        
    }

    
    @IBAction func pan1Acton(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        if button1View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button7View.workingsView.backgroundColor = #colorLiteral(red: 0.5994100765, green: 0.3372549117, blue: 0.2748458759, alpha: 0.7999534354)
                self.button7View.workingsView.bounds = CGRect(x: self.button7View.frame.minX,
                                                              y: self.button7View.frame.minY,
                                                              width: self.button7View.frame.width + 10.0,
                                                              height: self.button7View.frame.height + 10.0
                                                            )
                
            }
            
        } else if button1View.frame.intersects(button2View.convert(button2View.frame, from: button2View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button2View.workingsView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.5022247517)
                self.button2View.workingsView.bounds = CGRect(x: self.button2View.frame.minX,
                                                              y: self.button2View.frame.minY,
                                                              width: self.button2View.frame.width + 10,
                                                              height:self.button2View.frame.height + 10
                                                            )
            }
        } else if button1View.frame.intersects(button3View.convert(button3View.frame, from: button3View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button3View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 0.9194174255)
                self.button3View.workingsView.bounds = CGRect(x: self.button3View.frame.minX,
                                                             y: self.button3View.frame.minY,
                                                             width: self.button3View.frame.width + 10,
                                                             height: self.button3View.frame.height + 10
                                                         )
            }
        } else if button1View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button4View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7759985513)
                self.button4View.workingsView.bounds = CGRect(x: self.button4View.frame.minX,
                                                              y: self.button4View.frame.minY,
                                                              width: self.button4View.frame.width + 10,
                                                              height:self.button4View.frame.height + 10
                                                        )
            }
        } else if
            button1View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button5View.workingsView.backgroundColor = #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 0.5004915149)
                self.button5View.workingsView.bounds = CGRect(x: self.button5View.frame.minX,
                                                              y: self.button5View.frame.minY,
                                                              width: self.button5View.frame.width + 10,
                                                              height:self.button5View.frame.height + 10
                                                     )
            }
        } else if button1View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button1View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button6View.workingsView.backgroundColor = #colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 0.5)
                self.button6View.workingsView.bounds = CGRect(x: self.button6View.frame.minX,
                                                              y: self.button6View.frame.minY,
                                                              width: self.button6View.frame.width + 10,
                                                              height:self.button6View.frame.height + 10
                                                     )
            }
        }
    }
    
    @IBAction func pan2Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        if button2View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
                self.button7View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.4468537415, blue: 0.632201318, alpha: 0.9185896109)
                self.button7View.workingsView.bounds = CGRect(x: self.button7View.frame.minX,
                                                              y: self.button7View.frame.minY,
                                                              width: self.button7View.frame.width + 10,
                                                              height: self.button7View.frame.height + 10
                                                    )
            }
        } else if button2View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0.5022247517)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button2View.frame.intersects(button3View.convert(button3View.frame, from: button3View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button3View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.6943824405, blue: 0.4732058644, alpha: 1)
                button3View.workingsView.bounds = CGRect(x: button3View.frame.minX,
                                                         y: button3View.frame.minY,
                                                         width: button3View.frame.width + 10,
                                                         height:button3View.frame.height + 10
                                                         )
            }
        } else if button2View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button4View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
                button4View.workingsView.bounds = CGRect(x: button4View.frame.minX,
                                                         y: button4View.frame.minY,
                                                         width: button4View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button2View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button5View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7582522765)
                button5View.workingsView.bounds = CGRect(x: button5View.frame.minX,
                                                         y: button5View.frame.minY,
                                                         width: button5View.frame.width + 10,
                                                         height:button5View.frame.height + 10
                                                         )
            }
        } else if button2View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button2View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button6View.workingsView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 0.8450693295)
                button6View.workingsView.bounds = CGRect(x: button6View.frame.minX,
                                                         y: button6View.frame.minY,
                                                         width: button6View.frame.width + 10,
                                                         height:button6View.frame.height + 10
                                                         )
            }
        }
    }
    
    @IBAction func pan3Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        
        if button3View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button7View.workingsView.backgroundColor = #colorLiteral(red: 0.9712021947, green: 0.426746428, blue: 0.4723377228, alpha: 1)
                button7View.workingsView.bounds = CGRect(x: button7View.frame.minX,
                                                        y: button7View.frame.minY,
                                                        width: button7View.frame.width + 10,
                                                        height: button7View.frame.height + 10
                                                        )
            }
        } else if button3View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 0.9194174255)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button3View.frame.intersects(button3View.convert(button2View.frame, from: button2View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button2View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.6943824405, blue: 0.4732058644, alpha: 1)
                button2View.workingsView.bounds = CGRect(x: button2View.frame.minX,
                                                         y: button2View.frame.minY,
                                                         width: button2View.frame.width + 10,
                                                         height:button2View.frame.height + 10
                                                         )
            }
        } else if button3View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button4View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
                button4View.workingsView.bounds = CGRect(x: button4View.frame.minX,
                                                         y: button4View.frame.minY,
                                                         width: button4View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button3View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button5View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7582522765)
                button5View.workingsView.bounds = CGRect(x: button5View.frame.minX,
                                                         y: button5View.frame.minY,
                                                         width: button5View.frame.width + 10,
                                                         height:button5View.frame.height + 10
                                                         )
            }
        } else if button3View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button3View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button6View.workingsView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 0.8450693295)
                button6View.workingsView.bounds = CGRect(x: button6View.frame.minX,
                                                         y: button6View.frame.minY,
                                                         width: button6View.frame.width + 10,
                                                         height:button6View.frame.height + 10
                                                         )
            }
        }
    }
    
    @IBAction func pan4Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        if button4View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button7View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 0.8620136589)
                button7View.workingsView.bounds = CGRect(x: button7View.frame.minX,
                                                        y: button7View.frame.minY,
                                                        width: button7View.frame.width + 10,
                                                        height: button7View.frame.height + 10
                                                        )
            }
        } else if button4View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7759985513)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button4View.frame.intersects(button3View.convert(button2View.frame, from: button2View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button2View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
                button2View.workingsView.bounds = CGRect(x: button2View.frame.minX,
                                                         y: button2View.frame.minY,
                                                         width: button2View.frame.width + 10,
                                                         height:button2View.frame.height + 10
                                                         )
            }
        } else if button4View.frame.intersects(button4View.convert(button3View.frame, from: button3View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button3View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
                button3View.workingsView.bounds = CGRect(x: button3View.frame.minX,
                                                         y: button3View.frame.minY,
                                                         width: button3View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button4View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button5View.workingsView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
                button5View.workingsView.bounds = CGRect(x: button5View.frame.minX,
                                                         y: button5View.frame.minY,
                                                         width: button5View.frame.width + 10,
                                                         height:button5View.frame.height + 10
                                                         )
            }
        } else if button4View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button4View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button6View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)
                button6View.workingsView.bounds = CGRect(x: button6View.frame.minX,
                                                         y: button6View.frame.minY,
                                                         width: button6View.frame.width + 10,
                                                         height:button6View.frame.height + 10
                                                         )
            }
        }
    }
        
    @IBAction func pan5Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        if button5View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button7View.workingsView.backgroundColor = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
                button7View.workingsView.bounds = CGRect(x: button7View.frame.minX,
                                                        y: button7View.frame.minY,
                                                        width: button7View.frame.width + 10,
                                                        height: button7View.frame.height + 10
                                                        )
            }
        } else if button5View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 0.5004915149)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button5View.frame.intersects(button3View.convert(button2View.frame, from: button2View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button2View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7582522765)
                button2View.workingsView.bounds = CGRect(x: button2View.frame.minX,
                                                         y: button2View.frame.minY,
                                                         width: button2View.frame.width + 10,
                                                         height:button2View.frame.height + 10
                                                         )
            }
        } else if button5View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button4View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
                button4View.workingsView.bounds = CGRect(x: button4View.frame.minX,
                                                         y: button4View.frame.minY,
                                                         width: button4View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button5View.frame.intersects(button5View.convert(button3View.frame, from: button3View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button3View.workingsView.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 0.7582522765)
                button3View.workingsView.bounds = CGRect(x: button3View.frame.minX,
                                                         y: button3View.frame.minY,
                                                         width: button3View.frame.width + 10,
                                                         height:button3View.frame.height + 10
                                                         )
            }
        } else if button5View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button5View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button6View.workingsView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 0.8450693295)
                button6View.workingsView.bounds = CGRect(x: button6View.frame.minX,
                                                         y: button6View.frame.minY,
                                                         width: button6View.frame.width + 10,
                                                         height:button6View.frame.height + 10
                                                         )
            }
        }
    }
        
    @IBAction func pan6Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        
        if button6View.frame.intersects(button7View.convert(button7View.frame, from: button7View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button7View.workingsView.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 0.9007139901)
                button7View.workingsView.bounds = CGRect(x: button7View.frame.minX,
                                                        y: button7View.frame.minY,
                                                        width: button7View.frame.width + 10,
                                                        height: button7View.frame.height + 10
                                                        )
            }
        } else if button6View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button6View.frame.intersects(button3View.convert(button2View.frame, from: button2View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button2View.workingsView.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)
                button2View.workingsView.bounds = CGRect(x: button2View.frame.minX,
                                                         y: button2View.frame.minY,
                                                         width: button2View.frame.width + 10,
                                                         height:button2View.frame.height + 10
                                                         )
            }
        } else if button6View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button4View.workingsView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
                button4View.workingsView.bounds = CGRect(x: button4View.frame.minX,
                                                         y: button4View.frame.minY,
                                                         width: button4View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button6View.frame.intersects(button5View.convert(button3View.frame, from: button3View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button3View.workingsView.backgroundColor = #colorLiteral(red: 0.4978467822, green: 0.3867216408, blue: 0.1850448251, alpha: 0.9511848096)
                button3View.workingsView.bounds = CGRect(x: button3View.frame.minX,
                                                         y: button3View.frame.minY,
                                                         width: button3View.frame.width + 10,
                                                         height:button3View.frame.height + 10
                                                         )
            }
        } else if button6View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button6View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button5View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
                button5View.workingsView.bounds = CGRect(x: button5View.frame.minX,
                                                         y: button5View.frame.minY,
                                                         width: button5View.frame.width + 10,
                                                         height:button5View.frame.height + 10
                                                         )
            }
        }
    }
    
        
    @IBAction func pan7Action(_ gesture: UIPanGestureRecognizer) {
        
        let gestyreTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestyreTranslation.x,
            y: gestureView.center.y + gestyreTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
        
        
        if button7View.frame.intersects(button5View.convert(button5View.frame, from: button5View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button5View.workingsView.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 0.9007139901)
                button5View.workingsView.bounds = CGRect(x: button5View.frame.minX,
                                                        y: button5View.frame.minY,
                                                        width: button5View.frame.width + 10,
                                                        height: button5View.frame.height + 10
                                                        )
            }
        } else if button7View.frame.intersects(button1View.convert(button1View.frame, from: button1View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button1View.workingsView.backgroundColor = #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 0.5004915149)
                button1View.workingsView.bounds = CGRect(x: button1View.frame.minX,
                                                         y: button1View.frame.minY,
                                                         width: button1View.frame.width + 10,
                                                         height:button1View.frame.height + 10
                                                        )
            }
        } else if button7View.frame.intersects(button3View.convert(button2View.frame, from: button2View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button2View.workingsView.backgroundColor = #colorLiteral(red: 1, green: 0.4468537415, blue: 0.632201318, alpha: 0.9185896109)
                button2View.workingsView.bounds = CGRect(x: button2View.frame.minX,
                                                         y: button2View.frame.minY,
                                                         width: button2View.frame.width + 10,
                                                         height:button2View.frame.height + 10
                                                         )
            }
            
        } else if button7View.frame.intersects(button4View.convert(button4View.frame, from: button4View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button4View.workingsView.backgroundColor = #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 0.8620136589)
                button4View.workingsView.bounds = CGRect(x: button4View.frame.minX,
                                                         y: button4View.frame.minY,
                                                         width: button4View.frame.width + 10,
                                                         height:button4View.frame.height + 10
                                                        )
            }
        } else if
            button7View.frame.intersects(button5View.convert(button3View.frame, from: button3View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button3View.workingsView.backgroundColor = #colorLiteral(red: 0.9712021947, green: 0.426746428, blue: 0.4723377228, alpha: 1)
                button3View.workingsView.bounds = CGRect(x: button3View.frame.minX,
                                                         y: button3View.frame.minY,
                                                         width: button3View.frame.width + 10,
                                                         height:button3View.frame.height + 10
                                                         )
            }
        } else if button7View.frame.intersects(button6View.convert(button6View.frame, from: button6View)) {
            button7View.isHidden = true
            UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) { [self] in
                button6View.workingsView.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 0.9007139901)
                button6View.workingsView.bounds = CGRect(x: button6View.frame.minX,
                                                         y: button6View.frame.minY,
                                                         width: button6View.frame.width + 10,
                                                         height:button6View.frame.height + 10
                                                         )
            }
        }
    }
}
