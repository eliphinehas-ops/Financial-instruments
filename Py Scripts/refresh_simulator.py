import pandas as pd
import time
import random

def simulate_refresh(file_path):
    df = pd.read_csv(file_path)
    print("Initial Data:")
    print(df)

    for i in range(3):  # Simulate 3 refresh cycles
        time.sleep(5)
        print(f"\n--- Refresh Cycle {i+1} ---")
        # Randomly toggle compliance flag
        df['ComplianceFlag'] = df['ComplianceFlag'].apply(lambda x: 'No' if random.random() > 0.7 else 'Yes')
        # Randomly adjust volatility
        df['Volatility'] = df['Volatility'].apply(lambda x: round(x + random.uniform(-0.02, 0.02), 2))
        print(df)

simulate_refresh('financial_instruments.csv')
