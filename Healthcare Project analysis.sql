create database project1;
use project1;
select * from dialysis1;
select * from dialysis1 inner join dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn;
----- KPI 1

select SUM(number_of_patients_included_in_the_transfusion_summary)as number_of_patients_included_in_the_transfusion_summary,
sum(number_of_patients_in_hypercalcemia_summary)as number_of_patients_in_hypercalcemia_summary,
sum(number_of_patients_in_serum_phosphorus_summary)as number_of_patients_in_serum_phosphorus_summary,
sum(number_of_patients_included_in_hospitalization_summary)as number_of_patients_included_in_hospitalization_summary,
sum(number_of_patients_included_in_survival_summary)as number_of_patients_included_in_survival_summary,
sum(number_of_patients_included_in_fistula_summary) as number_of_patients_included_in_fistula_summary,
sum(number_of_patients_in_long_term_catheter_summary) as number_of_patients_in_long_term_catheter_summary,
sum(number_of_patients_in_npcr_summary) as number_of_patients_in_npcr_summary
from dialysis1 inner join dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn;

--- KPI 2
select profit_or_non_profit,count(profit_or_non_profit) count from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn group by profit_or_non_profit;

--- KPI 3
select chain_organization,count(total_performance_score) as 'No score' from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn where total_performance_score = 'No score' group by Chain_Organization;

---- KPI 4
SELECT five_star,sum(no_of_dialysis_stations) as no_of_dialysis_station from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn group by five_star;

----- KPI 5
select count(patient_transfusion_category_text) as patient_transfusion_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where patient_transfusion_category_text = 'As Expected';

select count(patient_hospitalization_category_text) as patient_hospitalization_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where patient_hospitalization_category_text = 'As Expected';

select count(patient_survival_category_text) as patient_survival_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where patient_survival_category_text = 'As Expected';

select count(patient_infection_category_text) as patient_infection_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where patient_infection_category_text = 'As Expected';

select count(fistula_category_text) as fistula_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where fistula_category_text = 'As Expected';

select count(SWR_category_text) as SWR_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where SWR_category_text = 'As Expected';

select count(PPPW_category_text) as PPPW_category_text from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn 
where PPPW_category_text = 'As Expected';


----- KPI 6
select round(avg(PY2020_Payment_Reduction_Percentage),2) as average_payment_reduction_rate  from dialysis1 inner join
dialysis2 on dialysis1.provider_number = dialysis2.cms_certification_number_ccn ;


