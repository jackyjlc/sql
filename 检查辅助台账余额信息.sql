/*
������ �����ز�����ͳ��2015�긨��̨����Ϊ0�ļ�¼
*/
WITH TZ01 AS
  (SELECT G002.���״���,
    TZ01,
    CBMDWZF.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ01) rn
  FROM g002,
    CBMDWZF
  WHERE TZ01  IS NOT NULL
  AND g002.TZ01=CBMDWZF.����
  GROUP BY G002.���״���,
    G002.TZ01,
    CBMDWZF.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ02 AS
  (SELECT G002.���״���,
    TZ02,
    CYSKMZW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ02) rn
  FROM g002,
    CYSKMZW
  WHERE TZ02  IS NOT NULL
  AND g002.TZ02=CYSKMZW.����
  AND g002.���״���=CYSKMZW.���״���
  GROUP BY G002.���״���,
    G002.TZ02,
    CYSKMZW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ03 AS
  (SELECT G002.���״���,
    TZ03,
    CZJQDZW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ03) rn
  FROM g002,
    CZJQDZW
  WHERE TZ03  IS NOT NULL
  AND g002.TZ03=CZJQDZW.����
  GROUP BY G002.���״���,
    G002.TZ03,
    CZJQDZW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ04 AS
  (SELECT G002.���״���,
    TZ04,
    CZCFSZW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ04) rn
  FROM g002,
    CZCFSZW
  WHERE TZ04  IS NOT NULL
  AND g002.TZ04=CZCFSZW.����
  GROUP BY G002.���״���,
    G002.TZ04,
    CZCFSZW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ05 AS
  (SELECT G002.���״���,
    TZ05,
    CJJKM.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ05) rn
  FROM g002,
    CJJKM
  WHERE TZ05  IS NOT NULL
  AND g002.TZ05=CJJKM.����
  GROUP BY G002.���״���,
    G002.TZ05,
    CJJKM.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ06 AS
  (SELECT G002.���״���,
    TZ06,
    CYSSRYB.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ06) rn
  FROM g002,
    CYSSRYB
  WHERE TZ06  IS NOT NULL
  AND g002.TZ06=CYSSRYB.����
  GROUP BY G002.���״���,
    G002.TZ06,
    CYSSRYB.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ07 AS
  (SELECT G002.���״���,
    TZ07,
    CGKKSZW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ07) rn
  FROM g002,
    CGKKSZW
  WHERE TZ07  IS NOT NULL
  AND g002.TZ07=CGKKSZW.����
  GROUP BY G002.���״���,
    G002.TZ07,
    CGKKSZW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ08 AS
  (SELECT G002.���״���,
    TZ08,
    CZJXZ.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ08) rn
  FROM g002,
    CZJXZ
  WHERE TZ08  IS NOT NULL
  AND g002.TZ08=CZJXZ.����
  GROUP BY G002.���״���,
    G002.TZ08,
    CZJXZ.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ09 AS
  (SELECT G002.���״���,
    TZ09,
    CSRKMZW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ09) rn
  FROM g002,
    CSRKMZW
  WHERE TZ09  IS NOT NULL
  AND g002.TZ09=CSRKMZW.����
  AND g002.���״���=CSRKMZW.���״���
  GROUP BY G002.���״���,
    G002.TZ09,
    CSRKMZW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ10 AS
  (SELECT G002.���״���,
    TZ10,
    CTZ010.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ10) rn
  FROM g002,
    CTZ010
  WHERE TZ10  IS NOT NULL
  AND g002.TZ10=CTZ010.����
  AND g002.���״���=CTZ010.���״���
  GROUP BY G002.���״���,
    G002.TZ10,
    CTZ010.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ11 AS
  (SELECT G002.���״���,
    TZ11,
    CTZ011.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ11) rn
  FROM g002,
    CTZ011
  WHERE TZ11  IS NOT NULL
  AND g002.TZ11=CTZ011.����
  AND g002.���״���=CTZ011.���״���
  GROUP BY G002.���״���,
    G002.TZ11,
    CTZ011.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ12 AS
  (SELECT G002.���״���,
    TZ12,
    cyssrjj.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ12) rn
  FROM g002,
    cyssrjj
  WHERE TZ12  IS NOT NULL
  AND g002.TZ12=cyssrjj.����
  GROUP BY G002.���״���,
    G002.TZ12,
    cyssrjj.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ13 AS
  (SELECT G002.���״���,
    TZ13,
    CTZ013.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ13) rn
  FROM g002,
    CTZ013
  WHERE TZ13  IS NOT NULL
  AND g002.TZ13=CTZ013.����
  AND g002.���״���=CTZ013.���״���
  GROUP BY G002.���״���,
    G002.TZ13,
    CTZ013.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ14 AS
  (SELECT G002.���״���,
    TZ14,
    CTZ014.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ14) rn
  FROM g002,
    CTZ014
  WHERE TZ14  IS NOT NULL
  AND g002.TZ14=CTZ014.����
  AND g002.���״���=CTZ014.���״���
  GROUP BY G002.���״���,
    G002.TZ14,
    CTZ014.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ15 AS
  (SELECT G002.���״���,
    TZ15,
    CTZ015.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ15) rn
  FROM g002,
    CTZ015
  WHERE TZ15  IS NOT NULL
  AND g002.TZ15=CTZ015.����
  AND g002.���״���=CTZ015.���״���
  GROUP BY G002.���״���,
    G002.TZ15,
    CTZ015.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ16 AS
  (SELECT G002.���״���,
    TZ16,
    CTZ016.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ16) rn
  FROM g002,
    CTZ016
  WHERE TZ16  IS NOT NULL
  AND g002.TZ16=CTZ016.����
  AND g002.���״���=CTZ016.���״���
  GROUP BY G002.���״���,
    G002.TZ16,
    CTZ016.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ17 AS
  (SELECT G002.���״���,
    TZ17,
    CYSSRYW.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ17) rn
  FROM g002,
    CYSSRYW
  WHERE TZ17  IS NOT NULL
  AND g002.TZ17=CYSSRYW.����
  GROUP BY G002.���״���,
    G002.TZ17,
    CYSSRYW.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ18 AS
  (SELECT G002.���״���,
    TZ18,
    CTZ018.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ18) rn
  FROM g002,
    CTZ018
  WHERE TZ18  IS NOT NULL
  AND g002.TZ18=CTZ018.����
  AND g002.���״���=CTZ018.���״���
  GROUP BY G002.���״���,
    G002.TZ18,
    CTZ018.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ19 AS
  (SELECT G002.���״���,
    TZ19,
    CTZ019.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ19) rn
  FROM g002,
    CTZ019
  WHERE TZ19  IS NOT NULL
  AND g002.TZ19=CTZ019.����
  AND g002.���״���=CTZ019.���״���
  GROUP BY G002.���״���,
    G002.TZ19,
    CTZ019.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ20 AS
  (SELECT G002.���״���,
    TZ20,
    CTZ020.��Ŀ,
    SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.���״��� order by TZ20) rn
  FROM g002,
    CTZ020
  WHERE TZ20  IS NOT NULL
  AND g002.TZ20=CTZ020.����
  AND g002.���״���=CTZ020.���״���
  GROUP BY G002.���״���,
    G002.TZ20,
    CTZ020.��Ŀ
  HAVING SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '��'
      THEN d010
      ELSE 0
    END)!=0
  ),
ORG_ALL AS
  (SELECT  C05_INFO.���״���,
   C05_INFO.��������,
    ROW_NUMBER() OVER (PARTITION BY C05_INFO.���״��� ORDER BY C05_INFO.���״���) RN
  FROM C05_INFO
  LEFT JOIN TZ01 ON (C05_INFO.���״���=TZ01.���״���)
  LEFT JOIN TZ02 ON (C05_INFO.���״���=TZ02.���״���)
  LEFT JOIN TZ03 ON (C05_INFO.���״���=TZ03.���״���)
  LEFT JOIN TZ04 ON (C05_INFO.���״���=TZ04.���״���)
  LEFT JOIN TZ05 ON (C05_INFO.���״���=TZ05.���״���)
  LEFT JOIN TZ06 ON (C05_INFO.���״���=TZ06.���״���)
  LEFT JOIN TZ07 ON (C05_INFO.���״���=TZ07.���״���)
  LEFT JOIN TZ08 ON (C05_INFO.���״���=TZ08.���״���)
  LEFT JOIN TZ09 ON (C05_INFO.���״���=TZ09.���״���)
  LEFT JOIN TZ10 ON (C05_INFO.���״���=TZ10.���״���)
  LEFT JOIN TZ11 ON (C05_INFO.���״���=TZ11.���״���)
  LEFT JOIN TZ12 ON (C05_INFO.���״���=TZ12.���״���)
  LEFT JOIN TZ13 ON (C05_INFO.���״���=TZ13.���״���)
  LEFT JOIN TZ14 ON (C05_INFO.���״���=TZ14.���״���)
  LEFT JOIN TZ15 ON (C05_INFO.���״���=TZ15.���״���)
  LEFT JOIN TZ16 ON (C05_INFO.���״���=TZ16.���״���)
  LEFT JOIN TZ17 ON (C05_INFO.���״���=TZ17.���״���)
  LEFT JOIN TZ18 ON (C05_INFO.���״���=TZ18.���״���)
  LEFT JOIN TZ19 ON (C05_INFO.���״���=TZ19.���״���)
  LEFT JOIN TZ20 ON (C05_INFO.���״���=TZ20.���״���)
  WHERE LENGTH(C05_INFO.���״���)=6
  )
SELECT ORG_ALL.���״���,
  ORG_ALL.��������,
  TZ01.TZ01 ���ŵ�λ_����,
  TZ01.��Ŀ ���ŵ�λ_����,
  TZ01.D010 ���ŵ�λ_���,
  TZ02.TZ02 ���ܿ�Ŀ_����,
  TZ02.��Ŀ ���ܿ�Ŀ_����,
  TZ02.D010 ���ܿ�Ŀ_���,
  TZ03.TZ03 �ʽ�����_����,
  TZ03.��Ŀ �ʽ�����_����,
  TZ03.D010 �ʽ�����_���,
  TZ04.TZ04 ֧����ʽ_����,
  TZ04.��Ŀ ֧����ʽ_����,
  TZ04.D010 ֧����ʽ_���,
  TZ05.TZ05 ���ÿ�Ŀ_����,
  TZ05.��Ŀ ���ÿ�Ŀ_����,
  TZ05.D010 ���ÿ�Ŀ_���,
  TZ06.TZ06 һ��Ԥ������_����,
  TZ06.��Ŀ һ��Ԥ������_����,
  TZ06.D010 һ��Ԥ������_���,
  TZ07.TZ07 ��ڿ���_����,
  TZ07.��Ŀ ��ڿ���_����,
  TZ07.D010 ��ڿ���_���,
  TZ08.TZ08 ֧���ṹ_����,
  TZ08.��Ŀ ֧���ṹ_����,
  TZ08.D010 ֧���ṹ_���,
  TZ09.TZ09 Ԥ����������Ŀ_����,
  TZ09.��Ŀ Ԥ����������Ŀ_����,
  TZ09.D010 Ԥ����������Ŀ_���,
  TZ10.TZ10 Ԥ�������빦��_����,
  TZ10.��Ŀ Ԥ�������빦��_����,
  TZ10.D010 Ԥ�������빦��_���,
  TZ11.TZ11 ר�û���_����,
  TZ11.��Ŀ ר�û���_����,
  TZ11.D010 ר�û���_���,
  TZ12.TZ12 ����Ԥ������_����,
  TZ12.��Ŀ ����Ԥ������_����,
  TZ12.D010 ����Ԥ������_���,
  TZ13.TZ13 �ĺ�_����,
  TZ13.��Ŀ �ĺ�_����,
  TZ13.D010 �ĺ�_���,
  TZ14.TZ14 ��Ŀ_����,
  TZ14.��Ŀ ��Ŀ_����,
  TZ14.D010 ��Ŀ_���,
  TZ15.TZ15 ֧�����ø���_����,
  TZ15.��Ŀ ֧�����ø���_����,
  TZ15.D010 ֧�����ø���_���,
  TZ16.TZ16 ���뾭�ø���_����,
  TZ16.��Ŀ ���뾭�ø���_����,
  TZ16.D010 ���뾭�ø���_���,
  TZ17.TZ17 Ԥ�����˰�������_����,
  TZ17.��Ŀ Ԥ�����˰�������_����,
  TZ17.D010 Ԥ�����˰�������_���,
  TZ18.TZ18 ������Ŀ3_����,
  TZ18.��Ŀ ������Ŀ3_����,
  TZ18.D010 ������Ŀ3_���,
  TZ19.TZ19 ������Ŀ4_����,
  TZ19.��Ŀ ������Ŀ4_����,
  TZ19.D010 ������Ŀ4_���,
  TZ20.TZ20 ������Ŀ5_����,
  TZ20.��Ŀ ������Ŀ5_����,
  TZ20.D010 ������Ŀ5_���
FROM ORG_ALL
LEFT JOIN TZ01 ON (ORG_ALL.���״���=TZ01.���״��� AND ORG_ALL.RN=TZ01.RN)
LEFT JOIN TZ02 ON (ORG_ALL.���״���=TZ02.���״��� AND ORG_ALL.RN=TZ02.RN)
LEFT JOIN TZ03 ON (ORG_ALL.���״���=TZ03.���״��� AND ORG_ALL.RN=TZ03.RN)
LEFT JOIN TZ04 ON (ORG_ALL.���״���=TZ04.���״��� AND ORG_ALL.RN=TZ04.RN)
LEFT JOIN TZ05 ON (ORG_ALL.���״���=TZ05.���״��� AND ORG_ALL.RN=TZ05.RN)
LEFT JOIN TZ06 ON (ORG_ALL.���״���=TZ06.���״��� AND ORG_ALL.RN=TZ06.RN)
LEFT JOIN TZ07 ON (ORG_ALL.���״���=TZ07.���״��� AND ORG_ALL.RN=TZ07.RN)
LEFT JOIN TZ08 ON (ORG_ALL.���״���=TZ08.���״��� AND ORG_ALL.RN=TZ08.RN)
LEFT JOIN TZ09 ON (ORG_ALL.���״���=TZ09.���״��� AND ORG_ALL.RN=TZ09.RN)
LEFT JOIN TZ10 ON (ORG_ALL.���״���=TZ10.���״��� AND ORG_ALL.RN=TZ10.RN)
LEFT JOIN TZ11 ON (ORG_ALL.���״���=TZ11.���״��� AND ORG_ALL.RN=TZ11.RN)
LEFT JOIN TZ12 ON (ORG_ALL.���״���=TZ12.���״��� AND ORG_ALL.RN=TZ12.RN)
LEFT JOIN TZ13 ON (ORG_ALL.���״���=TZ13.���״��� AND ORG_ALL.RN=TZ13.RN)
LEFT JOIN TZ14 ON (ORG_ALL.���״���=TZ14.���״��� AND ORG_ALL.RN=TZ14.RN)
LEFT JOIN TZ15 ON (ORG_ALL.���״���=TZ15.���״��� AND ORG_ALL.RN=TZ15.RN)
LEFT JOIN TZ16 ON (ORG_ALL.���״���=TZ16.���״��� AND ORG_ALL.RN=TZ16.RN)
LEFT JOIN TZ17 ON (ORG_ALL.���״���=TZ17.���״��� AND ORG_ALL.RN=TZ17.RN)
LEFT JOIN TZ18 ON (ORG_ALL.���״���=TZ18.���״��� AND ORG_ALL.RN=TZ18.RN)
LEFT JOIN TZ19 ON (ORG_ALL.���״���=TZ19.���״��� AND ORG_ALL.RN=TZ19.RN)
LEFT JOIN TZ20 ON (ORG_ALL.���״���=TZ20.���״��� AND ORG_ALL.RN=TZ20.RN) 
WHERE NOT (TZ01 IS NULL AND TZ02 IS NULL AND TZ03 IS NULL AND TZ04 IS NULL AND TZ05 IS NULL AND TZ06 IS NULL AND TZ07 IS NULL AND TZ08 IS NULL AND TZ09 IS NULL
AND TZ10 IS NULL AND TZ11 IS NULL AND TZ12 IS NULL AND TZ13 IS NULL AND TZ14 IS NULL AND TZ15 IS NULL AND TZ16 IS NULL AND TZ17 IS NULL AND TZ18 IS NULL AND TZ19 IS NULL
AND TZ20 IS NULL)
