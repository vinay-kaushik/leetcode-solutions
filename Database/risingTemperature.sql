select w1.id from weather w1,weather w2 where w1.temperature > w2.temperature and 
--str_to_date(w1.recordDate,"%d%M%Y")-str_to_date(w2.recordDate,"%d%M%Y")=1;
datediff(w1.recordDate,w2.recordDate)=1;