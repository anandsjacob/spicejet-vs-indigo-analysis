CREATE DATABASE spicejet_analysis;
USE spicejet_analysis;

CREATE TABLE financial_summary (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    revenue_from_operations     DECIMAL(12,2),
    other_income                DECIMAL(12,2),
    total_income                DECIMAL(12,2),
    total_expenses              DECIMAL(12,2),
    ebitda                      DECIMAL(12,2),
    depreciation                DECIMAL(12,2),
    finance_costs               DECIMAL(12,2),
    net_profit_loss             DECIMAL(12,2),
    total_assets                DECIMAL(12,2),
    total_equity                DECIMAL(12,2),
    total_debt                  DECIMAL(12,2),
    cash_bank_balances          DECIMAL(12,2),
    net_cash_operating          DECIMAL(12,2),
    total_current_assets        DECIMAL(12,2),
    total_current_liabilities   DECIMAL(12,2)
);
CREATE TABLE operational_metrics (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    passengers_carried_mn       DECIMAL(8,2),
    load_factor_pct             DECIMAL(5,2),
    fleet_size                  INT,
    ask_million                 DECIMAL(10,2),
    rpk_million                 DECIMAL(10,2),
    domestic_market_share_pct   DECIMAL(5,3),
    fuel_cost                   DECIMAL(12,2)
);
CREATE TABLE key_ratios (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    fuel_cost_pct_expenses      DECIMAL(8,6),
    debt_equity_ratio           DECIMAL(10,6),
    revenue_per_passenger       DECIMAL(12,6),
    rask                        DECIMAL(10,6),
    cask                        DECIMAL(10,6),
    revenue_yoy_growth          DECIMAL(10,6),
    ebitda_margin               DECIMAL(10,6),
    net_margin                  DECIMAL(10,6),
    total_debt_to_revenue       DECIMAL(10,6),
    current_ratio               DECIMAL(10,6)
);
CREATE TABLE expense_breakdown (
    id                              INT PRIMARY KEY AUTO_INCREMENT,
    company                         VARCHAR(100),
    fiscal_year                     VARCHAR(20),
    aviation_turbine_fuel           DECIMAL(12,2),
    aircraft_repairs_maintenance    DECIMAL(12,2),
    aircraft_lease_operating        DECIMAL(12,2),
    supplemental_lease_charges      DECIMAL(12,2),
    landing_navigation_airport      DECIMAL(12,2),
    employee_benefits               DECIMAL(12,2),
    other_operating_items           DECIMAL(12,2),
    total_expenses_pre_da           DECIMAL(12,2),
    depreciation                    DECIMAL(12,2),
    finance_costs                   DECIMAL(12,2),
    fully_loaded_total_costs        DECIMAL(12,2)
);
CREATE TABLE events_timeline (
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    company             VARCHAR(100),
    fiscal_year         VARCHAR(20),
    category            VARCHAR(50),
    event_description   TEXT,
    financial_impact    TEXT,
    source              VARCHAR(200)
);
INSERT INTO financial_summary (
    company, fiscal_year,
    revenue_from_operations, other_income, total_income,
    total_expenses, ebitda, depreciation, finance_costs,
    net_profit_loss, total_assets, total_equity, total_debt,
    cash_bank_balances, net_cash_operating,
    total_current_assets, total_current_liabilities
) VALUES
('SpiceJet Limited', 'FY2020-21',
 51333.77, 9335.59, 60669.36,
 49590.89, 11078.47, 15579.56, 6020.50,
 -9983.02, 113755.24, -25715.30, 91533.77,
 320.33, 2259.17, 25784.20, 77642.57),

('SpiceJet Limited', 'FY2021-22',
 65573.27, 9872.33, 75445.60,
 74843.37, 602.23, 12897.32, 4825.79,
 -17254.65, 95203.75, -42884.32, 83301.99,
 602.99, 9776.83, 21205.37, 85292.04),

('SpiceJet Limited', 'FY2022-23',
 88688.40, 9909.10, 98597.50,
 98928.86, -331.36, 10193.64, 5056.51,
 -15030.15, 102797.74, -32316.07, 73482.13,
 336.13, 929.81, 21183.77, 96993.38),

('SpiceJet Limited', 'FY2023-24',
 70499.74, 14186.66, 84686.40,
 76971.69, 7714.71, 7479.13, 4613.26,
 -4094.39, 89565.95, -25858.47, 53755.39,
 1975.52, -6134.17, 24727.26, 89558.73),

('SpiceJet Limited', 'FY2024-25',
 52839.97, 13989.55, 66829.52,
 57495.71, 9333.81, 6376.98, 2908.08,
 580.74, 91158.19, 6830.22, 42137.90,
 2374.92, -16650.74, 27242.38, 65693.05);
 
 INSERT INTO operational_metrics (
    company, fiscal_year,
    passengers_carried_mn, load_factor_pct,
    fleet_size, ask_million, rpk_million,
    domestic_market_share_pct, fuel_cost
) VALUES
('SpiceJet Limited', 'FY2020-21',
 7.76, 0.77, 98, 11892.00, 9156.84, 0.094, 15288.00),

('SpiceJet Limited', 'FY2021-22',
 9.18, 0.80, 88, 13152.00, 10521.60, 0.102, 29458.00),

('SpiceJet Limited', 'FY2022-23',
 12.74, 0.87, 76, 18251.00, 15878.37, 0.064, 47716.54),

('SpiceJet Limited', 'FY2023-24',
 9.78, 0.90, 65, 13623.00, 12260.70, 0.053, 29825.62),

('SpiceJet Limited', 'FY2024-25',
 6.94, 0.88, 61, 10210.00, 8984.80, 0.033, 20515.89);
 INSERT INTO key_ratios (
    company, fiscal_year,
    fuel_cost_pct_expenses, debt_equity_ratio,
    revenue_per_passenger, rask, cask,
    revenue_yoy_growth, ebitda_margin,
    net_margin, total_debt_to_revenue, current_ratio
) VALUES
('SpiceJet Limited', 'FY2020-21',
 0.308282, -3.559506, 6615.176546, 4.316664, 4.170105,
 NULL, 0.215813, -0.194473, 1.783110, 0.332088),

('SpiceJet Limited', 'FY2021-22',
 0.393595, -1.942481, 7143.057734, 4.985802, 5.690646,
 0.27739, 0.009184, -0.263135, 1.270365, 0.248621),

('SpiceJet Limited', 'FY2022-23',
 0.482332, -2.273857, 6961.412873, 4.859372, 5.420462,
 0.352508, -0.003736, -0.169471, 0.828543, 0.218404),

('SpiceJet Limited', 'FY2023-24',
 0.387488, -2.078831, 7208.562372, 5.175052, 5.650128,
 -0.205085, 0.109429, -0.058077, 0.762491, 0.276101),

('SpiceJet Limited', 'FY2024-25',
 0.356825, 6.169333, 7613.828530, 5.175315, 5.631313,
 -0.250494, 0.176643, 0.010991, 0.797463, 0.414692);
 
 INSERT INTO expense_breakdown (
    company, fiscal_year,
    aviation_turbine_fuel, aircraft_repairs_maintenance,
    aircraft_lease_operating, supplemental_lease_charges,
    landing_navigation_airport, employee_benefits,
    other_operating_items, total_expenses_pre_da,
    depreciation, finance_costs, fully_loaded_total_costs
) VALUES
('SpiceJet Limited', 'FY2020-21',
 15288.35, 4248.13, 2484.84, 6438.05,
 6466.17, 6762.36, 7902.99, 49590.89,
 15579.56, 6020.50, 71190.95),

('SpiceJet Limited', 'FY2021-22',
 29457.78, 4977.48, 5919.21, 5616.86,
 7590.55, 7273.99, 14007.50, 74843.37,
 12897.32, 4825.79, 92566.48),

('SpiceJet Limited', 'FY2022-23',
 47716.54, 5594.85, 3755.73, 5450.65,
 7955.15, 8438.71, 20017.23, 98928.86,
 10193.64, 5056.51, 114179.01),

('SpiceJet Limited', 'FY2023-24',
 29825.62, 3224.62, 6381.98, 5046.73,
 6995.94, 7705.43, 17791.37, 76971.69,
 7479.13, 4613.26, 89064.08),

('SpiceJet Limited', 'FY2024-25',
 20515.89, 1957.93, 7120.34, 4035.59,
 5434.36, 6177.02, 12254.58, 57495.71,
 6376.98, 2908.08, 66780.77);
 INSERT INTO events_timeline (
    company, fiscal_year, category,
    event_description, financial_impact, source
) VALUES
('SpiceJet Limited', 'FY2020-21', 'Operations',
 'COVID-19 pandemic grounded most of the fleet for large parts of the year',
 'Drove Rs 9,983 Mn net loss; revenue fell 58% from FY20',
 'FY2020-21 Annual Report, MD&A, p.63-64'),

('SpiceJet Limited', 'FY2020-21', 'Fleet',
 'Boeing 737 MAX remained grounded following global grounding from March 2019',
 'Reduced usable fleet capacity; Boeing compensation recognised as other income',
 'FY2020-21 Annual Report, Directors Report, p.14-15'),

('SpiceJet Limited', 'FY2021-22', 'Fleet',
 'Boeing 737 MAX cleared by DGCA and returned to revenue service',
 'Partial capacity restoration; ASK rose to 13,152 Mn from 11,892 Mn',
 'FY2021-22 Annual Report, Directors Report, p.15-16'),

('SpiceJet Limited', 'FY2021-22', 'Financial',
 'Fuel costs nearly doubled (Rs 29,458 Mn vs Rs 15,288 Mn) amid demand recovery',
 'Net loss of Rs 17,255 Mn; total equity turned more deeply negative',
 'FY2021-22 Annual Report, Standalone P&L, p.67'),

('SpiceJet Limited', 'FY2022-23', 'Financial/Legal',
 'Multiple lessors filed insolvency applications under Section 9 of IBC',
 'Signalled acute liquidity stress; going-concern discussion in auditor report',
 'FY2022-23 Annual Report, Board Report / Notes to Accounts'),

('SpiceJet Limited', 'FY2022-23', 'Capital Raise',
 'Board approved preferential allotment raising approx Rs 8,338 Mn',
 'Partial capital infusion; still ended year with equity of -Rs 32,316 Mn',
 'FY2022-23 Annual Report, Board Report, p.10-12'),

('SpiceJet Limited', 'FY2022-23', 'Market',
 'Domestic market share fell from 10.2% to 6.4% as grounded aircraft limited capacity',
 'Structural revenue capacity eroded vs IndiGo and new entrant Akasa Air',
 'External: DGCA data via Business Standard Apr 2023'),

('SpiceJet Limited', 'FY2023-24', 'Fleet',
 'Fleet fell to 65 aircraft as planes grounded for lack of spares and lease payments',
 'ASK dropped to 13,623 Mn; net loss narrowed to Rs 4,094 Mn from Rs 15,030 Mn',
 'FY2023-24 Annual Report, Directors Report / MD&A, p.70-72'),

('SpiceJet Limited', 'FY2023-24', 'Legal',
 'Resolved dispute with erstwhile promoters Kalanithi Maran / KAL Airways',
 'Removed major contingent liability overhang; improved balance sheet clarity',
 'FY2023-24 Annual Report, Notes to Accounts'),

('SpiceJet Limited', 'FY2024-25', 'Capital Raise',
 'Completed Rs 30,000 Mn QIP in September 2024 — largest fundraise since crisis',
 'Turned total equity positive (+Rs 6,830 Mn) for first time since FY2019-20',
 'FY2024-25 Annual Report, State of Affairs, p.89'),

('SpiceJet Limited', 'FY2024-25', 'Financial',
 'Reported first standalone net profit (Rs 581 Mn) in several years',
 'First profitable year in dataset; EBITDA of Rs 9,334 Mn on leaner cost base',
 'FY2024-25 Annual Report, Standalone P&L, p.109'),

('SpiceJet Limited', 'FY2024-25', 'Market',
 'Domestic market share fell to 3.3% in March 2025 despite equity turnaround',
 'Balance sheet fix not yet translated into stronger competitive position',
 'External: DGCA data via IBEF Apr 2025');
 
select * from financial_summary;
select * from operational_metrics;
select * from key_ratios;
select * from expense_breakdown;
select * from events_timeline;

#Revenue vs Expense Crisis Timeline
#"When exactly did SpiceJet's expenses overtake revenue and by how much?"
SELECT
id,
fiscal_year,
revenue_from_operations,
total_expenses,
revenue_from_operations-total_expenses AS REVENUE_GAP,
ROUND(total_expenses / revenue_from_operations * 100 , 1 ) AS EXPENSE_AS_PERSENTAGE_OF_REVENUE,
CASE 
WHEN revenue_from_operations-total_expenses < 0 THEN 'NOT MAKING ENOUGH MONEY FROM OPERETIONS' ELSE "REVENUE COVERS EXPENCE"
END AS ABOUNT_REVENUE
FROM financial_summary;

# Fuel Cost Explosion Analysis
# How did fuel costs grow as a % of total expenses and revenue?
# When did fuel become the primary crisis driver?

SELECT 
FY.id,
FY.fiscal_year,
aviation_turbine_fuel AS FUEL_EXPENCE,
total_expenses,
ROUND(aviation_turbine_fuel / FY.total_expenses * 100 , 1) AS FUEL_AS_PERSENTAGE_OF_EXPENCE,
revenue_from_operations,
ROUND(aviation_turbine_fuel / revenue_from_operations * 100 , 1) AS FUEL_AS_PERSENTAGE_OF_REVENUE,
ROUND((( aviation_turbine_fuel - LAG(aviation_turbine_fuel)OVER(ORDER BY fiscal_year))/ LAG(aviation_turbine_fuel)OVER(ORDER BY fiscal_year)) * 100 ,1) AS YEAR_GROWTH_OF_FUEL,
CASE
WHEN ROUND(aviation_turbine_fuel / total_expenses * 100 , 1) > 45 THEN "CRITICAL"
WHEN ROUND(aviation_turbine_fuel / total_expenses * 100 , 1) > 30 THEN "HIGH" ELSE "NORMAL"
END AS FUEL_SUMMARY
FROM financial_summary FY
JOIN expense_breakdown EB ON EB.id = FY.id;

#Correlate fleet shrinkage with revenue decline
#did revenue fall because fleet shrank, or was demand the driver?

SELECT om.fiscal_year, om.fleet_size, fs.revenue_from_operations,net_cash_operating,
LAG(fs.revenue_from_operations) OVER (ORDER BY om.fiscal_year) AS prev_revenue,
ROUND(revenue_from_operations/fleet_size , 1 ) as revenue_per_craft ,
ROUND((fs.revenue_from_operations - LAG(fs.revenue_from_operations) OVER (ORDER BY om.fiscal_year)) 
/ LAG(fs.revenue_from_operations) OVER (ORDER BY om.fiscal_year) * 100, 1) AS revenue_yoy_pct
FROM operational_metrics om
JOIN financial_summary fs ON om.fiscal_year = fs.fiscal_year
ORDER BY om.fiscal_year;

# Debt vs Revenue Sustainability
# "Is SpiceJet's debt load manageable? How does debt compare to revenue over 5 years?"

select
fs.fiscal_year,
total_debt,
finance_costs,
total_debt_to_revenue,
revenue_from_operations,
ROUND(fs.total_debt - LAG(fs.total_debt) OVER (ORDER BY fs.fiscal_year), 1) AS debt_change,
ROUND((total_debt - LAG(total_debt)OVER(ORDER BY fiscal_year)) / LAG(total_debt)OVER(ORDER BY fiscal_year) * 100 ,1) as DEPT_REDUCTION_AMOUNT
FROM  financial_summary fs
JOIN  key_ratios kr on fs.fiscal_year = kr.fiscal_year;

ALTER TABLE financial_summary 
ADD COLUMN equity_proceeds NUMERIC(12,2);
UPDATE financial_summary SET equity_proceeds = 8.61      WHERE fiscal_year = 'FY2020-21';
UPDATE financial_summary SET equity_proceeds = 8.60      WHERE fiscal_year = 'FY2021-22';
UPDATE financial_summary SET equity_proceeds = 0.49      WHERE fiscal_year = 'FY2022-23';
UPDATE financial_summary SET equity_proceeds = 8170.71   WHERE fiscal_year = 'FY2023-24';
UPDATE financial_summary SET equity_proceeds = 32197.81  WHERE fiscal_year = 'FY2024-25';
SELECT fiscal_year, equity_proceeds FROM financial_summary ORDER BY fiscal_year;
SELECT 
    fs.fiscal_year,
    fs.equity_proceeds,
    fs.total_debt,
    LAG(fs.total_debt) OVER (ORDER BY fs.fiscal_year) AS prev_debt,
    ROUND(fs.total_debt - LAG(fs.total_debt) OVER (ORDER BY fs.fiscal_year), 1) AS debt_change,
    ROUND(fs.equity_proceeds + (fs.total_debt - LAG(fs.total_debt) OVER (ORDER BY fs.fiscal_year)), 1) 
        AS equity_covers_debt_paydown_check
FROM financial_summary fs
ORDER BY fs.fiscal_year;

# Indigo Details

USE spicejet_analysis;

CREATE TABLE indigo_financial_summary (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    revenue_from_operations     DECIMAL(12,2),
    other_income                DECIMAL(12,2),
    total_income                DECIMAL(12,2),
    total_expenses              DECIMAL(12,2),
    ebitda                      DECIMAL(12,2),
    depreciation                DECIMAL(12,2),
    finance_costs               DECIMAL(12,2),
    net_profit_loss             DECIMAL(12,2),
    total_assets                DECIMAL(12,2),
    total_equity                DECIMAL(12,2),
    total_debt                  DECIMAL(12,2),
    cash_bank_balances          DECIMAL(12,2),
    net_cash_operating          DECIMAL(12,2),
    total_current_assets        DECIMAL(12,2),
    total_current_liabilities   DECIMAL(12,2)
);

CREATE TABLE indigo_operational_metrics (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    passengers_carried_mn       DECIMAL(8,3),
    load_factor_pct             DECIMAL(5,3),
    fleet_size                  INT,
    ask_million                 DECIMAL(10,2),
    rpk_million                 DECIMAL(10,2),
    domestic_market_share_pct   DECIMAL(5,3),
    fuel_cost                   DECIMAL(12,2)
);

CREATE TABLE indigo_key_ratios (
    id                          INT PRIMARY KEY AUTO_INCREMENT,
    company                     VARCHAR(100),
    fiscal_year                 VARCHAR(20),
    fuel_cost_pct_expenses      DECIMAL(8,6),
    debt_equity_ratio           DECIMAL(10,6),
    revenue_per_passenger       DECIMAL(12,6),
    rask                        DECIMAL(10,2),
    cask                        DECIMAL(10,2),
    revenue_yoy_growth          DECIMAL(10,6),
    ebitda_margin               DECIMAL(10,6),
    net_margin                  DECIMAL(10,6),
    total_debt_to_revenue       DECIMAL(10,6),
    current_ratio               DECIMAL(10,6)
);

CREATE TABLE indigo_expense_breakdown (
    id                              INT PRIMARY KEY AUTO_INCREMENT,
    company                         VARCHAR(100),
    fiscal_year                     VARCHAR(20),
    aviation_turbine_fuel           DECIMAL(12,2),
    aircraft_repairs_maintenance    DECIMAL(12,2),
    aircraft_lease_operating        DECIMAL(12,2),
    supplemental_lease_charges      DECIMAL(12,2),
    landing_navigation_airport      DECIMAL(12,2),
    employee_benefits               DECIMAL(12,2),
    other_operating_items           DECIMAL(12,2),
    total_expenses_pre_da           DECIMAL(12,2),
    depreciation                    DECIMAL(12,2),
    finance_costs                   DECIMAL(12,2),
    fully_loaded_total_costs        DECIMAL(12,2)
);

CREATE TABLE indigo_events_timeline (
    id                  INT PRIMARY KEY AUTO_INCREMENT,
    company             VARCHAR(100),
    fiscal_year         VARCHAR(20),
    category            VARCHAR(50),
    event_description   TEXT,
    financial_impact    TEXT,
    source              VARCHAR(200)
);
-- Financial Summary
INSERT INTO indigo_financial_summary (
    company, fiscal_year,
    revenue_from_operations, other_income, total_income,
    total_expenses, ebitda, depreciation, finance_costs,
    net_profit_loss, total_assets, total_equity, total_debt,
    cash_bank_balances, net_cash_operating,
    total_current_assets, total_current_liabilities
) VALUES
('IndiGo', 'FY2020-21',
 146406.31, 10363.32, 156769.63,
 146660.87, 10108.76, 46986.85, 21419.83,
 -58297.92, 429742.54, 709.09, 298596.54,
 112270.60, -16204.04, 206151.87, 189017.72),

('IndiGo', 'FY2021-22',
 259309.27, 7245.42, 266554.69,
 254006.32, 12548.37, 50678.47, 23580.15,
 -61710.25, 458601.06, -60352.92, 368778.37,
 101165.22, 20641.01, 201470.88, 223853.28),

('IndiGo', 'FY2022-23',
 544464.53, 14314.35, 558778.88,
 479616.36, 79162.52, 51012.37, 31317.31,
 -3167.16, 590426.84, -63031.37, 448542.13,
 118105.72, 127031.40, 260713.47, 238138.45),

('IndiGo', 'FY2023-24',
 689043.42, 23255.72, 712299.14,
 526117.11, 186182.03, 64056.09, 41693.53,
 81674.85, 820688.22, 19319.28, 512800.20,
 167093.36, 211828.00, 357525.58, 307450.96),

('IndiGo', 'FY2024-25',
 808030.00, 33068.00, 841098.00,
 627968.00, 213130.00, 86366.00, 50889.00,
 72533.00, 1159139.00, 93068.00, 670884.00,
 188594.00, 240647.00, 504796.00, 341181.00);
 
 -- Operational Metrics
INSERT INTO indigo_operational_metrics (
    company, fiscal_year,
    passengers_carried_mn, load_factor_pct,
    fleet_size, ask_million, rpk_million,
    domestic_market_share_pct, fuel_cost
) VALUES
('IndiGo', 'FY2020-21',
 30.694, 0.694, 285, 45425.00, 31519.00, 0.540, 38312.77),

('IndiGo', 'FY2021-22',
 49.803, 0.736, 275, 70386.00, 51774.00, 0.538, 96952.36),

('IndiGo', 'FY2022-23',
 85.591, 0.821, 304, 114359.00, 93889.00, 0.557, 236460.17),

('IndiGo', 'FY2023-24',
 106.728, 0.859, 367, 139281.00, 119703.00, 0.605, 239045.78),

('IndiGo', 'FY2024-25',
 118.588, 0.860, 434, 157474.00, 135378.00, 0.620, 261973.00);
 
 -- Key Ratios
INSERT INTO indigo_key_ratios (
    company, fiscal_year,
    fuel_cost_pct_expenses, debt_equity_ratio,
    revenue_per_passenger, rask, cask,
    revenue_yoy_growth, ebitda_margin,
    net_margin, total_debt_to_revenue, current_ratio
) VALUES
('IndiGo', 'FY2020-21',
 0.261234, 421.098224, 4769.867401, 3.30, 4.58,
 NULL, 0.069046, -0.398193, 2.039506, 1.090648),

('IndiGo', 'FY2021-22',
 0.381693, -6.110365, 5206.699797, 3.73, 4.60,
 0.771162, 0.048392, -0.237979, 1.422157, 0.900013),

('IndiGo', 'FY2022-23',
 0.493019, -7.116173, 6361.235761, 4.80, 4.83,
 1.099672, 0.145395, -0.005817, 0.823822, 1.094798),

('IndiGo', 'FY2023-24',
 0.454358, 26.543443, 6456.069822, 4.96, 4.38,
 0.265543, 0.270204, 0.118534, 0.744220, 1.162870),

('IndiGo', 'FY2024-25',
 0.417176, 7.208536, 6813.758559, 5.14, 4.66,
 0.172684, 0.263765, 0.089765, 0.830271, 1.479555);
 -- Expense Breakdown
INSERT INTO indigo_expense_breakdown (
    company, fiscal_year,
    aviation_turbine_fuel, aircraft_repairs_maintenance,
    aircraft_lease_operating, supplemental_lease_charges,
    landing_navigation_airport, employee_benefits,
    other_operating_items, total_expenses_pre_da,
    depreciation, finance_costs, fully_loaded_total_costs
) VALUES
('IndiGo', 'FY2020-21',
 38312.77, 0.00, 2804.57, 41912.60,
 16128.84, 30261.95, 17240.14, 146660.87,
 46986.85, 21419.83, 215067.55),

('IndiGo', 'FY2021-22',
 96952.36, 0.00, 3116.84, 60897.84,
 22868.37, 31516.78, 38654.13, 254006.32,
 50678.47, 23580.15, 328264.94),

('IndiGo', 'FY2022-23',
 236460.17, 0.00, 3258.40, 80449.60,
 36468.00, 43246.56, 79733.63, 479616.36,
 51012.37, 31317.31, 561946.04),

('IndiGo', 'FY2023-24',
 239045.78, 0.00, 10751.95, 99316.24,
 46239.43, 58377.30, 72386.41, 526117.11,
 64056.09, 41693.53, 631866.73),

('IndiGo', 'FY2024-25',
 261973.00, 0.00, 30103.00, 112227.00,
 57531.00, 67301.00, 98833.00, 627968.00,
 86366.00, 50889.00, 765223.00);
 
 -- Events Timeline
INSERT INTO indigo_events_timeline (
    company, fiscal_year, category,
    event_description, financial_impact, source
) VALUES
('IndiGo', 'FY2020-21', 'Operations',
 'COVID-19 pandemic sharply curtailed flying; revenue fell 59% to Rs 146,406 Mn from Rs 357,560 Mn in FY20',
 'Drove Rs 58,298 Mn net loss — largest ever annual loss at the time',
 'FY2020-21 Annual Report, MD&A / Standalone P&L, p.20-21'),

('IndiGo', 'FY2020-21', 'Governance',
 'Public disagreement between co-founders Rahul Bhatia and Rakesh Gangwal over corporate governance',
 'Created governance overhang and investor uncertainty during pandemic year',
 'FY2020-21 Annual Report, Corporate Governance Report'),

('IndiGo', 'FY2021-22', 'Financial',
 'Fuel costs more than doubled to Rs 96,952 Mn amid demand recovery lagging oil price rise',
 'Losses widened to Rs 61,710 Mn; total equity turned negative for first time',
 'FY2021-22 Annual Report, Standalone P&L, p.129'),

('IndiGo', 'FY2021-22', 'Fleet',
 'Fleet dipped to 275 aircraft but ASK grew 54.9% and passengers rose 62.3% to 49.8 Mn',
 'Shift toward higher aircraft utilisation rather than pure fleet growth',
 'FY2021-22 Annual Report, MD&A, p.31'),

('IndiGo', 'FY2022-23', 'Fleet',
 'Placed firm order for 500 Airbus A320 Family aircraft — largest single airline order globally at the time',
 'Underpins fleet growth and network expansion plans through end of decade',
 'FY2022-23 Annual Report, Directors Report / MD&A, p.37'),

('IndiGo', 'FY2022-23', 'Market',
 'Rival Go First filed for insolvency in May 2023 and suspended operations removing domestic capacity',
 'IndiGo domestic market share climbed toward record levels above 61%',
 'External: DGCA data via Business Standard Jun 2023'),

('IndiGo', 'FY2022-23', 'International',
 'Entered codeshare with Turkish Airlines and wet-leased two Boeing 777 for Istanbul services',
 'Supported international network expansion without direct wide-body ownership',
 'FY2022-23 Annual Report, MD&A, p.35-36'),

('IndiGo', 'FY2023-24', 'Financial',
 'Returned to strong profitability with net profit of Rs 81,675 Mn vs loss of Rs 3,167 Mn in FY23',
 'Total equity turned positive for first time since FY2019-20',
 'FY2023-24 Annual Report, Standalone P&L, p.153'),

('IndiGo', 'FY2023-24', 'Market',
 'Domestic market share rose above 60% reaching 60.5% in March 2024 as Go First remained grounded',
 'Reinforced IndiGo position as India dominant domestic carrier',
 'External: DGCA data via Upstox / Business Standard Apr 2024'),

('IndiGo', 'FY2024-25', 'Capital Return',
 'Board recommended first ever dividend of Rs 10 per share for FY2024-25',
 'Marks structural shift in capital allocation following return to sustained profitability',
 'FY2024-25 Annual Report, Board Report, p.55'),

('IndiGo', 'FY2024-25', 'Financial',
 'Net profit moderated to Rs 72,533 Mn from Rs 81,675 Mn despite 17% revenue growth',
 'Finance costs and D&A rose sharply from fleet expansion; D/E improved to 7.2x from 26.5x',
 'FY2024-25 Annual Report, Standalone P&L / Note 31, p.151'),

('IndiGo', 'FY2024-25', 'Fleet',
 'Fleet grew to 434 aircraft; network expanded to 128 destinations with record 118.6 Mn passengers',
 'Supported 13.1% growth in ASK and RPK — record passenger numbers',
 'FY2024-25 Annual Report, MD&A, p.40-41');
 
 
SELECT * FROM indigo_financial_summary;    
SELECT * FROM indigo_operational_metrics;  
SELECT * FROM indigo_key_ratios;           
SELECT * FROM indigo_expense_breakdown;    
SELECT * FROM indigo_events_timeline;

# — Revenue vs Expense Crisis Timeline
SELECT
    id,
    fiscal_year,
    revenue_from_operations,
    total_expenses,
    revenue_from_operations - total_expenses AS REVENUE_GAP,
    ROUND(total_expenses / revenue_from_operations * 100, 1)
        AS EXPENSE_AS_PERCENTAGE_OF_REVENUE,
    CASE
        WHEN revenue_from_operations - total_expenses < 0
        THEN 'NOT MAKING ENOUGH MONEY FROM OPERATIONS'
        ELSE 'REVENUE COVERS EXPENSE'
    END AS ABOUT_REVENUE
FROM indigo_financial_summary
ORDER BY fiscal_year;


#Query 2 — Fuel Cost Explosion Analysis
SELECT
    FS.id,
    FS.fiscal_year,
    aviation_turbine_fuel                               AS FUEL_EXPENSE,
    FS.total_expenses,
    ROUND(aviation_turbine_fuel / FS.total_expenses * 100, 1)AS FUEL_AS_PERCENTAGE_OF_EXPENSE,
    revenue_from_operations,
    ROUND(aviation_turbine_fuel / revenue_from_operations * 100, 1)AS FUEL_AS_PERCENTAGE_OF_REVENUE,
    ROUND(((aviation_turbine_fuel -
          LAG(aviation_turbine_fuel) OVER (ORDER BY FS.fiscal_year))
        / LAG(aviation_turbine_fuel) OVER (ORDER BY FS.fiscal_year))
        * 100, 1)  AS YEAR_GROWTH_OF_FUEL,
    CASE
        WHEN ROUND(aviation_turbine_fuel / total_expenses * 100, 1) > 45
        THEN 'CRITICAL'
        WHEN ROUND(aviation_turbine_fuel / total_expenses * 100, 1) > 30
        THEN 'HIGH'
        ELSE 'NORMAL'
    END AS FUEL_SUMMARY
FROM indigo_financial_summary FS
JOIN indigo_expense_breakdown EB ON EB.id = FS.id
ORDER BY FS.fiscal_year;

#3 — Fleet vs Revenue Correlation

SELECT
om.fiscal_year,
om.fleet_size,
fs.revenue_from_operations,
fs.net_cash_operating,LAG(fs.revenue_from_operations) OVER (ORDER BY om.fiscal_year)              AS prev_revenue,
ROUND(revenue_from_operations / fleet_size, 1)  AS revenue_per_craft,
ROUND(
        (fs.revenue_from_operations -
         LAG(fs.revenue_from_operations)
         OVER (ORDER BY om.fiscal_year))
        / LAG(fs.revenue_from_operations)
          OVER (ORDER BY om.fiscal_year) * 100
    , 1)AS revenue_yoy_pct
FROM indigo_operational_metrics om
JOIN indigo_financial_summary fs
    ON om.fiscal_year = fs.fiscal_year
ORDER BY om.fiscal_year;

# 4 — Debt vs Revenue Sustainability

SELECT
fs.fiscal_year,
total_debt,
finance_costs,
total_debt_to_revenue,
revenue_from_operations,
ROUND(
        fs.total_debt -
        LAG(fs.total_debt) OVER (ORDER BY fs.fiscal_year)
    , 1) AS debt_change,
ROUND(
        (total_debt -
         LAG(total_debt) OVER (ORDER BY fiscal_year))
        / LAG(total_debt) OVER (ORDER BY fiscal_year) * 100
    , 1)  AS DEBT_CHANGE_PCT
FROM indigo_financial_summary fs
JOIN indigo_key_ratios kr
ON fs.fiscal_year = kr.fiscal_year
ORDER BY fs.fiscal_year;

SELECT
    eb.fiscal_year,
    eb.employee_benefits,
    om.passengers_carried_mn,
    ROUND(eb.employee_benefits / om.passengers_carried_mn, 1)
        AS employee_cost_per_passenger
FROM indigo_expense_breakdown eb
JOIN indigo_operational_metrics om
    ON eb.fiscal_year = om.fiscal_year
ORDER BY eb.fiscal_year;

# Comparison Between Spicejet and Indigo
#"Who crossed into profitability first, and by how much did the gap close each year?"

 
SELECT * FROM indigo_financial_summary;    
SELECT * FROM indigo_operational_metrics;  
SELECT * FROM indigo_key_ratios;           
SELECT * FROM indigo_expense_breakdown;    
SELECT * FROM indigo_events_timeline;

with combined as (
select
fiscal_year,
'Spicejet' as Company,
net_profit_loss as profit
from financial_summary
union all
select
fiscal_year,
'Indigo' as Company,
net_profit_loss as profit
from indigo_financial_summary
 ),
 pivoted as(
 select
 fiscal_year,
 max(case when company = 'Spicejet' then profit end) as spicejet_profit,
 max(case when company = 'Indigo' then profit end) as Indigo_profit
 from combined 
 group by fiscal_year
 )
 select 
 fiscal_year,
 spicejet_profit,
 Indigo_profit,
 spicejet_profit - lag(spicejet_profit)over(order by fiscal_year) as Profit_change_spicejet,
 Indigo_profit - lag(Indigo_profit)over(order by fiscal_year) as Indigo_change_spicejet
 from pivoted
 order by fiscal_year;
 
 with combined as (
select
om.fiscal_year,
om.company,
fs.revenue_from_operations, 
om.domestic_market_share_pct 
from operational_metrics om
join financial_summary fs on fs.fiscal_year = om.fiscal_year  AND om.company = fs.company
union all
select
iom.fiscal_year,
iom.company,
ifs.revenue_from_operations ,
iom.domestic_market_share_pct 
from indigo_financial_summary ifs
join  indigo_operational_metrics iom on iom.fiscal_year = ifs.fiscal_year  AND iom.company = ifs.company
)
SELECT 
    company,
    fiscal_year,
    revenue_from_operations,
    domestic_market_share_pct,
    LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year) AS prev_revenue,
    ROUND(
        (revenue_from_operations - LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year))
        / LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year) * 100
    , 1) AS revenue_yoy_pct,
    LAG(domestic_market_share_pct) OVER (PARTITION BY company ORDER BY fiscal_year) AS prev_market_share,
    ROUND(
        (domestic_market_share_pct - LAG(domestic_market_share_pct) OVER (PARTITION BY company ORDER BY fiscal_year)) * 100
    , 2) AS market_share_change_pct_points,
    CASE 
        WHEN revenue_from_operations > LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year)
             AND domestic_market_share_pct < LAG(domestic_market_share_pct) OVER (PARTITION BY company ORDER BY fiscal_year)
        THEN 'Revenue grew but LOST market share'
        WHEN revenue_from_operations < LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year)
             AND domestic_market_share_pct > LAG(domestic_market_share_pct) OVER (PARTITION BY company ORDER BY fiscal_year)
        THEN 'Revenue fell but GAINED market share'
        WHEN revenue_from_operations > LAG(revenue_from_operations) OVER (PARTITION BY company ORDER BY fiscal_year)
             AND domestic_market_share_pct > LAG(domestic_market_share_pct) OVER (PARTITION BY company ORDER BY fiscal_year)
        THEN 'Both grew together'
        ELSE 'Both declined together'
    END AS trend_alignment
FROM combined
ORDER BY company, fiscal_year; 

 
 
