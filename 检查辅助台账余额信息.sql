/*
描述： 揭西县财政局统计2015年辅助台账余额不为0的记录
*/
WITH TZ01 AS
  (SELECT G002.账套代码,
    TZ01,
    CBMDWZF.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ01) rn
  FROM g002,
    CBMDWZF
  WHERE TZ01  IS NOT NULL
  AND g002.TZ01=CBMDWZF.代码
  GROUP BY G002.账套代码,
    G002.TZ01,
    CBMDWZF.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ02 AS
  (SELECT G002.账套代码,
    TZ02,
    CYSKMZW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ02) rn
  FROM g002,
    CYSKMZW
  WHERE TZ02  IS NOT NULL
  AND g002.TZ02=CYSKMZW.代码
  AND g002.账套代码=CYSKMZW.账套代码
  GROUP BY G002.账套代码,
    G002.TZ02,
    CYSKMZW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ03 AS
  (SELECT G002.账套代码,
    TZ03,
    CZJQDZW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ03) rn
  FROM g002,
    CZJQDZW
  WHERE TZ03  IS NOT NULL
  AND g002.TZ03=CZJQDZW.代码
  GROUP BY G002.账套代码,
    G002.TZ03,
    CZJQDZW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ04 AS
  (SELECT G002.账套代码,
    TZ04,
    CZCFSZW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ04) rn
  FROM g002,
    CZCFSZW
  WHERE TZ04  IS NOT NULL
  AND g002.TZ04=CZCFSZW.代码
  GROUP BY G002.账套代码,
    G002.TZ04,
    CZCFSZW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ05 AS
  (SELECT G002.账套代码,
    TZ05,
    CJJKM.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ05) rn
  FROM g002,
    CJJKM
  WHERE TZ05  IS NOT NULL
  AND g002.TZ05=CJJKM.代码
  GROUP BY G002.账套代码,
    G002.TZ05,
    CJJKM.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ06 AS
  (SELECT G002.账套代码,
    TZ06,
    CYSSRYB.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ06) rn
  FROM g002,
    CYSSRYB
  WHERE TZ06  IS NOT NULL
  AND g002.TZ06=CYSSRYB.代码
  GROUP BY G002.账套代码,
    G002.TZ06,
    CYSSRYB.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ07 AS
  (SELECT G002.账套代码,
    TZ07,
    CGKKSZW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ07) rn
  FROM g002,
    CGKKSZW
  WHERE TZ07  IS NOT NULL
  AND g002.TZ07=CGKKSZW.代码
  GROUP BY G002.账套代码,
    G002.TZ07,
    CGKKSZW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ08 AS
  (SELECT G002.账套代码,
    TZ08,
    CZJXZ.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ08) rn
  FROM g002,
    CZJXZ
  WHERE TZ08  IS NOT NULL
  AND g002.TZ08=CZJXZ.代码
  GROUP BY G002.账套代码,
    G002.TZ08,
    CZJXZ.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ09 AS
  (SELECT G002.账套代码,
    TZ09,
    CSRKMZW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ09) rn
  FROM g002,
    CSRKMZW
  WHERE TZ09  IS NOT NULL
  AND g002.TZ09=CSRKMZW.代码
  AND g002.账套代码=CSRKMZW.账套代码
  GROUP BY G002.账套代码,
    G002.TZ09,
    CSRKMZW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ10 AS
  (SELECT G002.账套代码,
    TZ10,
    CTZ010.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ10) rn
  FROM g002,
    CTZ010
  WHERE TZ10  IS NOT NULL
  AND g002.TZ10=CTZ010.代码
  AND g002.账套代码=CTZ010.账套代码
  GROUP BY G002.账套代码,
    G002.TZ10,
    CTZ010.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ11 AS
  (SELECT G002.账套代码,
    TZ11,
    CTZ011.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ11) rn
  FROM g002,
    CTZ011
  WHERE TZ11  IS NOT NULL
  AND g002.TZ11=CTZ011.代码
  AND g002.账套代码=CTZ011.账套代码
  GROUP BY G002.账套代码,
    G002.TZ11,
    CTZ011.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ12 AS
  (SELECT G002.账套代码,
    TZ12,
    cyssrjj.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ12) rn
  FROM g002,
    cyssrjj
  WHERE TZ12  IS NOT NULL
  AND g002.TZ12=cyssrjj.代码
  GROUP BY G002.账套代码,
    G002.TZ12,
    cyssrjj.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ13 AS
  (SELECT G002.账套代码,
    TZ13,
    CTZ013.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ13) rn
  FROM g002,
    CTZ013
  WHERE TZ13  IS NOT NULL
  AND g002.TZ13=CTZ013.代码
  AND g002.账套代码=CTZ013.账套代码
  GROUP BY G002.账套代码,
    G002.TZ13,
    CTZ013.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ14 AS
  (SELECT G002.账套代码,
    TZ14,
    CTZ014.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ14) rn
  FROM g002,
    CTZ014
  WHERE TZ14  IS NOT NULL
  AND g002.TZ14=CTZ014.代码
  AND g002.账套代码=CTZ014.账套代码
  GROUP BY G002.账套代码,
    G002.TZ14,
    CTZ014.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ15 AS
  (SELECT G002.账套代码,
    TZ15,
    CTZ015.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ15) rn
  FROM g002,
    CTZ015
  WHERE TZ15  IS NOT NULL
  AND g002.TZ15=CTZ015.代码
  AND g002.账套代码=CTZ015.账套代码
  GROUP BY G002.账套代码,
    G002.TZ15,
    CTZ015.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ16 AS
  (SELECT G002.账套代码,
    TZ16,
    CTZ016.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ16) rn
  FROM g002,
    CTZ016
  WHERE TZ16  IS NOT NULL
  AND g002.TZ16=CTZ016.代码
  AND g002.账套代码=CTZ016.账套代码
  GROUP BY G002.账套代码,
    G002.TZ16,
    CTZ016.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ17 AS
  (SELECT G002.账套代码,
    TZ17,
    CYSSRYW.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ17) rn
  FROM g002,
    CYSSRYW
  WHERE TZ17  IS NOT NULL
  AND g002.TZ17=CYSSRYW.代码
  GROUP BY G002.账套代码,
    G002.TZ17,
    CYSSRYW.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ18 AS
  (SELECT G002.账套代码,
    TZ18,
    CTZ018.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ18) rn
  FROM g002,
    CTZ018
  WHERE TZ18  IS NOT NULL
  AND g002.TZ18=CTZ018.代码
  AND g002.账套代码=CTZ018.账套代码
  GROUP BY G002.账套代码,
    G002.TZ18,
    CTZ018.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ19 AS
  (SELECT G002.账套代码,
    TZ19,
    CTZ019.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ19) rn
  FROM g002,
    CTZ019
  WHERE TZ19  IS NOT NULL
  AND g002.TZ19=CTZ019.代码
  AND g002.账套代码=CTZ019.账套代码
  GROUP BY G002.账套代码,
    G002.TZ19,
    CTZ019.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
  TZ20 AS
  (SELECT G002.账套代码,
    TZ20,
    CTZ020.项目,
    SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END) AS d010,
    row_number() over (partition BY G002.账套代码 order by TZ20) rn
  FROM g002,
    CTZ020
  WHERE TZ20  IS NOT NULL
  AND g002.TZ20=CTZ020.代码
  AND g002.账套代码=CTZ020.账套代码
  GROUP BY G002.账套代码,
    G002.TZ20,
    CTZ020.项目
  HAVING SUM(
    CASE
      WHEN d009 = '借'
      THEN d010
      ELSE 0
    END) - SUM(
    CASE
      WHEN d009 = '贷'
      THEN d010
      ELSE 0
    END)!=0
  ),
ORG_ALL AS
  (SELECT  C05_INFO.账套代码,
   C05_INFO.账套名称,
    ROW_NUMBER() OVER (PARTITION BY C05_INFO.账套代码 ORDER BY C05_INFO.账套代码) RN
  FROM C05_INFO
  LEFT JOIN TZ01 ON (C05_INFO.账套代码=TZ01.账套代码)
  LEFT JOIN TZ02 ON (C05_INFO.账套代码=TZ02.账套代码)
  LEFT JOIN TZ03 ON (C05_INFO.账套代码=TZ03.账套代码)
  LEFT JOIN TZ04 ON (C05_INFO.账套代码=TZ04.账套代码)
  LEFT JOIN TZ05 ON (C05_INFO.账套代码=TZ05.账套代码)
  LEFT JOIN TZ06 ON (C05_INFO.账套代码=TZ06.账套代码)
  LEFT JOIN TZ07 ON (C05_INFO.账套代码=TZ07.账套代码)
  LEFT JOIN TZ08 ON (C05_INFO.账套代码=TZ08.账套代码)
  LEFT JOIN TZ09 ON (C05_INFO.账套代码=TZ09.账套代码)
  LEFT JOIN TZ10 ON (C05_INFO.账套代码=TZ10.账套代码)
  LEFT JOIN TZ11 ON (C05_INFO.账套代码=TZ11.账套代码)
  LEFT JOIN TZ12 ON (C05_INFO.账套代码=TZ12.账套代码)
  LEFT JOIN TZ13 ON (C05_INFO.账套代码=TZ13.账套代码)
  LEFT JOIN TZ14 ON (C05_INFO.账套代码=TZ14.账套代码)
  LEFT JOIN TZ15 ON (C05_INFO.账套代码=TZ15.账套代码)
  LEFT JOIN TZ16 ON (C05_INFO.账套代码=TZ16.账套代码)
  LEFT JOIN TZ17 ON (C05_INFO.账套代码=TZ17.账套代码)
  LEFT JOIN TZ18 ON (C05_INFO.账套代码=TZ18.账套代码)
  LEFT JOIN TZ19 ON (C05_INFO.账套代码=TZ19.账套代码)
  LEFT JOIN TZ20 ON (C05_INFO.账套代码=TZ20.账套代码)
  WHERE LENGTH(C05_INFO.账套代码)=6
  )
SELECT ORG_ALL.账套代码,
  ORG_ALL.账套名称,
  TZ01.TZ01 部门单位_代码,
  TZ01.项目 部门单位_名称,
  TZ01.D010 部门单位_余额,
  TZ02.TZ02 功能科目_代码,
  TZ02.项目 功能科目_名称,
  TZ02.D010 功能科目_余额,
  TZ03.TZ03 资金性质_代码,
  TZ03.项目 资金性质_名称,
  TZ03.D010 资金性质_余额,
  TZ04.TZ04 支出方式_代码,
  TZ04.项目 支出方式_名称,
  TZ04.D010 支出方式_余额,
  TZ05.TZ05 经济科目_代码,
  TZ05.项目 经济科目_名称,
  TZ05.D010 经济科目_余额,
  TZ06.TZ06 一般预算收入_代码,
  TZ06.项目 一般预算收入_名称,
  TZ06.D010 一般预算收入_余额,
  TZ07.TZ07 归口科室_代码,
  TZ07.项目 归口科室_名称,
  TZ07.D010 归口科室_余额,
  TZ08.TZ08 支出结构_代码,
  TZ08.项目 支出结构_名称,
  TZ08.D010 支出结构_余额,
  TZ09.TZ09 预算外收入项目_代码,
  TZ09.项目 预算外收入项目_名称,
  TZ09.D010 预算外收入项目_余额,
  TZ10.TZ10 预算外收入功能_代码,
  TZ10.项目 预算外收入功能_名称,
  TZ10.D010 预算外收入功能_余额,
  TZ11.TZ11 专用基金_代码,
  TZ11.项目 专用基金_名称,
  TZ11.D010 专用基金_余额,
  TZ12.TZ12 基金预算收入_代码,
  TZ12.项目 基金预算收入_名称,
  TZ12.D010 基金预算收入_余额,
  TZ13.TZ13 文号_代码,
  TZ13.项目 文号_名称,
  TZ13.D010 文号_余额,
  TZ14.TZ14 项目_代码,
  TZ14.项目 项目_名称,
  TZ14.D010 项目_余额,
  TZ15.TZ15 支出经济辅助_代码,
  TZ15.项目 支出经济辅助_名称,
  TZ15.D010 支出经济辅助_余额,
  TZ16.TZ16 收入经济辅助_代码,
  TZ16.项目 收入经济辅助_名称,
  TZ16.D010 收入经济辅助_余额,
  TZ17.TZ17 预算外非税收入分类_代码,
  TZ17.项目 预算外非税收入分类_名称,
  TZ17.D010 预算外非税收入分类_余额,
  TZ18.TZ18 辅助科目3_代码,
  TZ18.项目 辅助科目3_名称,
  TZ18.D010 辅助科目3_余额,
  TZ19.TZ19 辅助科目4_代码,
  TZ19.项目 辅助科目4_名称,
  TZ19.D010 辅助科目4_余额,
  TZ20.TZ20 辅助科目5_代码,
  TZ20.项目 辅助科目5_名称,
  TZ20.D010 辅助科目5_余额
FROM ORG_ALL
LEFT JOIN TZ01 ON (ORG_ALL.账套代码=TZ01.账套代码 AND ORG_ALL.RN=TZ01.RN)
LEFT JOIN TZ02 ON (ORG_ALL.账套代码=TZ02.账套代码 AND ORG_ALL.RN=TZ02.RN)
LEFT JOIN TZ03 ON (ORG_ALL.账套代码=TZ03.账套代码 AND ORG_ALL.RN=TZ03.RN)
LEFT JOIN TZ04 ON (ORG_ALL.账套代码=TZ04.账套代码 AND ORG_ALL.RN=TZ04.RN)
LEFT JOIN TZ05 ON (ORG_ALL.账套代码=TZ05.账套代码 AND ORG_ALL.RN=TZ05.RN)
LEFT JOIN TZ06 ON (ORG_ALL.账套代码=TZ06.账套代码 AND ORG_ALL.RN=TZ06.RN)
LEFT JOIN TZ07 ON (ORG_ALL.账套代码=TZ07.账套代码 AND ORG_ALL.RN=TZ07.RN)
LEFT JOIN TZ08 ON (ORG_ALL.账套代码=TZ08.账套代码 AND ORG_ALL.RN=TZ08.RN)
LEFT JOIN TZ09 ON (ORG_ALL.账套代码=TZ09.账套代码 AND ORG_ALL.RN=TZ09.RN)
LEFT JOIN TZ10 ON (ORG_ALL.账套代码=TZ10.账套代码 AND ORG_ALL.RN=TZ10.RN)
LEFT JOIN TZ11 ON (ORG_ALL.账套代码=TZ11.账套代码 AND ORG_ALL.RN=TZ11.RN)
LEFT JOIN TZ12 ON (ORG_ALL.账套代码=TZ12.账套代码 AND ORG_ALL.RN=TZ12.RN)
LEFT JOIN TZ13 ON (ORG_ALL.账套代码=TZ13.账套代码 AND ORG_ALL.RN=TZ13.RN)
LEFT JOIN TZ14 ON (ORG_ALL.账套代码=TZ14.账套代码 AND ORG_ALL.RN=TZ14.RN)
LEFT JOIN TZ15 ON (ORG_ALL.账套代码=TZ15.账套代码 AND ORG_ALL.RN=TZ15.RN)
LEFT JOIN TZ16 ON (ORG_ALL.账套代码=TZ16.账套代码 AND ORG_ALL.RN=TZ16.RN)
LEFT JOIN TZ17 ON (ORG_ALL.账套代码=TZ17.账套代码 AND ORG_ALL.RN=TZ17.RN)
LEFT JOIN TZ18 ON (ORG_ALL.账套代码=TZ18.账套代码 AND ORG_ALL.RN=TZ18.RN)
LEFT JOIN TZ19 ON (ORG_ALL.账套代码=TZ19.账套代码 AND ORG_ALL.RN=TZ19.RN)
LEFT JOIN TZ20 ON (ORG_ALL.账套代码=TZ20.账套代码 AND ORG_ALL.RN=TZ20.RN) 
WHERE NOT (TZ01 IS NULL AND TZ02 IS NULL AND TZ03 IS NULL AND TZ04 IS NULL AND TZ05 IS NULL AND TZ06 IS NULL AND TZ07 IS NULL AND TZ08 IS NULL AND TZ09 IS NULL
AND TZ10 IS NULL AND TZ11 IS NULL AND TZ12 IS NULL AND TZ13 IS NULL AND TZ14 IS NULL AND TZ15 IS NULL AND TZ16 IS NULL AND TZ17 IS NULL AND TZ18 IS NULL AND TZ19 IS NULL
AND TZ20 IS NULL)
