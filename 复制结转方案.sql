/*
SELECT * FROM C05_INFO WHERE 账套名称　LIKE '%河婆街道%';
SELECT 账套代码,账套名称　FROM C05_INFO
WHERE LENGTH(账套代码)=6 AND SUBSTR(账套代码,1,3)='906'
用途：
　　将指定单位的结转方案复制到其他单位
*/
SET SERVEROUTPUT ON
DECLARE
  l_sql    VARCHAR2(1000) := '  
INSERT INTO G002_ZNZZ
SELECT 方案编号,  
结转方案,  
转出科目,  
转出台账,  
转出方向,  
转入科目,  
转入台账,  
结转方式,  
:1,  
seq_g002_znzz.nextval,  
凭证类别,  
台账内容
FROM G002_ZNZZ
WHERE 账套代码=:2';
  l_source VARCHAR2(10)   := '171006';
BEGIN
  FOR x IN  (SELECT 账套代码, 账套名称　FROM C05_INFO
    WHERE LENGTH(账套代码)  =6
    AND SUBSTR(账套代码,1,3)='906'
  )  LOOP
     EXECUTE immediate l_sql USING x. 账套代码, l_source;
  END LOOP;
  COMMIT;
  SYS.DBMS_OUTPUT.PUT_LINE('SUCCESS');
  
EXCEPTION
WHEN OTHERS THEN
  ROLLBACK;
  SYS.DBMS_OUTPUT.PUT_LINE(SQLCODE || SQLERRM);
  
END;
