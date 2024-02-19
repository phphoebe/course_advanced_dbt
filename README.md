# Welcome to the Bingeflix Data Team

### Coding Conventions
#### General
- Use UPPER case for all keywords
- Use trailing commas in SELECT statements
- Use Snowflake dialect
- Use consistent style in GROUP BY and ORDER BY (either names or numbers, not both)


### Testing Conventions
#### Sources
- The primary key source column must have not_null and unique generic tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.

#### Models
- The primary key column must have not_null and unique schema tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.
- Where possible, use schema tests from the dbt_utils or dbt_expectations packages to perform extra verification.

---

## Course Project

### Week 1 - Updates

1. Setup project dev environment
2. Add `dbt_project_evaluator` package + fix violations
3. Add `SQLFluff`
4. Add a few more `doc blocks`
5. Practice custom node colors

### Week 2 - Updates

1. Install `pre-commit hooks` + Test & Fix violations
2. Add `SQLFluff` to `pre-commit hook`
3. Add more `pre-commit hooks` to enforce project conventions
4. Add & Document `rolling_agg_n_periods` macro to generalize the `rolling_average_7_periods` macro
5. Add `date_trunc` macro to optimize the `fcc_mrr` model in future

### Week 4 - Updates

1. Convert `stg_bingeflix__events` to Incremental
2. Install & Practice`dbt-snowflake-monitoring` package
3. Refactor `fct_mrrr.sql` model
