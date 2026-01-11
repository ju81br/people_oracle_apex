CREATE OR REPLACE TRIGGER APP_APEX.TRG_PERSON_LOG
AFTER INSERT OR UPDATE OR DELETE ON APP_APEX.PERSON
FOR EACH ROW
DECLARE
    -- variável
    v_operation VARCHAR2(10);

    -- procedure local (implícita)
    PROCEDURE prc_insert_log (
        p_id_person IN APP_APEX.PERSON.PERSON_ID%TYPE,
        p_operation IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO APP_APEX.PERSON_LOG (
            LOG_ID,
            PERSON_ID,
            OPERATION,
            OPERATION_DATE
        )
        VALUES (
            APP_APEX.SEQ_PERSON_LOG.NEXTVAL,
            p_id_person,
            p_operation,
            SYSDATE
        );
    END prc_insert_log;

BEGIN
    IF INSERTING THEN
        v_operation := 'INSERT';
        prc_insert_log(:NEW.PERSON_ID, v_operation);

    ELSIF UPDATING THEN
        v_operation := 'UPDATE';
        prc_insert_log(:NEW.PERSON_ID, v_operation);

    ELSIF DELETING THEN
        v_operation := 'DELETE';
        prc_insert_log(:OLD.PERSON_ID, v_operation);
    END IF;
END;
/
