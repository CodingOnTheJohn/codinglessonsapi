# Coding Lessons API
<h2> This API Provides access to coding lessons and interview questions related to software development. The lessons are categorized into Ruby Lessons, JavaScript Lessons, and Interview Questions. The API is organized under the `api/v1` namespace and follows RESTful conventions. The purpose of this API is to provide an accessible database that host short coding lessons for other applications to make use of. </h2>

## Table of Contents
- [Endpoints](#endpoints)
- [Responses](#responses)
- [Contributors](#contributors)
- [Fair Use](#fair-use)

## Endpoints

### Ruby Lessons
- **`GET /api/v1/ruby`**
  - Returns a list of all Ruby lessons.
- **`GET /api/v1/ruby/:id`**
  - Returns a specific Ruby lesson by ID.
    
### JavaScript Lessons
- **`GET /api/v1/javascript`**
  - Returns a list of all JavaScript lessons.
- **`GET /api/v1/javascript/:id`**
  - Returns a specific JavaScript lesson by ID.

### Interview Questions
- **`GET /api/v1/interview`**
  - Returns a list of all interview questions.
- **`GET /api/v1/interview/:id`**
  - Returns a specific interview question by ID.
 
## Responses
- Base URL: https://codinglessons-112e8fb1f399.herokuapp.com
- All endpoints return data in JSON Format

### Ruby
- **`GET /api/v1/ruby`**
  <img width="1068" alt="Screenshot 2024-08-01 at 5 56 42 PM" src="https://github.com/user-attachments/assets/94c662be-0bed-4b1a-ae98-9b1c75a32a85">

- **`GET /api/v1/ruby/:id`**
  <img width="1206" alt="Screenshot 2024-08-01 at 5 58 15 PM" src="https://github.com/user-attachments/assets/8d1fd109-6605-4d29-a551-1523c00e54c3">


### JavaScript
- **`GET /api/v1/javascript`**
  <img width="1211" alt="Screenshot 2024-08-01 at 5 58 57 PM" src="https://github.com/user-attachments/assets/64402a92-e933-4847-ace8-de3ca43f6e28">

- **`GET /api/v1/javascript/:id`**
  <img width="1200" alt="Screenshot 2024-08-01 at 5 59 24 PM" src="https://github.com/user-attachments/assets/69d0fd1c-82d1-4d1c-b326-f8cb0038c815">


### Interview
- **`GET /api/v1/interview`**
  <img width="1204" alt="Screenshot 2024-08-01 at 6 00 02 PM" src="https://github.com/user-attachments/assets/8ea4f36d-4ae0-49bf-a5e3-c73d65957279">

- **`GET /api/v1/interview/:id`**
  <img width="1180" alt="Screenshot 2024-08-01 at 6 00 28 PM" src="https://github.com/user-attachments/assets/cae60008-bf4e-47b7-af13-a0469672e056">


## Contributors
- [Garrett Bowman](https://github.com/GBowman1)
- [Dana Howell](https://github.com/DHowell1150)
- [Noah Durbin](https://github.com/noahdurbin)
- [Austin Carr Jones](https://github.com/austincarrjones)

## Fair Use
### Coding Lessons API is free and open to use. Because of this, we humbly ask developers to use it fairly. This is an educational service, Contributions are welcome! Please fork this repository, make your changes, and submit a pull request.
