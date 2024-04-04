# Back-Data-Passing-using-Delegate-and-Protocol
In our project, we will have two view controllers. From initial view controller on a button click we will transition to other view controller. In the other view controller we will have data to be passed onto the initial view controller. The data will be passed to the initial view controller on a button click using delegate and protocol.<br><br>
Explanation<br>
-When the segue with the identifier "getDataSegue" is triggered, prepare(for:sender:) method is called.<br>
-Inside this method, the delegate property of the SecondViewController is set to self, meaning the FirstViewController instance.<br>
-When the "sendDataButtonClicked(_:)” method is called in SecondViewController, it checks if the delegate is set and sends the data to the delegate (FirstViewController).<br>
-FirstViewController implements the delegate method sendDataToFirstViewController(myData:) to receive the data and update the label with it.
