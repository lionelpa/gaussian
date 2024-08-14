# List of submodule git directories
directories=(
  "SIBR_viewers"
  "submodules/diff-gaussian-rasterization"
  "submodules/simple-knn"
)

# Loop through each directory and checkout the custom branch
for dir in "${directories[@]}"; do
    echo "============== $dir =============="
    if [ -d "$dir" ]; then
        echo "Entering directory: $dir"
        cd "$dir" || { echo "Failed to enter directory $dir"; exit 1; }

        echo "Checking out 'custom' branch in $dir"
        git checkout custom || { echo "Failed to checkout 'custom' branch in $dir"; exit 1; }

        # Return to the parent directory
        cd - > /dev/null || { echo "Failed to return to parent directory"; exit 1; }
    else
        echo "Directory $dir does not exist."
    fi
    printf "\n\n"
done

echo "Done!"