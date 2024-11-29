\c data_wharehouse_dev;

DROP TABLE IF EXISTS kid_friendly_users;
CREATE TABLE kid_friendly_users (
  id SERIAL PRIMARY KEY,
  fname VARCHAR(15),
  middle_name VARCHAR(15,)
  lname VARCHAR(15),
  DOB DATE,
  age INT,
  city VARCHAR(60),
  home_state VARCHAR(2),
  postal_code VARCHAR(9),
  phone VARCHAR(12),
  -- kf_role 1=kid; 2=parent; 3=teacher
  kf_role INT DEFAULT 1,
  parentID INT,
  current_school TEXT,
  current_school_address TEXT,
  current_school_city TEXT,
  current_school_state VARCHAR(2),
  school_postal_code VARCHAR(9),
  created_at TIMESTAMP DEFAULT NOW(),
  last_modified TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS kid_friendly_forum;
CREATE TABLE kid_friendly_forum (
  id SERIAL PRIMARY KEY,
  -- userID is the user who created this post
  userID INT,
  -- content is the content of the post
  content TEXT,
  -- reply_to is the parent post to which this is a reply
  reply_to INT,
  created_at TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS kid_friendly_likes;
CREATE TABLE kid_friendly_likes (
    id SERIAL PRIMARY KEY,
      -- userID is the user who created this LIKE
    userID INT,
    emoji VARCHAR(1)
);