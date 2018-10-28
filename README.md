# SwiftScanQrView
SwiftScanBarecodeView use the iOS Vision API and the camera to detect barcode/QRCode etc in realtime

ScanView is a custom view controller that you can attach to any class to transform your view to a barcode/qrcode scanner.

## how to use the ScanView.

```
class ViewController: ScanView, ScanViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // get the scan view results
    func ScanResult(ScanValue: String) {
        let alert = UIAlertController(title: "Scan value", message: ScanValue, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }


}
```

- Attach the ScanView View controller to any of you view class.
- Add ScanViewDelegate
- set de delegate to self

```
delegate = self
```


You should get the result of your scanning session using this delegate function.
```
func ScanResult(ScanValue: String)
```


ScanView also comes with some built in camera method like enabling or desabling the flash.
do ` turnFlashOn() ` to turn the flash on and `turnFlashOff()` to turn the flash off



