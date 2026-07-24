# The Impact of Agricultural Supply Chain Disruptions on Headline Inflation in Malawi

**Undergraduate Dissertation | The Catholic University of Malawi | 2026**
**Vector Error Correction Model (VECM) | Annual Time-Series Data | 1970–2024**
---

## Author

**Justin Mfaume**
Bachelor of Social Sciences in Economics — Marginal Distinction (77%)
Minor in Statistics
Best Academic Performance Award (2025)
First student in the Economics Department to achieve a Distinction since 2019

**Contacts**
Email:justinmfaume1964@gmail.com
LinkedIn:https://linkedin.com/in/justinmfaume
City:Lilongwe, Malawi

**Supervisor:** Mr. P. Mvula — Lecturer and Dissertation Supervisor, Department of Economics, The Catholic University of Malawi

**Software Used:** Stata 17 · Microsoft Excel 

---

## Abstract

Inflation in Malawi is not an abstract statistic. It is the transport fare that doubled before wages moved, the fuel queue that delays inputs from reaching farms, and the exchange rate movement that raises landing costs before any policy response arrives. At the centre of these dynamics sits agriculture, a sector generating over 80% of export earnings, determining foreign exchange availability, shaping the economy's capacity to import fuel and fertiliser, and ultimately governing the conditions under which goods move from farms to markets to households. This study investigates the impact of agricultural supply chain disruptions on headline inflation in Malawi using annual time-series data from 1970 to 2024. A Vector Error Correction Model (VECM) captures dynamic relationships between headline inflation, climatic shocks proxied by annual rainfall, fertiliser prices, fuel prices, and exchange rate movements. Johansen cointegration tests confirm stable long-run equilibrium relationships among variables integrated of order one. Exchange rate depreciation emerges as the dominant long-run driver of inflation, inseparable from agricultural performance given the sector's control over export earnings and forex generation. Fuel price shocks transmit strongly through transport and distribution costs across the supply chain. Climatic shocks influence inflation through production cycles with a lag consistent with harvest timing. Contrary to standard cost-push assumptions, fertiliser prices exert no statistically significant effect on headline inflation, a finding explained by the cushioning role of government subsidy programmes and household remittances that insulate smallholder farmers from global input price movements. The error correction coefficient of -0.48 indicates rapid adjustment toward long-run equilibrium. Controlling inflation in Malawi requires more than monetary tightening and praying for good rains; it requires strengthening agricultural supply chains, improving energy logistics, and building structural resilience to shocks that cascade through the entire economy.

Files

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
