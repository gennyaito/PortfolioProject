select *
from [Pie Data]

---Converted the data type of Order Date
ALTER TABLE [Pie Data]
add OrderDate Date;

UPDATE [Pie Data]  --- second step
Set OrderDate  = CONVERT(Date,[Order Date])

select OrderDate, CONVERT(Date,[Order Date])
from [Pie Data]


---Converted the data type of Month/Yr
ALTER TABLE [Pie Data]
add YearMonth Date;

UPDATE [Pie Data]  --- second step
Set YearMonth  = CONVERT(Date,[Month/Yr])

select YearMonth, CONVERT(Date,[Month/Yr])
from [Pie Data]

--Delete Unused Columns

ALTER TABLE [Pie Data]
DROP COLUMN [Order Date], [Month/Yr]

select *
from [Pie Data]