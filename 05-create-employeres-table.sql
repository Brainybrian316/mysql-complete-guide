CREATE TABLE employers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  -- Aproximation approach left is digit amount right is after the . 
  -- yearly_revenue FLOAT(5, 2)
  -- exact approach
  yearly_revenue NUMERIC(5, 2),
  is_hiring BOOLEAN DEFAULT FALSE 
  );