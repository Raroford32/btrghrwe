import time
import random

def run_headless_application():
    print("Starting headless application...")
    
    # Simulate some processing
    for i in range(3):
        print(f"Processing step {i+1}...")
        time.sleep(1)
    
    # Simulate generating a result
    result = random.randint(1, 100)
    print(f"Application complete. Result: {result}")
    
    return result

if __name__ == "__main__":
    try:
        final_result = run_headless_application()
        print(f"Application ran successfully. Final result: {final_result}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")
