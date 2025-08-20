# Define the input and output file names
input_file = 'input.txt'
output_file = 'output.txt'

# Open the input file for reading
with open(input_file, 'r') as infile:
    # Read the content of the file
    content = infile.read()

# Modify the content (for example, convert to uppercase)
modified_content = content.upper()

# Open the output file for writing
with open(output_file, 'w') as outfile:
    # Write the modified content to the new file
    outfile.write(modified_content)

print(f'Modified content written to {output_file}')
