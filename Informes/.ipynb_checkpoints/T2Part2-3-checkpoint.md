```python
import pandas as pd
print(pd.__version__)
```

    2.2.3



```python
data = pd.read_csv('StudentPerformanceFactors.csv')
```


```python
num_rows, num_columns = data.shape
```


```python
print(f"Nro. filas: {num_rows}")
```

    Nro. filas: 6607



```python
print(f"Nro. columnas: {num_columns}")
```

    Nro. columnas: 20



```python
data_info = data.dtypes
```


```python
print("Tipos de datos de cada columna:")
```

    Tipos de datos de cada columna:



```python
print(data_info)
```

    Hours_Studied                  int64
    Attendance                     int64
    Parental_Involvement          object
    Access_to_Resources           object
    Extracurricular_Activities    object
    Sleep_Hours                    int64
    Previous_Scores                int64
    Motivation_Level              object
    Internet_Access               object
    Tutoring_Sessions              int64
    Family_Income                 object
    Teacher_Quality               object
    School_Type                   object
    Peer_Influence                object
    Physical_Activity              int64
    Learning_Disabilities         object
    Parental_Education_Level      object
    Distance_from_Home            object
    Gender                        object
    Exam_Score                     int64
    dtype: object



```python
print ("Primeras filas de los datos:")
print(data.head())
```

    Primeras filas de los datos:
       Hours_Studied  Attendance Parental_Involvement Access_to_Resources  \
    0             23          84                  Low                High   
    1             19          64                  Low              Medium   
    2             24          98               Medium              Medium   
    3             29          89                  Low              Medium   
    4             19          92               Medium              Medium   
    
      Extracurricular_Activities  Sleep_Hours  Previous_Scores Motivation_Level  \
    0                         No            7               73              Low   
    1                         No            8               59              Low   
    2                        Yes            7               91           Medium   
    3                        Yes            8               98           Medium   
    4                        Yes            6               65           Medium   
    
      Internet_Access  Tutoring_Sessions Family_Income Teacher_Quality  \
    0             Yes                  0           Low          Medium   
    1             Yes                  2        Medium          Medium   
    2             Yes                  2        Medium          Medium   
    3             Yes                  1        Medium          Medium   
    4             Yes                  3        Medium            High   
    
      School_Type Peer_Influence  Physical_Activity Learning_Disabilities  \
    0      Public       Positive                  3                    No   
    1      Public       Negative                  4                    No   
    2      Public        Neutral                  4                    No   
    3      Public       Negative                  4                    No   
    4      Public        Neutral                  4                    No   
    
      Parental_Education_Level Distance_from_Home  Gender  Exam_Score  
    0              High School               Near    Male          67  
    1                  College           Moderate  Female          61  
    2             Postgraduate               Near    Male          74  
    3              High School           Moderate    Male          71  
    4                  College               Near  Female          70  



```python
data_description = data.select_dtypes(include=['number']).describe()
```


```python
print("Descripción estadística de los datos cuantitativos:")
```

    Descripción estadística de los datos cuantitativos:



```python
print(data_description)
```

           Hours_Studied   Attendance  Sleep_Hours  Previous_Scores  \
    count    6607.000000  6607.000000   6607.00000      6607.000000   
    mean       19.975329    79.977448      7.02906        75.070531   
    std         5.990594    11.547475      1.46812        14.399784   
    min         1.000000    60.000000      4.00000        50.000000   
    25%        16.000000    70.000000      6.00000        63.000000   
    50%        20.000000    80.000000      7.00000        75.000000   
    75%        24.000000    90.000000      8.00000        88.000000   
    max        44.000000   100.000000     10.00000       100.000000   
    
           Tutoring_Sessions  Physical_Activity   Exam_Score  
    count        6607.000000        6607.000000  6607.000000  
    mean            1.493719           2.967610    67.235659  
    std             1.230570           1.031231     3.890456  
    min             0.000000           0.000000    55.000000  
    25%             1.000000           2.000000    65.000000  
    50%             1.000000           3.000000    67.000000  
    75%             2.000000           4.000000    69.000000  
    max             8.000000           6.000000   101.000000  



```python
data_description_cat = data.select_dtypes(exclude=['number']).describe()
print("\nDescripción estadística de los datos cualitativos:")
print(data_description_cat)
```

    
    Descripción estadística de los datos cualitativos:
           Parental_Involvement Access_to_Resources Extracurricular_Activities  \
    count                  6607                6607                       6607   
    unique                    3                   3                          2   
    top                  Medium              Medium                        Yes   
    freq                   3362                3319                       3938   
    
           Motivation_Level Internet_Access Family_Income Teacher_Quality  \
    count              6607            6607          6607            6529   
    unique                3               2             3               3   
    top              Medium             Yes           Low          Medium   
    freq               3351            6108          2672            3925   
    
           School_Type Peer_Influence Learning_Disabilities  \
    count         6607           6607                  6607   
    unique           2              3                     2   
    top         Public       Positive                    No   
    freq          4598           2638                  5912   
    
           Parental_Education_Level Distance_from_Home Gender  
    count                      6517               6540   6607  
    unique                        3                  3      2  
    top                 High School               Near   Male  
    freq                       3223               3884   3814  



```python

```
