--1	 Display all the information of the EMP table?
SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno, branchno FROM emp;

--2	 Display unique Jobs from EMP table?
SELECT DISTINCT 
    job
FROM
    emp
ORDER BY
    job;
    
--3	 List the emps in the asc order of their Salaries?
SELECT 
    ename
FROM
    emp
ORDER BY
    sal;

--4	 List the details of the emps in asc order of the Dptnos and desc of Jobs?
SELECT
    empno, ename, job, mgr, hiredate, sal, comm, deptno, branchno
FROM
    emp
ORDER BY
    deptno, job DESC;

--5	 Display all the unique job groups in the descending order?
SELECT DISTINCT
    job
FROM
    emp
ORDER BY 
    job DESC;

--6	 Display all the details of all ‘Mgrs’
SELECT
    empno, ename, job, mgr, hiredate, sal, comm, deptno, branchno
FROM
    emp
ORDER BY
    empno;
    
--7	 List the emps who joined before 1981
SELECT
    ename
FROM 
    emp
WHERE
    hiredate < TO_DATE('01-Jan-1981');

--8	 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
SELECT
    empno, ename,  sal, (sal/30) AS Daily_Sal, (sal*12) AS annual_sal
FROM
    emp
ORDER BY 
    annual_sal;
    
--9	 Display the Empno, Ename, job, Hiredate, Exp of all Mgrs(Doubt)
SELECT 
    empno, ename, job, hiredate, MONTHS_BETWEEN(SYSDATE,hiredate) AS EXP
FROM
    emp;

--10	 List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
SELECT 
    empno, ename, MONTHS_BETWEEN(SYSDATE,hiredate) AS EXP
FROM
    emp
WHERE
    mgr=7369;

--11	 Display all the details of the emps whose Comm  Is more than their Sal
SELECT
    empno, ename, job, mgr, hiredate, sal, comm, deptno, branchno
FROM
    emp
WHERE
    comm>sal
ORDER BY
    empno;

--13	 List the emps along with their Exp and Daily Sal is more than Rs 100
SELECT
    ename, MONTHS_BETWEEN(SYSDATE,hiredate) AS EXP, (sal/30) AS daily_sal 
FROM
    emp
WHERE
    (sal/30)>100;

--14	 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
SELECT 
    empno, ename
FROM
    emp
WHERE   
    job='CLERK' or job='ANALYST'
ORDER BY
    empno DESC;
    
--15	 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
SELECT 
    empno, ename
FROM
    emp
WHERE   
    hiredate=TO_DATE('1-MAY-80')  or hiredate=TO_DATE('3-DEC-81') or hiredate=TO_DATE('17-DEC-81') OR hiredate=TO_DATE('19-JAN-80')
ORDER BY
    sal;

--16	 List the emp who are working for the Deptno 10 or20
SELECT 
    empno,ename
FROM
    emp
WHERE 
     deptno=10 or deptno=20
ORDER BY 
 empno;

--17	 List the emps who are joined in the year 81
SELECT 
    empno, ename
FROM 
    emp
 WHERE
    hiredate BETWEEN TO_DATE('01-Jan-1981') and TO_DATE('31-Dec-1981')
ORDER BY
    empno;
    
--19	 List the emps Who Annual sal ranging from 22000 and 45000
SELECT 
    empno, ename
FROM 
    emp
WHERE
    (sal*12) 
BETWEEN
    22000 and 45000
ORDER BY
    empno;
    
--20	 List the Enames those are having five characters in their Names
SELECT
    empno,ename
FROM 
    emp
WHERE
    LENGTH(ename)=5
ORDER BY
    empno;
    
--21	 List the Enames those are starting with ‘S’ and with five characters
SELECT
    empno,ename
FROM 
    emp
WHERE
    ename LIKE 'S%' AND LENGTH(ename)=5
ORDER BY
    empno;

--22	 List the emps those are having four chars and third character must be ‘r’
SELECT
    empno,ename
FROM 
    emp
WHERE
    LENGTH(ename)=4 AND ename LIKE '__R%'
ORDER BY
    empno;

--23	 List the Five character names starting with ‘S’ and ending with ‘H’
SELECT
    empno,ename
FROM 
    emp
WHERE
    LENGTH(ename)=5 AND ename LIKE 'S%H'
ORDER BY
    empno;

--24	 List the emps who joined in January(doubt)
SELECT
    empno,ename
FROM 
    emp
WHERE
    TO_CHAR(hiredate,'mon')='Jan'
ORDER BY
    empno;

--27	 List the emps whose names having a character set ‘ll’ together
SELECT
    empno,ename
FROM 
    emp
WHERE
    ename LIKE '%ll%'
ORDER BY
    empno;

--29	 List the emps who does not belong to Deptno 20
SELECT
    empno,ename
FROM 
    emp
WHERE
    deptno!=20
ORDER BY
    empno;
--30	 List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
SELECT
    empno,ename
FROM 
    emp
WHERE
    job!='PRESIDENT' 
ORDER BY
    empno,mgr;

--31	 List the emps whose Empno not starting with digit78
SELECT
    empno,ename
FROM 
    emp
WHERE
    empno NOT LIKE '78%'
ORDER BY
    empno;
--33	 List the emps who are working under ‘MGR’
SELECT
    empno,ename
FROM 
    emp
WHERE
    mgr IS NOT NULL
ORDER BY
    empno;

--34	 List the emps who joined in any year but not belongs to the month of March
SELECT
    empno,ename
FROM 
    emp
WHERE
    TO_CHAR(hiredate,'mon')!='Mar'
ORDER BY
    empno;

--35	 List all the Clerks of Deptno 20
SELECT
    empno,ename
FROM 
    emp
WHERE
    job='CLERK' AND deptno=20
ORDER BY
    empno;

--36	 List the emps of Deptno 30 or 10 joined in the year 1981
SELECT
    empno,ename,hiredate,deptno
FROM 
    emp
WHERE
    (deptno=30 OR deptno=10) AND TO_CHAR(hiredate,'YYYY')=1981    
ORDER BY
    empno;

--37	 Display the details of SMITH
SELECT * FROM emp WHERE ename='SMITH';

--38	 Display the location of SMITH(JOIN QUERY)
