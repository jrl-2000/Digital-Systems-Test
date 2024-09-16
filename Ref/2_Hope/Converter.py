def insert_column(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        # Read each line from the input file
        lines = infile.readlines()

        # Insert a column at the beginning of each line
        lines_with_column = [f":{line}" for line in lines]

        # Write the modified lines to the output file
        outfile.writelines(lines_with_column)

if __name__ == "__main__":
    input_file_name = "c5315.pat"  # Replace with your input text file
    output_file_name = "c5315.test"  # Replace with the desired output file

    insert_column(input_file_name, output_file_name)
