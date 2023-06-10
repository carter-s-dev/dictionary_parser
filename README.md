# Dictonary Parser

The Dictonary Parser is a Ruby program that parses a dictionary_words.txt file for unique sequences of letters. It generates two output files, "sequences" and "words". The "sequences" file contains every unique sequence of four letters that appear in exactly one word of the dictionary file. The "words" file contains the corresponding words that contain the sequence, in the same order.

## Requirements

- Ruby
- The program should generate two output files, "sequences" and "words".
- The sequences file should contain every unique sequence of four letters that are unique and appear in exactly one word of the dictionary_words.txt file.
- Differences in casing should not reflect a unique sequence.
- Numbers and special characters should not create a unique sequence.
- The words file should contain the corresponding words that contain the sequence, in the same order, again one per line.

## Usage

1. Place your dictionary file in the files folder. The dictionary file is a plain text file with each word on a separate line like dictionary_words.txt.

2. In your terminal, navigate to the directory containing the `dictionary_words.rb` and `main.rb` files.

3. Run the program by executing the following command:

   ```shell
   ruby main.rb
   ```

4. The program will read the dictionary file and generate two output files: "sequences" and "words" inside files folder.

5. The "sequences" file will contain the unique sequences of four letters found in the dictionary file, one sequence per line.

6. The "words" file will contain the corresponding words that contain the sequence, in the same order, one word per line.

7. You can find the output files in the files directory.

8. To run tests, run the following command:
```shell
   ruby dictionary_words_test.rb
   ```

## Example

For example, given the trivial dictionary containing only

```
arrows
18th
carrots
give
me
Isn't
```

The program will generate the following output:

**sequences:**

```
carr
give
rots
rows
rrot
rrow
```

**words:**

```
carrots
give
carrots
arrows
carrots
arrows
```

---