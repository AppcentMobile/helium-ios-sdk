/**
Helium iOS SDK
2022
*/

public struct Helium_iOS_SDK {

    static public func initialize(config: HeliumConfig) {

        Constants.API_KEY = config.apiKey
        Constants.CONSOLE_ENVIRONMENT = config.console
        Constants.BLOCKHAIN_ENVIRONMENT = config.blockchain
        Constants.LOG_ENABLED = config.logEnabled

    }

}
