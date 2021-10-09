■背景地図の表示
OSMを表示

■主題図の表示
select n01_002,wkb_geometry from road;
select * from poi;

■線バッファの表示
select n01_002,ST_Buffer(wkb_geometry, 0.001) from road
where 
n01_002='国道１７０号線';

■バッファ内検索
select p.name ,p.wkb_geometry from poi as p ,road as r 
where 
ST_Contains(ST_Buffer(r.wkb_geometry, 0.001),p.wkb_geometry) and 
r.n01_002='国道１７０号線';


