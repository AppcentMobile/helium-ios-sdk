//
//  ValidatorRolesCountsResponse.swift
//
//
//  Created by Burak Colak on 20.10.2022.
//

public struct ValidatorRolesCountsResponse: Codable {
    public let data: ValidatorRolesCountsDataResponse?

    enum CodingKeys: String, CodingKey {
        case data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(ValidatorRolesCountsDataResponse.self, forKey: .data)
    }
}

public struct ValidatorRolesCountsDataResponse: Codable {
    public let vars_v1: Int?
    public let validator_heartbeat_v1: Int?
    public let unstake_validator_v1: Int?
    public let transfer_validator_stake_v1: Int?
    public let transfer_hotspot_v1: Int?
    public let token_burn_v1: Int?
    public let token_burn_exchange_rate_v1: Int?
    public let state_channel_open_v1: Int?
    public let state_channel_close_v1: Int?
    public let stake_validator_v1: Int?
    public let security_exchange_v1: Int?
    public let security_coinbase_v1: Int?
    public let routing_v1: Int?
    public let rewards_v2: Int?
    public let rewards_v1: Int?
    public let redeem_htlc_v1: Int?
    public let price_oracle_v1: Int?
    public let poc_request_v1: Int?
    public let poc_receipts_v1: Int?
    public let payment_v2: Int?
    public let payment_v1: Int?
    public let oui_v1: Int?
    public let gen_gateway_v1: Int?
    public let dc_coinbase_v1: Int?
    public let create_htlc_v1: Int?
    public let consensus_group_v1: Int?
    public let consensus_group_failure_v1: Int?
    public let coinbase_v1: Int?
    public let assert_location_v2: Int?
    public let assert_location_v1: Int?
    public let add_gateway_v1: Int?

    enum CodingKeys: String, CodingKey {
        case vars_v1
        case validator_heartbeat_v1
        case unstake_validator_v1
        case transfer_validator_stake_v1
        case transfer_hotspot_v1
        case token_burn_v1
        case token_burn_exchange_rate_v1
        case state_channel_open_v1
        case state_channel_close_v1
        case stake_validator_v1
        case security_exchange_v1
        case security_coinbase_v1
        case routing_v1
        case rewards_v2
        case rewards_v1
        case redeem_htlc_v1
        case price_oracle_v1
        case poc_request_v1
        case poc_receipts_v1
        case payment_v2
        case payment_v1
        case oui_v1
        case gen_gateway_v1
        case dc_coinbase_v1
        case create_htlc_v1
        case consensus_group_v1
        case consensus_group_failure_v1
        case coinbase_v1
        case assert_location_v2
        case assert_location_v1
        case add_gateway_v1
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        vars_v1 = try values.decodeIfPresent(Int.self, forKey: .vars_v1)
        validator_heartbeat_v1 = try values.decodeIfPresent(Int.self, forKey: .validator_heartbeat_v1)
        unstake_validator_v1 = try values.decodeIfPresent(Int.self, forKey: .unstake_validator_v1)
        transfer_validator_stake_v1 = try values.decodeIfPresent(Int.self, forKey: .transfer_validator_stake_v1)
        transfer_hotspot_v1 = try values.decodeIfPresent(Int.self, forKey: .transfer_hotspot_v1)
        token_burn_v1 = try values.decodeIfPresent(Int.self, forKey: .token_burn_v1)
        token_burn_exchange_rate_v1 = try values.decodeIfPresent(Int.self, forKey: .token_burn_exchange_rate_v1)
        state_channel_open_v1 = try values.decodeIfPresent(Int.self, forKey: .state_channel_open_v1)
        state_channel_close_v1 = try values.decodeIfPresent(Int.self, forKey: .state_channel_close_v1)
        stake_validator_v1 = try values.decodeIfPresent(Int.self, forKey: .stake_validator_v1)
        security_exchange_v1 = try values.decodeIfPresent(Int.self, forKey: .security_exchange_v1)
        security_coinbase_v1 = try values.decodeIfPresent(Int.self, forKey: .security_coinbase_v1)
        routing_v1 = try values.decodeIfPresent(Int.self, forKey: .routing_v1)
        rewards_v2 = try values.decodeIfPresent(Int.self, forKey: .rewards_v2)
        rewards_v1 = try values.decodeIfPresent(Int.self, forKey: .rewards_v1)
        redeem_htlc_v1 = try values.decodeIfPresent(Int.self, forKey: .redeem_htlc_v1)
        price_oracle_v1 = try values.decodeIfPresent(Int.self, forKey: .price_oracle_v1)
        poc_request_v1 = try values.decodeIfPresent(Int.self, forKey: .poc_request_v1)
        poc_receipts_v1 = try values.decodeIfPresent(Int.self, forKey: .poc_receipts_v1)
        payment_v2 = try values.decodeIfPresent(Int.self, forKey: .payment_v2)
        payment_v1 = try values.decodeIfPresent(Int.self, forKey: .payment_v1)
        oui_v1 = try values.decodeIfPresent(Int.self, forKey: .oui_v1)
        gen_gateway_v1 = try values.decodeIfPresent(Int.self, forKey: .gen_gateway_v1)
        dc_coinbase_v1 = try values.decodeIfPresent(Int.self, forKey: .dc_coinbase_v1)
        create_htlc_v1 = try values.decodeIfPresent(Int.self, forKey: .create_htlc_v1)
        consensus_group_v1 = try values.decodeIfPresent(Int.self, forKey: .consensus_group_v1)
        consensus_group_failure_v1 = try values.decodeIfPresent(Int.self, forKey: .consensus_group_failure_v1)
        coinbase_v1 = try values.decodeIfPresent(Int.self, forKey: .coinbase_v1)
        assert_location_v2 = try values.decodeIfPresent(Int.self, forKey: .assert_location_v2)
        assert_location_v1 = try values.decodeIfPresent(Int.self, forKey: .assert_location_v1)
        add_gateway_v1 = try values.decodeIfPresent(Int.self, forKey: .add_gateway_v1)
    }
}
