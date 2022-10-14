-- Active: 1665131827383@@127.0.0.1@3306@papyrus


select * from vente;


start transaction;

delete from vente;

rollback;

commit;


------------Phase 2 - Mise en situation ---------------

--Exercice 1

START TRANSACTION;

SELECT nomfou FROM fournis WHERE numfou=120;

UPDATE fournis  SET nomfou= 'toto' WHERE numfou=120 ;

SELECT nomfou FROM fournis WHERE numfou=120 ;

ROLLBACK;

-- Que concluez-vous ? 

/* la transaction n'est pas complête */

--Les données sont-elles modifiables par d'autres utilisateurs 
--(ouvrez une nouvelle fenêtre de requête pour interroger le fournisseur 120 par une instruction SELECT) ? 

/*  non */

-- La transaction est-elle terminée ? 

/* non */

-- Comment rendre la modification permanente ? 

/* ajouter  "COMMIT;" en fin de tache

-- Comment annuler la transaction ? 

/* ajouter "ROLLBACK" en fin de tache AVANT LE COMMIT sinon trop tard


