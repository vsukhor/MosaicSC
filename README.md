#  MosaicSC 

![build](https://github.com/vsukhor/MosaicSC/actions/workflows/cmake.yml/badge.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE.md)

### Simulation of space-embedded molecular aggregates using Potts model

#### Introduction
 
When multiple species of particles present in the same system have the capacity for multi-facet 
mutual interactions, a complicated mix consisting of heterogeneous aggregates may arise.  
Its composition depends strongly on details of the interactions and abundance of the particles.
 Interaction strength of a pair of particles is then often modulated by connections to other 
 particles, leading to nonlinear effects, difficult to capture with analytical methods. This is 
 especially the case when spatial effects or noise-dependent properties are important.   
For systems consisting of two components only a well-studied Ising model is a classical 
approach. [Potts model](https://en.wikipedia.org/wiki/Potts_model) is a generalization of the 
Ising one to the case of multiple species and interactions, and so offers a much higher versatility 
often necessary for practical applications.

#### Case of Respiratory Supercomplexes

In living cells, mitochondrial respiratory complexes (RC) are large proteins present in the inner 
membrane of [mitochondria](https://en.wikipedia.org/wiki/Mitochondrion) - intracellular 
organelles crucial for energy supply, death/survival decision and other important functions. 
Recently, it became known that the complexes themselves function as building blocks for even
 larger protein aggregations termed supercomplexes (SCs), but theis exact composition is not 
 clear, and is possibly variable, dependent on specific conditions set by current state of the mitochondria.

The software package here incorporates details of the RC interactions to reconstruct 
composition of the SC aggrregations arising at particular values of species concentration and
 pairwise reaction rates. All four RC species available in higher eucariotes or only some of them 
 may be included into a modeled environment. Constraints imposed by particular geometry of 
 each molecular species and the membrane positioning would then lead to a specific mix of 
 aggregations.

#### Installation

The simulator makes use of the general-purpose library [utils](https://github.com/vsukhor/utils),
(included here as a git submodule).
So, when cloning, please make sure, that the dependent library is included, e.g., by applying:

```console
git clone --recursive https://github.com/vsukhor/mosaicsc.git
```

and, in the case of an update, do this explicitly on the submodule:

```console
git submodule init
git submodule update
```

Because [utils::random](https://github.com/vsukhor/utils/tree/master/utils/random)
relies on [boost](https://www.boost.org/) for generation of pseudo-random numbers, 
*boost* header files are expected to be accessible at compile thme.

The code requires a C++20 - capable compiler. It was tested on macOS (clang-12) and Ubuntu (gcc-11). 

Using [cmake](https://cmake.org) (ver. 3.15 or higher):  
    
```console
cd mosaicsc  
cmake -S . -B build  
cmake --build build  
```
#### Running the simulation

The simulation parameters are read from a short configuration file, structured 
as in the example [config.txt](examples/example1/config.txt). 
More details on the config file formatting can be found in the 
utils::config [documentation](https://github.com/vsukhor/utils/blob/master/utils/config/conf_file_structure.md) 
The file is expected to be named as 'config.txt'.
Using the above example, and the executable *mosaicsc*, the simulation may be launched as

`./app/mosaicsc /path/to/examples/example1`

The first argument is the path to the configuration file.

### Analyzing the results

The simulation saves snapshots of the Potts lattice, list of the SCs present and generates a 
detailed log file reporting evolution of the key metrics parameters.  
[scripts/temporal_evolution/](scripts/temporal_evolution/) directory contains Python 3 code for 
basic visualization and analysis of the logged data.
The scripts can be used independently of the main C++ code,  provided the output files are 
available (see the [instructions](scripts/README.md) inside). 

### License

**MosaicSC** is available under the terms of the [MIT license](LICENSE.md).
