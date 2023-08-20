//
//  KeychainRepository.swift
//  Domain
//
//  Created by 현수빈 on 2023/08/20.
//

import Foundation

protocol KeyChainRepositoryProtocol {
    func addValueOnKeyChain(value: String, key: String)
    func updateValueOnKeyChain(value: String, key: String)
    func readValueOnKeyChain(key: String) -> String?
    func deleteValueOnKeyChain(key: String)
}

class KeyChainRepository: KeyChainRepositoryProtocol {
    
    func addValueOnKeyChain(value: String, key: String) {
        let data = value.data(using: String.Encoding.utf8)!
        let query: [CFString: Any] = [kSecClass: kSecClassGenericPassword,
                                    kSecAttrAccount: key,
                                    kSecValueData: data]
        let status = SecItemAdd(query as CFDictionary, nil)
        if status == errSecSuccess {
        } else if status == errSecDuplicateItem {
            updateValueOnKeyChain(value: value, key: key)
        } else {
        }
    }
        
    func updateValueOnKeyChain(value: String, key: String) {
        let data = value.data(using: String.Encoding.utf8)!
        let previousQuery: [CFString: Any] = [kSecClass: kSecClassGenericPassword,
                                              kSecAttrAccount: key]
        let updateQuery: [CFString: Any] = [kSecValueData: data]
        let status = SecItemUpdate(previousQuery as CFDictionary, updateQuery as CFDictionary)
        if status != errSecSuccess {
            self.updateValueOnKeyChain(value2: value, key: key)
        }
    }
    func updateValueOnKeyChain(value2: String, key: String) {
        self.deleteValueOnKeyChain(key: key)
        self.addValueOnKeyChain(value: value2, key: key)
    }
    
    func readValueOnKeyChain(key: String) -> String? {
        let query: [CFString: Any] = [kSecClass: kSecClassGenericPassword,
                                    kSecAttrAccount: key,
                                    kSecReturnAttributes: true,
                                    kSecReturnData: true]
        var item: CFTypeRef?
        if SecItemCopyMatching(query as CFDictionary, &item) != errSecSuccess {
            return nil
        }
        guard let existingItem = item as? [String: Any] else { return nil }
        guard let data = existingItem[kSecValueData as String] as? Data else { return nil}
        guard let keyChain = String(data: data, encoding: .utf8) else { return nil }
        return keyChain
    }
    
    func deleteValueOnKeyChain(key: String) {
        let deleteQuery: [CFString: Any] = [kSecClass: kSecClassGenericPassword,
                                            kSecAttrAccount: key]
        let status = SecItemDelete(deleteQuery as CFDictionary)
    }

}
