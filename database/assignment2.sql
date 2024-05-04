-- Inserting new record into the account table
INSERT INTO public.account (
	account_firstname, account_lastname, account_email, account_password
)
VALUES (
	'Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n'
)

-- Modifying the account_type data
UPDATE
	account
SET
	account_type = 'Admin'
WHERE
	account_id = 1

-- Deleting a record from the database
DELETE
FROM
	account
WHERE
	account_id = 1

-- Modify string using a single query
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'the small interiors', 'a huge interior')
WHERE
	inv_id = 10

-- Inner Join the make and model field and classification name
SELECT
	inv_make,
	inv_model,
	classification_name
FROM
	inventory
INNER JOIN classification
	ON inventory.classification_id = classification.classification_id
WHERE
	classification.classification_id = 2;

-- Modify a path using a single query
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
	inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');