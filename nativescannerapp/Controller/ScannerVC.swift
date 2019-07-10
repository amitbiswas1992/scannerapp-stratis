//
//  ScannerVC.swift
//  nativescannerapp
//
//  Created by User on 07/07/2019.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit
import ScanditBarcodeScanner

protocol DataSentDelegate {
    func userDidEnterData(email: String, packageName: String)
}


class ScannerVC: UIViewController {
    
    var delegate: DataSentDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        setupScanner()
    }
    
    private func setupScanner() {
        // Scandit Barcode Scanner Integration
        // The following method calls illustrate how the Scandit Barcode Scanner can be integrated
        // into your app.
        
        // Create the scan settings and enabling some symbologies
        let settings = SBSScanSettings.default()
        let symbologies: Set<SBSSymbology> = [.ean8, .ean13, .qr]
        for symbology in symbologies {
            settings.setSymbology(symbology, enabled: true)
        }
        
        // Create the barcode picker with the settings just created
        let barcodePicker = SBSBarcodePicker(settings:settings)
        
        // Add the barcode picker as a child view controller
        addChild(barcodePicker)
        view.addSubview(barcodePicker.view)
        barcodePicker.didMove(toParent: self)
        
        // Set the allowed interface orientations. The value UIInterfaceOrientationMaskAll is the
        // default and is only shown here for completeness.
        barcodePicker.allowedInterfaceOrientations = .all
        // Set the delegate to receive scan event callbacks
        barcodePicker.scanDelegate = self
        barcodePicker.startScanning()
    }

}

extension ScannerVC: SBSScanDelegate {
    // This delegate method of the SBSScanDelegate protocol needs to be implemented by
    // every app that uses the Scandit Barcode Scanner and this is where the custom application logic
    // goes. In the example below, we are just showing an alert view with the result.
    func barcodePicker(_ picker: SBSBarcodePicker, didScan session: SBSScanSession) {
        // Call pauseScanning on the session (and on the session queue) to immediately pause scanning
        // and close the camera. This is the preferred way to pause scanning barcodes from the
        // SBSScanDelegate as it is made sure that no new codes are scanned.
        // When calling pauseScanning on the picker, another code may be scanned before pauseScanning
        // has completely paused the scanning process.
        session.pauseScanning()
        
        let code = session.newlyRecognizedCodes[0]
        // The barcodePicker(_:didScan:) delegate method is invoked from a picker-internal queue. To
        // display the results in the UI, you need to dispatch to the main queue. Note that it's not
        // allowed to use SBSScanSession in the dispatched block as it's only allowed to access the
        // SBSScanSession inside the barcodePicker(_:didScan:) callback. It is however safe to
        // use results returned by session.newlyRecognizedCodes etc.
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Scanned code \(code.symbologyName)",
                message: code.data,
                preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { _ in
                
           
                //Create Model object DeliveryDestinations
                //add that object to previous view with delegate
                  self.delegate?.userDidEnterData(email: "Email or Phone number", packageName: code.data ?? "7893637357")
                
                  //self.dismiss(animated: true, completion: nil)
                self.navigationController?.popViewController(animated: true)
                
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
}
