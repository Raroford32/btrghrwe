import time
import random

def run_simulation():
    print("Starting Windows executable simulation...")
    for i in range(3):
        print(f"Processing step {i+1}...")
        time.sleep(1)
    result = random.randint(1, 100)
    print(f"Simulation complete. Result: {result}")
    return result

if __name__ == "__main__":
    run_simulation()
