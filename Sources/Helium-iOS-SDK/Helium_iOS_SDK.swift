/**
Helium iOS SDK
2022
*/

public struct Helium_iOS_SDK {

    static public func initialize(apiKey: String, console: HeliumEnvironment.CONSOLE, blockchain: HeliumEnvironment.BLOCKCHAIN, logEnabled: Bool) {

        Constants.API_KEY = apiKey
        Constants.CONSOLE_ENVIRONMENT = console
        Constants.BLOCKHAIN_ENVIRONMENT = blockchain
        Constants.LOG_ENABLED = logEnabled

    }

}
