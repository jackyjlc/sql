/*
SELECT * FROM C05_INFO WHERE �������ơ�LIKE '%���Žֵ�%';
SELECT ���״���,�������ơ�FROM C05_INFO
WHERE LENGTH(���״���)=6 AND SUBSTR(���״���,1,3)='906'
��;��
������ָ����λ�Ľ�ת�������Ƶ�������λ
*/
SET SERVEROUTPUT ON
DECLARE
  l_sql    VARCHAR2(1000) := '  
INSERT INTO G002_ZNZZ
SELECT �������,  
��ת����,  
ת����Ŀ,  
ת��̨��,  
ת������,  
ת���Ŀ,  
ת��̨��,  
��ת��ʽ,  
:1,  
seq_g002_znzz.nextval,  
ƾ֤���,  
̨������
FROM G002_ZNZZ
WHERE ���״���=:2';
  l_source VARCHAR2(10)   := '171006';
BEGIN
  FOR x IN  (SELECT ���״���, �������ơ�FROM C05_INFO
    WHERE LENGTH(���״���)  =6
    AND SUBSTR(���״���,1,3)='906'
  )  LOOP
     EXECUTE immediate l_sql USING x. ���״���, l_source;
  END LOOP;
  COMMIT;
  SYS.DBMS_OUTPUT.PUT_LINE('SUCCESS');
  
EXCEPTION
WHEN OTHERS THEN
  ROLLBACK;
  SYS.DBMS_OUTPUT.PUT_LINE(SQLCODE || SQLERRM);
  
END;
