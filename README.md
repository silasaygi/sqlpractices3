# Kategori Bazlı Satılan Ürünlerin Ortalama Fiyat Analizi

" Görüntülediğiniz SQL senaryosu, BTK Akademi adresinde bulunan "Uygulamalarla SQL Öğreniyorum" eğitiminden pratik yapma amacıyla alınmıştır. Eğitimde kullanılan veri tabanını, eğitimin dökümantasyon kısmından görüntüleyebilirsiniz. " 

Bu proje, bir e-ticaret platformunda farklı kategorilerde satılan ürünlerin ortalama fiyatlarını analiz etmek için SQL sorguları kullanılarak hazırlanmıştır.

Amacımız, her bir ürün kategorisi için ortalama birim fiyatlarını hesaplayarak, hangi kategorilerde ürünlerin ortalama fiyatlarının nasıl değiştiğini analiz etmektir. Bu sayede iş stratejilerine yön vermek veya fiyatlandırma politikasını yeniden gözden geçirmek gibi çıkarımlar yapılabilir.

- ORDERS: Sipariş bilgilerini içerir.
- USERS: Sipariş veren kullanıcı bilgilerini içerir.
- ADDRESS, CITIES, TOWNS, DISTRICTS: Kullanıcı adres bilgileri ve adresle ilgili hiyerarşik yapıyı içerir.
- PAYMENTS: Sipariş ödemelerine dair bilgileri içerir.
- INVOICES: Sipariş faturaları ile ilgili bilgileri içerir.
- ORDERDETAILS: Sipariş edilen ürünlere dair detay bilgileri içerir.
- ITEMS: Satılan ürünlerin kategori ve diğer temel bilgilerini içerir.


Sorgular : 

- ITM.CATEGORY1: Ürünlerin ait olduğu kategori.
- SUM(OD.LINETOTAL): İlgili kategoride satılan ürünlerin toplam sipariş tutarını hesaplar.
- SUM(OD.AMOUNT): Toplam sipariş adedini (satılan ürün sayısı) verir.
- COUNT(OD.ID): Toplam sipariş sayısını verir.
- SUM(OD.LINETOTAL)/SUM(OD.AMOUNT): Satılan ürünlerin ortalama birim fiyatını hesaplar.
- WHERE ITM.CATEGORY1='KOZMETIK': Sorguyu "KOZMETİK" kategorisi ile sınırlayan filtre.

Burada kategoriler alt başlıklara CATEGORY2, CATEGORY3 VE CATEGORY4 olarak ayrılmaya devam etmektedir. Bu kategori içeren tablolar bağlantılıdır. Sorguya bu diğer kategoriler de eklenerek sorgulanmak istenen kategori daha da özelleştirebilir.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Average Price Analysis of Products Sold Based on Category

" The SQL scenario you are viewing is taken from the "I'm Learning SQL with Applications" training on BTK Academy for practice purposes. You can view the database used in the training from the documentation section of the training. "

This project was prepared using SQL queries to analyze the average prices of products sold in different categories on an e-commerce platform.

Our aim is to calculate the average unit prices for each product category and analyze how the average prices of products in which categories change. In this way, inferences such as directing business strategies or revising the pricing policy can be made.

- ORDERS: Contains order information.
- USERS: Contains ordering user information.
- ADDRESS, CITIES, TOWNS, DISTRICTS: Contains user address information and the hierarchical structure related to the address.
- PAYMENTS: Contains information about order payments.
- INVOICES: Contains information about order invoices.
- ORDERDETAILS: Contains detailed information about ordered products.
- ITEMS: Contains the category and other basic information of the products sold.

- ITM.CATEGORY1: The category to which the products belong.
- SUM(OD.LINETOTAL): Calculates the total order amount of the products sold in the relevant category.
- SUM(OD.AMOUNT): Gives the total order quantity (number of products sold).
- COUNT(OD.ID): Gives the total number of orders.
- SUM(OD.LINETOTAL)/SUM(OD.AMOUNT): Calculates the average unit price of the products sold.
- WHERE ITM.CATEGORY1='COSMETICS': Filter that limits the query to the "COSMETICS" category.

Here, the categories continue to be divided into subheadings as CATEGORY2, CATEGORY3 AND CATEGORY4. The tables containing these categories are linked. By adding these other categories to the query, the category to be queried can be further customized.
