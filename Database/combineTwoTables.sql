select 
        a.FirstName as FIRSTNAME,
        a.LastName as LASTNAME,
        b.City as CITY,
        b.State as STATE 
        from Person a left join  Address b 
        on a.PersonId=b.PersonId ; 