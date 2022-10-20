//
//  Callbacks.swift
//  
//
//  Created by Burak Colak on 16.10.2022.
//

import UIKit

public struct GenericCallbacks {
    public typealias VoidCallback = (() -> ())?
    public typealias ErrorCallback = ((Error?) -> ())?
}

public struct BlockchainCallbacks {}

extension BlockchainCallbacks {
    //MARK: Accounts
    public typealias ListAccounts = ((ListAccountsResponse?) -> ())?
    public typealias ListRichestAccounts = ((ListRichestAccountsResponse?) -> ())?
    public typealias AccountForAddress = ((AccountForAddressResponse?) -> ())?
    public typealias HotspotsForAccount = ((HotspotsForAccountResponse?) -> ())?
    public typealias ValidatorsForAccount = ((ValidatorsForAccountResponse?) -> ())?
    public typealias OUISForAccount = ((OUISForAccountResponse?) -> ())?
    public typealias ActivityForAccount = ((ActivityForAccountResponse?) -> ())?
    public typealias RolesForAccount = ((RolesForAccountResponse?) -> ())?
    public typealias RolesCountsForAccount = ((RolesCountsForAccountResponse?) -> ())?
    public typealias ElectionsForAccount = ((ElectionsForAccountResponse?) -> ())?
    public typealias ChallengesForAccount = ((ChallengesForAccountResponse?) -> ())?
    public typealias PendingTransactionsForAccount = ((PendingTransactionsForAccountResponse?) -> ())?
    public typealias RewardsForAnAccount = ((RewardsForAnAccountResponse?) -> ())?
    public typealias RewardsInARewardsBlockForAnAccount = ((RewardsInARewardsBlockForAnAccountResponse?) -> ())?
    public typealias RewardTotalsForAnAccount = ((RewardTotalsForAnAccountResponse?) -> ())?
    public typealias StatsForAccount = ((StatsForAccountResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Assert Locations
    public typealias ListAssertLocations = ((ListAssertLocationsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Blocks
    public typealias BlocksHeight = ((BlocksHeightResponse?) -> ())?
    public typealias BlocksStats = ((BlocksStatsResponse?) -> ())?
    public typealias BlocksDescription = ((BlocksDescriptionResponse?) -> ())?
    public typealias BlockAtHeight = ((BlockAtHeightResponse?) -> ())?
    public typealias BlockAtHeightTransactions = ((BlockAtHeightTransactionsResponse?) -> ())?
    public typealias BlockAtHash = ((BlockAtHashResponse?) -> ())?
    public typealias BlockAtHashTransactions = ((BlockAtHashTransactionsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Chain Variables
    public typealias GetChainVariables = ((GetChainVariablesResponse?) -> ())?
    public typealias GetTheValueOfAchainVariable = ((GetTheValueOfAchainVariableResponse?) -> ())?
    public typealias ListChainVariableActivity = ((ListChainVariableActivityResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Challenges
    public typealias ListChallengeReceipts = ((ListChallengeReceiptsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Cities
    public typealias ListHotspotCities = ((ListHotspotCitiesResponse?) -> ())?
    public typealias CityForCityID = ((CityForCityIDResponse?) -> ())?
    public typealias ListHotspotsForACity = ((ListHotspotsForACityResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: DCBurns
    public typealias DCBurnTotals = ((DCBurnTotalsResponse?) -> ())?
    public typealias DCBurnStats = ((DCBurnStatsResponse?) -> ())?
    public typealias DCBurnEvents = ((DCBurnEventsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Elections
    public typealias ListElections = ((ListElectionsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Hotspots
    public typealias ListHotspots = ((ListHotspotsResponse?) -> ())?
    public typealias HotspotForAddress = ((HotspotForAddressResponse?) -> ())?
    public typealias HotspotsForName = ((HotspotsForNameResponse?) -> ())?
    public typealias HotspotNameSearch = ((HotspotNameSearchResponse?) -> ())?
    public typealias HotspotLocationDistanceSearch = ((HotspotLocationDistanceSearchResponse?) -> ())?
    public typealias HotspotLocationBoxSearch = ((HotspotLocationBoxSearchResponse?) -> ())?
    public typealias HotspotsForH3Index = ((HotspotsForH3IndexResponse?) -> ())?
    public typealias HotspotActivity = ((HotspotActivityResponse?) -> ())?
    public typealias HotspotRoles = ((HotspotRolesResponse?) -> ())?
    public typealias HotspotRolesCounts = ((HotspotRolesCountsResponse?) -> ())?
    public typealias HotspotElections = ((HotspotElectionsResponse?) -> ())?
    public typealias CurrentlyElectedHotspots = ((CurrentlyElectedHotspotsResponse?) -> ())?
    public typealias HotspotChallenges = ((HotspotChallengesResponse?) -> ())?
    public typealias RewardsForAHotspot = ((RewardsForAHotspotResponse?) -> ())?
    public typealias RewardsInARewardsBlockForAHotspot = ((RewardsInARewardsBlockForAHotspotResponse?) -> ())?
    public typealias RewardTotalForAHotspot = ((RewardTotalForAHotspotResponse?) -> ())?
    public typealias WitnessesForAHotspot = ((WitnessesForAHotspotResponse?) -> ())?
    public typealias WitnessedForAHotspot = ((WitnessedForAHotspotResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Elections
    public typealias GetLocation = ((GetLocationResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: OraclePrices
    public typealias CurrentOraclePrice = ((CurrentOraclePriceResponse?) -> ())?
    public typealias CurrentAndHistoricalOraclePrices = ((CurrentAndHistoricalOraclePricesResponse?) -> ())?
    public typealias OraclePriceStats = ((OraclePriceStatsResponse?) -> ())?
    public typealias OraclePriceAtASpecificBlock = ((OraclePriceAtASpecificBlockResponse?) -> ())?
    public typealias ListOracleActivity = ((ListOracleActivityResponse?) -> ())?
    public typealias ListActivityForASpecificOracle = ((ListActivityForASpecificOracleResponse?) -> ())?
    public typealias GetPredictedHNTOraclePrices = ((GetPredictedHNTOraclePricesResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: OOUIs
    public typealias ListOUIs = ((ListOUIsResponse?) -> ())?
    public typealias GetAnOUI = ((GetAnOUIResponse?) -> ())?
    public typealias GetLastAssignedOUI = ((GetLastAssignedOUIResponse?) -> ())?
    public typealias GetOUIStats = ((GetOUIStatsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: PendingTransactions
    public typealias PendingTransactionStatus = ((PendingTransactionStatusResponse?) -> ())?
    public typealias SubmitANewTransaction = ((SubmitANewTransactionResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Rewards
    public typealias RewardTotals = ((RewardTotalsResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Statechannels
    public typealias StateChannelsCloses = ((StateChannelClosesResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Stats
    public typealias Stats = ((StatsResponse?) -> ())?
    public typealias TokenSupply = ((TokenSupplyResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Transactions
    public typealias TransactionForHash = ((TransactionForHashResponse?) -> ())?
}

extension BlockchainCallbacks {
    //MARK: Validators
    public typealias ListValidators = ((ListValidatorsResponse?) -> ())?
    public typealias ValidatorForAddress = ((ValidatorForAddressResponse?) -> ())?
    public typealias ValidatorsForName = ((ValidatorsForNameResponse?) -> ())?
    public typealias ValidatorNameSearch = ((ValidatorNameSearchResponse?) -> ())?
    public typealias ValidatorActivity = ((ValidatorActivityResponse?) -> ())?
    public typealias ValidatorRoles = ((ValidatorRolesResponse?) -> ())?
    public typealias ValidatorRolesCounts = ((ValidatorRolesCountsResponse?) -> ())?
    public typealias StatsForValidators = ((StatsForValidatorsResponse?) -> ())?
    public typealias CurrentlyElectedValidators = ((CurrentlyElectedValidatorsResponse?) -> ())?
    public typealias ElectedValidatorsAtABlock = ((ElectedValidatorsAtABlockResponse?) -> ())?
    public typealias ElectedValidatorsInAnElection = ((ElectedValidatorsInAnElectionResponse?) -> ())?
    public typealias RewardsForAValidator = ((RewardsForAValidatorResponse?) -> ())?
    public typealias RewardTotalForAValidator = ((RewardTotalForAValidatorResponse?) -> ())?
    public typealias RewardTotalForAllValidators = ((RewardTotalForAllValidatorsResponse?) -> ())?
}
