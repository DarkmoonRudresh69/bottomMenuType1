import UIKit


class SearchViewController1: UIViewController {
    
    var isSearchViewVisible: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var bottomSheet: UIView!
    @IBOutlet var searchView: UIView!
   
    @IBAction func searchViewAct(_ sender: Any) {
        animatBottomSheet()
    }
    
    @IBAction func closeSearch(_ sender: Any) {
        animatBottomSheet()
    }
    
    private func animatBottomSheet() {
        searchView.frame = CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight)
        
        self.view.addSubview(searchView)
        
        if !isSearchViewVisible {
            bottomSheet.frame = CGRect(x: 0, y: viewHeight, width: viewWidth, height: viewHeight)
        }
        
        let finalPos: CGFloat
        let animatduration: TimeInterval = 0.5
        
        if isSearchViewVisible {
            finalPos = CGFloat(viewHeight)
        }
        else {
            finalPos = CGFloat(viewHeight)  - bottomSheet.frame.height
        }
        
        UIView.animate(withDuration: animatduration, delay: 0, options: [.curveEaseInOut] , animations: {
            self.bottomSheet.frame.origin.y = finalPos
        },completion: { _ in
            
            if self.isSearchViewVisible {
                self.searchView.removeFromSuperview()
            }
            self.isSearchViewVisible.toggle()
        })
        
        
    }
}
