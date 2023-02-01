# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [My Blog] <a name="about-project"></a>

**[My Blog]** is a simple blog built with Ruby on Rails & Postgresql as a database

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Still in development..

- **MVC structure**
- **Model validation**
- **RSpec testing**

> Future Features

- **Views**
- **Forms**
- **Authentication & Authorization**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Still in development..

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Basic knowledge of the command line.
- Ruby on Rails installed, you can follow this [link](https://guides.rubyonrails.org/v5.0/getting_started.html).
- Postgresql Database, you can follow this [link](https://www.postgresql.org/download/), choose your system & follow the provided instructions.
- <a href="https://mailcatcher.me/">Mailcatcher</a> (to confirm email in registration)

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:Peter1907/my-blog.git
```

### Install

Install this project with:
```sh
  cd my-blog
  bundle install
```

Install tailwindcss gem to work properly:
```sh
  rails tailwindscss:install
```

### Usage

To run the project, execute the following command:


- To run the project in your browser, run:
```sh
  rails server
```
Or for short:
```sh
  rails s
```

- if you want to modify styles & let tailwind compile on save run:
```sh
  rails tailwindcss:watch
```
- Run mailcatcher using ```mailcatcher``` command
- Register a new user & open the mailcatcher port to confirm your email

### Run tests

- You would have the necessary gems added to the Gemfile
- Open the terminal in the repo folder on your machine & run `bundle install` if you haven't already done so by this point
- In the terminal you have the option to run the tests for:
  - An entire folder, using the `rspec spec` command.
  - A sub-folder, using the `rspec spec/models` for example.
  - A single file, using the `rspec spec/requests/post_spec.rb` for example.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

👤 **Peter Beshara**

- GitHub: [@Peter1907](https://github.com/Peter1907)
- Twitter: [@Peter_Beshara_](https://twitter.com/Peter_Beshara_)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/peter-beshara-b33681241/)

👤 **Mohamed El-Deeb**

- GitHub: [@githubhandle](https://github.com/eng-mohamed-eldeeb)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/eng-mohamed-eldeeb/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a star!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
