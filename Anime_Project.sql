use anime;
select * from anime_table;

                           -- Task 1 - Animes in PG-13 Rating which has highest number of Episodes-- 

select Title,Episodes from anime_table where 
Rating = 'PG-13 - Teens 13 or older'
Order by Episodes desc;

/* Interpretation - It is found that Naruto Shippuden is the Anime from PG-13 Rating 
                                                         which has higher number of Episodes of about 500 Episodes*/

                           -- Task 2 - Animes in Type=TV and their scores in descending order-

Select Title,Score from anime_table 
where Type='TV'
order by Score desc;
                                  -- Count of those animes in TV Type -
Select count(Title) from anime_table 
where Type='TV'
order by Score desc;

/* Interpretation - It is found that Fullmetal Alchemist:Brotherhood is the Anime from TV Type 
										which has higher Score about 9.14 and there are total of 4498 Animes in TV Type*/

                                -- Task 3 - Animes with highest run time-

select Title,Score,Total_run_time from anime_table
where Total_run_time 
order by Total_run_time desc;

/* Interpretation - It is found that Manga Nippon Mukashibanashi is the Animes
                                                           which has the Max run time of about 36775 minutes*/

                                 -- Task 4- Anime which has the maximum number of episodes
                   
SELECT Title,Episodes
FROM anime_table
WHERE Episodes = (SELECT MAX(Episodes) FROM anime_table);

/* Interpretation - It is found that Okayo Club is the Anime  
														which has higher number of Episodes of about 1818 Episodes*/
             
                                 -- Task 5-Anime with maximum number of watchers
             
SELECT Title,Members
FROM anime_table
WHERE Members = (SELECT MAX(Members) FROM anime_table);

/* Interpretation - It is found that Shingeki no Kyojin which is commenly known as Attack on Titan is the Anime 
										     which is being watched by many members of approx about 3.4 billion people*/