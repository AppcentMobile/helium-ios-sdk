public struct Helium_iOS_SDK {

    static public func initialize(with apiKey: String, console: HeliumEnvironment.CONSOLE, blockchain: HeliumEnvironment.BLOCKCHAIN) {
        Constants.API_KEY = apiKey
        Constants.CONSOLE_ENVIRONMENT = console
        Constants.BLOCKHAIN_ENVIRONMENT = blockchain
    }

}
