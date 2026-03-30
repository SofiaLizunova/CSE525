-- Example view for worst-case hourly weather across towers
-- Replace or extend with your exact SQL calculation logic.

CREATE VIEW IF NOT EXISTS hourly_worst_case_weather AS
SELECT
    wo.timestamp,
    MAX(wo.ambient_temp_c) AS worst_temp_c,
    MIN(wo.wind_speed_ms) AS worst_wind_speed_ms,
    MAX(wo.ghi_wm2) AS worst_ghi_wm2
FROM weather_observations wo
GROUP BY wo.timestamp;

-- Final ampacity calculation logic can be materialised here later.
-- Example: create a table or view that combines line metadata with worst-case hourly weather.
