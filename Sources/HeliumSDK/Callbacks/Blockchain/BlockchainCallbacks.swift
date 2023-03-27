//
//  BlockchainCallbacks.swift
//

public struct BlockchainCallbacks {}

public extension BlockchainCallbacks {
    // MARK: Accounts

    typealias ListAccounts = ((ListAccountsResponse?) -> Void)?
    typealias ListRichestAccounts = ((ListRichestAccountsResponse?) -> Void)?
    typealias AccountForAddress = ((AccountForAddressResponse?) -> Void)?
    typealias HotspotsForAccount = ((HotspotsForAccountResponse?) -> Void)?
    typealias ValidatorsForAccount = ((ValidatorsForAccountResponse?) -> Void)?
    typealias OUISForAccount = ((OUISForAccountResponse?) -> Void)?
    typealias ActivityForAccount = ((ActivityForAccountResponse?) -> Void)?
    typealias RolesForAccount = ((RolesForAccountResponse?) -> Void)?
    typealias RolesCountsForAccount = ((RolesCountsForAccountResponse?) -> Void)?
    typealias ElectionsForAccount = ((ElectionsForAccountResponse?) -> Void)?
    typealias ChallengesForAccount = ((ChallengesForAccountResponse?) -> Void)?
    typealias PendingTransactionsForAccount = ((PendingTransactionsForAccountResponse?) -> Void)?
    typealias RewardsForAnAccount = ((RewardsForAnAccountResponse?) -> Void)?
    typealias RewardsInARewardsBlockForAnAccount = ((RewardsInARewardsBlockForAnAccountResponse?) -> Void)?
    typealias RewardTotalsForAnAccount = ((RewardTotalsForAnAccountResponse?) -> Void)?
    typealias StatsForAccount = ((StatsForAccountResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Assert Locations

    typealias ListAssertLocations = ((ListAssertLocationsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Blocks

    typealias BlocksHeight = ((BlocksHeightResponse?) -> Void)?
    typealias BlocksStats = ((BlocksStatsResponse?) -> Void)?
    typealias BlocksDescription = ((BlocksDescriptionResponse?) -> Void)?
    typealias BlockAtHeight = ((BlockAtHeightResponse?) -> Void)?
    typealias BlockAtHeightTransactions = ((BlockAtHeightTransactionsResponse?) -> Void)?
    typealias BlockAtHash = ((BlockAtHashResponse?) -> Void)?
    typealias BlockAtHashTransactions = ((BlockAtHashTransactionsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Chain Variables

    typealias GetChainVariables = ((GetChainVariablesResponse?) -> Void)?
    typealias GetTheValueOfAchainVariable = ((GetTheValueOfAchainVariableResponse?) -> Void)?
    typealias ListChainVariableActivity = ((ListChainVariableActivityResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Challenges

    typealias ListChallengeReceipts = ((ListChallengeReceiptsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Cities

    typealias ListHotspotCities = ((ListHotspotCitiesResponse?) -> Void)?
    typealias CityForCityID = ((CityForCityIDResponse?) -> Void)?
    typealias ListHotspotsForACity = ((ListHotspotsForACityResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: DCBurns

    typealias DCBurnTotals = ((DCBurnTotalsResponse?) -> Void)?
    typealias DCBurnStats = ((DCBurnStatsResponse?) -> Void)?
    typealias DCBurnEvents = ((DCBurnEventsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Elections

    typealias ListElections = ((ListElectionsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Hotspots

    typealias ListHotspots = ((ListHotspotsResponse?) -> Void)?
    typealias HotspotForAddress = ((HotspotForAddressResponse?) -> Void)?
    typealias HotspotsForName = ((HotspotsForNameResponse?) -> Void)?
    typealias HotspotNameSearch = ((HotspotNameSearchResponse?) -> Void)?
    typealias HotspotLocationDistanceSearch = ((HotspotLocationDistanceSearchResponse?) -> Void)?
    typealias HotspotLocationBoxSearch = ((HotspotLocationBoxSearchResponse?) -> Void)?
    typealias HotspotsForH3Index = ((HotspotsForH3IndexResponse?) -> Void)?
    typealias HotspotActivity = ((HotspotActivityResponse?) -> Void)?
    typealias HotspotRoles = ((HotspotRolesResponse?) -> Void)?
    typealias HotspotRolesCounts = ((HotspotRolesCountsResponse?) -> Void)?
    typealias HotspotElections = ((HotspotElectionsResponse?) -> Void)?
    typealias CurrentlyElectedHotspots = ((CurrentlyElectedHotspotsResponse?) -> Void)?
    typealias HotspotChallenges = ((HotspotChallengesResponse?) -> Void)?
    typealias RewardsForAHotspot = ((RewardsForAHotspotResponse?) -> Void)?
    typealias RewardsInARewardsBlockForAHotspot = ((RewardsInARewardsBlockForAHotspotResponse?) -> Void)?
    typealias RewardTotalForAHotspot = ((RewardTotalForAHotspotResponse?) -> Void)?
    typealias WitnessesForAHotspot = ((WitnessesForAHotspotResponse?) -> Void)?
    typealias WitnessedForAHotspot = ((WitnessedForAHotspotResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Elections

    typealias GetLocation = ((GetLocationResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: OraclePrices

    typealias CurrentOraclePrice = ((CurrentOraclePriceResponse?) -> Void)?
    typealias CurrentAndHistoricalOraclePrices = ((CurrentAndHistoricalOraclePricesResponse?) -> Void)?
    typealias OraclePriceStats = ((OraclePriceStatsResponse?) -> Void)?
    typealias OraclePriceAtASpecificBlock = ((OraclePriceAtASpecificBlockResponse?) -> Void)?
    typealias ListOracleActivity = ((ListOracleActivityResponse?) -> Void)?
    typealias ListActivityForASpecificOracle = ((ListActivityForASpecificOracleResponse?) -> Void)?
    typealias GetPredictedHNTOraclePrices = ((GetPredictedHNTOraclePricesResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: OOUIs

    typealias ListOUIs = ((ListOUIsResponse?) -> Void)?
    typealias GetAnOUI = ((GetAnOUIResponse?) -> Void)?
    typealias GetLastAssignedOUI = ((GetLastAssignedOUIResponse?) -> Void)?
    typealias GetOUIStats = ((GetOUIStatsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: PendingTransactions

    typealias PendingTransactionStatus = ((PendingTransactionStatusResponse?) -> Void)?
    typealias SubmitANewTransaction = ((SubmitANewTransactionResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Rewards

    typealias RewardTotals = ((RewardTotalsResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Statechannels

    typealias StateChannelsCloses = ((StateChannelClosesResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Stats

    typealias Stats = ((StatsResponse?) -> Void)?
    typealias TokenSupply = ((TokenSupplyResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Transactions

    typealias TransactionForHash = ((TransactionForHashResponse?) -> Void)?
}

public extension BlockchainCallbacks {
    // MARK: Validators

    typealias ListValidators = ((ListValidatorsResponse?) -> Void)?
    typealias ValidatorForAddress = ((ValidatorForAddressResponse?) -> Void)?
    typealias ValidatorsForName = ((ValidatorsForNameResponse?) -> Void)?
    typealias ValidatorNameSearch = ((ValidatorNameSearchResponse?) -> Void)?
    typealias ValidatorActivity = ((ValidatorActivityResponse?) -> Void)?
    typealias ValidatorRoles = ((ValidatorRolesResponse?) -> Void)?
    typealias ValidatorRolesCounts = ((ValidatorRolesCountsResponse?) -> Void)?
    typealias StatsForValidators = ((StatsForValidatorsResponse?) -> Void)?
    typealias CurrentlyElectedValidators = ((CurrentlyElectedValidatorsResponse?) -> Void)?
    typealias ElectedValidatorsAtABlock = ((ElectedValidatorsAtABlockResponse?) -> Void)?
    typealias ElectedValidatorsInAnElection = ((ElectedValidatorsInAnElectionResponse?) -> Void)?
    typealias RewardsForAValidator = ((RewardsForAValidatorResponse?) -> Void)?
    typealias RewardTotalForAValidator = ((RewardTotalForAValidatorResponse?) -> Void)?
    typealias RewardTotalForAllValidators = ((RewardTotalForAllValidatorsResponse?) -> Void)?
}
