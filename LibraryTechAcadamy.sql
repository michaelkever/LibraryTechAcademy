CREATE DATABASE Library;

USE Library;

CREATE TABLE Book (
	BookId INT,
	BookTitle VARCHAR (50),
	Publisher VARCHAR (50)
);

INSERT INTO Book (BookID, BookTitle, Publisher)
	VALUES
	( '1001', 'IT', 'Viking Press'),
	( '1002', 'The Shining', 'Doubleday'),
	( '1003', 'Ulysses', 'Sylvia Beach'),
	( '1004', ' The Great Gatsby', 'Simon and Schuster'),
	( '1005', 'Moby Dick', 'Richard Bently'),
	( '1006', 'Hamlet', 'Simon and Schuster'),
	( '1007', 'The Odyssey', 'Hackett Publishing Company'),
	( '1008', 'War and Peace', 'Penguin Classics'),
	( '1009', ' Alice s Adventures in Wonderland', 'Macmillan Publishers'),
	( '1010', 'The Sound and the Fury', 'Jonathan Cape and Harrison Smith'),
	( '1011', 'Pride and Prejudice', 'Thomas Egerton'),
	( '1012', 'Emma', 'Penguin Classics'),
	( '1013', 'The Catcher in the Rye', 'Little, Brown and Company'),
	( '1014', 'The Lost Tribe', 'Henry Holt'),
	( '1015', 'Song of Solomon', 'Penguin Random House'),
	( '1016', 'The Sound and the Fury', 'Penguin Random House'),
	( '1017', 'The Fountainhead', 'Penguin Random House'),
	( '1018', 'The Lord of the Rings', 'Simon and Shuster'),
	( '1019', 'The Golden Compass', 'Penguin Random House'),
	( '1020', 'Catch 22', 'Penguin Random House')
	
;


CREATE TABLE Book_Authors (
	BookId INT,
	BookTitle VARCHAR (50),
	AuthorName VARCHAR (50)
);

INSERT INTO Book_Authors (BookID, BookTitle, AuthorName)
	VALUES
	( '1001', 'IT', 'Stephen King'),
	( '1002', 'The Shining', 'Stephen King'),
	( '1003', 'Ulysses', 'James Joyce'),
	( '1004', ' The Great Gatsby', 'F. Scott Fitzgerald'),
	( '1005', 'Moby Dick', 'Herman Melville'),
	( '1006', 'Hamley', 'William Shakespeare'),
	( '1007', 'The Odyssey', 'Homer'),
	( '1008', 'War and Peace', 'Leo Tolstoy'),
	( '1009', ' Alice s Adventures in Wonderland', 'Lewis Carroll'),
	( '1010', 'The Sound and the Fury', 'William Faulkner'),
	( '1011', 'Pride and Prejudice', 'Jane Austen'),
	( '1012', 'Emma', 'Jane Austen'),
	( '1013', 'The Catcher in the Rye', 'J. D. Salinger'),
	( '1014', 'The Lost Tribe', 'Mark Lee'),
	( '1015', ' Song of Solomon', 'Toni Morrison'),
	( '1016', 'The Sound and the Fury', 'William Faulkner'),
	( '1017', 'The Fountainhead', 'Ayn Rand'),
	( '1018', 'The Lord of the Rings', 'J.R.R. Tolkien'),
	( '1019', 'The Golden Compass', 'Philip Pullman'),
	( '1020', 'Catch 22', 'Joseph Heller')
;
	

CREATE TABLE Publisher (
	BookId INT,
	BookTitle VARCHAR (50),
	PublisherName VARCHAR (50), 
	Address VARCHAR (50)
);

INSERT INTO Publisher (BookId, BookTitle, PublisherName, Address)
	VALUES
	( '1001', 'IT', 'Viking Press', 'New York City, NY'),
	( '1002', 'The Shining', 'Doubleday','New York City, NY'),
	( '1003', 'Ulysses', 'Sylvia Beach', 'Paris, France'),
	( '1004', ' The Great Gatsby', 'Simon and Schuster', 'New York City, NY'),
	( '1005', 'Moby Dick', 'Richard Bently', 'London, England'),
	( '1006', 'Hamlet', 'Simon and Schuster', 'New York City, NY'),
	( '1007', 'The Odyssey', 'Hackett Publishing Company', 'Cambridge, MA'),
	( '1008', 'War and Peace', 'Penguin Classics', 'London, England'),
	( '1009', ' Alice s Adventures in Wonderland', 'Macmillan Publishers', 'London, England'),
	( '1010', 'The Sound and the Fury', 'Jonathan Cape and Harrison Smith', 'New York City, NY'),
	( '1011', 'Pride and Prejudice', 'Thomas Egerton', 'London, England'),
	( '1012', 'Emma', 'Penguin Classics', 'London, England'),
	( '1013', 'The Catcher in the Rye', 'Little, Brown and Company', 'Ney York City, NY'),
	( '1014', 'The Lost Tribe', 'Henry Holt', 'New York City, NY'),
	( '1015', ' Song of Solomon', 'Penguin Random House', 'New York City, NY'),
	( '1016', 'The Sound and the Fury', 'Penguin Random House', 'New York City, NY'),
	( '1017', 'The Fountainhead', 'Penguin Random House', 'New York City, NY'),
	( '1018', 'The Lord of the Rings', 'Simon and Shuster', 'New York City, NY'	),
	( '1019', 'The Golden Compass', 'Penguin Random House', 'New York City, NY'),
	( '1020', 'Catch 22', 'Penguin Random House', 'New York City, NY')
;


CREATE TABLE Book_Loans (
	BookId INT,
	BranchId INT,
	CardNo INT,
	DateOut DATE,
	DueDate DATE
);

INSERT INTO Book_Loans (BookId, BranchId, CardNo, DateOut, DueDate)
	VALUES
		('1002', '001', '00010001', '04-01-17', '04-07-17'),
	('1004', '001', '00010001', '04-01-17', '04-07-17'),
	('1005', '001', '00010001', '04-01-17', '04-07-17'),
	('1010', '001', '00010001', '04-01-17', '04-07-17'),
	('1011', '001', '00010001', '04-01-17', '04-07-17'),
	('1014', '001', '00010001', '04-01-17', '04-07-17'),
	('1013', '001', '00010001', '04-01-17', '04-07-17'),
	('1012', '001', '00010001', '04-01-17', '04-08-17'),
	('1002', '002', '00010002', '04-02-17', '04-08-17'),
	('1004', '002', '00010002', '04-02-17', '04-08-17'),
	('1012', '002', '00010002', '04-02-17', '04-08-17'),
	('1010', '002', '00010002', '04-02-17', '04-08-17'),
	('1013', '002', '00010002', '04-02-17', '04-08-17'),
	('1018', '002', '00010002', '04-02-17', '04-08-17'),
	('1019', '002', '00010002', '04-02-17', '04-08-17'),
	('1020', '002', '00010002', '04-02-17', '04-08-17'),
	('1001', '003', '00010004', '04-04-17', '04-11-17'),
	('1002', '003', '00010004', '04-04-17', '04-11-17'),
	('1004', '003', '00010004', '04-04-17', '04-11-17'),
	('1007', '003', '00010004', '04-04-17', '04-11-17'),
	('1008', '003', '00010004', '04-04-17', '04-11-17'),
	('1010', '003', '00010004', '04-07-17', '04-14-17'),
	('1011', '003', '00010004', '04-07-17', '04-14-17'),
	('1013', '003', '00010004', '04-07-17', '04-14-17'),
	('1015', '003', '00010004', '04-07-17', '04-14-17'),
	('1019', '003', '00010004', '04-07-17', '04-14-17'),
	('1020', '003', '00010004', '04-07-17', '04-14-17'),
	('1002', '002', '00010005', '04-14-17', '04-21-17'),
	('1007', '002', '00010005', '04-14-17', '04-21-17'),
	('1008', '002', '00010005', '04-14-17', '04-21-17'),
	('1011', '002', '00010005', '04-14-17', '04-21-17'),
	('1012', '002', '00010005', '04-14-17', '04-21-17'),
	('1013', '002', '00010005', '04-14-17', '04-21-17'),
	('1015', '002', '00010005', '04-14-17', '04-21-17'),
	('1019', '002', '00010005', '04-14-17', '04-21-17'),
	('1001', '001', '00010007', '04-15-17', '04-22-17'),
	('1002', '001', '00010007', '04-15-17', '04-22-17'),
	('1003', '001', '00010007', '04-15-17', '04-22-17'),
	('1004', '001', '00010007', '04-15-17', '04-22-17'),
	('1005', '001', '00010007', '04-15-17', '04-22-17'),
	('1006', '001', '00010007', '04-15-17', '04-22-17'),
	('1008', '001', '00010007', '04-15-17', '04-22-17'),
	('1010', '001', '00010007', '04-15-17', '04-22-17'),
	('1011', '001', '00010007', '04-15-17', '04-22-17'),
	('1008', '001', '00010008', '04-21-17', '04-28-17'),
	('1013', '001', '00010008', '04-21-17', '04-28-17'),
	('1014', '001', '00010008', '04-21-17', '04-28-17'),
	('1017', '001', '00010008', '04-21-17', '04-28-17'),
	('1020', '001', '00010008', '04-21-17', '04-28-17')
;


;
CREATE TABLE Book_Copies (
	BookId INT,
	BranchId INT,
	No_Of_Copies INT
);

INSERT INTO Book_Copies (BookId, BranchId, No_Of_Copies)
	VALUES
	('1001', '0001', '3'), ('1010', '0002', '2'),
	('1002', '0001', '3'), ('1011', '0002', '3'),
	('1003', '0001', '2'), ('1012', '0002', '2'),
	('1004', '0001', '2'), ('1013', '0002', '2'),
	('1005', '0001', '2'), ('1014', '0002', '4'),
	('1006', '0001', '2'), ('1015', '0002', '2'),
	('1007', '0001', '4'), ('1016', '0002', '3'),
	('1008', '0001', '4'), ('1017', '0002', '2'),
	('1009', '0001', '3'), ('1018', '0002', '3'),
	('1014', '0001', '3'), ('1019', '0002', '2'),
	('1001', '0003', '3'), ('1010', '0004', '2'),
	('1002', '0003', '3'), ('1011', '0004', '3'),
	('1003', '0003', '2'), ('1012', '0004', '2'),
	('1004', '0003', '2'), ('1013', '0004', '2'),
	('1005', '0003', '2'), ('1014', '0004', '4'),
	('1006', '0003', '2'), ('1015', '0004', '2'),
	('1007', '0003', '4'), ('1016', '0004', '3'),
	('1008', '0003', '2'), ('1017', '0004', '2'),
	('1009', '0003', '3'), ('1018', '0004', '3'),
	('1014', '0003', '3'), ('1020', '0004', '2')
;

	
CREATE TABLE Borrower (
	CardNo INT,
	Name VARCHAR (50),
	Address VARCHAR (50),
	Phone CHAR (10)
);

INSERT INTO Borrower (CardNo, Name, Address, Phone)
	VALUES
	('00010001', 'Michael Kever', '412 Bulldog Circle', '2145517027'),
	('00010002', 'Jackson Cole', '868 Maxwell Drive', '6158890233'),
	('00010003', 'Kate Sofia', '467 Nissan Way', '6153338604'),
	('00010004', 'Amber Nichole', '89 Angel Drive', '6154350908'),
	('00010005', 'Robert Earl', '1001 Small Town Road', '6153320302'),
	('00010006', 'Julie Casarez', '3102 Chicen Pike', '6158934305'),
	('00010007', 'Jonathan David', '8003 Smyrna Hwy', '6158897304'),
	('00010008', 'Laurita Lea', '247 Hickory Dale', '6158859090')

;


CREATE TABLE LibraryBranch ( 
	BranchID INT,
	BranchName VARCHAR (50),
	Address VARCHAR (50)
);

INSERT INTO LibraryBranch (BranchID, BranchName, Address)
	VALUES
	('001', 'Sharpstown', 'Sharpstown, TN'),
	('002', 'Central', 'Nashville, TN'),
	('003', 'Smyrna West', 'Smyrna, TN'),
	('004', 'MTSU', 'Murfreesboro, TN')
;





/* Create Stored Procedure How many copies of the book titled 
"The Lost Tribe" are owned by the library branch 
whose name is "Sharpstown"? */	

CREATE PROC GetSharpCopies  
AS
SELECT * FROM Book 
INNER JOIN Book_Copies ON Book.BookId = Book_Copies.BookId
INNER JOIN LibraryBranch ON Book_Copies.BranchId = LibraryBranch.BranchID
WHERE Book.BookId = ('1014') AND Book_Copies.BranchId = ('1') AND LibraryBranch.BranchName = ('Sharpstown');


/* Create Stored Procedure How many copies of the book titled 
"The Lost Tribe" are owned by each library branch? */	


CREATE PROC GetAllTribe
AS
SELECT * FROM Book 
INNER JOIN Book_Copies ON Book.BookId = Book_Copies.BookId
INNER JOIN LibraryBranch ON Book_Copies.BranchId = LibraryBranch.BranchID
WHERE Book.BookId = ('1014') ;


/* Create Stored Procedure Retrieve the names of all borrowers 
who do not have any books checked out. */

CREATE PROC GetBooksOut
AS
SELECT * FROM Book_Loans
FULL OUTER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.CardNo IS NULL ; 


/* Create Stored Procedure For each book that is loaned out from 
the "Sharpstown" branch and whose DueDate is today, retrieve the
 book title, the borrower's name, and the borrower's address. */

CREATE PROC GetSharpDueDate
AS
SELECT * FROM Book 
INNER JOIN Book_Loans ON Book.BookId = Book_Loans.BookId
INNER JOIN Borrower ON Book_Loans.CardNo = Borrower.CardNo
INNER JOIN LibraryBranch ON Book_Loans.BranchId = LibraryBranch.BranchID
WHERE LibraryBranch.BranchID = ('1') AND Book_Loans.DueDate = ('2017-04-07');

/* Create Stored Procedure For each library branch, retrieve the 
branch name and the total number of books loaned out from that
 branch. */
 
 CREATE PROC GetTotalBookLoans
 AS
 SELECT LibraryBranch.BranchName, COUNT(Book_Loans.BranchId)
 AS TotalBookLoans 
 FROM  LibraryBranch
LEFT JOIN Book_Loans ON LibraryBranch.BranchID = Book_Loans.BranchId
GROUP BY LibraryBranch.BranchName
ORDER BY COUNT(Book_Loans.BranchId);

/* Create Stored Procedure Retrieve the names, addresses, and 
number of books checked out for all borrowers who have more than 
five books checked out. */	

CREATE PROC GetBorrowerInfo
AS
 SELECT Borrower.Name, Borrower.Address,  COUNT(Book_Loans.CardNo) 
 FROM  Book_Loans
INNER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo
GROUP BY Borrower.Name, Borrower.Address  
HAVING COUNT(Book_Loans.CardNo) > 5;

/* Create Stored Procedure For each book authored (or co-authored) 
by "Stephen King", retrieve the title and the number of copies 
owned by the library branch whose name is "Central". There is
no Stephen King book in Central so it is replaced with
"Sharpstown" */	


CREATE PROC GetStephenKing
AS
SELECT * FROM Book
INNER JOIN Book_Authors ON Book.BookId = Book_Authors.BookId
INNER JOIN Book_Copies ON Book_Copies.BookId = Book.BookId
INNER JOIN LibraryBranch ON Book_Copies.BranchId = LibraryBranch.BranchID
WHERE Book_Authors.AuthorName = ('Stephen King') AND LibraryBranch.BranchName = ('Sharpstown');



