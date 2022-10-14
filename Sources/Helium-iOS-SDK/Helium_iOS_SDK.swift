/**
Helium iOS SDK
2022
*/

public struct Helium_iOS_SDK {

    /**
        Initializes the helium iOS SDK;

     - Author:
     Burak

     - returns:
     void

     - parameters:
        - apiKey: String (Required)
        - console: Represents the console api base URL; HeliumEnvironment.CONSOLE (Optional), default: BASE
        - blockchain: Represents the blockhain api base URL; HeliumEnvironment.BLOCKCHAIN (Optional), default: SCALABLE
        - logEnabled: Manages network logs; Bool (Optional), default: false

     - Important:
     This function must be called before calling Helium API

     - Version:
     0.1
     */
    static public func initialize(apiKey: String, console: HeliumEnvironment.CONSOLE? = .BASE, blockchain: HeliumEnvironment.BLOCKCHAIN? = .SCALABLE, logEnabled: Bool? = false) {

        Constants.API_KEY = apiKey
        Constants.CONSOLE_ENVIRONMENT = console ?? .BASE
        Constants.BLOCKHAIN_ENVIRONMENT = blockchain ?? .SCALABLE
        Constants.LOG_ENABLED = logEnabled ?? false

    }

}
