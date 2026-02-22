CREATE TABLE parque_automotor (
  id_vehiculo text PRIMARY KEY,
  anno_matricula text,
  mes_matricula text,
  dia_matricula text,
  clase text,
  carroceria text,
  marca text,
  linea text,
  familia text,
  subsegmento text,
  carga text,
  pasajeros text,
  largo_total text,
  distancia_entre_ejes text,
  nacional_importado text,
  segmento_runt text,
  marca_vs_familia text,
  marca_vs_familia_vs_combustible text,
  traccion text,
  transmision text,
  pais_origen text,
  distribuidor text,
  modelo text,
  servicio text,
  origen text,
  color text,
  segmento text,
  cilindraje text,
  numero_ejes text,
  numero_puertas text,
  pasajeros_sentados text,
  capacidad_carga text,
  peso text,
  departamento text,
  ciudad text,
  combustible text,
  tipo_matricula text,
  prenda text,
  ciudad_residencia_propietario text,
  modalidad text,
  financiera text,
  transportadora text,
  territorio text,
  regionalclave text,
  territorioclave text,
  aire_acondicionado text,
  airbag text,
  transmision_runt text,
  nivel_emisiones text,
  apoya_cabeza text,
  tipo_aspiracion text,
  tipo_freno text,
  tipo_traccion text,
  cascourbano text,
  nombrecomertaxi text
);

CREATE TABLE traspasos (
  id_vehiculo text,
  anno_traspaso text,
  mes_traspaso text,
  dia_traspaso text,
  prenda text,
  ciudad_residencia_propietario text,
  financiera text,
  transportadora text
);

CREATE TABLE ciudad_equivalencia(
  ciudad_ptotal text PRIMARY KEY,
  ciudad_equivalencia text
);

CREATE TABLE departamento_equivalencia(
  departamento_ptotal text PRIMARY KEY,
  departamento_equivalencia text
);

CREATE TABLE financiera_equivalencia(
  FINANCIERA_NOMBRE text PRIMARY KEY,
  FINANCIERA_NUEVA text
);

CREATE TABLE transportadora_equivalencia (
  transportadora_nombre text PRIMARY KEY,
  transportadora_nueva text
);

CREATE TABLE zona (
  zona_departamento text,
  zona_ciudad text,
  zona_nombre text,
  zona_regionalclave text,
  zona_territorioclave text,
  zona_cascourbano text,
  PRIMARY KEY (zona_departamento, zona_ciudad)
);

CREATE TABLE matriculas (
  consecutivo text PRIMARY KEY,
  control text,
  anno_mi text,
  mes_mi text,
  dia_mi text,
  clase text,
  carroceria text,
  marca text,
  linea text,
  familia text,
  segmento text,
  subsegmento text,
  carga text,
  pasajeros text,
  largo_total text,
  distancia_entre_ejes text,
  origen text,
  modelo text,
  tipo_servicio text,
  nacional_importado text,
  color text,
  segmento_runt text,
  cilindraje text,
  cantidad_ejes text,
  puertas text,
  pasajeros_sentados text,
  capacidad_carga text,
  peso text,
  departamento text,
  municipio_ciudad text,
  combustible text,
  tipo_matricula text,
  prenda text,
  ciudad_residencia_propietario text,
  modalidad_transporte text,
  marca_vs_familia text,
  marca_vs_familia_vs_combustible text,
  cantidad text,
  traccion text,
  transmision text,
  pais_origen text,
  zona text,
  distribuidor text,
  entidad_financiera text,
  empresa_transporte text,
  aire_acondicionado text,
  airbag text,
  transmision_runt text,
  nivel_emisiones text,
  apoya_cabeza text,
  tipo_aspiracion text,
  tipo_freno text,
  tipo_traccion text,
  regionalclave text,
  territorioclave text,
  cascourbano text,
  nombrecomertaxi text
);

CREATE TABLE cancelados (
  parqcanc_idvehiculo text PRIMARY KEY,
  parqcanc_motivo text,
  parqcanc_fecha text
);
