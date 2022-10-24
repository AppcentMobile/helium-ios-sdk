//
//  GetChainVariablesResponse.swift
//  
//
//  Created by Burak Colak on 18.10.2022.
//



public struct GetChainVariablesResponse : Codable {
    public let data : GetChainVariablesDataResponse?

    enum CodingKeys: String, CodingKey {
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(GetChainVariablesDataResponse.self, forKey: .data)
    }
}

public struct GetChainVariablesDataResponse : Codable {
    public let allow_zero_amount : Bool?
    public let alpha_decay : Double?
    public let batch_size : Int?
    public let beta_decay : Double?
    public let block_time : Int?
    public let block_version : String?
    public let chain_vars_version : Int?
    public let consensus_percent : Double?
    public let dc_payload_size : Int?
    public let dc_percent : Int?
    public let dkg_curve : String?
    public let election_bba_penalty : Double?
    public let election_cluster_res : Int?
    public let election_interval : Int?
    public let election_removal_pct : Int?
    public let election_replacement_factor : Int?
    public let election_replacement_slope : Int?
    public let election_restart_interval : Int?
    public let election_seen_penalty : Double?
    public let election_selection_pct : Int?
    public let election_version : Int?
    public let h3_exclusion_ring_dist : Int?
    public let h3_max_grid_distance : Int?
    public let h3_neighbor_res : Int?
    public let max_open_sc : Int?
    public let max_payments : Int?
    public let max_staleness : Int?
    public let max_subnet_num : Int?
    public let max_subnet_size : Int?
    public let max_xor_filter_num : Int?
    public let max_xor_filter_size : Int?
    public let min_assert_h3_res : Int?
    public let min_expire_within : Int?
    public let min_score : Double?
    public let min_subnet_size : Int?
    public let monthly_reward : Int?
    public let num_consensus_members : Int?
    public let poc_centrality_wt : Double?
    public let poc_challenge_interval : Int?
    public let poc_challenge_sync_interval : Int?
    public let poc_challengees_percent : Double?
    public let poc_challengers_percent : Double?
    public let poc_good_bucket_high : Int?
    public let poc_good_bucket_low : Int?
    public let poc_max_hop_cells : Int?
    public let poc_path_limit : Int?
    public let poc_target_hex_parent_res : Int?
    public let poc_typo_fixes : Bool?
    public let poc_v4_exclusion_cells : Int?
    public let poc_v4_parent_res : Int?
    public let poc_v4_prob_bad_rssi : Double?
    public let poc_v4_prob_count_wt : Double?
    public let poc_v4_prob_good_rssi : Double?
    public let poc_v4_prob_no_rssi : Double?
    public let poc_v4_prob_rssi_wt : Double?
    public let poc_v4_prob_time_wt : Double?
    public let poc_v4_randomness_wt : Double?
    public let poc_v4_target_challenge_age : Int?
    public let poc_v4_target_exclusion_cells : Int?
    public let poc_v4_target_prob_edge_wt : Double?
    public let poc_v4_target_prob_score_wt : Double?
    public let poc_v4_target_score_curve : Int?
    public let poc_v5_target_prob_randomness_wt : Double?
    public let poc_version : Int?
    public let poc_witnesses_percent : Double?
    public let predicate_callback_fun : String?
    public let predicate_callback_mod : String?
    public let predicate_threshold : Double?
    public let price_oracle_height_delta : Int?
    public let price_oracle_price_scan_delay : Int?
    public let price_oracle_price_scan_max : Int?
    public let price_oracle_public_keys : [String]?
    public let price_oracle_refresh_interval : Int?
    public let reward_version : Int?
    public let sc_grace_blocks : Int?
    public let securities_percent : Double?
    public let snapshot_interval : Int?
    public let snapshot_version : Int?
    public let var_gw_inactivity_threshold : Int?
    public let vars_commit_delay : Int?
    public let witness_refresh_interval : Int?
    public let witness_refresh_rand_n : Int?

    enum CodingKeys: String, CodingKey {
        case allow_zero_amount = "allow_zero_amount"
        case alpha_decay = "alpha_decay"
        case batch_size = "batch_size"
        case beta_decay = "beta_decay"
        case block_time = "block_time"
        case block_version = "block_version"
        case chain_vars_version = "chain_vars_version"
        case consensus_percent = "consensus_percent"
        case dc_payload_size = "dc_payload_size"
        case dc_percent = "dc_percent"
        case dkg_curve = "dkg_curve"
        case election_bba_penalty = "election_bba_penalty"
        case election_cluster_res = "election_cluster_res"
        case election_interval = "election_interval"
        case election_removal_pct = "election_removal_pct"
        case election_replacement_factor = "election_replacement_factor"
        case election_replacement_slope = "election_replacement_slope"
        case election_restart_interval = "election_restart_interval"
        case election_seen_penalty = "election_seen_penalty"
        case election_selection_pct = "election_selection_pct"
        case election_version = "election_version"
        case h3_exclusion_ring_dist = "h3_exclusion_ring_dist"
        case h3_max_grid_distance = "h3_max_grid_distance"
        case h3_neighbor_res = "h3_neighbor_res"
        case max_open_sc = "max_open_sc"
        case max_payments = "max_payments"
        case max_staleness = "max_staleness"
        case max_subnet_num = "max_subnet_num"
        case max_subnet_size = "max_subnet_size"
        case max_xor_filter_num = "max_xor_filter_num"
        case max_xor_filter_size = "max_xor_filter_size"
        case min_assert_h3_res = "min_assert_h3_res"
        case min_expire_within = "min_expire_within"
        case min_score = "min_score"
        case min_subnet_size = "min_subnet_size"
        case monthly_reward = "monthly_reward"
        case num_consensus_members = "num_consensus_members"
        case poc_centrality_wt = "poc_centrality_wt"
        case poc_challenge_interval = "poc_challenge_interval"
        case poc_challenge_sync_interval = "poc_challenge_sync_interval"
        case poc_challengees_percent = "poc_challengees_percent"
        case poc_challengers_percent = "poc_challengers_percent"
        case poc_good_bucket_high = "poc_good_bucket_high"
        case poc_good_bucket_low = "poc_good_bucket_low"
        case poc_max_hop_cells = "poc_max_hop_cells"
        case poc_path_limit = "poc_path_limit"
        case poc_target_hex_parent_res = "poc_target_hex_parent_res"
        case poc_typo_fixes = "poc_typo_fixes"
        case poc_v4_exclusion_cells = "poc_v4_exclusion_cells"
        case poc_v4_parent_res = "poc_v4_parent_res"
        case poc_v4_prob_bad_rssi = "poc_v4_prob_bad_rssi"
        case poc_v4_prob_count_wt = "poc_v4_prob_count_wt"
        case poc_v4_prob_good_rssi = "poc_v4_prob_good_rssi"
        case poc_v4_prob_no_rssi = "poc_v4_prob_no_rssi"
        case poc_v4_prob_rssi_wt = "poc_v4_prob_rssi_wt"
        case poc_v4_prob_time_wt = "poc_v4_prob_time_wt"
        case poc_v4_randomness_wt = "poc_v4_randomness_wt"
        case poc_v4_target_challenge_age = "poc_v4_target_challenge_age"
        case poc_v4_target_exclusion_cells = "poc_v4_target_exclusion_cells"
        case poc_v4_target_prob_edge_wt = "poc_v4_target_prob_edge_wt"
        case poc_v4_target_prob_score_wt = "poc_v4_target_prob_score_wt"
        case poc_v4_target_score_curve = "poc_v4_target_score_curve"
        case poc_v5_target_prob_randomness_wt = "poc_v5_target_prob_randomness_wt"
        case poc_version = "poc_version"
        case poc_witnesses_percent = "poc_witnesses_percent"
        case predicate_callback_fun = "predicate_callback_fun"
        case predicate_callback_mod = "predicate_callback_mod"
        case predicate_threshold = "predicate_threshold"
        case price_oracle_height_delta = "price_oracle_height_delta"
        case price_oracle_price_scan_delay = "price_oracle_price_scan_delay"
        case price_oracle_price_scan_max = "price_oracle_price_scan_max"
        case price_oracle_public_keys = "price_oracle_public_keys"
        case price_oracle_refresh_interval = "price_oracle_refresh_interval"
        case reward_version = "reward_version"
        case sc_grace_blocks = "sc_grace_blocks"
        case securities_percent = "securities_percent"
        case snapshot_interval = "snapshot_interval"
        case snapshot_version = "snapshot_version"
        case var_gw_inactivity_threshold = "var_gw_inactivity_threshold"
        case vars_commit_delay = "vars_commit_delay"
        case witness_refresh_interval = "witness_refresh_interval"
        case witness_refresh_rand_n = "witness_refresh_rand_n"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        allow_zero_amount = try values.decodeIfPresent(Bool.self, forKey: .allow_zero_amount)
        alpha_decay = try values.decodeIfPresent(Double.self, forKey: .alpha_decay)
        batch_size = try values.decodeIfPresent(Int.self, forKey: .batch_size)
        beta_decay = try values.decodeIfPresent(Double.self, forKey: .beta_decay)
        block_time = try values.decodeIfPresent(Int.self, forKey: .block_time)
        block_version = try values.decodeIfPresent(String.self, forKey: .block_version)
        chain_vars_version = try values.decodeIfPresent(Int.self, forKey: .chain_vars_version)
        consensus_percent = try values.decodeIfPresent(Double.self, forKey: .consensus_percent)
        dc_payload_size = try values.decodeIfPresent(Int.self, forKey: .dc_payload_size)
        dc_percent = try values.decodeIfPresent(Int.self, forKey: .dc_percent)
        dkg_curve = try values.decodeIfPresent(String.self, forKey: .dkg_curve)
        election_bba_penalty = try values.decodeIfPresent(Double.self, forKey: .election_bba_penalty)
        election_cluster_res = try values.decodeIfPresent(Int.self, forKey: .election_cluster_res)
        election_interval = try values.decodeIfPresent(Int.self, forKey: .election_interval)
        election_removal_pct = try values.decodeIfPresent(Int.self, forKey: .election_removal_pct)
        election_replacement_factor = try values.decodeIfPresent(Int.self, forKey: .election_replacement_factor)
        election_replacement_slope = try values.decodeIfPresent(Int.self, forKey: .election_replacement_slope)
        election_restart_interval = try values.decodeIfPresent(Int.self, forKey: .election_restart_interval)
        election_seen_penalty = try values.decodeIfPresent(Double.self, forKey: .election_seen_penalty)
        election_selection_pct = try values.decodeIfPresent(Int.self, forKey: .election_selection_pct)
        election_version = try values.decodeIfPresent(Int.self, forKey: .election_version)
        h3_exclusion_ring_dist = try values.decodeIfPresent(Int.self, forKey: .h3_exclusion_ring_dist)
        h3_max_grid_distance = try values.decodeIfPresent(Int.self, forKey: .h3_max_grid_distance)
        h3_neighbor_res = try values.decodeIfPresent(Int.self, forKey: .h3_neighbor_res)
        max_open_sc = try values.decodeIfPresent(Int.self, forKey: .max_open_sc)
        max_payments = try values.decodeIfPresent(Int.self, forKey: .max_payments)
        max_staleness = try values.decodeIfPresent(Int.self, forKey: .max_staleness)
        max_subnet_num = try values.decodeIfPresent(Int.self, forKey: .max_subnet_num)
        max_subnet_size = try values.decodeIfPresent(Int.self, forKey: .max_subnet_size)
        max_xor_filter_num = try values.decodeIfPresent(Int.self, forKey: .max_xor_filter_num)
        max_xor_filter_size = try values.decodeIfPresent(Int.self, forKey: .max_xor_filter_size)
        min_assert_h3_res = try values.decodeIfPresent(Int.self, forKey: .min_assert_h3_res)
        min_expire_within = try values.decodeIfPresent(Int.self, forKey: .min_expire_within)
        min_score = try values.decodeIfPresent(Double.self, forKey: .min_score)
        min_subnet_size = try values.decodeIfPresent(Int.self, forKey: .min_subnet_size)
        monthly_reward = try values.decodeIfPresent(Int.self, forKey: .monthly_reward)
        num_consensus_members = try values.decodeIfPresent(Int.self, forKey: .num_consensus_members)
        poc_centrality_wt = try values.decodeIfPresent(Double.self, forKey: .poc_centrality_wt)
        poc_challenge_interval = try values.decodeIfPresent(Int.self, forKey: .poc_challenge_interval)
        poc_challenge_sync_interval = try values.decodeIfPresent(Int.self, forKey: .poc_challenge_sync_interval)
        poc_challengees_percent = try values.decodeIfPresent(Double.self, forKey: .poc_challengees_percent)
        poc_challengers_percent = try values.decodeIfPresent(Double.self, forKey: .poc_challengers_percent)
        poc_good_bucket_high = try values.decodeIfPresent(Int.self, forKey: .poc_good_bucket_high)
        poc_good_bucket_low = try values.decodeIfPresent(Int.self, forKey: .poc_good_bucket_low)
        poc_max_hop_cells = try values.decodeIfPresent(Int.self, forKey: .poc_max_hop_cells)
        poc_path_limit = try values.decodeIfPresent(Int.self, forKey: .poc_path_limit)
        poc_target_hex_parent_res = try values.decodeIfPresent(Int.self, forKey: .poc_target_hex_parent_res)
        poc_typo_fixes = try values.decodeIfPresent(Bool.self, forKey: .poc_typo_fixes)
        poc_v4_exclusion_cells = try values.decodeIfPresent(Int.self, forKey: .poc_v4_exclusion_cells)
        poc_v4_parent_res = try values.decodeIfPresent(Int.self, forKey: .poc_v4_parent_res)
        poc_v4_prob_bad_rssi = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_bad_rssi)
        poc_v4_prob_count_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_count_wt)
        poc_v4_prob_good_rssi = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_good_rssi)
        poc_v4_prob_no_rssi = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_no_rssi)
        poc_v4_prob_rssi_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_rssi_wt)
        poc_v4_prob_time_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_prob_time_wt)
        poc_v4_randomness_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_randomness_wt)
        poc_v4_target_challenge_age = try values.decodeIfPresent(Int.self, forKey: .poc_v4_target_challenge_age)
        poc_v4_target_exclusion_cells = try values.decodeIfPresent(Int.self, forKey: .poc_v4_target_exclusion_cells)
        poc_v4_target_prob_edge_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_target_prob_edge_wt)
        poc_v4_target_prob_score_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v4_target_prob_score_wt)
        poc_v4_target_score_curve = try values.decodeIfPresent(Int.self, forKey: .poc_v4_target_score_curve)
        poc_v5_target_prob_randomness_wt = try values.decodeIfPresent(Double.self, forKey: .poc_v5_target_prob_randomness_wt)
        poc_version = try values.decodeIfPresent(Int.self, forKey: .poc_version)
        poc_witnesses_percent = try values.decodeIfPresent(Double.self, forKey: .poc_witnesses_percent)
        predicate_callback_fun = try values.decodeIfPresent(String.self, forKey: .predicate_callback_fun)
        predicate_callback_mod = try values.decodeIfPresent(String.self, forKey: .predicate_callback_mod)
        predicate_threshold = try values.decodeIfPresent(Double.self, forKey: .predicate_threshold)
        price_oracle_height_delta = try values.decodeIfPresent(Int.self, forKey: .price_oracle_height_delta)
        price_oracle_price_scan_delay = try values.decodeIfPresent(Int.self, forKey: .price_oracle_price_scan_delay)
        price_oracle_price_scan_max = try values.decodeIfPresent(Int.self, forKey: .price_oracle_price_scan_max)
        price_oracle_public_keys = try values.decodeIfPresent([String].self, forKey: .price_oracle_public_keys)
        price_oracle_refresh_interval = try values.decodeIfPresent(Int.self, forKey: .price_oracle_refresh_interval)
        reward_version = try values.decodeIfPresent(Int.self, forKey: .reward_version)
        sc_grace_blocks = try values.decodeIfPresent(Int.self, forKey: .sc_grace_blocks)
        securities_percent = try values.decodeIfPresent(Double.self, forKey: .securities_percent)
        snapshot_interval = try values.decodeIfPresent(Int.self, forKey: .snapshot_interval)
        snapshot_version = try values.decodeIfPresent(Int.self, forKey: .snapshot_version)
        var_gw_inactivity_threshold = try values.decodeIfPresent(Int.self, forKey: .var_gw_inactivity_threshold)
        vars_commit_delay = try values.decodeIfPresent(Int.self, forKey: .vars_commit_delay)
        witness_refresh_interval = try values.decodeIfPresent(Int.self, forKey: .witness_refresh_interval)
        witness_refresh_rand_n = try values.decodeIfPresent(Int.self, forKey: .witness_refresh_rand_n)
    }
}
