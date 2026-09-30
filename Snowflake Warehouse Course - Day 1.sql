--link for myself: https://training.snowflake.com/content-player/app/sf/play/rco/208216016?in_sessionid=A09J32043A115159&ctx_classroomId=98874317&ctx_in_from_module=CLMSBROWSEV2.PRMAIN&ctx_in_lp_id=0&ctx_in_filter=%20

select 'hello!' as greeting;

use schema garden_plants.veggies;

show databases;

use database garden_plants;

show schemas;

show schemas in account;

--Creating Root Depth Table

use schema garden_plants.veggies;

CREATE OR REPLACE table root_depth (
    root_depth_id number(1)
    , root_depth_code text(10)
    , root_depth_name text(20)
    , unit_of_measure text(2)
    , range_min number(2)
    , range_max number(2)
);

select *
from root_depth;

use warehouse snowflake_learning_wh;

insert into root_depth
values
(
    1
    , 's'
    , 'shallow'
    , 'cm'
    , 30
    , 45
);

insert into root_depth
values

(2, 'm', 'medium', 'cm', 45, 60),
(3, 'd', 'deep', 'cm', 60, 90)
;

insert into root_depth
values 
(4, 'meh', 'i mean 2 delete', 'kk', 6, 7);

delete from root_depth
where root_depth_id = 4;
