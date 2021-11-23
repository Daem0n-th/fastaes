<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![BSD3 License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
<h2 align="center">FASTAES</h2>

  <p align="center">
    A fast command line utility to encrypt/decrypt files.
    <br />
    <!-- <a href="https://github.com/Daem0n-th/fastaes"><strong>Explore the docs »</strong></a> -->
    <br />
    <br />
    <!-- <a href="https://github.com/Daem0n-th/fastaes">View Demo</a>
    · -->
    <a href="https://github.com/Daem0n-th/fastaes/issues">Report Bug</a>
    ·
    <a href="https://github.com/Daem0n-th/fastaes/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#building">Building</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

A fast, simple commandline utility to encrypt or decrypt files in AES written in haskell.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [haskell](https://www.haskell.org/)
* [cryptonite](https://hackage.haskell.org/package/cryptonite-0.29)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage
```
fastaes v0.1.0.0, (C) Dheemanth Manur

aesargs [OPTIONS] [INPUT FILE]
  Encrypt/Decrypt files in AES256

Common flags:
  -o --output=ITEM      Filename for the output data.
  -d --decrypt          Decrypt the file.
  -k --key=ITEM         File containing the AES key to encrypt/decrypt the
                        file.
  -? --help             Display help message
  -V --version          Print version information
     --numeric-version  Print just the version number
  -v --verbose          Loud verbosity
  -q --quiet            Quiet verbosity
```

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
<!-- ## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
  ```sh
  npm install npm@latest -g
  ```

### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/Daem0n-th/fastaes.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

<p align="right">(<a href="#top">back to top</a>)</p> -->

## Building


### Prerequisites
fastaes uses stack as the default build tool. Installation instructions can be found [here](https://docs.haskellstack.org/en/stable/install_and_upgrade/).

### Instructions
1. Clone the repo
   ```sh
   git clone https://github.com/Daem0n-th/fastaes.git
   ```
2. Build the binary using stack
   ```sh
   stack build
   ```
3. Run using stack
   ```sh
   stack run -- [OPTIONS] [ARGS]
   ```


<!-- ROADMAP -->
<!-- ## Roadmap

- [] Feature 1
- [] Feature 2
- [] Feature 3
    - [] Nested Feature

See the [open issues](https://github.com/Daem0n-th/fastaes/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p> -->



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!


1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the BSD3 License. See `LICENSE` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Dheemanth Manur - dheemanthmanur72@gmail.com

<!-- [@twitter_handle](https://twitter.com/twitter_handle) -->

Project Link: [https://github.com/Daem0n-th/fastaes](https://github.com/Daem0n-th/fastaes)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Daem0n-th/fastaes.svg?style=for-the-badge
[contributors-url]: https://github.com/Daem0n-th/fastaes/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Daem0n-th/fastaes.svg?style=for-the-badge
[forks-url]: https://github.com/Daem0n-th/fastaes/network/members
[stars-shield]: https://img.shields.io/github/stars/Daem0n-th/fastaes.svg?style=for-the-badge
[stars-url]: https://github.com/Daem0n-th/fastaes/stargazers
[issues-shield]: https://img.shields.io/github/issues/Daem0n-th/fastaes.svg?style=for-the-badge
[issues-url]: https://github.com/Daem0n-th/fastaes/issues
[license-shield]: https://img.shields.io/github/license/Daem0n-th/fastaes.svg?style=for-the-badge
[license-url]: https://github.com/Daem0n-th/fastaes/blob/master/LICENSE

