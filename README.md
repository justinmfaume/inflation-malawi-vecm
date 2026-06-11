# The Impact of Agricultural Supply Chain Disruptions on Headline Inflation in Malawi

**Undergraduate Dissertation | The Catholic University of Malawi | 2026**
**Vector Error Correction Model (VECM) | Annual Time-Series Data | 1970–2024**
---

## Author

**Justin Mfaume**
Bachelor of Social Sciences in Economics — Marginal Distinction (78%)
Minor in Statistics
Best Academic Performance Award (2025)
First student in the Economics Department to achieve a Distinction since 2019

**Contacts**
Email:justinmfaume1964@gmail.com
LinkedIn:https://linkedin.com/in/justinmfaume
City:Lilongwe, Malawi

**Supervisor:** Mr. P. Mvula — Lecturer and Dissertation Supervisor, Department of Economics, The Catholic University of Malawi

**Software Used:** STATA 17 · Microsoft Excel 

---

## Abstract

Malawi's economy is fundamentally agricultural. Agriculture shapes export earnings, foreign exchange availability, fuel import capacity, and ultimately the price of food on every household table. When agricultural supply chains are disrupted through droughts, cyclones, or input price shocks, the effects extend far beyond farms and cascade throughout the broader economy.

This dissertation investigates the impact of agricultural supply chain disruptions on headline inflation in Malawi over a 54-year period (1970–2024). Using a Vector Error Correction Model (VECM) estimated in STATA 17, the study examines both the long-run determinants of inflation and the short-run transmission mechanisms through which shocks affect consumer prices.

The findings indicate that exchange rate depreciation is the dominant long-run driver of headline inflation in Malawi, with a strong and near-immediate pass-through to domestic prices. Climatic shocks emerge as significant short-to-medium-term drivers through their effects on agricultural production and food supply chains. Fuel price increases also exert significant inflationary pressure. In contrast, fertiliser prices were found to have no statistically significant direct effect on headline inflation, challenging common assumptions about input cost transmission in agrarian economies.

The study contributes evidence relevant to inflation management, agricultural resilience, and macroeconomic policymaking in Malawi.

---

## Key Findings

* Exchange rate depreciation is the strongest long-run driver of inflation.
* Fuel price increases significantly contributed to headline inflation.
* Rainfall variability influenced inflation through agricultural production shocks.
* Fertiliser prices were not statistically significant.
* Exchange rate shocks produced the fastest and most persistent inflationary response in the Impulse Response Function (IRF) analysis.
* Results suggest that exchange-rate stability and climate resilience are critical for inflation management in Malawi.

---

## Research Objectives

### Main Objective

To investigate the impact of agricultural supply chain disruptions on headline inflation in Malawi.

### Specific Objectives

1. To analyse the relationship between annual rainfall variations and headline inflation in Malawi.
2. To quantify the contribution of fertiliser price dynamics to headline inflation in Malawi.
3. To assess the transmission effects of fuel price shocks on headline inflation in Malawi.

---

## Hypotheses and Outcomes

|Hypothesis| Statement                                                                                     | Outcome                                                          |
| ---------| ----------------------------------------------------------------------------------------------| ------------------------------------------------------
| H₀₁      | There is no significant relationship between annual rainfall and headline inflation in Malawi.|Rejected — rainfall was statistically significant    
| H₀₂      | Fertiliser price dynamics do not significantly contribute to headline inflation in Malawi.    |Not Rejected — fertiliser prices were  insignificant
| H₀₃      | Fuel price changes do not significantly contribute to headline inflation in Malawi.           |Rejected — fuel prices were statistically significant            

---

## Variables and Data Sources

| Variable                 | Role                 | Source                                    |
| ------------------------ | -------------------- | ----------------------------------------- |
| Headline Inflation       | Dependent Variable   | Reserve Bank of Malawi (RBM), IMF         |
| Exchange Rate (MWK/USD)  | Independent Variable | IMF, Reserve Bank of Malawi               |
| Diesel/Fuel Prices       | Independent Variable | Malawi Energy Regulatory Authority (MERA) |
| Rainfall                 | Independent Variable | NASA Climate Data Archives                |
| Fertiliser Prices        | Independent Variable | USDA, World Bank Commodity Price Data     |
| Money Supply (M2)        | Independent Variable | Reserve Bank of Malawi, IMF               |

Data were compiled from both national and international databases. Historical data collection required extensive triangulation across multiple sources due to the limited availability of long-term time-series records for Malawi.

---

## Methodology

The analysis followed a standard time-series econometric framework implemented in STATA 17:

1. Descriptive analysis and trend examination
2. Augmented Dickey-Fuller (ADF) unit root tests
3. Johansen cointegration testing
4. Vector Error Correction Model (VECM) estimation
5. Impulse Response Function (IRF) analysis
6. Diagnostic and stability testing

The VECM framework was selected because all variables were found to be integrated of order one, I(1), and the Johansen cointegration test confirmed the existence of long-run equilibrium relationships among the variables.

---

## Key Findings

### VECM Output- Drivers of Headline Inflation in Malawi

| Variable                | Effect                                                   | Significance  |
| ----------------------- | -------------------------------------------------------- | ------------- |
| Exchange Rate (MWK/USD) | Positive — strongest long-run driver                     | Significant   |
| Fuel Prices             | Positive                                                 | Significant   |
| Rainfall                | Negative — more rainfall associated with lower inflation | Significant   |
| Money Supply (M2)       | Positive but weaker than expected                        | Weak          |
| Fertiliser Prices       | No significant effect                                    | Insignificant |

### Short-Run Dynamics

* Exchange rate depreciation transmitted to consumer prices faster than any other variable.
* Climatic shocks generated inflationary pressure through reduced agricultural production and food supply disruptions.
* Fuel price shocks created sustained inflationary responses across multiple periods.
* Monetary factors played a secondary role relative to exchange rate and supply-side shocks.

---

## Impulse Response Analysis

The Impulse Response Function (IRF) results showed that:

* A one-standard-deviation exchange rate shock generates a strong and persistent inflationary response beginning almost immediately.
* Fuel price shocks produce sustained increases in headline inflation.
* Negative rainfall shocks generate delayed but meaningful inflationary responses consistent with Malawi's agricultural production cycle.

---

## Policy Implications

### Reserve Bank of Malawi

* Exchange rate stability remains the most important monetary lever for inflation control.
* Monetary targeting alone may be insufficient given the dominant role of exchange rate and supply-side shocks.

### Ministry of Agriculture

* Investment in irrigation systems, climate-resilient seed varieties, storage facilities, and agricultural supply chain infrastructure can reduce inflationary pressure arising from climatic shocks.
* Strengthening agricultural resilience contributes directly to macroeconomic stability.

### Ministry of Energy

* Fuel price volatility significantly amplifies inflation across the economy.
* Reducing import dependence through energy diversification and strategic reserves may help moderate inflationary pressures.

---

## Repository Contents

```text
ineinflation-malawi-vecm/
│
├── inflation-malawi-vecm.do
├── README.md
├── outputs/
│   ├── IRF_graphs/
│   └── regression_tables/
└── dissertation/
    └── Justin_Mfaume_Dissertation_2026.pdf
```

---

## Background: Why This Research

This research grew directly from fieldwork conducted during a Post-Cyclone Freddy community assessment survey in 2023. Over three months, data were collected across affected communities using KoboToolbox and analysed using SPSS.

The experience revealed how climatic shocks quickly translate into food shortages, rising prices, and declining household welfare. What became clear was that in Malawi, agriculture is not simply another sector of the economy. It influences export earnings, foreign exchange availability, fuel import capacity, and ultimately the purchasing power of households.

This dissertation seeks to quantify these relationships and contribute evidence that can support more effective economic policy and agricultural resilience planning.

---

## Disclaimer

This repository contains material from an undergraduate dissertation submitted in partial fulfilment of the requirements for the degree of Bachelor of Social Sciences in Economics at The Catholic University of Malawi. The views expressed are those of the author and do not necessarily reflect those of the university or affiliated institutions.

---

**Submitted in partial fulfilment of the requirements for the degree of Bachelor of Social Sciences in Economics, The Catholic University of Malawi, 2026.**
