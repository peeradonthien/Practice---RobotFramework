# RentMyRide Login Testing

Automated testing suite for RentMyRide's login functionality using Robot Framework.

## Overview

This repository contains automated tests for validating the login functionality of the RentMyRide car rental platform. The tests use Robot Framework with SeleniumLibrary for browser automation.

## Prerequisites

- Python 3.x
- Robot Framework
- SeleniumLibrary
- Firefox Browser

Install the required dependencies using:
```sh
pip install -r requirements.txt
```

## Project Structure
```
├── login_tests/
│   ├── resource.robot    # Shared resources, keywords, and variables
│   └── valid_login.robot # Test suite for valid login scenarios
├── .gitignore
└── requirements.txt
```

## Running Tests
```sh
robot login_tests
```
