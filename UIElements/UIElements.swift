//
//  UIFunction.swift
//  NLGIC Swift
//
//  Created by Ankit Goyal on 02/02/2017.
//  Copyright © 2017 Applify Tech Pvt Ltd. All rights reserved.
//

import UIKit
import CoreTelephony
import Toaster

class UIFunction: NSObject
{
    // MARK:
    // MARK: Button
    class func createButton(frame : CGRect, bckgroundColor : UIColor?, image : UIImage?, title : NSString?, font : UIFont?, titleColor:UIColor? ) -> UIButton
    {
        let button : UIButton = UIButton.init(type: .roundedRect)
        button.backgroundColor = bckgroundColor
        button.frame = frame
        button.isExclusiveTouch = true
        button.setTitle(title! as String, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setBackgroundImage(image, for: .normal)
        button.titleLabel?.font = font
        return button
    }

    
    // MARK:
    // MARK: Label
    class func createLable(frame:CGRect, bckgroundColor : UIColor?, title : NSString?, font : UIFont?, titleColor:UIColor?) -> UILabel
    {
        let label : UILabel = UILabel.init(frame: frame)
        label.backgroundColor = bckgroundColor
        label.text = title as String?
        label.textColor = titleColor
        label.font = font;
        return label
    }
    
    // MARK:
    // MARK: UIImageView
    class func createUIImageView(frame:CGRect, bckgroundColor : UIColor?, image : UIImage?) -> UIImageView
    {
        let imageView : UIImageView = UIImageView.init(frame: frame)
        imageView.image = image
        imageView.backgroundColor = bckgroundColor
        return imageView
    }

    // MARK:
    // MARK: Validate Email
    class func validateEmail (checkString : NSString) -> Bool
    {
        var stricterFilter : Bool = false
        let emailRegex : NSString = "[A-Z0-9a-z._%+]+@[A-Za-z0-9.]+\\.[A-Za-z]{2,4}"
        let emailTest : NSPredicate = NSPredicate(format: "ELF MATCHES %@",emailRegex)
        stricterFilter = emailTest.evaluate(with: checkString)
        return stricterFilter
    }
    
    // MARK:
    // MARK: Create Header
    class func createHeader (frame:CGRect, bckgroundColor : UIColor?) -> UIView
    {
        let headerView : UIView = UIView.init(frame: frame)
        headerView.backgroundColor = bckgroundColor;
        headerView.layer.masksToBounds = false;
        headerView.layer.shadowColor = UIColor.gray.cgColor;
        headerView.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(1.0));
        headerView.layer.shadowOpacity = 1.0;
        headerView.layer.shadowRadius = 2.0;
        return headerView;
    }
    
    // MARK:
    // MARK: Create UIView
    class func createUIViews (frame:CGRect, bckgroundColor : UIColor?) -> UIView
    {
        let backGroundView : UIView = UIView.init(frame: frame)
        backGroundView.backgroundColor = bckgroundColor;
        return backGroundView;
    }
    
    // MARK:
    // MARK: Create TextField
    class func createTextField (frame:CGRect, font : UIFont?, placeholder : NSString?) -> UITextField
    {
        let textField : UITextField = UITextField.init(frame: frame)
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 12.0)
        textField.keyboardType = .default
        textField.returnKeyType = .done
        textField.contentVerticalAlignment = .center
        textField.contentHorizontalAlignment = .center
        textField.isSecureTextEntry = false
        textField.placeholder = placeholder as String?
        textField.clearButtonMode = .whileEditing
        textField.textColor = UIColor.black
        textField.leftViewMode = .always
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor.clear
        return textField;
    }

    
    // MARK:
    // MARK: Create UIAlertView
    class func createActivityIndicatorView (frame:CGRect, bckgroundColor : UIColor?) -> UIActivityIndicatorView
    {
        let activityIndicator : UIActivityIndicatorView = UIActivityIndicatorView.init(frame: frame)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = bckgroundColor
        return activityIndicator;
    }
    
    // MARK:
    // MARK: Detect Country Code
    class func autoDetectCountryCode () -> NSString
    {
        let countryCode : NSString
        let network_Info = CTTelephonyNetworkInfo()
        let carrier = network_Info.subscriberCellularProvider
        let isdCode = carrier?.isoCountryCode?.uppercased()
        
        var dictCodes: [AnyHashable: Any] = [
            "AF" : "93",
            "AL" : "355",
            "DZ" : "213",
            "AS" : "1",
            "AD" : "376",
            "AO" : "244",
            "AI" : "1",
            "AG" : "1",
            "AR" : "54",
            "AM" : "374",
            "AW" : "297",
            "AU" : "61",
            "AT" : "43",
            "AZ" : "994",
            "BS" : "1",
            "BH" : "973",
            "BD" : "880",
            "BB" : "1",
            "BY" : "375",
            "BE" : "32",
            "BZ" : "501",
            "BJ" : "229",
            "BM" : "1",
            "BT" : "975",
            "BA" : "387",
            "BW" : "267",
            "BR" : "55",
            "IO" : "246",
            "BG" : "359",
            "BF" : "226",
            "BI" : "257",
            "KH" : "855",
            "CM" : "237",
            "CA" : "1",
            "CV" : "238",
            "KY" : "345",
            "CF" : "236",
            "TD" : "235",
            "CL" : "56",
            "CN" : "86",
            "CX" : "61",
            "CO" : "57",
            "KM" : "269",
            "CG" : "242",
            "CK" : "682",
            "CR" : "506",
            "HR" : "385",
            "CU" : "53",
            "CY" : "537",
            "CZ" : "420",
            "DK" : "45",
            "DJ" : "253",
            "DM" : "1",
            "DO" : "1",
            "EC" : "593",
            "EG" : "20",
            "SV" : "503",
            "GQ" : "240",
            "ER" : "291",
            "EE" : "372",
            "ET" : "251",
            "FO" : "298",
            "FJ" : "679",
            "FI" : "358",
            "FR" : "33",
            "GF" : "594",
            "PF" : "689",
            "GA" : "241",
            "GM" : "220",
            "GE" : "995",
            "DE" : "49",
            "GH" : "233",
            "GI" : "350",
            "GR" : "30",
            "GL" : "299",
            "GD" : "1",
            "GP" : "590",
            "GU" : "1",
            "GT" : "502",
            "GN" : "224",
            "GW" : "245",
            "GY" : "595",
            "HT" : "509",
            "HN" : "504",
            "HU" : "36",
            "IS" : "354",
            "IN" : "91",
            "ID" : "62",
            "IQ" : "964",
            "IE" : "353",
            "IL" : "972",
            "IT" : "39",
            "JM" : "1",
            "JP" : "81",
            "JO" : "962",
            "KZ" : "77",
            "KE" : "254",
            "KI" : "686",
            "KW" : "965",
            "KG" : "996",
            "LV" : "371",
            "LB" : "961",
            "LS" : "266",
            "LR" : "231",
            "LI" : "423",
            "LT" : "370",
            "LU" : "352",
            "MG" : "261",
            "MW" : "265",
            "MY" : "60",
            "MV" : "960",
            "ML" : "223",
            "MT" : "356",
            "MH" : "692",
            "MQ" : "596",
            "MR" : "222",
            "MU" : "230",
            "YT" : "262",
            "MX" : "52",
            "MC" : "377",
            "MN" : "976",
            "ME" : "382",
            "MS" : "1",
            "MA" : "212",
            "MM" : "95",
            "NA" : "264",
            "NR" : "674",
            "NP" : "977",
            "NL" : "31",
            "AN" : "599",
            "NC" : "687",
            "NZ" : "64",
            "NI" : "505",
            "NE" : "227",
            "NG" : "234",
            "NU" : "683",
            "NF" : "672",
            "MP" : "1",
            "NO" : "47",
            "OM" : "968",
            "PK" : "92",
            "PW" : "680",
            "PA" : "507",
            "PG" : "675",
            "PY" : "595",
            "PE" : "51",
            "PH" : "63",
            "PL" : "48",
            "PT" : "351",
            "PR" : "1",
            "QA" : "974",
            "RO" : "40",
            "RW" : "250",
            "WS" : "685",
            "SM" : "378",
            "SA" : "966",
            "SN" : "221",
            "RS" : "381",
            "SC" : "248",
            "SL" : "232",
            "SG" : "65",
            "SK" : "421",
            "SI" : "386",
            "SB" : "677",
            "ZA" : "27",
            "GS" : "500",
            "ES" : "34",
            "LK" : "94",
            "SD" : "249",
            "SR" : "597",
            "SZ" : "268",
            "SE" : "46",
            "CH" : "41",
            "TJ" : "992",
            "TH" : "66",
            "TG" : "228",
            "TK" : "690",
            "TO" : "676",
            "TT" : "1",
            "TN" : "216",
            "TR" : "90",
            "TM" : "993",
            "TC" : "1",
            "TV" : "688",
            "UG" : "256",
            "UA" : "380",
            "AE" : "971",
            "GB" : "44",
            "US" : "1",
            "UY" : "598",
            "UZ" : "998",
            "VU" : "678",
            "WF" : "681",
            "YE" : "967",
            "ZM" : "260",
            "ZW" : "263",
            "BO" : "591",
            "BN" : "673",
            "CC" : "61",
            "CD" : "243",
            "CI" : "225",
            "FK" : "500",
            "GG" : "44",
            "VA" : "379",
            "HK" : "852",
            "IR" : "98",
            "IM" : "44",
            "JE" : "44",
            "KP" : "850",
            "KR" : "82",
            "LA" : "856",
            "LY" : "218",
            "MO" : "853",
            "MK" : "389",
            "FM" : "691",
            "MD" : "373",
            "MZ" : "258",
            "PS" : "970",
            "PN" : "872",
            "RE" : "262",
            "RU" : "7",
            "BL" : "590",
            "SH" : "290",
            "KN" : "1",
            "LC" : "1",
            "MF" : "590",
            "PM" : "508",
            "VC" : "1",
            "ST" : "239",
            "SO" : "252",
            "SJ" : "47",
            "SY" : "963",
            "TW" : "886",
            "TZ" : "255",
            "TL" : "670",
            "VE" : "58",
            "VN" : "84",
            "VG" : "1",
            "VI" : "1"
        ]

        if isdCode == nil
        {
            return ""
        }
        else
        {
            let simCode = (dictCodes[isdCode!] as! String)
            print("callingCode Code is \(simCode)")
            countryCode = simCode as NSString
            return countryCode
        }
    }
    
    // MARK:
    // MARK: Get Country Name From Country Code
    class func getCountryNameFromCountryCode (countryCode : NSString) -> NSString
    {
        let codes: NSMutableDictionary =  ["Abkhazia": "+7840", "Afghanistan": "+93", "Albania": "+355", "Algeria": "+213", "American Samoa": "+1684", "Andorra": "+376", "Angola": "+244", "Anguilla": "+1264", "Antigua and Barbuda": "+1268", "Argentina": "+54", "Armenia": "+374", "Aruba": "+297", "Ascension": "+247", "Australia": "+61", "Australian External Territories": "+672", "Austria": "+43", "Azerbaijan": "+994", "Bahamas": "+1242", "Bahrain": "+973", "Bangladesh": "+880", "Barbados": "+1246", "Barbuda": "+1268", "Belarus": "+375", "Belgium": "+32", "Belize": "+501", "Benin": "+229", "Bermuda": "+1441", "Bhutan": "+975", "Bolivia": "+591", "Bosnia and Herzegovina": "+387", "Botswana": "+267", "Brazil": "+55", "British Indian Ocean Territory": "+246", "British Virgin Islands": "+1284", "Brunei": "+673", "Bulgaria": "+359", "Burkina Faso": "+226", "Burundi": "+257", "Cambodia": "+855", "Cameroon": "+237", "Canada": "+1", "Cape Verde": "+238", "Cayman Islands": "+345", "Central African Republic": "+236", "Chad": "+235", "Chile": "+56", "China": "+86", "Christmas Island": "+61", "Cocos-Keeling Islands": "+61", "Colombia": "+57", "Comoros": "+269", "Congo": "+242", "Congo, Dem. Rep. of (Zaire)": "+243", "Cook Islands": "+682", "Costa Rica": "+506", "Ivory Coast": "+225", "Croatia": "+385", "Cuba": "+53", "Curacao": "+599", "Cyprus": "+537", "Czech Republic": "+420", "Denmark": "+45", "Diego Garcia": "+246", "Djibouti": "+253", "Dominica": "+1767", "Dominican Republic": "+1809", "Dominican Republic": "+1829", "Dominican Republic": "+1849", "East Timor": "+670", "Easter Island": "+56", "Ecuador": "+593", "Egypt": "+20", "El Salvador": "+503", "Equatorial Guinea": "+240", "Eritrea": "+291", "Estonia": "+372", "Ethiopia": "+251", "Falkland Islands": "+500", "Faroe Islands": "+298", "Fiji": "+679", "Finland": "+358", "France": "+33", "French Antilles": "+596", "French Guiana": "+594", "French Polynesia": "+689", "Gabon": "+241", "Gambia": "+220", "Georgia": "+995", "Germany": "+49", "Ghana": "+233", "Gibraltar": "+350", "Greece": "+30", "Greenland": "+299", "Grenada": "+1473", "Guadeloupe": "+590", "Guam": "+1671", "Guatemala": "+502", "Guinea": "+224", "Guinea-Bissau": "+245", "Guyana": "+595", "Haiti": "+509", "Honduras": "+504", "Hong Kong SAR China": "+852", "Hungary": "+36", "Iceland": "+354", "India": "+91", "Indonesia": "+62", "Iran": "+98", "Iraq": "+964", "Ireland": "+353", "Israel": "+972", "Italy": "+39", "Jamaica": "+1876", "Japan": "+81", "Jordan": "+962", "Kazakhstan": "+77", "Kenya": "+254", "Kiribati": "+686", "North Korea": "+850", "South Korea": "+82", "Kuwait": "+965", "Kyrgyzstan": "+996", "Laos": "+856", "Latvia": "+371", "Lebanon": "+961", "Lesotho": "+266", "Liberia": "+231", "Libya": "+218", "Liechtenstein": "+423", "Lithuania": "+370", "Luxembourg": "+352", "Macau SAR China": "+853", "Macedonia": "+389", "Madagascar": "+261", "Malawi": "+265", "Malaysia": "+60", "Maldives": "+960", "Mali": "+223", "Malta": "+356", "Marshall Islands": "+692", "Martinique": "+596", "Mauritania": "+222", "Mauritius": "+230", "Mayotte": "+262", "Mexico": "+52", "Micronesia": "+691", "Midway Island": "+1808", "Micronesia": "+691", "Moldova": "+373", "Monaco": "+377", "Mongolia": "+976", "Montenegro": "+382", "Montserrat": "+1664", "Morocco": "+212", "Myanmar": "+95", "Namibia": "+264", "Nauru": "+674", "Nepal": "+977", "Netherlands": "+31", "Netherlands Antilles": "+599", "Nevis": "+1869", "New Caledonia": "+687", "New Zealand": "+64", "Nicaragua": "+505", "Niger": "+227", "Nigeria": "+234", "Niue": "+683", "Norfolk Island": "+672", "Northern Mariana Islands": "+1670", "Norway": "+47", "Oman": "+968", "Pakistan": "+92", "Palau": "+680", "Palestinian Territory": "+970", "Panama": "+507", "Papua New Guinea": "+675", "Paraguay": "+595", "Peru": "+51", "Philippines": "+63", "Poland": "+48", "Portugal": "+351", "Puerto Rico": "+1787", "Puerto Rico": "+1939", "Qatar": "+974", "Reunion": "+262", "Romania": "+40", "Russia": "+7", "Rwanda": "+250", "Samoa": "+685", "San Marino": "+378", "Saudi Arabia": "+966", "Senegal": "+221", "Serbia": "+381", "Seychelles": "+248", "Sierra Leone": "+232", "Singapore": "+65", "Slovakia": "+421", "Slovenia": "+386", "Solomon Islands": "+677", "South Africa": "+27", "South Georgia and the South Sandwich Islands": "+500", "Spain": "+34", "Sri Lanka": "+94", "Sudan": "+249", "Suriname": "+597", "Swaziland": "+268", "Sweden": "+46", "Switzerland": "+41", "Syria": "+963", "Taiwan": "+886", "Tajikistan": "+992", "Tanzania": "+255", "Thailand": "+66", "Timor Leste": "+670", "Togo": "+228", "Tokelau": "+690", "Tonga": "+676", "Trinidad and Tobago": "+1868", "Tunisia": "+216", "Turkey": "+90", "Turkmenistan": "+993", "Turks and Caicos Islands": "+1649", "Tuvalu": "+688", "Uganda": "+256", "Ukraine": "+380", "United Arab Emirates": "+971", "United Kingdom": "+44", "United States": "+1", "Uruguay": "+598", "U.S. Virgin Islands": "+1340", "Uzbekistan": "+998", "Vanuatu": "+678", "Venezuela": "+58", "Vietnam": "+84", "Wake Island": "+1808", "Wallis and Futuna": "+681", "Yemen": "+967", "Zambia": "+260", "Zanzibar": "+255", "Zimbabwe": "+263"]
        
        
        var temp : NSArray = NSArray()
        temp = codes.allKeys as NSArray
        let key : NSString = temp.value(forKey: countryCode as String) as! NSString
        return key
    }
    
    
    class func getAllCountries_Name () -> NSMutableArray
    {
        let codes: NSMutableDictionary =  ["Abkhazia": "+7840", "Afghanistan": "+93", "Albania": "+355", "Algeria": "+213", "American Samoa": "+1684", "Andorra": "+376", "Angola": "+244", "Anguilla": "+1264", "Antigua and Barbuda": "+1268", "Argentina": "+54", "Armenia": "+374", "Aruba": "+297", "Ascension": "+247", "Australia": "+61", "Australian External Territories": "+672", "Austria": "+43", "Azerbaijan": "+994", "Bahamas": "+1242", "Bahrain": "+973", "Bangladesh": "+880", "Barbados": "+1246", "Barbuda": "+1268", "Belarus": "+375", "Belgium": "+32", "Belize": "+501", "Benin": "+229", "Bermuda": "+1441", "Bhutan": "+975", "Bolivia": "+591", "Bosnia and Herzegovina": "+387", "Botswana": "+267", "Brazil": "+55", "British Indian Ocean Territory": "+246", "British Virgin Islands": "+1284", "Brunei": "+673", "Bulgaria": "+359", "Burkina Faso": "+226", "Burundi": "+257", "Cambodia": "+855", "Cameroon": "+237", "Canada": "+1", "Cape Verde": "+238", "Cayman Islands": "+345", "Central African Republic": "+236", "Chad": "+235", "Chile": "+56", "China": "+86", "Christmas Island": "+61", "Cocos-Keeling Islands": "+61", "Colombia": "+57", "Comoros": "+269", "Congo": "+242", "Congo, Dem. Rep. of (Zaire)": "+243", "Cook Islands": "+682", "Costa Rica": "+506", "Ivory Coast": "+225", "Croatia": "+385", "Cuba": "+53", "Curacao": "+599", "Cyprus": "+537", "Czech Republic": "+420", "Denmark": "+45", "Diego Garcia": "+246", "Djibouti": "+253", "Dominica": "+1767", "Dominican Republic": "+1809", "Dominican Republic": "+1829", "Dominican Republic": "+1849", "East Timor": "+670", "Easter Island": "+56", "Ecuador": "+593", "Egypt": "+20", "El Salvador": "+503", "Equatorial Guinea": "+240", "Eritrea": "+291", "Estonia": "+372", "Ethiopia": "+251", "Falkland Islands": "+500", "Faroe Islands": "+298", "Fiji": "+679", "Finland": "+358", "France": "+33", "French Antilles": "+596", "French Guiana": "+594", "French Polynesia": "+689", "Gabon": "+241", "Gambia": "+220", "Georgia": "+995", "Germany": "+49", "Ghana": "+233", "Gibraltar": "+350", "Greece": "+30", "Greenland": "+299", "Grenada": "+1473", "Guadeloupe": "+590", "Guam": "+1671", "Guatemala": "+502", "Guinea": "+224", "Guinea-Bissau": "+245", "Guyana": "+595", "Haiti": "+509", "Honduras": "+504", "Hong Kong SAR China": "+852", "Hungary": "+36", "Iceland": "+354", "India": "+91", "Indonesia": "+62", "Iran": "+98", "Iraq": "+964", "Ireland": "+353", "Israel": "+972", "Italy": "+39", "Jamaica": "+1876", "Japan": "+81", "Jordan": "+962", "Kazakhstan": "+77", "Kenya": "+254", "Kiribati": "+686", "North Korea": "+850", "South Korea": "+82", "Kuwait": "+965", "Kyrgyzstan": "+996", "Laos": "+856", "Latvia": "+371", "Lebanon": "+961", "Lesotho": "+266", "Liberia": "+231", "Libya": "+218", "Liechtenstein": "+423", "Lithuania": "+370", "Luxembourg": "+352", "Macau SAR China": "+853", "Macedonia": "+389", "Madagascar": "+261", "Malawi": "+265", "Malaysia": "+60", "Maldives": "+960", "Mali": "+223", "Malta": "+356", "Marshall Islands": "+692", "Martinique": "+596", "Mauritania": "+222", "Mauritius": "+230", "Mayotte": "+262", "Mexico": "+52", "Micronesia": "+691", "Midway Island": "+1808", "Micronesia": "+691", "Moldova": "+373", "Monaco": "+377", "Mongolia": "+976", "Montenegro": "+382", "Montserrat": "+1664", "Morocco": "+212", "Myanmar": "+95", "Namibia": "+264", "Nauru": "+674", "Nepal": "+977", "Netherlands": "+31", "Netherlands Antilles": "+599", "Nevis": "+1869", "New Caledonia": "+687", "New Zealand": "+64", "Nicaragua": "+505", "Niger": "+227", "Nigeria": "+234", "Niue": "+683", "Norfolk Island": "+672", "Northern Mariana Islands": "+1670", "Norway": "+47", "Oman": "+968", "Pakistan": "+92", "Palau": "+680", "Palestinian Territory": "+970", "Panama": "+507", "Papua New Guinea": "+675", "Paraguay": "+595", "Peru": "+51", "Philippines": "+63", "Poland": "+48", "Portugal": "+351", "Puerto Rico": "+1787", "Puerto Rico": "+1939", "Qatar": "+974", "Reunion": "+262", "Romania": "+40", "Russia": "+7", "Rwanda": "+250", "Samoa": "+685", "San Marino": "+378", "Saudi Arabia": "+966", "Senegal": "+221", "Serbia": "+381", "Seychelles": "+248", "Sierra Leone": "+232", "Singapore": "+65", "Slovakia": "+421", "Slovenia": "+386", "Solomon Islands": "+677", "South Africa": "+27", "South Georgia and the South Sandwich Islands": "+500", "Spain": "+34", "Sri Lanka": "+94", "Sudan": "+249", "Suriname": "+597", "Swaziland": "+268", "Sweden": "+46", "Switzerland": "+41", "Syria": "+963", "Taiwan": "+886", "Tajikistan": "+992", "Tanzania": "+255", "Thailand": "+66", "Timor Leste": "+670", "Togo": "+228", "Tokelau": "+690", "Tonga": "+676", "Trinidad and Tobago": "+1868", "Tunisia": "+216", "Turkey": "+90", "Turkmenistan": "+993", "Turks and Caicos Islands": "+1649", "Tuvalu": "+688", "Uganda": "+256", "Ukraine": "+380", "United Arab Emirates": "+971", "United Kingdom": "+44", "United States": "+1", "Uruguay": "+598", "U.S. Virgin Islands": "+1340", "Uzbekistan": "+998", "Vanuatu": "+678", "Venezuela": "+58", "Vietnam": "+84", "Wake Island": "+1808", "Wallis and Futuna": "+681", "Yemen": "+967", "Zambia": "+260", "Zanzibar": "+255", "Zimbabwe": "+263"]
        

        var finalCountry : NSMutableArray = NSMutableArray()
        let finalCode : NSMutableArray = NSMutableArray()
        var allCountriesArray : NSArray = NSArray()
        allCountriesArray = codes.allKeys as NSArray

        
        
        for index in 0 ..< allCountriesArray.count
        {
            finalCode.add(codes.value(forKey: allCountriesArray.object(at: index) as! String)!)
            finalCountry.add(allCountriesArray.object(at: index))
        }

        let abc12 : NSArray = NSArray.init(array: finalCountry)
        let descriptor: NSSortDescriptor = NSSortDescriptor(key: "", ascending: true, selector: #selector(NSString.localizedCaseInsensitiveCompare(_:)))
        let sortedArray111: [Any] = abc12.sortedArray(using: [descriptor])
        var sortedNSArray = NSArray()
        sortedNSArray = sortedArray111 as NSArray
        finalCountry.removeAllObjects()
        finalCountry = sortedNSArray.mutableCopy() as! NSMutableArray
        finalCode.removeAllObjects()

        
        for index in 0 ..< finalCountry.count
        {
            finalCode.add(codes.value(forKey: finalCountry.object(at: index) as! String)!)
        }
        
        var temp_finalCountryArray : NSMutableArray = NSMutableArray()
        temp_finalCountryArray = finalCountry.mutableCopy() as! NSMutableArray
        return temp_finalCountryArray;
    }
    
    class func getAllCountries_Code () -> NSMutableArray
    {
        let codes: NSMutableDictionary =  ["Abkhazia": "+7840", "Afghanistan": "+93", "Albania": "+355", "Algeria": "+213", "American Samoa": "+1684", "Andorra": "+376", "Angola": "+244", "Anguilla": "+1264", "Antigua and Barbuda": "+1268", "Argentina": "+54", "Armenia": "+374", "Aruba": "+297", "Ascension": "+247", "Australia": "+61", "Australian External Territories": "+672", "Austria": "+43", "Azerbaijan": "+994", "Bahamas": "+1242", "Bahrain": "+973", "Bangladesh": "+880", "Barbados": "+1246", "Barbuda": "+1268", "Belarus": "+375", "Belgium": "+32", "Belize": "+501", "Benin": "+229", "Bermuda": "+1441", "Bhutan": "+975", "Bolivia": "+591", "Bosnia and Herzegovina": "+387", "Botswana": "+267", "Brazil": "+55", "British Indian Ocean Territory": "+246", "British Virgin Islands": "+1284", "Brunei": "+673", "Bulgaria": "+359", "Burkina Faso": "+226", "Burundi": "+257", "Cambodia": "+855", "Cameroon": "+237", "Canada": "+1", "Cape Verde": "+238", "Cayman Islands": "+345", "Central African Republic": "+236", "Chad": "+235", "Chile": "+56", "China": "+86", "Christmas Island": "+61", "Cocos-Keeling Islands": "+61", "Colombia": "+57", "Comoros": "+269", "Congo": "+242", "Congo, Dem. Rep. of (Zaire)": "+243", "Cook Islands": "+682", "Costa Rica": "+506", "Ivory Coast": "+225", "Croatia": "+385", "Cuba": "+53", "Curacao": "+599", "Cyprus": "+537", "Czech Republic": "+420", "Denmark": "+45", "Diego Garcia": "+246", "Djibouti": "+253", "Dominica": "+1767", "Dominican Republic": "+1809", "Dominican Republic": "+1829", "Dominican Republic": "+1849", "East Timor": "+670", "Easter Island": "+56", "Ecuador": "+593", "Egypt": "+20", "El Salvador": "+503", "Equatorial Guinea": "+240", "Eritrea": "+291", "Estonia": "+372", "Ethiopia": "+251", "Falkland Islands": "+500", "Faroe Islands": "+298", "Fiji": "+679", "Finland": "+358", "France": "+33", "French Antilles": "+596", "French Guiana": "+594", "French Polynesia": "+689", "Gabon": "+241", "Gambia": "+220", "Georgia": "+995", "Germany": "+49", "Ghana": "+233", "Gibraltar": "+350", "Greece": "+30", "Greenland": "+299", "Grenada": "+1473", "Guadeloupe": "+590", "Guam": "+1671", "Guatemala": "+502", "Guinea": "+224", "Guinea-Bissau": "+245", "Guyana": "+595", "Haiti": "+509", "Honduras": "+504", "Hong Kong SAR China": "+852", "Hungary": "+36", "Iceland": "+354", "India": "+91", "Indonesia": "+62", "Iran": "+98", "Iraq": "+964", "Ireland": "+353", "Israel": "+972", "Italy": "+39", "Jamaica": "+1876", "Japan": "+81", "Jordan": "+962", "Kazakhstan": "+77", "Kenya": "+254", "Kiribati": "+686", "North Korea": "+850", "South Korea": "+82", "Kuwait": "+965", "Kyrgyzstan": "+996", "Laos": "+856", "Latvia": "+371", "Lebanon": "+961", "Lesotho": "+266", "Liberia": "+231", "Libya": "+218", "Liechtenstein": "+423", "Lithuania": "+370", "Luxembourg": "+352", "Macau SAR China": "+853", "Macedonia": "+389", "Madagascar": "+261", "Malawi": "+265", "Malaysia": "+60", "Maldives": "+960", "Mali": "+223", "Malta": "+356", "Marshall Islands": "+692", "Martinique": "+596", "Mauritania": "+222", "Mauritius": "+230", "Mayotte": "+262", "Mexico": "+52", "Micronesia": "+691", "Midway Island": "+1808", "Micronesia": "+691", "Moldova": "+373", "Monaco": "+377", "Mongolia": "+976", "Montenegro": "+382", "Montserrat": "+1664", "Morocco": "+212", "Myanmar": "+95", "Namibia": "+264", "Nauru": "+674", "Nepal": "+977", "Netherlands": "+31", "Netherlands Antilles": "+599", "Nevis": "+1869", "New Caledonia": "+687", "New Zealand": "+64", "Nicaragua": "+505", "Niger": "+227", "Nigeria": "+234", "Niue": "+683", "Norfolk Island": "+672", "Northern Mariana Islands": "+1670", "Norway": "+47", "Oman": "+968", "Pakistan": "+92", "Palau": "+680", "Palestinian Territory": "+970", "Panama": "+507", "Papua New Guinea": "+675", "Paraguay": "+595", "Peru": "+51", "Philippines": "+63", "Poland": "+48", "Portugal": "+351", "Puerto Rico": "+1787", "Puerto Rico": "+1939", "Qatar": "+974", "Reunion": "+262", "Romania": "+40", "Russia": "+7", "Rwanda": "+250", "Samoa": "+685", "San Marino": "+378", "Saudi Arabia": "+966", "Senegal": "+221", "Serbia": "+381", "Seychelles": "+248", "Sierra Leone": "+232", "Singapore": "+65", "Slovakia": "+421", "Slovenia": "+386", "Solomon Islands": "+677", "South Africa": "+27", "South Georgia and the South Sandwich Islands": "+500", "Spain": "+34", "Sri Lanka": "+94", "Sudan": "+249", "Suriname": "+597", "Swaziland": "+268", "Sweden": "+46", "Switzerland": "+41", "Syria": "+963", "Taiwan": "+886", "Tajikistan": "+992", "Tanzania": "+255", "Thailand": "+66", "Timor Leste": "+670", "Togo": "+228", "Tokelau": "+690", "Tonga": "+676", "Trinidad and Tobago": "+1868", "Tunisia": "+216", "Turkey": "+90", "Turkmenistan": "+993", "Turks and Caicos Islands": "+1649", "Tuvalu": "+688", "Uganda": "+256", "Ukraine": "+380", "United Arab Emirates": "+971", "United Kingdom": "+44", "United States": "+1", "Uruguay": "+598", "U.S. Virgin Islands": "+1340", "Uzbekistan": "+998", "Vanuatu": "+678", "Venezuela": "+58", "Vietnam": "+84", "Wake Island": "+1808", "Wallis and Futuna": "+681", "Yemen": "+967", "Zambia": "+260", "Zanzibar": "+255", "Zimbabwe": "+263"]
        
        
        var finalCountry : NSMutableArray = NSMutableArray()
        let finalCode : NSMutableArray = NSMutableArray()
        var allCountriesArray : NSArray = NSArray()
        allCountriesArray = codes.allKeys as NSArray
        
        
        
        for index in 0 ..< allCountriesArray.count
        {
            finalCode.add(codes.value(forKey: allCountriesArray.object(at: index) as! String)!)
            finalCountry.add(allCountriesArray.object(at: index))
        }
        
        let abc12 : NSArray = NSArray.init(array: finalCountry)
        let descriptor: NSSortDescriptor = NSSortDescriptor(key: "", ascending: true, selector: #selector(NSString.localizedCaseInsensitiveCompare(_:)))
        let sortedArray111: [Any] = abc12.sortedArray(using: [descriptor])
        var sortedNSArray = NSArray()
        sortedNSArray = sortedArray111 as NSArray
        finalCountry.removeAllObjects()
        finalCountry = sortedNSArray.mutableCopy() as! NSMutableArray
        finalCode.removeAllObjects()
        
        
        for index in 0 ..< finalCountry.count
        {
            finalCode.add(codes.value(forKey: finalCountry.object(at: index) as! String)!)
        }
        
        var temp_finalCodeArray : NSMutableArray = NSMutableArray()
        temp_finalCodeArray = finalCode.mutableCopy() as! NSMutableArray

        return temp_finalCodeArray;
    }
    
    
    class func stringContainsEmoji (string : NSString) -> Bool
    {
        var returnValue: Bool = false
        
        string.enumerateSubstrings(in: NSMakeRange(0, (string as NSString).length), options: NSString.EnumerationOptions.byComposedCharacterSequences) { (substring, substringRange, enclosingRange, stop) -> () in
            
            let objCString:NSString = NSString(string:substring!)
            let hs: unichar = objCString.character(at: 0)
            if 0xd800 <= hs && hs <= 0xdbff
            {
                if objCString.length > 1
                {
                    let ls: unichar = objCString.character(at: 1)
                    let step1: Int = Int((hs - 0xd800) * 0x400)
                    let step2: Int = Int(ls - 0xdc00)
                    let uc: Int = Int(step1 + step2 + 0x10000)
                    
                    if 0x1d000 <= uc && uc <= 0x1f77f
                    {
                        returnValue = true
                    }
                }
            }
            else if objCString.length > 1
            {
                let ls: unichar = objCString.character(at: 1)
                if ls == 0x20e3
                {
                    returnValue = true
                }
            }
            else
            {
                if 0x2100 <= hs && hs <= 0x27ff
                {
                    returnValue = true
                }
                else if 0x2b05 <= hs && hs <= 0x2b07
                {
                    returnValue = true
                }
                else if 0x2934 <= hs && hs <= 0x2935
                {
                    returnValue = true
                }
                else if 0x3297 <= hs && hs <= 0x3299
                {
                    returnValue = true
                }
                else if hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50
                {
                    returnValue = true
                }
            }
        }
        
        return returnValue;
    }
    

    class func addSpacingInSring (stringValue : NSString) -> NSAttributedString
    {
        let attributedString = NSMutableAttributedString(string: stringValue as String)
        attributedString.addAttribute(NSKernAttributeName, value: (1.0), range: NSRange(location: 0, length: stringValue.length - 1))
        return attributedString;
    }
    
    class func removeAllNULLValuesFromDictionary (dictionary : NSMutableDictionary) -> NSMutableDictionary
    {
        let allKeysArray : NSArray = dictionary.allKeys as NSArray
        for index in 0 ..< allKeysArray.count
        {
            let key : NSString = allKeysArray.object(at: index) as! NSString
            
            if (dictionary.object(forKey: key) is NSArray || dictionary.object(forKey: key) is NSMutableArray)
            {
                let tempArray : NSMutableArray = NSMutableArray()
                let selectedKeyArray : NSMutableArray = dictionary.object(forKey: key) as! NSMutableArray

                for innerCount in 0 ..< selectedKeyArray.count
                {
                    var innerDictionary : NSMutableDictionary = NSMutableDictionary()
                    innerDictionary = selectedKeyArray.object(at: innerCount) as! NSMutableDictionary
                    let allKeysArrayOfInnerDictionary : NSArray = innerDictionary.allKeys as NSArray

                    for loop in 0 ..< allKeysArrayOfInnerDictionary.count
                    {
                        let innerKey : NSString = allKeysArrayOfInnerDictionary.object(at: loop) as! NSString

                        if (allKeysArrayOfInnerDictionary.object(at: loop) is NSNull)
                        {
                            innerDictionary.setValue("", forKey: innerKey as String)
                        }
                    }
                    
                    tempArray.add(innerDictionary)

                }
                
                dictionary.setObject(tempArray, forKey: key)
            }
                
            else if (dictionary.object(forKey: key) is NSDictionary || dictionary.object(forKey: key) is NSMutableDictionary)
            {
                var json : NSMutableDictionary = NSMutableDictionary()
                json = dictionary.object(forKey: key) as! NSMutableDictionary
                let allKeysArrayOfJSONDictionary : NSArray = json.allKeys as NSArray

                for loop in 0 ..< allKeysArrayOfJSONDictionary.count
                {
                    let innerKey : NSString = allKeysArrayOfJSONDictionary.object(at: loop) as! NSString

                    if (json.object(forKey: innerKey) is NSNull)
                    {
                        json.setValue("", forKey: innerKey as String)
                    }
                }
                
                dictionary.setObject(json, forKey: key)
            }

            else if (dictionary.object(forKey: key) is NSNull)
            {
                dictionary.setValue("", forKey: key as String)
            }
        }
        
        
        return dictionary
    }
    
    class func InternetUnAvailable()
    {
        Toast(text: "Internet Unavailable", duration: Delay.short).show()
    }
    
    class func convertArrayToJSON (array : NSArray) -> NSString
    {
        var stringForJson = NSString()
        do
        {
            let jsonData: NSData = try JSONSerialization.data(withJSONObject: array, options: JSONSerialization.WritingOptions.prettyPrinted) as NSData
            
            let str =  NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue)!
            stringForJson = str as NSString
            return stringForJson
        }
        catch{}
        
        return stringForJson
    }
    
    class func removeAllAudioFilesFromDocumentDirectory()
    {
        let fileManager : FileManager = FileManager.default
        let nsDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let nsUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        let paths : NSArray = NSSearchPathForDirectoriesInDomains(nsDocumentDirectory, nsUserDomainMask, true) as NSArray
        let documentsDirectory = paths.object(at: 0) as! NSString
        print(documentsDirectory)
        let contents : NSArray =  try! fileManager.contentsOfDirectory(atPath: documentsDirectory as String) as NSArray
        let enumerator : NSEnumerator = contents.objectEnumerator()
        while let element = enumerator.nextObject() as? String
        {
            let fileName = element as NSString
            if fileName.pathExtension == "m4a"
            {
                let pathOfFile = documentsDirectory.appendingPathComponent(fileName as String)
                try! fileManager.removeItem(atPath: pathOfFile)

            }
        }
    }
    
    class func getCurrentUTCTime() -> NSString
    {
        let date = NSDate()
        print(date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier:"UTC")
        let returnDateInstring = dateFormatter.string(from: date as Date)
        print(returnDateInstring)
        return returnDateInstring as NSString
    }
}



















