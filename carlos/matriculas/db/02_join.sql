/*
SELECT
  t.id_vehiculo, t.anno_traspaso,t.mes_traspaso,t.dia_traspaso,p.clase,
  p.carroceria,p.marca,p.linea,p.familia,p.subsegmento,p.carga,p.pasajeros,
  p.largo_total,p.distancia_entre_ejes,p.nacional_importado,p.segmento_runt,
  p.marca_vs_familia,p.marca_vs_familia_vs_combustible,p.traccion,p.transmision,
  p.pais_origen,p.distribuidor,p.modelo,p.servicio,p.origen,p.color,p.segmento,
  p.cilindraje,p.numero_ejes,p.numero_puertas,p.pasajeros,p.capacidad_carga,
  p.peso,p.departamento,p.ciudad,p.combustible,p.tipo_matricula,p.prenda,
  p.ciudad_residencia_propietario,p.modalidad,p.financiera,p.transportadora,
  p.territorio,p.regionalclave,p.territorioclave,p.aire_acondicionado,
  p.airbag,p.transmision_runt,p.nivel_emisiones,p.apoya_cabeza,p.tipo_aspiracion,
  p.tipo_freno,p.tipo_traccion,p.cascourbano,p.nombrecomertaxi
FROM traspasos t
LEFT JOIN parque_automotor p
  ON t.id_vehiculo = p.id_vehiculo
;
*/
