INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) 
VALUES (
  'Learning Inc',
  'Educationstreet 12, London',
  0.87,
  true 
);

INSERT INTO employers (company_name, company_address, yearly_revenue) 
VALUES (
  'Big oil Inc',
  'Slipperystreet 110, Houston',
  112.55
);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) 
VALUES (
  'Hipster Food Inc',
  'Avocadostreet 5, Berlin',
  6.12,
  true 
);

INSERT INTO conversations (user_name, employer_name, messages)
VALUES (
  'Max Schwarz', 
  'Learning Inc', 
  'Hi, I like Learning'
);