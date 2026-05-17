# SQL 문법 정리

## Python 개발자 찾기

### 사용한 SQL

```sql
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = 'Python'
    OR SKILL_2 = 'Python'
    OR SKILL_3 = 'Python'
ORDER BY ID;
```

### 문제 이해하기

이 문제는 개발자 정보를 담은 `DEVELOPER_INFOS` 테이블에서 `Python` 스킬을 가진 개발자의 정보를 조회하는 문제입니다.

개발자가 가진 스킬은 `SKILL_1`, `SKILL_2`, `SKILL_3` 컬럼에 저장되어 있습니다.

따라서 세 컬럼 중 하나라도 `'Python'`인 개발자를 찾으면 됩니다.

출력해야 하는 컬럼은 `ID`, `EMAIL`, `FIRST_NAME`, `LAST_NAME`이고, 결과는 `ID`를 기준으로 오름차순 정렬합니다.

### 핵심 문법

#### 1. SELECT

```sql
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
```

`SELECT`는 조회할 컬럼을 선택할 때 사용합니다.

이 문제에서는 개발자의 아이디, 이메일, 이름, 성을 출력해야 하므로 아래 네 개의 컬럼을 선택합니다.

| 컬럼명 | 의미 |
| --- | --- |
| ID | 개발자 ID |
| EMAIL | 이메일 |
| FIRST_NAME | 이름 |
| LAST_NAME | 성 |

#### 2. FROM

```sql
FROM DEVELOPER_INFOS
```

`FROM`은 데이터를 조회할 테이블을 지정할 때 사용합니다.

개발자 정보는 `DEVELOPER_INFOS` 테이블에 들어 있으므로 해당 테이블에서 데이터를 조회합니다.

#### 3. WHERE

```sql
WHERE SKILL_1 = 'Python'
    OR SKILL_2 = 'Python'
    OR SKILL_3 = 'Python'
```

`WHERE`는 원하는 조건에 맞는 행만 조회할 때 사용합니다.

이 문제에서는 `Python` 스킬을 가진 개발자만 찾아야 합니다.

`Python`이 `SKILL_1`, `SKILL_2`, `SKILL_3` 중 어느 컬럼에 들어 있을지 모르기 때문에 세 컬럼을 모두 확인해야 합니다.

#### 4. OR

```sql
SKILL_1 = 'Python'
OR SKILL_2 = 'Python'
OR SKILL_3 = 'Python'
```

`OR`는 여러 조건 중 하나라도 참이면 결과에 포함할 때 사용합니다.

이 문제에서는 세 스킬 컬럼 중 하나라도 `'Python'`이면 Python 개발자이므로 `OR`로 조건을 연결합니다.

예를 들어 아래와 같은 데이터가 있다면 모두 조회 대상입니다.

| SKILL_1 | SKILL_2 | SKILL_3 |
| --- | --- | --- |
| Python | Java | SQL |
| Java | Python | C++ |
| Java | SQL | Python |

세 경우 모두 하나 이상의 스킬 컬럼에 `Python`이 있기 때문입니다.

#### 5. 문자열 비교

```sql
SKILL_1 = 'Python'
```

SQL에서 문자열 값은 작은따옴표로 감싸서 비교합니다.

`Python`은 컬럼명이 아니라 실제 데이터 값이므로 `'Python'`처럼 작성해야 합니다.

```sql
WHERE SKILL_1 = Python
```

위처럼 작은따옴표 없이 작성하면 SQL은 `Python`을 문자열 값이 아니라 컬럼명처럼 해석하려고 할 수 있습니다.

따라서 문자열 비교를 할 때는 아래처럼 작성합니다.

```sql
WHERE SKILL_1 = 'Python'
```

#### 6. ORDER BY

```sql
ORDER BY ID
```

`ORDER BY`는 조회 결과를 특정 컬럼 기준으로 정렬할 때 사용합니다.

정렬 방향을 따로 적지 않으면 기본값은 오름차순입니다.

따라서 아래 두 문장은 같은 의미입니다.

```sql
ORDER BY ID;
```

```sql
ORDER BY ID ASC;
```

이 문제에서는 `ID`를 기준으로 오름차순 정렬해야 하므로 `ORDER BY ID`를 사용합니다.

### 실행 흐름

1. `DEVELOPER_INFOS` 테이블에서 데이터를 조회합니다.
2. `SKILL_1`, `SKILL_2`, `SKILL_3` 중 하나라도 `'Python'`인 행을 찾습니다.
3. 조건에 맞는 개발자의 `ID`, `EMAIL`, `FIRST_NAME`, `LAST_NAME`을 출력합니다.
4. 결과를 `ID` 기준으로 오름차순 정렬합니다.

### 최종 정리

이 문제의 핵심은 여러 컬럼 중 하나라도 조건을 만족하는지 확인하는 것입니다.

`Python` 스킬이 어느 컬럼에 들어 있을지 모르기 때문에 `OR`를 사용해 세 컬럼을 모두 검사합니다.

```sql
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = 'Python'
    OR SKILL_2 = 'Python'
    OR SKILL_3 = 'Python'
ORDER BY ID;
```
