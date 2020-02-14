# shortestfizzbuzz
Attempt at making the shortest fizz buzz.

## Build locally
1. First clone the repository
2. `cd` into the cloned folder and run the following command to compile the program ([provided you have gcc installed](https://gcc.gnu.org/install/binaries.html)):
    ```bash
    $ gcc -std=c99 shortestfizzbuzz.c -o shortestfizzbuzz && chmod +x shortestfizzbuzz
    ```
3. Run the binary:
    ```bash
    $ ./shortestfizzbuzz
    ```
## Docker
1. Run the docker image:
   ```bash
   $ docker run --rm -it samhaq/shortestfizzbuzz
   ```
   
