\c crowdfunding_db;


\copy category from 'Resources/category.csv' delimiter ',' CSV HEADER;

\copy subcategory from 'Resources/subcategory.csv' delimiter ',' CSV HEADER;

\copy contacts from 'Resources/contacts.csv' delimiter ',' CSV HEADER;

\copy campaign from 'Resources/campaign.csv' delimiter ',' CSV HEADER;