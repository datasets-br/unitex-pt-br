
-- using conventions from https://github.com/datasets-br/sql-unifier

CREATE or replace FUNCTION lib.dela_split_classification(
  -- Splits strings in the form "A+B+C:x:y:z" into arrays of types.
  text  -- DELAF or DELACF entry
) RETURNS table(
  grammatical_types text[],
  inflectional_types text[]
) AS $f$
    SELECT regexp_split_to_array(p[1], E'\\+'),  p[2:]
    FROM (  SELECT regexp_split_to_array($1, ':')  ) t(p)
$f$ LANGUAGE SQL IMMUTABLE;

CREATE or replace FUNCTION lib.dela_split_classification_jsonb( text ) RETURNS JSONb AS $wrap$
  SELECT to_jsonb(t)
  FROM (  SELECT lib.dela_split_classification($1)  ) t
$wrap$ LANGUAGE SQL IMMUTABLE;


CREATE VIEW dataset.vw2_delacf_split AS
  SELECT lemma_plural, lemma_singular,
         j.grammatical_types, j.inflectional_types
  FROM dataset.vw2_delacf t,
       LATERAL lib.dela_split_classification(t.classification) j
;
-- Example. SELECT DISTINCT unnest(grammatical_types) FROM dataset.vw2_delacf_split ORDER BY 1;
