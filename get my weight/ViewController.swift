
import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    var gender = ["male","female"]
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var yourbest: UILabel!
    @IBOutlet weak var agetxt: UITextField!
    @IBOutlet weak var heighttxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBOutlet weak var selectedgender: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    var gender2 = 0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        

        gender2 = row
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedgender.text = gender[row]
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


    @IBAction func getweight(_ sender: Any) {
    
    
    
        let age:Int = Int(agetxt.text!)!
        let height:Int = Int(heighttxt.text!)!
        
        var yourbestweight = height*10 - (age/5)
        
        if gender2 == 0 {
            
        
            yourbestweight+=10
        }
        else
        
        {
            yourbestweight-=10
        }
    
        yourbest.text = "best weight \(yourbestweight)"
        
    }

}







