About sentencepiece-feedstock
=============================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/sentencepiece-feedstock/blob/main/LICENSE.txt)

Home: https://github.com/google/sentencepiece/

Package license: Apache-2.0

Summary: Unsupervised text tokenizer for Neural Network-based text generation.

SentencePiece is an unsupervised text tokenizer and detokenizer mainly for
Neural Network-based text generation systems where the vocabulary size is
predetermined prior to the neural model training.

SentencePiece implements subword units (e.g., byte-pair-encoding (BPE)
[[Sennrich et al.](http://www.aclweb.org/anthology/P16-1162)]) and unigram
language model [[Kudo](https://arxiv.org/abs/1804.109590)]) with the
extension of direct training from raw sentences. SentencePiece allows us to
make a purely end-to-end system that does not depend on language-specific
pre/postprocessing.


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_aarch64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_ppc64le_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=10233&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/sentencepiece-feedstock?branchName=main&jobName=win&configuration=win%20win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libsentencepiece-green.svg)](https://anaconda.org/conda-forge/libsentencepiece) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libsentencepiece.svg)](https://anaconda.org/conda-forge/libsentencepiece) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libsentencepiece.svg)](https://anaconda.org/conda-forge/libsentencepiece) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libsentencepiece.svg)](https://anaconda.org/conda-forge/libsentencepiece) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-sentencepiece-green.svg)](https://anaconda.org/conda-forge/sentencepiece) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/sentencepiece.svg)](https://anaconda.org/conda-forge/sentencepiece) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/sentencepiece.svg)](https://anaconda.org/conda-forge/sentencepiece) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/sentencepiece.svg)](https://anaconda.org/conda-forge/sentencepiece) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-sentencepiece--python-green.svg)](https://anaconda.org/conda-forge/sentencepiece-python) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/sentencepiece-python.svg)](https://anaconda.org/conda-forge/sentencepiece-python) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/sentencepiece-python.svg)](https://anaconda.org/conda-forge/sentencepiece-python) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/sentencepiece-python.svg)](https://anaconda.org/conda-forge/sentencepiece-python) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-sentencepiece--spm-green.svg)](https://anaconda.org/conda-forge/sentencepiece-spm) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/sentencepiece-spm.svg)](https://anaconda.org/conda-forge/sentencepiece-spm) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/sentencepiece-spm.svg)](https://anaconda.org/conda-forge/sentencepiece-spm) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/sentencepiece-spm.svg)](https://anaconda.org/conda-forge/sentencepiece-spm) |

Installing sentencepiece
========================

Installing `sentencepiece` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `libsentencepiece, sentencepiece, sentencepiece-python, sentencepiece-spm` can be installed with `conda`:

```
conda install libsentencepiece sentencepiece sentencepiece-python sentencepiece-spm
```

or with `mamba`:

```
mamba install libsentencepiece sentencepiece sentencepiece-python sentencepiece-spm
```

It is possible to list all of the versions of `libsentencepiece` available on your platform with `conda`:

```
conda search libsentencepiece --channel conda-forge
```

or with `mamba`:

```
mamba search libsentencepiece --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search libsentencepiece --channel conda-forge

# List packages depending on `libsentencepiece`:
mamba repoquery whoneeds libsentencepiece --channel conda-forge

# List dependencies of `libsentencepiece`:
mamba repoquery depends libsentencepiece --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating sentencepiece-feedstock
================================

If you would like to improve the sentencepiece recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/sentencepiece-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@h-vetinari](https://github.com/h-vetinari/)
* [@ndmaxar](https://github.com/ndmaxar/)
* [@oblute](https://github.com/oblute/)
* [@rluria14](https://github.com/rluria14/)
* [@setu4993](https://github.com/setu4993/)

