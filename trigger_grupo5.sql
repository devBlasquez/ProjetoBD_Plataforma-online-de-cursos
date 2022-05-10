--Triggers

--Trigger 1: Atualizar a quantidade de de módulos de um curso
CREATE OR REPLACE FUNCTION Atualiza_quantidade_modulos()
RETURNS trigger AS $trigger_atualiza_curso$
BEGIN
IF (TG_OP = 'DELETE') THEN
UPDATE curso SET quantidade_modulos = (select count(nome) from modulo where
									   FK_cod_curso = old.fk_cod_curso)
WHERE cod_curso = OLD.fk_cod_curso;
ELSIF (TG_OP = 'INSERT') THEN
UPDATE curso SET quantidade_modulos = (select count(nome) from modulo where
									   FK_cod_curso = new.fk_cod_curso)
WHERE cod_curso = NEW.fk_cod_curso;
END IF;
RETURN NULL;
END;
$trigger_atualiza_curso$ LANGUAGE plpgsql;


CREATE TRIGGER atualiza_trigger
AFTER INSERT OR DELETE ON modulo
FOR EACH ROW
EXECUTE PROCEDURE Atualiza_quantidade_modulos();



--Trigger 2: Verificação da situação do usuário
CREATE OR REPLACE FUNCTION Atualiza_tipo_usuario()
RETURNS trigger AS $trigger_atualiza_usuario$
BEGIN
UPDATE usuario SET tipo_aluno = true 
WHERE email = new.email;
RETURN NULL;
END;
$trigger_atualiza_usuario$ LANGUAGE plpgsql;


CREATE TRIGGER Verifica_Usuario
AFTER INSERT OR UPDATE
ON usuario
FOR EACH ROW
WHEN (new.tipo_professor = FALSE AND new.tipo_aluno = FALSE) 
EXECUTE PROCEDURE Atualiza_tipo_usuario();	

--Trigger 3: Atualizar idade do usuário
CREATE OR REPLACE FUNCTION Atualiza_idade_usuario()
RETURNS trigger AS $trigger_atualiza_idade$
BEGIN
UPDATE usuario SET idade = extract(YEAR FROM NOW()) - extract(YEAR FROM NEW.data_nascimento) 
WHERE email = new.email;
RETURN NULL;
END;
$trigger_atualiza_idade$ LANGUAGE plpgsql;


CREATE TRIGGER Atualiza_idade
AFTER INSERT OR UPDATE
ON usuario
FOR EACH ROW
WHEN (extract(YEAR FROM NOW()) - extract(YEAR FROM new.data_nascimento) <> new.idade)
EXECUTE PROCEDURE Atualiza_idade_usuario();