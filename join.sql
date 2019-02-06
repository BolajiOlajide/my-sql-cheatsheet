-- INNER JOIN is an example of a type of JOIN
SELECT * FROM make INNER JOIN model ON make.ID = model.MakeID;

SELECT mk.MakeName, md.ModelName FROM make AS mk
    INNER JOIN model AS md ON mk.ID = md.MakeID
    WHERE mk.MakeName = "Chevy";

-- an inner join is an intersection
-- SELECT <columns> FROM <table1> INNER JOIN <table2> ON <equality criteria>


-- there are three types of OUTER JOIN
-- LEFT OUTER JOIN - this fetches all records in the first table of intersection that don't necessarily intersect
-- with the target table. SO for table 1 ans 2, a left outer join will return all values of table 1 whether or not
-- they have a link with table2.
-- RIGHT OUTER JOIN is the opposites - it fetches all records of table 2 that intersect with table 1 or not.
-- FULL OUTER JOIN returns all records that match the equality criteria and the unmatched ones from both ends
SELECT prn.first_name AS firstName, prn.email AS emailAddress FROM loans AS ln
  INNER JOIN books AS bk ON ln.book_id = bk.id
  INNER JOIN patrons AS prn ON ln.patron_id = prn.id
  WHERE ln.returned_on IS NULL;

-- Use a JOIN to find out which patrons haven't had any loans. Select their first name and email address.
SELECT first_name, email FROM patrons
  LEFT OUTER JOIN loans ON patrons.id = loans.patron_id
  WHERE loans.patron_id IS NULL;

-- Create a report that shows the title of the book, first and last name of the patron, email and all date fields of the loan.
SELECT books.title AS bookTitle, patrons.first_name AS patronFirstName, patrons.last_name AS patronLastName, patrons.email AS emailAddress, loans.loaned_on AS loaned_on, loans.return_by AS return_by, loans.returned_on AS returned_on FROM loans
  INNER JOIN books ON loans.book_id = books.id
  INNER JOIN patrons ON loans.patron_id = patrons.id;
