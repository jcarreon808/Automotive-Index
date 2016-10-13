\c janphillipcarreon

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

CREATE INDEX make_titles
  ON car_models (make_title);

CREATE INDEX model_titles
  ON car_models (model_title);


SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models
WHERE make_code = 'LAM';

SELECT * FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models
WHERE year = 2010;

-- notes
-- time 53.8779 lambo
-- time 50.815 ms GT-R
-- time 64.585 ms
-- time 134.870 ms
-- time 66.935 ms


