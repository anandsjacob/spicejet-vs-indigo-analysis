# Airline Financial Crisis Analysis: SpiceJet vs. IndiGo (FY2020-21 – FY2024-25)

An end-to-end financial analysis project tracing two Indian airlines through the same five-year period — one fighting for survival, one scaling aggressively — built from raw annual report PDFs through to a fully interactive SQL + Excel + Power BI analysis stack.

---

## Project Overview

SpiceJet and IndiGo lived through the exact same five years: the same pandemic, the same fuel price shocks, the same demand recovery. One came out the other side having shrunk its fleet by 38%, lost two-thirds of its market share, and only turned its first profit in FY25 after a ₹30,000 Mn emergency equity raise. The other tripled its revenue, grew its fleet by 52%, and became the dominant airline in the Indian sky.

This project extracts, structures, and analyzes five years of audited financial data for both airlines — directly from their official annual reports — to answer one core question: **what actually separates a company that survives a crisis from one that's nearly destroyed by it?**

---

## Data Source

All financial figures were extracted directly from **audited Standalone Financial Statements** published in each company's own Annual Report (not third-party aggregators):

- SpiceJet Limited — Annual Reports, FY2020-21 through FY2024-25 (5 PDFs, 180–248 pages each)
- InterGlobe Aviation Limited (IndiGo) — Annual Reports, FY2020-21 through FY2024-25

Data pulled from each report includes:
- Standalone Balance Sheet
- Standalone Statement of Profit & Loss
- Standalone Cash Flow Statement
- Notes to Accounts (operating expense breakdowns)
- Management Discussion & Analysis (operational metrics: fleet size, ASK, load factor)
- External DGCA data (used only where a company did not disclose it directly, e.g. monthly domestic market share)

Every derived figure in this project is traceable back to a specific statement and, where practical, a specific page in the source report.

---

## Tech Stack & Pipeline

| Stage | Tool | What happened |
|---|---|---|
| 1. Extraction | `pdftotext`, Python | Extracted and parsed 5 years × 2 companies of annual report text (~2,000+ pages total) to locate financial statements, MD&A sections, and expense notes |
| 2. Structuring | Excel (`openpyxl`) | Built a normalized, formula-driven workbook — 5 sheets per company (Financial Summary, Operational Metrics, Key Ratios, Expense Breakdown, Events & Sources), SQL-ready with consistent types and one row per fiscal year |
| 3. Database | SQL (MySQL) | Modeled the same structure as relational tables; wrote analytical queries using window functions (`LAG`, `PARTITION BY`), CTEs, conditional aggregation, and multi-table joins |
| 4. BI Dashboard | Power BI | Built a 4-page interactive dashboard (Executive Summary, Cost Analysis, Operations, Crisis & Recovery) with DAX measures, bookmarks, drill-through pages, synced slicers, and conditional formatting |
| 5. Comparison | Excel (Power Pivot) | Combined both companies into a single long-format workbook with a composite join key, built 16+ PivotTable comparisons across all four data categories |

---

## Key Findings

**1. Same crisis, opposite outcomes**
SpiceJet's fleet shrank from 98 to 61 aircraft (-38%) while IndiGo's grew from 285 to 434 (+52%) over identical five-year windows.

**2. The real story wasn't operational — it was the balance sheet going in**
IndiGo entered COVID with enough of an equity cushion to keep losing money *while continuing to grow*. SpiceJet entered already fragile, and was forced to shrink its fleet just to survive — which meant it had less capacity to capture the demand recovery when it eventually arrived.

**3. CASK vs. RASK identifies the exact loss-making years**
Whenever Cost per Available Seat Kilometre (CASK) exceeded Revenue per Available Seat Kilometre (RASK), the airline was structurally losing money on every seat flown — this single relationship predicted the loss years for both companies more reliably than headline revenue figures.

**4. Recovery ≠ competitive recovery**
SpiceJet's FY2024-25 turnaround (first profit in years, equity flipped positive) was funded almost entirely by a ₹32,197.81 Mn equity raise — not operational improvement. Its domestic market share kept falling (9.4% → 3.3%) even as its balance sheet improved, proving a financial fix and a competitive fix are not the same thing.

**5. Debt tells two different stories depending on context**
SpiceJet's falling debt was a *forced* survival measure. IndiGo's rising debt was a *deliberate* growth strategy, funding fleet expansion. Same directional metric, opposite meaning — a reminder that ratios need business context, not just trend direction.

---

---

## SQL Highlights

The analysis queries go beyond basic `SELECT`s — a few examples of what's inside `analysis_queries.sql`:

- **Year-over-year trend analysis** using `LAG() OVER (PARTITION BY company ORDER BY fiscal_year)` to track revenue and market share growth *within* each company after both were combined into one result set
- **Conditional aggregation** to pivot two separate company tables into side-by-side comparison rows without a native pivot function
- **CTEs** layering expense-ratio calculations before a final comparison query
- A **fuel cost crisis classifier** (`CASE WHEN fuel_pct > 45 THEN 'CRITICAL' ...`) that flags exactly which years fuel costs became structurally unsustainable

---

## Power BI Dashboard Features

- **4 pages**: Executive Summary, Cost & Fuel Analysis, Operational Health, Crisis & Recovery Timeline
- **DAX measures** for margin, ratio, and "latest year" snapshot calculations
- **Bookmarks + buttons** to instantly toggle between Crisis Years (FY21-23), Recovery Years (FY24-25), and the Full Period
- **Drill-through page** — right-click any year in any chart to see a complete year-in-detail breakdown (financials, operations, expenses, and major events for that specific year)
- **Synced slicers** across all four pages
- **Conditional formatting** — automatic red/yellow/green flagging on EBITDA margin, market share, and net profit tables

---

## Known Data Notes & Limitations

- SpiceJet's audited "Total Expenses" line **excludes** Depreciation and Finance Costs (a pre-EBITDA figure) — this is called out explicitly in the workbook, with a separate "Fully-Loaded Total Costs" column added for true all-in comparisons.
- IndiGo does not report aircraft maintenance as a separate line item — it's bundled into "Supplementary rentals and aircraft repair and maintenance," which is reflected in the Expense Breakdown sheet's column labeling.
- Monthly/quarterly domestic market share is not disclosed by either airline in every annual report; those specific data points are sourced externally from DGCA data (cited in the Events & Sources sheet) and clearly flagged as external.
- All figures are **standalone** (not consolidated group) financials, for direct comparability between the two entities' core airline operations.

---

## Skills Demonstrated

`PDF data extraction` · `Financial statement analysis` · `Excel (formulas, Power Pivot, PivotTables/Charts)` · `SQL (joins, CTEs, window functions, conditional aggregation)` · `Power BI (DAX, bookmarks, drill-through, data modeling)` · `Airline industry KPIs (ASK, RPK, RASK, CASK, Load Factor)` · `Financial ratio analysis` · `Data storytelling`

---

## Notes

This project was built entirely from publicly available annual report filings. All figures are presented for analytical and educational purposes.

