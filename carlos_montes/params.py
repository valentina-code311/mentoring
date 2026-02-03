"""
Script de prueba de parametros largos y flags, dentro de una funcion main
"""
import argparse
import os

def str2bool(v):
  if isinstance(v, bool):
    return v
  if v.lower() in ('yes', 'true', 't', 'y', '1'):
    return True
  elif v.lower() in ('no', 'false', 'f', 'n', '0'):
    return False
  else:
    raise argparse.ArgumentTypeError('Boolean value expected.')

def program(args):
  pass


def main():
  parser = argparse.ArgumentParser(description='Script de prueba de parametros largos y flags, dentro de una funcion main')
  parser.add_argument('-n', '--name', type=str, default=os.getenv('USER_NAME'), help='Nombre del usuario')
  parser.add_argument('-a', '--age', type=int, default=os.getenv('USER_AGE'), help='Edad del usuario')
  parser.add_argument('-g', '--gender', type=str, default=os.getenv('USER_GENDER'), help='Genero del usuario')
  parser.add_argument('-s', '--single', type=str2bool, default=os.getenv('USER_SINGLE', 'false'), help='Estado civil del usuario')
  parser.add_argument('-h', '--help', action='help', help='Muestra esta ayuda')
  args = parser.parse_args()

  if not args.name:
    parser.error("El nombre es requerido (vía --name o variable de entorno USER_NAME)")
    
  print(f"Name: {args.name}")
  print(f"Age: {args.age}")
  print(f"Gender: {args.gender}")
  print(f"Single: {args.single}")
  program(args)


if __name__ == '__main__':
  main()
