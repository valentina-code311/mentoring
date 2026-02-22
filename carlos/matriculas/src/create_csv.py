import pandas as pd
import argparse

def main():
  parser = argparse.ArgumentParser(description='Load history from Excel to CSV')
  parser.add_argument('-x','--xlsx_path', type=str, help='Path to Excel file')
  args = parser.parse_args()

  sheet_name = args.xlsx_path.split('/')[-1].split('.')[0]
  csv_path = args.xlsx_path.replace('.xlsx', '.csv')

  df = pd.read_excel(
    args.xlsx_path,
    sheet_name=sheet_name,
    dtype=str # dtype=str evita líos de tipos
  )
  df.to_csv(csv_path, index=False)
  print("OK ->", csv_path, "rows:", len(df))

if __name__ == "__main__":
  main()
