/*
��ѯ��Ŀ�Ҹ���̨����Ϣ

D016 �ҽ�̨��

*/

SELECT D002, D001, D016, PKG_JYKJ.GET_TZ_INFO(D016) ����̨�� FROM C05
WHERE ���״���='145001' AND D016 IS NOT NULL
ORDER BY 1;


/*
����̨����Ϣ��ѯ
G002_TZ
����
̨������
*/

SELECT * FROM G002_TZ;