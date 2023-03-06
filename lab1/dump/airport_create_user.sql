--создаем пользователя  с##avia с паролем qwerty
CREATE USER C##AVIA
IDENTIFIED BY qwerty;

--выдаем ему необходимые права
GRANT connect TO c##avia;
GRANT resource TO c##avia;
GRANT unlimited tablespace TO c##avia;