create() {
  folder=$1
  shopt -s nullglob
  local files=(/app/data/"$folder"/*.xlsx)

  for file in "${files[@]}"; do
    echo "Converting: $file"
    python /app/src/create_csv.py -x "$file"
  done
}

create Parque
create Matriculas
create Traspasos
