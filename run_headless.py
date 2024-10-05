from mock_zart import run_simulation

def run_headless_simulation():
    print("Starting headless simulation...")
    
    try:
        result = run_simulation()
        print(f"Simulation completed successfully. Final result: {result}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")

if __name__ == "__main__":
    run_headless_simulation()
