/*
吉扬科技软件包
PKG_JYKJ
*/
CREATE OR REPLACE PACKAGE PKG_JYKJ
IS
  FUNCTION GET_TZ_INFO(
      P_CODE VARCHAR2)
    RETURN VARCHAR2;
END PKG_JYKJ;

CREATE OR REPLACE PACKAGE BODY PKG_JYKJ
IS
  FUNCTION GET_TZ_INFO(
      P_CODE VARCHAR2)
    RETURN VARCHAR2
  IS
    L_RESULT VARCHAR2(500);
    l_name G002_TZ.台账名称%Type;
    l_code G002_TZ.代码%Type;
    l_step NUMBER(1);
    l_len  NUMBER(1);
    l_sql  VARCHAR2(1000) := 'SELECT 台账名称 FROM G002_TZ WHERE 代码=:1';
  BEGIN
    l_len      := LENGTH(P_CODE);
    IF l_len   <=0 THEN
      L_RESULT := '';
      RETURN L_RESULT;
    ELSE
      l_step      := 2;
      WHILE l_step<=l_len
      LOOP
        l_code := SUBSTR(P_CODE, l_step,1);
        EXECUTE immediate l_sql into l_name USING l_code;
        l_step   := l_step   + 1;
        L_RESULT := L_RESULT || l_name || ' , ';
      END LOOP;
    END IF;
    RETURN L_RESULT;
  END GET_TZ_INFO;
END PKG_JYKJ;