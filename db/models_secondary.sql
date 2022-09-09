CREATE TABLE country_availability(
  country_id INT,
  show_id INT,
  CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES country(country_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_language(
  language_id INT,
  show_id INT,
  CONSTRAINT fk_language FOREIGN KEY (language_id) REFERENCES language(language_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_genre(
  genre_id INT,
  show_id INT,
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_tag(
  tag_id INT,
  show_id INT,
  CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tag(tag_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_actor(
  person_id INT,
  show_id INT,
  CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_director(
  person_id INT,
  show_id INT,
  CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE show_writer(
  person_id INT,
  show_id INT,
  CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_show FOREIGN KEY (show_id) REFERENCES show(show_id) ON UPDATE CASCADE ON DELETE CASCADE
);