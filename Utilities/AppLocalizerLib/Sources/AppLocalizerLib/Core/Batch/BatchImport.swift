//
//  BatchImport.swift
//  AppLocalizerLib
//

import Foundation

struct BatchImport {
    static var shared = BatchImport() 
    
    // Data Processors 
    var _jsonProcessor: JsonFromTsvProcessor!  // key_apple    
    var _tsvImportSheet: TsvSheet!
    var _xliffProcessor: XliffFromTsvProcessor!
    var _xmlProcessor: XmlFromTsvProcessor!
    
    mutating func clearAll() {
        _jsonProcessor = nil    
        _tsvImportSheet = nil
        _xliffProcessor = nil
        _xmlProcessor = nil
    }
    
    mutating func doImport(
        inputTSV: [URL], 
        outputAndroid: URL?, 
        outputApple: URL?
    ) {
        print("""
        ### DO_IMPORT_TSV doImport() ###
               inputTSV = \(inputTSV)
          outputAndroid = \(outputAndroid?.absoluteString ?? "nil")
            outputApple = \(outputApple?.absoluteString ?? "nil")
        """)
        
        // 1. TSV Input File
        _tsvImportSheet = TsvSheet(urlList: inputTSV, loglevel: .info)
        
        // 2. Process Apple JSON Files
        if let appleXmlUrl = outputApple {
            _jsonProcessor = JsonFromTsvProcessor(xliffUrl: appleXmlUrl)
            _jsonProcessor.processTsvToJson(lookupTable: _tsvImportSheet.getLookupDictApple())
            _jsonProcessor.writeJsonFiles()
        }
        
        // 3. Process Apple XLIFF XMLDocument
        if 
            let appleXmlUrl = outputApple,
            let appleXmlDocument = try? XMLDocument(contentsOf: appleXmlUrl, options: [.nodePreserveAll]),
            let appleRootXMLElement: XMLElement = appleXmlDocument.rootElement() {
            _xliffProcessor = XliffFromTsvProcessor(lookupTable: _tsvImportSheet.getLookupDictApple())
            _xliffProcessor.processXliffFromTsv(
                appleXmlUrl: appleXmlUrl, 
                appleXmlDocument: appleXmlDocument, 
                appleRootXMLElement: appleRootXMLElement
            )
            // file writing included in `processXliffFromTsv(…)`
        }
        
        // 4. Process Android XML File
        if 
            let droidXmlUrl = outputAndroid,
            let droidXmlDocument = try? XMLDocument(contentsOf: droidXmlUrl, options: [.nodePreserveAll, .nodePreserveWhitespace]) {
            droidXmlDocument.version = nil // remove <?xml version="1.0"?> from output
            _xmlProcessor = XmlFromTsvProcessor(lookupTable: _tsvImportSheet.getLookupDictAndroid())
            _xmlProcessor.processXmlFromTsv(
                droidXmlUrl: droidXmlUrl, 
                droidXmlDocument: droidXmlDocument
            )
            // file writing included in `processXmlFromTsv(…)`
        }
                
        // 5. Write Report
        Reporter.shared.writeReport(batchImport: self)
        Reporter.shared.writeReport(batchImport: self, verbose: true)
    }
    
}
