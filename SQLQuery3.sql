--HER BÝR KATEGORÝDE SATILAN ORTALAMA ÜRÜN FÝYATI
SELECT
ITM.CATEGORY1,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI, --ORDERS tablosunda verilen siparisler sehirler için ayri ayri listelenmis durumdaydi. Örnegin 'X' sehrinde verilen siparisler 'Y' adet iste bu 'Y' satir kadar görüntüleniyordu. Amacimiz dogrultusunda bu satirlari topladik.-- 
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADEDI, 
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI, --Burada satir saydiracagimiz için 'COUNT' kullandik.
SUM(OD.LINETOTAL)/SUM(OD.AMOUNT) AS ORTALAMABIRIMFIYAT

FROM ORDERS O
INNER JOIN USERS U ON U.ID=O.USERID
INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
INNER JOIN CITIES CT ON CT.ID=A.CITYID
INNER JOIN TOWNS T ON T.ID=A.TOWNID
INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
INNER JOIN INVOICES I ON I.ORDERID=O.ID
INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

WHERE ITM.CATEGORY1= 'KOZMETIK' -- BURADA CATEGORY1'DE bulunan kategorilerden birini yazarak siparis dagilimini istediðimiz gibi inceleyebiliriz.
--WHERE SARTINI KALDIRDIGIMIZDA 'CATEGORY1'de bulunan tüm kategoriler için 'ORTALAMA BIRIM FIYATI' görüntüleyebiliriz.
GROUP BY ITM.CATEGORY1--(aggregate fonksiyonlari için 'groupby' kullandik)
ORDER BY 1 DESC
