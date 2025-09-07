---Задание 2---

----Название и продолжительность самого длительного трека.----

select name, max(duration) max
from treck
group by name
order by max desc
limit 1;

-----Название треков, продолжительность которых не менее 3,5 минут.----

select name
from treck
where duration >= 210
group by name, duration;

----Названия сборников, вышедших в период с 2018 по 2020 год включительно.----

select name, year 
from collection
where year between 2018 and 2020
group by name, year;

---Исполнители, чьё имя состоит из одного слова.---

select name
from artist a 
where name not like '% %';

----Название треков, которые содержат слово «мой» или «my».---

select name
from treck
where 'my'=any(string_to_array(lower(name), ' ')) or 'мой'=any(string_to_array(lower(name), ' '));

----Задание 3---

----Количество исполнителей в каждом жанре.---

select g.name, count(a.name)
from genre g
join genreartist gen on g.gid = gen.genreid
join artist a on gen.artistid = a.aid
group by g.name;

----Количество треков, вошедших в альбомы 2019–2020 годов.---

select count(t.name) from album a
join treck t on t.albumid = a.albumid 
where a.year between 2019 and 2020;

---Средняя продолжительность треков по каждому альбому.--

select a.name, avg(t.duration ) from album a
join treck t on t.albumid = a.albumid
group by a.name;

---Все исполнители, которые не выпустили альбомы в 2020 году.---

select ar.name from album a
join albumartist a2 on a2.albumid = a.albumid
join artist ar on a2.artistid = ar.aid
where a."year" != 2020
group by ar."name" ;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)--

select c."name"  from collection c 
join collectiontreck ct on c.cid = ct.collectionid 
join treck t on t.tid = ct.treckid 
join album a on a.albumid = t.albumid 
join albumartist aa on aa.albumid = a.albumid 
join artist at on at.aid = aa.artistid 
where at."name" = 'Michael Jackson';