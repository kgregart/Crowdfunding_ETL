<div align="center">

# Crowdfunding ETL Mini Project

[![license][license]][license-url]
[![python][python]][python-url]
[![jupyter][jupyter]][jupyter-url]
[![postgres][postgres]][postgres-url]

</div>

## Description

![ERD](/db/QuickDBD.png)

## Table of Contents

-   [Installation](#installation)
-   [Usage](#usage)
-   [Tests](#tests)
-   [Contributing](#contributing)
-   [License](#license)
-   [Contact](#contact)
-   [Credits](#credits)

## Installation

1.  Clone the repo

    ```sh
    git clone https://github.com/kgregart/Crowdfunding_ETL.git
    ```

2.  Change directories to `Crowdfunding_ETL`

    ```sh
    cd Crowdfunding_ETL
    ```

3.  Run `ETL_Mini_Project_Starter_Code.ipynb`

## Usage

1.  Change directories to `Crowdfunding_ETL`

    ```sh
    cd Crowdfunding_ETL
    ```

2.  Import `PostgreSQL` Schema

    ```sh
    psql -f db/schema.sql -p 5432 -U postgres
    ```

3.  Seed the database

    ```sh
    psql -f db/schema.sql -p 5432 -U postgres
    ```

4.  Run queries

    ```sql
    SELECT
        *
    FROM
        category;
    ```

    ```sql
    SELECT
        *
    FROM
        subcategory;
    ```

    ```sql
    SELECT
        *
    FROM
        contacts;
    ```

    ```sql
    SELECT
        *
    FROM
        campaign;
    ```

## Tests

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

[MIT License](https://opensource.org/licenses/MIT)

## Contact

## Credits

[Starter Code Download](https://static.bc-edx.com/data/dl-1-2/m13/lms/starter/Starter_Files.zip)

[license]: https://img.shields.io/github/license/kgregart/Crowdfunding_ETL.svg?style=for-the-badge
[license-url]: https://github.com/kgregart/Crowdfunding_ETL/blob/master/LICENSE
[python]: https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=ffdd54
[python-url]: https://www.python.org/
[jupyter]: https://img.shields.io/badge/jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white
[jupyter-url]: https://jupyter.org/
[postgres]: https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white
[postgres-url]: https://www.postgresql.org/
