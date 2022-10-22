//
//  ConsoleCallbacks.swift
//  
//
//  Created by Burak Colak on 21.10.2022.
//

import UIKit

public struct ConsoleCallbacks {}

extension ConsoleCallbacks {
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
