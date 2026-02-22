-- parque.xslx
---- Cargar Historico
---- python src/create_csv.py (xlsx -> csv)
---- python src/load_csv.sh (csv -> db)


-- matriculas.xslx
---- Cargue mensual
---- Carga nuevos registro y actualiza existentes (MERGE ON CONFLICT)
---- Actualiza todo (?) el registro (id_vehiculo)

-- cancelados.xslx
---- Actualiza estado (MERGE / UPDATE)

-- transpasos.xslx
---- Cargar nuevos y ya


CRUD
C - Create
R - Read
U - Update
D - Delete
