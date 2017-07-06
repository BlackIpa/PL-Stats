class CreateDatabase < ActiveRecord::Migration[5.1]
  def change
		create_table "matches", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
			t.integer "round"
			t.integer "team_id"
			t.string "team_name", limit: 80
			t.string "was_home", limit: 5
			t.integer "opp_team_id"
			t.string "opp_team_name", limit: 80
			t.integer "team_h_score"
			t.integer "team_a_score"
			t.integer "goals_diff"
			t.integer "assists"
			t.integer "big_chances_created"
			t.integer "big_chances_missed"
			t.integer "key_passes"
			t.decimal "passes_success", precision: 6, scale: 2
			t.integer "attempted_passes"
			t.integer "completed_passes"
			t.integer "open_play_crosses"
			t.integer "offside"
			t.integer "target_missed"
			t.integer "dribbles"
			t.integer "tackled"
			t.integer "tackles"
			t.integer "recoveries"
			t.integer "clearances_blocks_interceptions"
			t.integer "clean_sheets"
			t.integer "saves"
			t.integer "penalties_saved"
			t.integer "fouls"
			t.integer "own_goals"
			t.integer "yellow_cards"
			t.integer "red_cards"
			t.integer "errors_leading_to_goal"
			t.integer "errors_leading_to_goal_attempt"
			t.integer "penalties_conceded"
			t.integer "penalties_missed"
			t.string "threat", limit: 45
			t.decimal "influence", precision: 6, scale: 2
			t.decimal "creativity", precision: 6, scale: 2
			t.index ["team_id"], name: "team_id"
		end

		create_table "player_matches", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
			t.integer "match_id"
			t.integer "player_id"
			t.string "full_name", limit: 80
			t.string "first_name", limit: 45
			t.string "second_name", limit: 45
			t.integer "position"
			t.integer "squad_number"
			t.integer "total_value"
			t.integer "team_id"
			t.string "team_name", limit: 45
			t.integer "round"
			t.integer "minutes"
			t.integer "total_points"
			t.string "kickoff_time_formatted", limit: 45
			t.string "was_home", limit: 45
			t.integer "opp_team_id"
			t.string "opp_team_name", limit: 45
			t.integer "team_h_score"
			t.integer "team_a_score"
			t.integer "goals_scored"
			t.integer "assists"
			t.integer "winning_goals"
			t.integer "big_chances_created"
			t.integer "big_chances_missed"
			t.integer "key_passes"
			t.decimal "passes_success", precision: 6, scale: 2
			t.integer "attempted_passes"
			t.integer "completed_passes"
			t.integer "open_play_crosses"
			t.integer "offside"
			t.integer "target_missed"
			t.integer "dribbles"
			t.integer "tackled"
			t.integer "tackles"
			t.integer "recoveries"
			t.integer "clearances_blocks_interceptions"
			t.integer "clean_sheets"
			t.integer "saves"
			t.integer "penalties_saved"
			t.integer "fouls"
			t.integer "own_goals"
			t.integer "yellow_cards"
			t.integer "red_cards"
			t.integer "goals_conceded"
			t.integer "errors_leading_to_goal"
			t.integer "errors_leading_to_goal_attempt"
			t.integer "penalties_conceded"
			t.integer "penalties_missed"
			t.integer "bonus"
			t.string "threat", limit: 45
			t.decimal "influence", precision: 6, scale: 2
			t.decimal "creativity", precision: 6, scale: 2
			t.integer "bps"
			t.integer "transfers_in"
			t.integer "transfers_out"
			t.integer "transfers_balance"
			t.integer "selected"
			t.index ["player_id"], name: "player_id"
		end

		create_table "players", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
			t.string "full_name", limit: 80
			t.string "first_name", limit: 45
			t.string "second_name", limit: 45
			t.integer "position"
			t.integer "squad_number"
			t.integer "team_id"
			t.string "team_name", limit: 45
			t.integer "now_cost"
			t.integer "minutes"
			t.integer "total_points"
			t.integer "bps"
			t.string "in_dreamteam", limit: 45
			t.decimal "points_per_game", precision: 6, scale: 2
			t.integer "dreamteam_count"
			t.decimal "selected_by_percent", precision: 6, scale: 2
			t.decimal "form", precision: 6, scale: 2
			t.integer "goals_scored"
			t.integer "assists"
			t.integer "winning_goals"
			t.integer "big_chances_created"
			t.integer "big_chances_missed"
			t.integer "key_passes"
			t.decimal "passes_success", precision: 6, scale: 2
			t.integer "attempted_passes"
			t.integer "completed_passes"
			t.integer "open_play_crosses"
			t.integer "offside"
			t.integer "target_missed"
			t.integer "dribbles"
			t.integer "tackled"
			t.integer "tackles"
			t.integer "recoveries"
			t.integer "clearances_blocks_interceptions"
			t.integer "clean_sheets"
			t.integer "saves"
			t.integer "penalties_saved"
			t.integer "fouls"
			t.integer "own_goals"
			t.integer "yellow_cards"
			t.integer "red_cards"
			t.integer "goals_conceded"
			t.integer "errors_leading_to_goal"
			t.integer "errors_leading_to_goal_attempt"
			t.integer "penalties_conceded"
			t.integer "penalties_missed"
			t.integer "bonus"
			t.string "threat", limit: 45
			t.decimal "influence", precision: 6, scale: 2
			t.decimal "creativity", precision: 6, scale: 2
			t.index ["team_id"], name: "team_id"
		end

		create_table "teams", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
			t.string "team_name", limit: 80
			t.string "stadium", limit: 80
			t.integer "stadium_capacity"
			t.integer "games_played"
			t.integer "points"
			t.integer "won"
			t.integer "draws"
			t.integer "lost"
			t.integer "goals_scored"
			t.integer "goals_conceded"
			t.integer "goals_diff"
			t.integer "assists"
			t.integer "big_chances_created"
			t.integer "big_chances_missed"
			t.integer "key_passes"
			t.decimal "passes_success", precision: 6, scale: 2
			t.integer "attempted_passes"
			t.integer "completed_passes"
			t.integer "open_play_crosses"
			t.integer "offside"
			t.integer "target_missed"
			t.integer "dribbles"
			t.integer "tackled"
			t.integer "tackles"
			t.integer "recoveries"
			t.integer "clearances_blocks_interceptions"
			t.integer "clean_sheets"
			t.integer "saves"
			t.integer "penalties_saved"
			t.integer "fouls"
			t.integer "own_goals"
			t.integer "yellow_cards"
			t.integer "red_cards"
			t.integer "errors_leading_to_goal"
			t.integer "errors_leading_to_goal_attempt"
			t.integer "penalties_conceded"
			t.integer "penalties_missed"
			t.string "threat", limit: 45
			t.decimal "influence", precision: 6, scale: 2
			t.decimal "creativity", precision: 6, scale: 2
			t.decimal "points_per_game", precision: 6, scale: 2
		end

		add_foreign_key "matches", "teams", name: "matches_ibfk_1"
		add_foreign_key "player_matches", "players", name: "player_matches_ibfk_1"
		add_foreign_key "players", "teams", name: "players_ibfk_1"
	end
end
