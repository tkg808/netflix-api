# === Reset Database
psql -U postgres -f db/settings.sql

# === Reset Tables
psql -U netflixuser -d netflix < db/models_primary.sql

# === Copy Data to Tables
declare -a tables=(
  [0]=show
  [1]=genre
  [2]=tag
  [3]=language
  [4]=country
  [5]=person
)

for table in ${tables[@]};
do
    psql -U netflixuser -d netflix -c "\copy $table from '/Users/tkg/desktop/netflix_data/dataset_2021/$table.csv' with (format csv, header true, delimiter ',');"
    echo $table copied!
done