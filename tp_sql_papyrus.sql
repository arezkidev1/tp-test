-- Active: 1665059872441@@127.0.0.1@3306@papyrus

--12. Coder de 2 manières différentes la requête suivante :
--Lister le nom des fournisseurs susceptibles de livrer au moins un article
SELECT nomfou,qteliv FROM fournis f JOIN ligcom l ON f.numfou=l.numlig;