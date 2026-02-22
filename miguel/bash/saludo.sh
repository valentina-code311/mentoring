
SaludarMiguel() {
    echo "Hola $NAME!!, Jefazo"
}

SaludarValen() {
    echo "Hola $NAME!!, Jefaza"
}


alias SaludoGeneral="echo Hola $NAME!!!! && SaludarMiguel"

Saludar() {
    case $NAME in
        miguel) SaludarMiguel ;;
        valen) SaludarValen ;;
        *) SaludoGeneral ;;
    esac
}

NAME=$1
if [ $# -gt 0 ]; then
    Saludar
else
    echo no
fi
