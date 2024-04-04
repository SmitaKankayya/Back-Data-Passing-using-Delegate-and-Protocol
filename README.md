# Back-Data-Passing-using-Delegate-and-Protocol
In this project, we will be building a basic iOS app to pass data from one view controller to another using delegate and protocol on a button click.<br><br>
Explanation<br>
-When the segue with the identifier "getDataSegue" is triggered, prepare(for:sender:) method is called.<br>
-Inside this method, the delegate property of the SecondViewController is set to self, meaning the FirstViewController instance.<br>
-When the "sendDataButtonClicked(_:)” method is called in SecondViewController, it checks if the delegate is set and sends the data to the delegate (FirstViewController).<br>
-FirstViewController implements the delegate method sendDataToFirstViewController(myData:) to receive the data and update the label with it.
