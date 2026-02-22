load_without_pkey() {
  table=$1
  file=$2

  # Cargar table
  psql -U postgres -d postgres \
    -c "\copy $table FROM '$file' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')"
}

load_with_pkey() {
  table=$1
  file=$2
  pkey=$3

  # Limpiar staging
  psql -U postgres -d postgres \
    -c "TRUNCATE stg_${table};"

  # Cargar a staging
  psql -U postgres -d postgres \
    -c "\copy stg_${table} FROM '$file' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')"

  # Insertar a tabla final saltando duplicados
  psql -U postgres -d postgres -c \
    "INSERT INTO ${table}
      SELECT * FROM stg_${table}
      ON CONFLICT (${pkey}) DO NOTHING;"
}

load_csv() {
  folder=$1
  table=$2
  pkey=$3
  shopt -s nullglob
  local files=(/data/"$folder"/*.csv)

  # Crear staging si no existe (Postgres moderno lo soporta)
  if [ -n "$pkey" ]; then
    psql -U postgres -d postgres -c \
      "CREATE UNLOGGED TABLE IF NOT EXISTS stg_${table} (LIKE ${table} INCLUDING DEFAULTS);"
  fi

  for file in "${files[@]}"; do
    echo "Loading: $file -> $table"

    if [ -n "$pkey" ]; then
      load_with_pkey $table $file $pkey
    else
      load_without_pkey $table $file
    fi
  done

  # Limpiar staging
  if [ -n "$pkey" ]; then
    psql -U postgres -d postgres -c \
      "DROP TABLE stg_${table};"
  fi
}

load_csv Parque parque_automotor id_vehiculo
load_csv Matriculas matriculas consecutivo
load_csv Cancelados cancelados parqcanc_idvehiculo # ;
load_csv Traspasos traspasos
