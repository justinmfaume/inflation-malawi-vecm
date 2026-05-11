****************JUSTIN MFAUME_PROJECT-HEADLINE INFLATONA VS AGRI SUPPLY CHAIN DISRUPTIONS ****************************************************************************************************TIMES DATA DECLARATION
import excel "C:\Users\previ\OneDrive\Desktop\JM\JUSTIN MFAUME\PROPOSAL\data\1970-2024 DATA.xlsx", sheet("Sheet1") firstrow
gen years=1970+_n-1
tsset years
tsreport
**************************************************************************************************************STATIONARITY & CLEANING
dfuller HeadlineInflation
gen randomwalk=sum(HeadlineInflation)
rename randomwalk headlineInflation
dfuller headlineInflation
gen dheadlineInflation=D.headlineInflation
dfuller dheadlineInflation
dfuller AnnualRainfall
gen randomwalk=sum(AnnualRainfall)
rename randomwalk Annualrainfall
dfuller Annualrainfall
gen dAnnualrainfall =D.Annualrainfall
dfuller dAnnualrainfall
rename UREAPRICEMT FertilizerPrice
dfuller FertilizerPrice
gen dFertilizerPrice=D.FertilizerPrice
dfuller dFertilizerPrice
dfuller DieselPrice
gen logDieselPrice=ln(DieselPrice)
rename logDieselPrice dieselprice
dfuller dieselprice
gen ddieselprice=D.dieselprice
dfuller ddieselprice
dfuller Officialexchangerate
gen logOfficialexchangerate=ln(Officialexchangerate)
rename logOfficialexchangerate ExchangeRate
dfuller ExchangeRate
gen dExchangeRate=D.ExchangeRate
dfuller dExchangeRate
gen logBraodMoney=ln(BraodMoney)
rename logBraodMoney MoneySupply
gen dMoneySupply=D.MoneySupply
dfuller D.headlineInflation , lags(4) trend
dfuller D.headlineInflation
dfuller D.Annualrainfall
dfuller D.FertilizerPrice
dfuller D.dieselprice
dfuller D.ExchangeRate
dfuller D.MoneySupply
***********************************************************************************************************OPTIMAL LAG SELECTION
dfuller headlineInflation , lags(4) trend
dfuller Annualrainfall , lags(4) trend
dfuller FertilizerPrice,lags(4) trend
dfuller dieselprice , lags(4) trend
dfuller ExchangeRate , lags(4) trend
dfuller MoneySupply , lags(4) trend
***************OPTIMAL LAG SELECTION 
varsoc headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply
***********************************************************************************************************************COINTEGRATION
vecrank headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) lags(4)
*********************************************************************************************************************VECM ESTIMATION
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
********************************************************************************************************HETEROSCEDASTICITY
predict e_inf, resid
predict yhat_inf, xb
gen u2_inf = e_inf^2
summarize e_inf yhat_inf u2_inf
tsreport
gen yhat2_inf = yhat_inf^2
regress u2_inf yhat_inf yhat2_inf FertilizerPrice dieselprice, nocons
estat imtest, white
*****************************************************************************************************************************AUTOCORRELATION
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
veclmar, mlag(4)
dwstat
*******************************************************************************************************************************NORMALITY
ssc install jb
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
predict resid, residuals
jb resid
sktest resid
**********************************************************************************************************************************STABILITY
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
vecstable, graph
ssc install cusum6
cusum6 headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply year, cs(cusum) cs2(cusumsq)lw(lower) uw(upper)
**************************************************************************************************************CORRELATION (MULTICOLLINEARITY CHECK)
corr dAnnualrainfall dFertilizerPrice ddieselprice dExchangeRate dMoneySupply
**********************************************************************************Impulse Response Functionss
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
irf create vec1, set(vecintro, replace) step(24)
irf graph oirf, impulse(Annualrainfall FertilizerPrice ExchangeRate) response(headlineInflation) yline(0) level(95) ustep(10)
irf graph oirf, impulse(Annualrainfall FertilizerPrice ExchangeRate) response(headlineInflation) yline(0) level(95) ustep(2)
********************************************************************************************************************************************Granger
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
test [D_headlineInflation]:L.d.Annualrainfall
test [D_headlineInflation]:L1.d.Annualrainfall
test [D_headlineInflation]:L3.d.Annualrainfall
test [D_headlineInflation]:L2.d.Annualrainfall
test [D_headlineInflation]:L2.d.FertilizerPrice
test [D_headlineInflation]:L3.d.FertilizerPrice
test [D_headlineInflation]:L3.d.MoneySupply
************************************************************************************************************************************************Vargranger
var headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply, lags(4)
vargranger
************************************************************************************************************************************************MATRIX
vec headlineInflation Annualrainfall FertilizerPrice dieselprice ExchangeRate MoneySupply,trend(constant) rank(3) lags(4)
ereturn list
matrix beta = e(beta)
matrix list beta
matrix V_beta = e(V_beta)
matrix list V_beta
matrix beta = e(beta)
matrix list beta
mata:
beta_vec = st_matrix("e(beta)")
beta_mat = colshape(beta_vec, 7)'
norm_beta = J(7, 3, .)
for(i=1; i<=3; i++) {
    divisor = beta_mat[1,i]
    if (divisor != 0) {
        temp = beta_mat[.,i] :/ divisor
        if (temp[1,1] < 0) temp = -temp
        norm_beta[.,i] = temp
    }
    else {
        printf("Warning: equation %f has zero on headlineInflation\n", i)
    }
}
st_matrix("norm_beta", norm_beta)
end
matrix list norm_beta, format(%9.4f)
*************************************************************PROJECT COMPLETED************