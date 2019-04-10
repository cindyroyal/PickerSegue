# PickerSegue
Example changing View Controllers with PickerView

The key is to create segues from the ViewController via the View Controller button, and then using the Attributes inspector to give them a name under identity. Then you use that name in performSegue(withIdentifier: "YourSegueNam", sender: self)  and use that where you want to... in an if statement, etc.

This example shows working code for this to execute on a button, but there is also a commented section for the Picker's didSelectRow function that can be uncommented and used, if you prefer that functionality (change on picker change).
