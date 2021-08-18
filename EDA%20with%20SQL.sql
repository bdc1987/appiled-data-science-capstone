select Launch_Site from SPACEXTBL
group by Launch_Site;

select DISTINCT Launch_Site from SPACEXTBL
where Launch_Site like 'CCA%' ;

select SUM(PAYLOAD_MASS__KG_) as total_payload from SPACEXTBL
where CUSTOMER like  'NASA%';

select AVG(PAYLOAD_MASS__KG_) as AVG_PAYLOAD from SPACEXTBL
where BOOSTER_VERSION like 'F9 v1.1%';

select min(date) AS DATE, LANDING__OUTCOME FROM SPACEXTBL
GROUP BY LANDING__OUTCOME;

select BOOSTER_VERSION, PAYLOAD_MASS__KG_, LANDING__OUTCOME from SPACEXTBL
Where PAYLOAD_MASS__KG_ > 4000  and PAYLOAD_MASS__KG_ <6000 and LANDING__OUTCOME = 'Success (drone ship)';

select distinct(mission_outcome), count(*) from SPACEXTBL
group by MISSION_OUTCOME;

Select BOOSTER_VERSION, PAYLOAD_MASS__KG_ from SPACEXTBL
WHERE PAYLOAD_MASS__KG_ = (SELECT MAX(PAYLOAD_MASS__KG_) from SPACEXTBL);

select MONTHNAME(DATE) AS MONTH, BOOSTER_VERSION, LAUNCH_SITE, LANDING__OUTCOME from SPACEXTBL
WHERE LANDING__OUTCOME like 'Failure (drone ship)' and YEAR(DATE)=2015;

select BOOSTER_VERSION, LANDING__OUTCOME, Date, 
ROW_NUMBER() OVER(ORDER BY LANDING__OUTCOME DESC) FROM SPACEXTBL
WHERE LANDING__OUTCOME like 'Success%' and date between '2010-06-04' and '2017-03-20';





