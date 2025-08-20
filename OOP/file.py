def read_file():
    # Prompt the user for a filename
    filename = input("Please enter the filename: ")
    
    try:
        # Attempt to open the file in read mode
        with open(filename, 'r') as file:
            # Read the contents of the file
            content = file.readlines()
            # Print the first 5 lines of the file
            print("First 5 lines of the file:")
            for line in content[:5]:
                print(line.strip())
    
    except FileNotFoundError:
        # Handle the case where the file does not exist
        print(f"Error: The file '{filename}' was not found.")
    
    except PermissionError:
        # Handle the case where the file cannot be read due to permission issues
        print(f"Error: You do not have permission to read the file '{filename}'.")
    
    except Exception as e:
        # Handle any other exceptions that may occur
        print(f"An unexpected error occurred: {e}")

# Call the function to execute the file reading process
read_file()
