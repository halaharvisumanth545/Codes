import string

def process_word(word):
    # Strip whitespaces and punctuation from the word
    word = word.strip(string.whitespace + string.punctuation)
    # Convert the word to lowercase
    word = word.lower()
    return word

def process_file(file_path):
    try:
        with open(file_path, 'r') as file:
            # Read each line from the file
            lines = file.readlines()

            # Process each line
            for line in lines:
                # Split the line into words
                words = line.split()

                # Process each word
                processed_words = [process_word(word) for word in words]

                # Print the processed words
                print(processed_words)

    except FileNotFoundError:
        print("File not found.")

# Provide the file path here
file_path = 'C:/python/textfile.txt'
process_file(file_path)
