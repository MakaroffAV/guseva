--������� ������������  �##avia � ������� qwerty
CREATE USER C##AVIA
IDENTIFIED BY qwerty;

--������ ��� ����������� �����
GRANT connect TO c##avia;
GRANT resource TO c##avia;
GRANT unlimited tablespace TO c##avia;