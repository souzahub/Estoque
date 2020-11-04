/******************************************************************************/
/****              Generated by IBExpert 06/04/2020 13:32:45               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/


/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GERADOR_IDFORNEC;

CREATE TABLE FORNEC (
    ENDERECO  VARCHAR(40),
    BAIRRO    VARCHAR(30),
    CIDADE    VARCHAR(30),
    UF        VARCHAR(2),
    CEP       VARCHAR(8),
    FONE      VARCHAR(35),
    EMAIL     VARCHAR(30),
    NOME      VARCHAR(40),
    CNPJ      VARCHAR(14),
    ID        INTEGER
);




/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: FORNECTRIGGER1 */
CREATE OR ALTER TRIGGER FORNECTRIGGER1 FOR FORNEC
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  NEW.ID = GEN_ID( GERADOR_IDFORNEC, 1 );
END
^

SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/
