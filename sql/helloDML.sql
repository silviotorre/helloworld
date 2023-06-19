-- Create the table if it doesn't exist
-- The id column is the primary key and will auto-increment
-- The timestamp column will default to the current timestamp
-- message is a varchar with a max length of 100 characters
-- The message column will be used to store the message
-- when we insert a new row
-- The timestamp column will be used to store the current

CREATE TABLE IF NOT EXISTS hello (
  id INT PRIMARY KEY AUTO_INCREMENT,
  message VARCHAR(100),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert a new row with the message and timestamp
INSERT INTO hello (message) VALUES ('Hello, World!');

-- Retrieve the last message from the table
SELECT message FROM hello ORDER BY id DESC LIMIT 1;
-- so we can see the last message
