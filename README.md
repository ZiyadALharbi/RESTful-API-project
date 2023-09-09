a RESTful API using the Shelf framework and Shelf Route library. The API have the following endpoints:

1. **Endpoint**: 
   - **Description**: This endpoint should accept an email and password in the request body and authenticate the user.
   - **Functionality**: Verify the email and password from a provided file in your project and return a response indicating whether the authentication was successful or not.

2. **Endpoint**: 
   - **Description**: This endpoint should accept an image file in the request body and save it in the project directory.
   - **Functionality**: Save the uploaded image file in the project directory by name from the user and return a response indicating the success or failure of the operation.

3. **Endpoint**: 
   - **Description**: This endpoint should accept person information (e.g., name, age, address) in the request body and save it in a file in the project directory.
   - **Functionality**: Save the person information in a file in the project directory and return a response indicating the success or failure of the operation.

4. **Endpoint**: 
   - **Description**: This endpoint should retrieve and display all the user data that has been previously saved.
   - **Functionality**: Read the user data from the file in the project directory and return a response with the retrieved data.

5. **Endpoint**:
   - **Description**: This endpoint should delete an image file by its name.
   - **Functionality**: Search for the image file with the specified name in the project directory and delete it. Return a response indicating the success or failure of the operation.

6. **Endpoint**: 
   - **Description**: This endpoint should accept new person information in the request body and update the existing person information.
   - **Functionality**: Read the existing person information from the file, update it with the new information, and save it back to the file. Return a response indicating the success or failure of the operation.
