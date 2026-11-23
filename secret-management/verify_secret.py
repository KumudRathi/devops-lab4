import os
import sys

app_secret = os.getenv("APP_SECRET")

if app_secret:
    print("SUCCESS: Application secret is configured.")
else:
    print("ERROR: Application secret is missing.")
    sys.exit(1)
