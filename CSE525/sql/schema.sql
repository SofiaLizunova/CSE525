-- Core schema for Phase A prototype

CREATE TABLE IF NOT EXISTS line_metadata (
    line_id INTEGER PRIMARY KEY,
    line_name TEXT NOT NULL,
    voltage_kv REAL,
    length_km REAL,
    current_str_amp REAL,
    planned_upgrade_amp REAL,
    conductor_temp_c REAL,
    emissivity REAL,
    absorptivity REAL,
    conductor_diameter_mm REAL,
    ac_resistance_25 REAL,
    ac_resistance_75 REAL,
    elevation_m REAL
);

CREATE TABLE IF NOT EXISTS tower_locations (
    tower_id INTEGER PRIMARY KEY,
    line_id INTEGER,
    tower_name TEXT,
    latitude REAL,
    longitude REAL,
    FOREIGN KEY (line_id) REFERENCES line_metadata(line_id)
);

CREATE TABLE IF NOT EXISTS weather_observations (
    obs_id INTEGER PRIMARY KEY,
    tower_id INTEGER,
    timestamp TEXT,
    ambient_temp_c REAL,
    wind_speed_ms REAL,
    wind_direction_deg REAL,
    ghi_wm2 REAL,
    FOREIGN KEY (tower_id) REFERENCES tower_locations(tower_id)
);

CREATE TABLE IF NOT EXISTS scenario_configurations (
    scenario_id INTEGER PRIMARY KEY,
    scenario_name TEXT,
    daylight_only INTEGER DEFAULT 0,
    safety_margin_pct REAL DEFAULT 0,
    notes TEXT
);

CREATE TABLE IF NOT EXISTS ampacity_results (
    result_id INTEGER PRIMARY KEY,
    scenario_id INTEGER,
    timestamp TEXT,
    worst_temp_c REAL,
    worst_wind_speed_ms REAL,
    worst_ghi_wm2 REAL,
    ampacity_a REAL,
    above_current_str INTEGER,
    above_upgrade INTEGER,
    FOREIGN KEY (scenario_id) REFERENCES scenario_configurations(scenario_id)
);
