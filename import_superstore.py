import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.engine import URL

# MySQL connection details
username = "root"
password = "Jagadeeswari@2004"
host = "localhost"
port = 3306
database = "superstore_analytics"

# Safe connection URL
connection_url = URL.create(
    drivername="mysql+pymysql",
    username=username,
    password=password,
    host=host,
    port=port,
    database=database
)

engine = create_engine(connection_url)

# Read CSV
df = pd.read_csv(
    r"C:\Users\jagadeeswari\OneDrive\Documents\sql-customer-churn-analysis\data\superstore.csv",
    encoding="latin1"
)

# Clean column names
df.columns = (
    df.columns
      .str.strip()
      .str.replace(" ", "_", regex=False)
      .str.replace("-", "_", regex=False)
)

print("Rows loaded:", len(df))
print("Columns:", df.columns.tolist())

# Import into MySQL
df.to_sql(
    name="superstore",
    con=engine,
    if_exists="replace",
    index=False,
    chunksize=1000
)

print("Data imported successfully!")