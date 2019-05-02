DROP DATABASE IF EXISTS tvshow;
CREATE DATABASE tvshow;
\c tvshow

CREATE TABLE shows(
  id serial primary key, 
  name varchar, 
  description text, 
  image varchar, 
  rating double precision
);

INSERT INTO shows (name, description, image, rating)
VALUES 
  (
    'Game of Thrones', 
    'Based on the bestselling book series A Song of Ice and Fire by George R.R. Martin, this sprawling new HBO drama is set in a world where summers span decades and winters can last a lifetime. From the scheming south and the savage eastern lands, to the frozen north and ancient Wall that protects the realm from the mysterious darkness beyond, the powerful families of the Seven Kingdoms are locked in a battle for the Iron Throne. This is a story of duplicity and treachery, nobility and honor, conquest and triumph. In the Game of Thrones, you either win or you die.',
    'http://static.tvmaze.com/uploads/images/original_untouched/143/359013.jpg',
    9.3
  ),
  (
    'Pokémon: Sun and Moon',
    'The Sun and Moon series follows Ash Ketchum on his new Journey in Alola with his companion, Pikachu. He and his mother, Deliah leave for the Alola region on a vacation, however once seeing the Pokémon School, Ash decides to stay in Alola on a new journey. From there he adventures across the region with his new RotomDex, as well as his new classmates.',
    'http://static.tvmaze.com/uploads/images/original_untouched/97/243593.jpg',
    8.6
  ),
  (
    '300',
    'a crazy movie about some warriors defending their home and in the end they die but they do not go down easy',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9xnod4i3VXfd-BrmYUuYiz3DpB6iRj3Wpmn4pNsmZs5q6bZk',
    9.8
  ),
  (
    'Black Mirror',
    'the future is nutty and dark and tech is cool and stuff but sometimes it is super uncool',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0OcXW55pSfXAnyIxGwKmP9P_xX7beHV4QOJA2h01LObr9Hku0',
    10
  ),
  (
    'Sherlock', 
    'what it do, criminals.  We got captain mc-smartypants on the case and he gonna getcha', 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjVFqdoHFqgL7PICCzGVyq9SQqAp10oWB-dpEYkniDXfUm9KQ8kg', 
    9.1
  ),
  (
    'Elementary', 
    'oh whadddddup, he is BACK and this time in a different series.  Betta run, the sher-dawg is comin', 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReMfxISBW0Fg5vFIRTWJhV7mYyuyl_BNHqNr4JLZ0vQgkroaz4rQ', 
    8.8
   );