# Store the current directory
current_dir=$(pwd)
		
# List of directories
directories=(
    "${CWLvf}/uniD_ReTau590_all/wdevop_ReT590/data/restart_dir/"
)

# Loop through each directory
for dir in "${directories[@]}"; do
    
		# Move inpute field
		echo "$dir"
		#for file in "fldv.bin" "fldv.bin" "fldw.bin" "fldp.bin"; do
		#		cp "${dir}${file}" . || {
		#				echo "Failed to move the restart field from $dir. Hence, skipping..."
		#				continue
		#		}
		#done

		# Execute the interpit command from one directory level up
		echo "Interpolating fields..."
		mpirun -n 1 ../interpit || {
				echo "Failed to execute interpit. Exiting..."
	      exit 1
	  }


    ## Change back to the original directory
    #cd "$original_dir" || {
    #    echo "Failed to change back to original directory. Exiting..."
    #    exit 1
    #}
done

echo "Script executed successfully."
