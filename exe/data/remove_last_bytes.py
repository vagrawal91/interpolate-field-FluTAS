import os

def remove_last_16_bytes(file_path):
    # Open the file in read binary mode
    with open(file_path, 'rb') as file:
        # Read the entire file content
        file_content = file.read()
    
    # Get the length of the file content
    file_length = len(file_content)
    
    # Ensure the file is larger than 16 bytes
    if file_length <= 16:
        raise ValueError("The file is too small to remove 16 bytes.")

    # Truncate the last 16 bytes
    truncated_content = file_content[:-16]
    
    # Write the truncated content back to the file
    with open(file_path, 'wb') as file:
        file.write(truncated_content)


# Set the data directory
#datadir = '/path/to/your/data/'  # Change this to your actual directory

# List of file names
var_fields = ['fldu.bin', 'fldv.bin', 'fldp.bin', 'fldw.bin']

# Remove the last 16 bytes from each file
for ivar in var_fields:
    #ivar = os.path.join(datadir, ivar)
    remove_last_16_bytes(ivar)
