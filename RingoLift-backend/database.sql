DROP DATABASE IF EXISTS ringolift;

-- Tạo cơ sở dữ liệu mới
CREATE DATABASE ringolift;
USE ringolift;

-- 1. Tạo bảng 'user_gender'
CREATE TABLE user_gender
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    gender_type VARCHAR(50) NOT NULL UNIQUE,
    created_at  DATETIME,
    updated_at  DATETIME
);

-- 1.1. Dữ liệu cho bảng 'user_gender'
INSERT INTO user_gender (gender_type, created_at, updated_at)
VALUES ('MALE', NOW(), NOW()),
       ('FEMALE', NOW(), NOW()),
       ('OTHER', NOW(), NOW());

-- 2. Tạo bảng 'book_genre'
CREATE TABLE book_genre
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    genre_type VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME,
    updated_at DATETIME
);

-- 2.1. Dữ liệu cho bảng 'book_genre'
INSERT INTO book_genre (genre_type, created_at, updated_at)
VALUES ('HORROR', NOW(), NOW()),
       ('FANTASY', NOW(), NOW()),
       ('SCIENCE_FICTION', NOW(), NOW()),
       ('ROMANCE', NOW(), NOW()),
       ('MYSTERY', NOW(), NOW()),
       ('THRILLER', NOW(), NOW()),
       ('HISTORICAL', NOW(), NOW()),
       ('ADVENTURE', NOW(), NOW()),
       ('DYSTOPIAN', NOW(), NOW()),
       ('BIOGRAPHY', NOW(), NOW()),
       ('AUTOBIOGRAPHY', NOW(), NOW()),
       ('SELF_HELP', NOW(), NOW()),
       ('NON_FICTION', NOW(), NOW()),
       ('POETRY', NOW(), NOW()),
       ('CLASSICS', NOW(), NOW()),
       ('DRAMA', NOW(), NOW()),
       ('YOUNG_ADULT', NOW(), NOW()),
       ('COMICS', NOW(), NOW()),
       ('GRAPHIC_NOVEL', NOW(), NOW()),
       ('LITERARY_FICTION', NOW(), NOW()),
       ('CONTEMPORARY', NOW(), NOW());

-- 3. Tạo bảng 'friend_status'
CREATE TABLE friend_status
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    status_type VARCHAR(50) NOT NULL UNIQUE,
    created_at  DATETIME,
    updated_at  DATETIME
);

-- 3.1. Dữ liệu cho bảng 'friend_status'
INSERT INTO friend_status (status_type, created_at, updated_at)
VALUES ('PENDING', NOW(), NOW()),
       ('REJECTED', NOW(), NOW()),
       ('BLOCKED', NOW(), NOW()),
       ('ACCEPTED', NOW(), NOW());

-- 4. Tạo bảng 'question_type'
CREATE TABLE question_type
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    ques_type  VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME,
    updated_at DATETIME
);

-- 4.1. Dữ liệu cho bảng 'question_type'
INSERT INTO question_type (ques_type, created_at, updated_at)
VALUES ('MULTIPLE_CHOICE', NOW(), NOW()),
       ('FILL_IN_THE_BLANK', NOW(), NOW());

-- 5. Tạo bảng 'part_of_speech'
CREATE TABLE part_of_speech
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    pos_type   VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME,
    updated_at DATETIME
);

-- 5.1. Dữ liệu cho bảng 'part_of_speech'
INSERT INTO part_of_speech (pos_type, created_at, updated_at)
VALUES ('NOUN', NOW(), NOW()),
       ('PRONOUN', NOW(), NOW()),
       ('VERB', NOW(), NOW()),
       ('ADJECTIVE', NOW(), NOW()),
       ('ADVERB', NOW(), NOW()),
       ('PREPOSITION', NOW(), NOW()),
       ('CONJUNCTION', NOW(), NOW()),
       ('INTERJECTION', NOW(), NOW()),
       ('DETERMINER', NOW(), NOW()),
       ('ARTICLE', NOW(), NOW());

-- 6. Tạo bảng 'word_status'
CREATE TABLE word_status
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    status_type VARCHAR(50) NOT NULL UNIQUE,
    created_at  DATETIME,
    updated_at  DATETIME
);

-- 6.1. Dữ liệu cho bảng 'word_status'
INSERT INTO word_status (status_type, created_at, updated_at)
VALUES ('FORGOT', NOW(), NOW()),
       ('LEARNED', NOW(), NOW());

-- 7. Tạo bảng 'notification_type'
CREATE TABLE notification_type
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    noti_type  VARCHAR(50) NOT NULL UNIQUE,
    created_at DATETIME,
    updated_at DATETIME
);

-- 7.1. Dữ liệu cho bảng 'notification_type'
INSERT INTO notification_type (noti_type, created_at, updated_at)
VALUES ('ACTIVITY', NOW(), NOW()),
       ('ACHIEVEMENT', NOW(), NOW());

-- 8. Tạo bảng 'users'
CREATE TABLE users
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    username      VARCHAR(255) NOT NULL UNIQUE,
    email         VARCHAR(255) NOT NULL UNIQUE,
    first_name    VARCHAR(255),
    last_name     VARCHAR(255),
    date_of_birth DATETIME,
    gender_id     INT,
    picture       VARCHAR(255),
    goal_id       INT,
    password      VARCHAR(255),
    is_public     BOOLEAN,
    google_id     VARCHAR(255),
    access_token  VARCHAR(255),
    created_at    DATETIME,
    updated_at    DATETIME,
    FOREIGN KEY (gender_id) REFERENCES user_gender (id)
);

ALTER TABLE users
    ADD COLUMN role_id INT;

-- 9. Tạo bảng 'roles'
CREATE TABLE roles
(
    id   INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

ALTER TABLE users
    ADD FOREIGN KEY (role_id) REFERENCES roles (id);

INSERT INTO roles (id, name)
VALUES (2, 'ADMIN'),
       (1, 'USER');

-- Insert 4 admin users
INSERT INTO users (username, email, first_name, last_name, date_of_birth, gender_id, picture, goal_id, password, is_public, google_id, access_token, created_at, updated_at, role_id)
VALUES
    ('tachithanhdanh', 'tachithanhdanh@gmail.com', 'Chi Thanh Danh', 'Ta', '1990-05-01', 1, 'https://fakeurl.com/pic1.jpg', NULL, '$2a$10$kGHpgELykH9P9d.H35WlsucyPSRN.CneN6TlgG5elJeuX8v6nycxq', TRUE, NULL, NULL, NOW(), NOW(), 2),
    ('vandatcqh', 'ngodat1214@gmail.com', 'Van Dat', 'Ngo', '1992-08-12', 1, 'https://fakeurl.com/pic2.jpg', NULL, '$2a$10$kGHpgELykH9P9d.H35WlsucyPSRN.CneN6TlgG5elJeuX8v6nycxq', TRUE, NULL, NULL, NOW(), NOW(), 2),
    ('allforest01', 'allforest01@gmail.com', 'Tuan Kiet', 'Mai Van', '1985-10-25', 1, 'https://fakeurl.com/pic3.jpg', NULL, '$2a$10$kGHpgELykH9P9d.H35WlsucyPSRN.CneN6TlgG5elJeuX8v6nycxq', TRUE, NULL, NULL, NOW(), NOW(), 2),
    ('NguyenHung1207', 'nguyenhung.9a5.nbk@gmail.com', 'Hung', 'Nguyen', '1988-01-15', 1, 'https://fakeurl.com/pic4.jpg', NULL, '$2a$10$kGHpgELykH9P9d.H35WlsucyPSRN.CneN6TlgG5elJeuX8v6nycxq', TRUE, NULL, NULL, NOW(), NOW(), 2);

-- 10. Tạo bảng 'goals'
CREATE TABLE goals
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    time_spent   INT,
    lesson_count INT,
    word_count   INT,
    created_at   DATETIME,
    updated_at   DATETIME
);

ALTER TABLE goals
    ADD COLUMN user_id INT,
    ADD FOREIGN KEY (user_id) REFERENCES users (id);


-- 11. Tạo bảng 'books'
CREATE TABLE books
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    title          VARCHAR(255) NOT NULL,
    author         VARCHAR(255),
    genre_id       INT,
    published_date DATE,
    isbn           VARCHAR(255),
    num_of_pages   INT,
    publisher      VARCHAR(255),
    description    TEXT,
    cover_image    VARCHAR(255),
    content_url    VARCHAR(255),
    created_at     DATETIME,
    updated_at     DATETIME,
    FOREIGN KEY (genre_id) REFERENCES book_genre (id)
);

-- 12. Tạo bảng 'friends'
CREATE TABLE friends
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    sender_id   INT,
    receiver_id INT,
    status_id   INT,
    created_at  DATETIME,
    updated_at  DATETIME,
    FOREIGN KEY (sender_id) REFERENCES users (id),
    FOREIGN KEY (receiver_id) REFERENCES users (id),
    FOREIGN KEY (status_id) REFERENCES friend_status (id)
);

-- 13. Tạo bảng 'questions' với thêm cột 'correct_answer'
CREATE TABLE questions
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    content         TEXT NOT NULL,
    audio_url       VARCHAR(255),
    hint            TEXT,
    type_id         INT,
    correct_answer  VARCHAR(255) NOT NULL, -- Thêm cột đáp án đúng
    created_at      DATETIME,
    updated_at      DATETIME,
    FOREIGN KEY (type_id) REFERENCES question_type (id)
);

-- 14. Tạo bảng 'answers' mà không có cột 'is_correct'
CREATE TABLE answers
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    content     VARCHAR(255) NOT NULL,
    question_id INT,
    created_at  DATETIME,
    updated_at  DATETIME,
    FOREIGN KEY (question_id) REFERENCES questions (id)
);

-- 15. Tạo bảng 'topics'
CREATE TABLE topics
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL UNIQUE,
    created_at  DATETIME,
    updated_at  DATETIME
);

-- 15.1. Dữ liệu cho bảng 'topics'
INSERT INTO topics (name, created_at, updated_at)
VALUES ('Animals', NOW(), NOW()),
       ('Food', NOW(), NOW()),
       ('Technology', NOW(), NOW()),
       ('Nature', NOW(), NOW()),
       ('Sports', NOW(), NOW()),
       ('Health', NOW(), NOW()),
       ('Education', NOW(), NOW()),
       ('Travel', NOW(), NOW()),
       ('Music', NOW(), NOW()),
       ('Art', NOW(), NOW());

-- 16. Tạo bảng 'words'
CREATE TABLE words
(
    id                INT AUTO_INCREMENT PRIMARY KEY,
    word              VARCHAR(255) NOT NULL,
    meaning           VARCHAR(255) NOT NULL,
    topic_id          INT,
    part_of_speech_id INT,
    pronunciation     VARCHAR(255),
    audio_url         VARCHAR(255),
    example_sentence  TEXT,
    created_at        DATETIME,
    updated_at        DATETIME,
    FOREIGN KEY (part_of_speech_id) REFERENCES part_of_speech (id),
    FOREIGN KEY (topic_id) REFERENCES topics (id)
);

-- 17. Tạo bảng 'word_progress'
CREATE TABLE word_progress
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    user_id    INT,
    word_id    INT,
    status_id  INT,
    note       TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (word_id) REFERENCES words (id),
    FOREIGN KEY (status_id) REFERENCES word_status (id)
);

-- 18. Tạo bảng 'chapters'
CREATE TABLE chapters
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    cover_image VARCHAR(255),
    description TEXT,
    created_at  DATETIME,
    updated_at  DATETIME
);

-- 19. Tạo bảng 'chapter_progress'
CREATE TABLE chapter_progress
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    user_id    INT,
    chapter_id INT,
    unlocked   BOOLEAN,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (chapter_id) REFERENCES chapters (id)
);

-- 20. Tạo bảng 'lessons'
CREATE TABLE lessons
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(255) NOT NULL,
    chapter_id  INT,
    description TEXT,
    created_at  DATETIME,
    updated_at  DATETIME,
    FOREIGN KEY (chapter_id) REFERENCES chapters (id)
);

-- 21. Tạo bảng 'lesson_progress'
CREATE TABLE lesson_progress
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    user_id         INT,
    lesson_id       INT,
    correct_count   INT,
    incorrect_count INT,
    time_spent      INT,
    created_at      DATETIME,
    updated_at      DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (lesson_id) REFERENCES lessons (id)
);

-- 22. Tạo bảng 'lesson_questions'
CREATE TABLE lesson_questions
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    lesson_id   INT,
    question_id INT,
    created_at  DATETIME,
    updated_at  DATETIME,
    FOREIGN KEY (lesson_id) REFERENCES lessons (id),
    FOREIGN KEY (question_id) REFERENCES questions (id)
);

-- 23. Tạo bảng 'mistakes'
CREATE TABLE mistakes
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    user_id     INT,
    lesson_id   INT,
    question_id INT,
    your_answer TEXT,
    active      BOOLEAN,
    created_at  DATETIME,
    updated_at  DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (lesson_id) REFERENCES lessons (id),
    FOREIGN KEY (question_id) REFERENCES questions (id)
);

-- 24. Tạo bảng 'daily_progress'
CREATE TABLE daily_progress
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    user_id      INT,
    time_spent   INT,
    lesson_count INT,
    word_count   INT,
    created_at   DATETIME,
    updated_at   DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

-- 25. Tạo bảng 'feedback'
CREATE TABLE feedback
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    user_id    INT,
    lesson_id  INT,
    stars      INT,
    comment    TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (lesson_id) REFERENCES lessons (id)
);

-- 26. Tạo bảng 'messages'
CREATE TABLE messages
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    sender_id    INT,
    receiver_id  INT,
    message_text TEXT,
    is_read      BOOLEAN,
    created_at   DATETIME,
    updated_at   DATETIME,
    FOREIGN KEY (sender_id) REFERENCES users (id),
    FOREIGN KEY (receiver_id) REFERENCES users (id)
);

-- 27. Tạo bảng 'notifications'
CREATE TABLE notifications
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    user_id    INT,
    type_id    INT,
    content    TEXT,
    is_read    BOOLEAN,
    is_deleted BOOLEAN,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (type_id) REFERENCES notification_type (id)
);

-- 28. Tạo bảng 'admins'
CREATE TABLE admins
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(255) NOT NULL UNIQUE,
    password   VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME
);

-- 29. Tạo bảng 'user_answers' để lưu câu trả lời của người dùng
CREATE TABLE user_answers
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    user_id      INT NOT NULL,
    question_id  INT NOT NULL,
    answer_text  VARCHAR(255) NOT NULL,
    created_at   DATETIME,
    updated_at   DATETIME,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (question_id) REFERENCES questions (id)
);


-- Thêm dữ liệu cho bảng 'words'
-- Mỗi topic 5 từ, part_of_speech_id chọn là 1 (NOUN) cho đơn giản
-- Topic 1: Animals
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Dog', 'A domesticated canine', 1, 1, 'dɒɡ', 'https://fakeaudio.com/dog.mp3', 'The dog barked.', NOW(), NOW()),
    ('Cat', 'A small domesticated feline', 1, 1, 'kæt', 'https://fakeaudio.com/cat.mp3', 'The cat slept.', NOW(), NOW()),
    ('Elephant', 'A large mammal with a trunk', 1, 1, 'ˈɛlɪfənt', 'https://fakeaudio.com/elephant.mp3', 'The elephant is huge.', NOW(), NOW()),
    ('Lion', 'A large wild cat', 1, 1, 'ˈlaɪ.ən', 'https://fakeaudio.com/lion.mp3', 'The lion roared.', NOW(), NOW()),
    ('Giraffe', 'A tall African mammal', 1, 1, 'dʒəˈrɑːf', 'https://fakeaudio.com/giraffe.mp3', 'The giraffe ate leaves.', NOW(), NOW());

-- Topic 2: Food
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Apple', 'A sweet fruit', 2, 1, 'ˈæp.əl', 'https://fakeaudio.com/apple.mp3', 'He ate an apple.', NOW(), NOW()),
    ('Bread', 'A staple food made of flour', 2, 1, 'brɛd', 'https://fakeaudio.com/bread.mp3', 'They baked bread.', NOW(), NOW()),
    ('Cheese', 'A dairy product made from milk', 2, 1, 'tʃiːz', 'https://fakeaudio.com/cheese.mp3', 'He loves cheese.', NOW(), NOW()),
    ('Pasta', 'An Italian dish made from dough', 2, 1, 'ˈpɑː.stə', 'https://fakeaudio.com/pasta.mp3', 'The pasta was delicious.', NOW(), NOW()),
    ('Tomato', 'A red juicy fruit often used as a vegetable', 2, 1, 'təˈmɑː.təʊ', 'https://fakeaudio.com/tomato.mp3', 'She sliced a tomato.', NOW(), NOW());

-- Topic 3: Technology
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Computer', 'An electronic device for storing and processing data', 3, 1, 'kəmˈpjuː.tər', 'https://fakeaudio.com/computer.mp3', 'I use a computer daily.', NOW(), NOW()),
    ('Smartphone', 'A mobile phone with advanced features', 3, 1, 'ˈsmɑːt.fəʊn', 'https://fakeaudio.com/smartphone.mp3', 'He answered his smartphone.', NOW(), NOW()),
    ('Robot', 'A machine capable of carrying out complex actions', 3, 1, 'ˈrəʊ.bɒt', 'https://fakeaudio.com/robot.mp3', 'The robot cleaned the floor.', NOW(), NOW()),
    ('Drone', 'An unmanned aerial vehicle', 3, 1, 'drəʊn', 'https://fakeaudio.com/drone.mp3', 'The drone hovered above.', NOW(), NOW()),
    ('Internet', 'A global system of interconnected computer networks', 3, 1, 'ˈɪn.tə.net', 'https://fakeaudio.com/internet.mp3', 'The internet connects people worldwide.', NOW(), NOW());

-- Topic 4: Nature
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Tree', 'A perennial plant with a trunk', 4, 1, 'triː', 'https://fakeaudio.com/tree.mp3', 'The tree is tall.', NOW(), NOW()),
    ('River', 'A large natural stream of water', 4, 1, 'ˈrɪv.ər', 'https://fakeaudio.com/river.mp3', 'The river flows quickly.', NOW(), NOW()),
    ('Mountain', 'A large natural elevation of the earth', 4, 1, 'ˈmaʊn.tɪn', 'https://fakeaudio.com/mountain.mp3', 'We climbed the mountain.', NOW(), NOW()),
    ('Forest', 'A large area covered with trees', 4, 1, 'ˈfɒr.ɪst', 'https://fakeaudio.com/forest.mp3', 'The forest is dense.', NOW(), NOW()),
    ('Flower', 'The seed-bearing part of a plant', 4, 1, 'ˈflaʊ.ər', 'https://fakeaudio.com/flower.mp3', 'The flower is blooming.', NOW(), NOW());

-- Topic 5: Sports
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Football', 'A sport played by two teams of eleven players with a spherical ball', 5, 1, 'ˈfʊt.bɔːl', 'https://fakeaudio.com/football.mp3', 'They play football every weekend.', NOW(), NOW()),
    ('Basketball', 'A game played between two teams of five players where goals are scored by throwing a ball through a netted hoop', 5, 1, 'ˈbæs.kɪt.bɔːl', 'https://fakeaudio.com/basketball.mp3', 'He dribbles a basketball.', NOW(), NOW()),
    ('Tennis', 'A game played with a racket and a small rubber ball', 5, 1, 'ˈten.ɪs', 'https://fakeaudio.com/tennis.mp3', 'She enjoys tennis.', NOW(), NOW()),
    ('Swimming', 'The sport or activity of moving through water by moving your arms and legs', 5, 1, 'ˈswɪm.ɪŋ', 'https://fakeaudio.com/swimming.mp3', 'He is good at swimming.', NOW(), NOW()),
    ('Volleyball', 'A game in which two teams hit a large ball over a high net using their hands', 5, 1, 'ˈvɒl.i.bɔːl', 'https://fakeaudio.com/volleyball.mp3', 'They played volleyball on the beach.', NOW(), NOW());

-- Topic 6: Health
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Doctor', 'A qualified practitioner of medicine', 6, 1, 'ˈdɒk.tər', 'https://fakeaudio.com/doctor.mp3', 'She visited the doctor.', NOW(), NOW()),
    ('Medicine', 'A substance used for treating disease', 6, 1, 'ˈmed.ɪ.sɪn', 'https://fakeaudio.com/medicine.mp3', 'He took some medicine.', NOW(), NOW()),
    ('Vaccine', 'A substance used to stimulate the production of antibodies', 6, 1, 'ˈvæk.siːn', 'https://fakeaudio.com/vaccine.mp3', 'The vaccine was administered.', NOW(), NOW()),
    ('Hospital', 'An institution for medical treatment', 6, 1, 'ˈhɒs.pɪ.təl', 'https://fakeaudio.com/hospital.mp3', 'The hospital was busy.', NOW(), NOW()),
    ('Nutrition', 'The process of obtaining the food necessary for health', 6, 1, 'njuːˈtrɪʃ.ən', 'https://fakeaudio.com/nutrition.mp3', 'Good nutrition is vital.', NOW(), NOW());

-- Topic 7: Education
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('School', 'An institution for educating children', 7, 1, 'skuːl', 'https://fakeaudio.com/school.mp3', 'They go to school daily.', NOW(), NOW()),
    ('Teacher', 'A person who teaches, especially in a school', 7, 1, 'ˈtiː.tʃər', 'https://fakeaudio.com/teacher.mp3', 'The teacher explained the lesson.', NOW(), NOW()),
    ('Student', 'A person who is studying at a school or college', 7, 1, 'ˈstjuː.dənt', 'https://fakeaudio.com/student.mp3', 'The student did homework.', NOW(), NOW()),
    ('Library', 'A building or room containing collections of books', 7, 1, 'ˈlaɪ.brər.i', 'https://fakeaudio.com/library.mp3', 'We visited the library.', NOW(), NOW()),
    ('Exam', 'A formal test of a person’s knowledge', 7, 1, 'ɪɡˈzæm', 'https://fakeaudio.com/exam.mp3', 'He passed the exam.', NOW(), NOW());

-- Topic 8: Travel
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Journey', 'An act of traveling from one place to another', 8, 1, 'ˈdʒɜː.ni', 'https://fakeaudio.com/journey.mp3', 'The journey was long.', NOW(), NOW()),
    ('Passport', 'An official document for traveling abroad', 8, 1, 'ˈpɑːs.pɔːt', 'https://fakeaudio.com/passport.mp3', 'He showed his passport.', NOW(), NOW()),
    ('Hotel', 'An establishment providing accommodation', 8, 1, 'həʊˈtel', 'https://fakeaudio.com/hotel.mp3', 'We stayed at a hotel.', NOW(), NOW()),
    ('Airport', 'A complex of runways for takeoff and landing of aircraft', 8, 1, 'ˈeə.pɔːt', 'https://fakeaudio.com/airport.mp3', 'He waited at the airport.', NOW(), NOW()),
    ('Tourist', 'A person who is traveling or visiting a place for pleasure', 8, 1, 'ˈtʊə.rɪst', 'https://fakeaudio.com/tourist.mp3', 'The tourist took photos.', NOW(), NOW());

-- Topic 9: Music
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Song', 'A piece of music with words', 9, 1, 'sɒŋ', 'https://fakeaudio.com/song.mp3', 'They sang a song.', NOW(), NOW()),
    ('Melody', 'A sequence of musical notes', 9, 1, 'ˈmel.ə.di', 'https://fakeaudio.com/melody.mp3', 'The melody was beautiful.', NOW(), NOW()),
    ('Guitar', 'A stringed musical instrument', 9, 1, 'ɡɪˈtɑːr', 'https://fakeaudio.com/guitar.mp3', 'He played the guitar.', NOW(), NOW()),
    ('Piano', 'A large musical instrument with keys', 9, 1, 'piˈæn.əʊ', 'https://fakeaudio.com/piano.mp3', 'She learned the piano.', NOW(), NOW()),
    ('Drum', 'A percussion instrument sounded by being struck', 9, 1, 'drʌm', 'https://fakeaudio.com/drum.mp3', 'The drum kept the rhythm.', NOW(), NOW());

-- Topic 10: Art
INSERT INTO words (word, meaning, topic_id, part_of_speech_id, pronunciation, audio_url, example_sentence, created_at, updated_at)
VALUES
    ('Painting', 'A picture made using paint', 10, 1, 'ˈpeɪn.tɪŋ', 'https://fakeaudio.com/painting.mp3', 'The painting was on the wall.', NOW(), NOW()),
    ('Sculpture', 'A work of art made by carving or modeling', 10, 1, 'ˈskʌlp.tʃər', 'https://fakeaudio.com/sculpture.mp3', 'We admired the sculpture.', NOW(), NOW()),
    ('Canvas', 'A strong, rough cloth on which paintings are made', 10, 1, 'ˈkæn.vəs', 'https://fakeaudio.com/canvas.mp3', 'He painted on a canvas.', NOW(), NOW()),
    ('Exhibition', 'A public display of works of art', 10, 1, 'ˌek.sɪˈbɪʃ.ən', 'https://fakeaudio.com/exhibition.mp3', 'The exhibition was crowded.', NOW(), NOW()),
    ('Brush', 'An implement with bristles used for painting', 10, 1, 'brʌʃ', 'https://fakeaudio.com/brush.mp3', 'She used a brush to paint.', NOW(), NOW());
