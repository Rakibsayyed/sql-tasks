### What is RegEx in Sql?
- RegEx stands for Regular Expression.
- Regex in SQL is like a special search tool that helps you find specific patterns in text data. It's like a magnifying glass for words, allowing you to pinpoint exact matches or identify specific 
  characteristics within a string of characters.
- Example you have a list of email addresses, and you want to find all the addresses that end with "@gmail.com". Regex can do this in a single search.
- It save times and effort. 

- Syntax of RegEx :
`SELECT statements... WHERE field_name REGEXP 'pattern';`

- 1.SELECT – Select is the SQL keyword to retrieve data from the table
- 2.statements – Specifies the rows to be retrieved
- 3.WHERE – This clause is used to specify a condition to fetch data
- 4.field_name – It represents the name of a column on which the regular expression needs to be applied on.
- 5.REGEXP – The standard keyword is written before the user-defined RegEx pattern. It is the operator used when performing regular expression pattern matches.
- 6.my_pattern – It is the user-defined Regex pattern used to search for a subset of data from the table that matches the desired field_name.


### Example  : Find all SKUs that end in the digit 1.
### Query: 
` SELECT sku FROM catalog_product_entity WHERE sku REGEXP '[1]$'; `

###### Above query selects all SKUs from the catalog_product_entity table where the sku column ends with the digit 1. The REGEXP operator is used to match the regular expression '[1]$', which matches a single character at the end of the string that is equal to the digit 1.

##### Resources for learning regular expressions (RegEx) : https://www.javatpoint.com/mysql-regular-expressions 

