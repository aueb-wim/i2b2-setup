BEGIN;

-- Plan the tests
SELECT plan( 15 );

SELECT has_table( 'code_lookup' );
SELECT has_column( 'code_lookup', 'table_cd' );
SELECT has_column( 'code_lookup', 'column_cd' );
SELECT has_column( 'code_lookup', 'name_char' );
SELECT has_column( 'code_lookup', 'lookup_blob' );
SELECT col_is_pk(  'code_lookup', Array['table_cd', 'column_cd', 'code_cd'] );

SELECT has_table( 'concept_dimension' );

SELECT has_table( 'encounter_mapping' );

SELECT has_table( 'modifier_dimension' );

SELECT has_table( 'observation_fact' );

SELECT has_table( 'patient_dimension' );

SELECT has_table( 'patient_mapping' );

SELECT has_table( 'provider_dimension' );

SELECT has_table( 'visit_dimension' );
SELECT has_column( 'visit_dimension', 'patient_age' );

-- Clean up
SELECT * FROM finish();
ROLLBACK;
