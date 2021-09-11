//
//  Extensions.swift
//  Instakilo
//
//  Created by Gilbert Nicholas on 11/09/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
