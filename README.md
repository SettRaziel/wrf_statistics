# WRF Statistics
[![Maintainability](https://api.codeclimate.com/v1/badges/92c4157d448e53d79ca3/maintainability)](https://codeclimate.com/github/SettRaziel/wrf_statistics/maintainability)

This project holds a collection of ruby files which evaluate the forecasts 
generated with my wrf model. Initially the wrf output for a given location
will be compared with observation data from the german weather service (DWD).

Current version: v0.0.1

## Usage & Help
```
usage: follows
```

## Documentation
The documentation will be created with yard and published at a later point.

## Used version
Written with Ruby 2.4.0

## Tested
* Linux: running on ArchLinux with Ruby > 2.4.0
* Windows: not tested
* MAC: not tested

## Requirements
* Ruby with a version >= 2.4.0
* Yard (for Documentation only)

## License
The scripts are licensed under the given license file. 3rd party software, scripts
or data are marked and can have different license conditions. 
Please check the folders for subsidiary license files.

The oberservation data from the german weather service is proteced. They can be used
following the conditions found [here](ftp://ftp-cdc.dwd.de/pub/CDC/Nutzungsbedingungen_German.pdf).

## Roadmap
* parsing scripts to read the data files and extract the necessary informations
* starting script to calculate plots for a given input file
* different input data: wrf output data and wrf observation data
* statistic evaluations between the forecast data and the used observation data
* visualization of the results using additional tools like gnuplot or R

created by: Benjamin Held, October 2017
