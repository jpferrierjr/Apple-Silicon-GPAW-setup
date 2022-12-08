#!/usr/bin/env bash

# Author:         John Ferrier, NEU Physics
# Description:    This script sets up an environment for GPAW use on an Apple Silicon system
# Date:           02-AUG-2022

PURP='\033[1;35m'
CYAN='\033[1;36m'
GRN='\033[1;32m'
YLW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color


# You know I gotta flex myself here
echo -e "${PURP}#############################################################${NC}"
echo -e "${PURP}#${NC}"
echo -e "${PURP}#    Created by John Ferrier, NEU Physics${NC}"
echo -e "${PURP}#    ${CYAN}🐦 @jpferrierjr${NC}"
echo -e "${PURP}#    ASE/GPAW Install Script for Apple Silicon Devices${NC}"
echo -e "${PURP}#    Verion: 0.1${NC}"
echo -e "${PURP}#"
echo -e "${PURP}#############################################################${NC}\n\n"

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&#(/***/(%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%,   .(&@@@@@@&*  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@( ,%&@@@@@@@@@@@@@@@/ #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@, #@@@@@@@@@@@@@@@@@@@@  %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@, (@@@@@@@@@@@@@@@@@@@@@@. #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@, /@@@@@@@@@@@@@@@@@@@@@@@@, %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@/ .&@@@@@@@@@@@@@@@@@@@@@@@@@ *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@%    *,*/(/*,.   ,/(&@@@@@@@@@@@# &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@&. /@@@@@@@@@@@@@@@@@%/   /@@@@& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@&.  (@@@@@@@@@@@@@@@@@@@@@@&*  ( %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@( /@@. /@@@@@@@@@@@@@@@@@@@@@@@/.&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@* #@@@@@#, *%@@@@@@@@@@@@@@@@@% /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@* #@@@@@@@@@%*  (@& *#..&#@@@@,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@# /@@@@@@@@@@@@@@%. ,*/&&.. ,( (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@&./@@@@@@@@@@@@@@@@@@@@(, ,%&.,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@*.@@@@@@@@@@@@@@@@@@@@@@@@@% ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@( %@@@@@@@@@@@@@@@@@@@@@@@@( *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@ (@@@@@@@@@@@@@@@@@@@@@@@@, #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@,*@@@@@@@@@@@@@@@@@@@@@@@@* %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@% &@@@@@@@@ You @@@@@@@@@@# #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@,.@@@@@@@@@@@@@@@@@@@@@@@& *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@& (@@@@@@@@@@@@@@@@@@@@@(,,.&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@( &@@@@@@@@@@@@@@@@@@@#(@( %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@* @@@@@@@@@@@@@@@@@@@@@@# #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@& *@@@@@@@@@@@@@@@@@@@@@& /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@# %@@@@@@@@@@@@@@@@@@@@& .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@#.&@@@@&.#@@@@@@@@@@@@@( %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@/.@@@@@# *@@@@@@@@@@@@@,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@,*@@@@@% /@@@@@@@@@@@@@ ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@# /@@@@@& ,@@@@@@@@@@@@%  /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@/ /@@@@@( ,@@@@@@@@@@@@# * (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@* #@@@@@# *@@@@@@@@@@@@% (( #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@, &@@@@@# *@@@@@@@@@@@@@ ,@, &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@. &@@@@@%  @@@@@@@@@@@@@ .@@..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@&  &@@@@@&..@@@@@@@@@@@@@ .&@@.*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@%  &@@@@@@* &@@@@@@@@@@@@. &@@& /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@% /@@@@@@@( &@@@@@@@@@@@@, #@@@&..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@% #@@@@@@@/ %@@@@@@@@@@@@, /@@@@% ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@# %@@@@@@@* %@@@@@@@@@@@@/ *@@@@@% ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@*.&@@@@@@@( %@@@@@@@@@@@@(  /@@@@@# .&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,.@@@@@@@@# /@@@@@@@@@@@@&   .@@@@@&..&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,/@@@@@@@@& /@@@@@@@@@@@@@* / .&@@@@@% /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@ #@@@@@@@@& /@@@@@@@@@@@@@* *@, %@@@@@@.,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@@@@@& /@@@@@@@@@@@@@# /@@, (@@@@@@, (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@@@@@& *@@@@@@@@@@@@@( /@@@, ,@@@@@@/ /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@& #@@@@@@@@@ /@@@@@@@@@@@@@# ,@@@@# .@@@@@@( %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@@@@@% (@@@@@@@@@@@@@&. &@@@@@, *@@@&, /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@@@@@% ,#%%%#(##(##%%&( (@@@@@@@(,*/#  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@./@@@@@@@@& .*#&@@@@@@@@@@@/ /@@@@@@@@@@@@@* .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@ .@@@@@@@@@.,@@@@@@@@#/****, /@@@@@@@@@@@@@@# .&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% .&@@@@@@@&      ..,(&@@@@@% #@@@@@@@@@@@@@@@&  #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@*  #@@@@@@@% *@@@@@@@@@@@@@@% /@@@@@@@@@@@@@@@@@, ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@#  *@@@@@@@% (@@@@@@@@@@@@@@@ /@@@@@@@@@@@@@@@@@@(  (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% #%/*. ..,*#@@@@@@@@@@@@@@@@,/@@@@@@@@@@@@@@@@@@@@, .&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% /@@@@@@@@@#   /##, .&@@@@@@.,@@@@@@@@@@@@@@@@@@@@@%  (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@& /@@@@@@&, *@@@@@@@@. &@@@@@/.@@@@@@@@@@@@@@@@@@@@@@@, .&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@& /@@@@@( .@@@@@@@@@@# %@@@@@*,@@@@@@@@@@@@@@@@@@@@@@@@(  (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,/@@@@@..&@@@@@@@@@@& (@@@@@(.@@@@@@@@@@@@@@@@@@@@@@@@@@, .%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@**@@@@& /@@@@@@@@@@@&.,@@@@@#.@@@@@@@@@@@@@@@@@@@@@@@@@@@#  (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,/@@@@# #@@@@@@@@@@@@,.@@@@@% %@@@@@@@@@@@@@@@@@@@@@@@@@@# /*.#@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,/@@@@# %@@@@@@@@@@@@, %@@@@& %@@@@@@@@@@@@@@@@@@@@@@@@@@@ /@#  .(&@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@.#@@@@( %@@@@@@@@@@@@, (@@@@% #@@@@@@@@@@@@@@@@@@@@@@@@@@@# /@@@@%*  .*&@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@,*@@@@( %@@@@@@@@@@@@/ *@@@@# %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/  *&@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@.#@@@@( %@@@@@@@@@@@@# *@@@@& %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ &@@@@@@@@@@@@@@@"
echo "@@@@@@@@@ (@@@@* %@@@@@@@@@@@@% /@@@@& #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@# #@@@@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@,.&@@@@@@@@@@@@&./@@@@& ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&.,@@@@@@@@@@@@@"
echo "@@@@@@@@& #@@@@..&@@@@@@@@@@@@@,,@@@@@.,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ %@@@@@@@@@@@"
echo "@@@@@@@@% #@@@@ ,@@@@@@@@@@@@@@/.@@@@@,,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ *@@@@@@@@@@"
echo "@@@@@@@@% %@@@@. &@@@@@@@@@@@@@# &@@@@*.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@* ,@@@@@@@@@"
echo "@@@@@@@@% %@@@@ .&@@@@@@@@@@@@@& %@@@@*.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&  &@@@@@@@"
echo "@@@@@@@@& #@@@@.,@@@@@@@@@@@@@@& (@@@@* &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@, #@@@@@@"
echo "@@@@@@@@% #@@@@.,@@@@@@@@@@@@@@@,*@@@@( &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%.,(@@@@"
echo "@@@@@@@@@ #@@@@.,@@@@@@@@@@@@@@@*.@@@@# %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&   /@ ____________________________"
echo "@@@@@@@@& #@@@@.,@@@@@@@@@@@@@@@( @@@@% #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/ %/@ |  MacOSX_M1_GPAW_SETUP.sh  |"
echo "@@@@@@@@% %@@@@.,@@@@@@@@@@@@@@@% #@@@& *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/.&@ |___________________________|"
echo "@@@@@@@@% %@@@@,*@@@@@@@@@@@@@@@% (@@@@. &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@( %@@@@.*@@@@@@@@@@@@@@@% *@@@@. (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@% &@@@& *@@@@@@@@@@@@@@@@.,@@@@, /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@# &@@@@ *@@@@@@@@@@@@@@@@.,@@@@# .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@* &@@@( *@@@@@@@@@@@@@@@@,.&@@@%  &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@( %@@@* *@@@@@@@@@@@@@@@@,.&@&*  %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@& %@@@, &@@@@@@@@@@@@@@@@@/  *(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"


# Let's define some 😎 functions
########################################### FUNCTIONS #######################################################

# Checks to ensure that xcode is installed. It's necessary for some processes in GPAW
function checkXCODE()
{
    accentMessage "Checking for xcode"

    which -s xcode-select
    if [[ $? != 0 ]]
    then
        installXCODE
    else

        accentMessage "xcode Found!"
    fi
}

# Installs xcode
function installXCODE()
{
    echo -e "😬 We have to install xcode. This may take a while!"
    xcode-select --install
}

# Puts accents around message
function accentMessage()
{
    echo -e "\n${GRN}**** $1 ****${NC}"
}

# Puts a red accent around message
function uhohMessage()
{
    RED='\033[1;31m'
    NC='\033[0m' # No Color

    echo -e "\n${RED}$1${NC}"
}

# Installs Homebrew
function installHomebrew()
{
    cd ~
    accentMessage "Installing Homebrew"
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Check to see if Homebrew is installed
function checkHomebrew()
{
    accentMessage "Checking for Homebrew"
    which -s brew
    if [[ $? != 0 ]]
    then
        installHomebrew
    else

        accentMessage "Homebrew Found! Updating"
        brew update
    fi
}

# Installs necessary brew stuff
function installBrews()
{
    accentMessage "Installing Brews"

    brewList=gcc,libxc,openblas,gfortran,open-mpi,scalapack,llvm,libomp,fftw

    #lapack,
 
    # Use comma as separator and apply as pattern
    for val in ${brewList//,/ }
    do
        brew list $val &>/dev/null || brew install $val;
    done
}

# Installs Miniforce Conda
function installConda()
{
    accentMessage "Installing Miniforge Conda"

    # Go to home directory
    cd ~

    # Download the software
    curl -O https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh

    # Make it useable
    chmod u+x Miniforge3-MacOSX-arm64.sh

    # and run that sucker
    ./Miniforge3-MacOSX-arm64.sh

    # Allows the use of conda from bash
    setCondaBash

    # Change the default config startup
    conda config --set auto_activate_base false
}

# Checks if Conda is even installed at all
function checkforConda()
{
    accentMessage "Checking for Conda install"

    which -s conda
    if [[ $? != 0 ]]
    then 

        # Conda not found
        echo -e "\nConda not found!"

        # Install Conda for our beautiful user
        installConda
    else

        echo -e "\nConda Found!"
        
        # Check what version of Conda is being utilized. We need that miniforge 3 action!
        checkCondaType
    fi
}

# Checks type of Conda installed
function checkCondaType()
{

    accentMessage "Checking for Miniforge Conda"

    # Find the platform that conda thinks it's installed on
    CONDA_PLAT=`conda info | grep 'platform' | awk '{sub(/platform.:./,""); print}' | xargs`
    CONDA_OSXARM=false
    if [[ $CONDA_PLAT=="osx-arm64" ]]
    then
        CONDA_OSXARM=true
    fi

    # Find the channel URLs used for this conda install (must be conda-forge)
    CONDA_URLS=`conda info | grep 'channel URLs' | awk '{sub(/channel.URLs.:./,""); print}' | xargs`
    USING_CF=false
    if [[ $CONDA_URLS==*"conda-forge"* ]] && [[ $CONDA_URLS==*"osx-arm64"* ]]
    then 
        USING_CF=true
    fi


    # Check if MiniForge is used (required, as of right now)
    CONDA_TYPE=`conda info | grep 'base environment' | awk '{sub(/base.environment.:./,""); print}' | xargs`
    CONDA_MF=false
    if [[ $CONDA_TYPE == *"miniforge3"* ]]
    then
        CONDA_MF=true 
    fi

    echo -e "\nConda platform is osx-arm64 - $CONDA_OSXARM"
    echo "Conda URL is conda-forge for osx-arm64 - $USING_CF"
    echo "Conda install type is Miniforge - $CONDA_MF"
    
    # Check if the correct version of conda is installed. If not, install the correct one with permission
    if $CONDA_OSXARM && $USING_CF && $CONDA_MF
    then
        echo -e "\nWe're all good in the hood! Time to install the necessary softwares."
        setCondaBash
    else
        echo -e "\n\"Ruh Roh!\" - 🐶\n"
        echo -e "You have Conda installed but, we need to install the correct version of conda."

        read -p "Would you like to reinstall Conda? [y/n]:" yn

        case $yn in 
            [yY] ) uninstallConda;;
        esac

        # If no, then truck on and see if it'll work! I can't test this on my computer 😓

    fi
}

# Uninstall Conda, with permissions
function uninstallConda()
{
    accentMessage "Uninstalling Conda"

    # Do something
    setCondaBash
    conda install anaconda-clean
    anaconda-clean --yes
    installConda
}

# Sets up the Conda environment for this install
function setCondaEnv()
{
    echo "Would you like to set a new Conda environment? "
    read -p "(One is needed for the install. If 'no', we'll ask you which environment to use) [y/n]:" yn


    case $yn in 
        [yY] ) createNEWCondaEnv;;
            
        [nN] ) getEnvironmentName;;

        * ) echo -e "😹 You silly goose! You gotta choose either '${BLUE}y${NC}' or '${BLUE}N${NC}'!"
            setCondaEnv;;
    esac
}

# Setup a new Conda environment for the install
function createNEWCondaEnv()
{
    echo -n "Name your DFT conda environment: "
    read ans
    echo -e "\nYou named your cool new DFT conda environment: ${BLUE}$ans${NC}"
    createEnvironment $ans
}

function setCondaBash()
{
    accentMessage "Setting Conda Bash"

    # Get root prefix
    CONDA_ROOT=`conda config --show root_prefix | awk '{sub(/root_prefix:/,""); print}' | xargs`

    # Add on rest of path /etc/profile.d/conda.sh
    CONDA_SHELL_PATH="$CONDA_ROOT/etc/profile.d/conda.sh"

    # Set source to allow us to do cool things
    source $CONDA_SHELL_PATH

}

# Installs required modules in Conda
function installModules()
{
    accentMessage "Installing Python Modules"

    # Go back to home
    cd ~

    # Set up PIP for this environment
    conda install pip

    # Install Numpy dependencies
    pip install --no-binary :all: --no-use-pep517 cython
    pip install pybind11

    # Numpy
    pip install --no-binary :all: --no-use-pep517 numpy


    # Scipy
    pip install pythran
    pip install --no-binary :all: --no-use-pep517 scipy

    # Matplotlib
    pip install matplotlib

    # ASE
    pip install ase

    # Asap3, incase anyone needs it
    pip install asap3

    # Pytest
    pip install pytest

    # Run ASE TEST
    echo "Would you like to test the ASE install? "
    read -p "(It's highly recommended that you do) [y/n]:" yn

    case $yn in 
        [yY] ) ase test;;
    esac

    export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"
    export GPAW_CONFIG=~/.gpaw/siteconfig.py

    # GPAW
    pip install gpaw 

    # Output GPAW INFO
    gpaw info

    # Install GPAW Datasets
    gpaw install-data

    # Run GPAW TEST
    echo "Would you like to test the GPAW install? "
    read -p "(It's highly recommended that you do) [y/n]:" yn

    case $yn in 
        [yY] ) gpaw test;;
    esac

    echo -e "${YLW}If your test went well, then we're all done!${NC} 🥳🎊"
    echo -e "${YLW}Just activate your conda environment get to work!${NC}"
    echo -e "${YLW}If not, then tweet the error to me${NC} ${BLUE}🐦 @jpferrierjr${NC}"
}

# Uninstalls a single module if it exists
function uninstallModule()
{
    if conda list --quiet $1 | grep ".*${1}.*" >/dev/null 2>&1; then
        echo -e "$1 found in conda environment.\nUninstalling module $1"
        conda uninstall $1
    fi
}

# Uninstalls required modules in Conda
function uninstallModules()
{
    accentMessage "Uninstalling previously installed modules"

    # Go back to home
    cd ~

    moduleList=cython,pybind11,numpy,scipy,matplotlib,ase,pytest,gpaw
 
    # Use comma as separator and apply as pattern
    for val in ${moduleList//,/ }
    do
        uninstallModule $val
    done
}

# Gets the name of the Conda environment that the user wants to use
function getEnvironmentName()
{
    echo -n "What existing Conda environment do you want to use?: "
    read ans
    activateEnvironment $ans
}

# Builds conda environment for user
function createEnvironment()
{
    accentMessage "Creating Conda Environment"

    conda create --name $1 python=3.9

    activateEnvironment $1
}

# Activates a Conda environment for the install
function activateEnvironment()
{
    accentMessage "Activating Conda Environment ${BLUE}$1${NC}"
    conda activate $1
}

# Builds the GPAW Setup File
function createGPAWSETUPFile()
{
    accentMessage "Building GPAW setup file"

    # Go into directory
    # Check if GPAW directory exists
    DIR=~/.gpaw
    if [ -d "$DIR" ]; then
        echo "$DIR exists."
    else
        mkdir $DIR
    fi
    cd ~/.gpaw

    # Build Python file
    file="siteconfig.py"
    fileExist=false

    # Check if file exists. If so, delete it, as it could be wrong
    if [[ -f "$file" ]]; then

        echo "$file already exists."
        read -p "Would you like to replace this file? [y/n]:" yn

        case $yn in 
            [yY] ) buildGPAWSETUPFILE;;
        esac
    else 
        buildGPAWSETUPFILE
    fi
}

# Builds the actual python file
function buildGPAWSETUPFILE()
{

    cd ~/.gpaw
    file="siteconfig.py"

    if [[ -f "$file" ]]; then
        echo "Deleting file."
        rm $file
        echo "File deleted!"
    fi

    # FFTW - Fast Fourier Transforms :)
    FFTWP=`readlink -f $(brew --prefix fftw)`
    
    echo "# FFTW" > $file
    echo "fftw = True" >> $file
    echo "libraries = ['fftw3']" >> $file
    echo "library_dirs = ['${FFTWP}/lib']" >> $file 
    echo "include_dirs = ['${FFTWP}/include']" >> $file
    echo "" >> $file

    # Include OpenBLAS
    OPBP=`readlink -f $(brew --prefix openblas)`

    echo "# BLAS" >> $file
    echo "libraries += ['openblas']" >> $file 
    echo "library_dirs += ['${OPBP}/lib']" >> $file
    echo "include_dirs += ['${OPBP}/include']" >> $file
    echo "" >> $file

    # Include XC (important)
    XCP=`readlink -f $(brew --prefix libxc)`
    
    echo "# LibXC" >> $file
    echo "libraries += ['xc']" >> $file 
    echo "library_dirs += ['${XCP}/lib']" >> $file
    echo "include_dirs += ['${XCP}/include']" >> $file
    echo "" >> $file

    # Include Open-MPI
    OMPIP=`readlink -f $(brew --prefix open-mpi)`
    
    echo "# Open-MPI" >> $file
    echo "libraries += ['mpi']" >> $file
    echo "library_dirs += ['${OMPIP}/lib']" >> $file 
    echo "include_dirs += ['${OMPIP}/include']" >> $file
    echo "" >> $file

    # Include OpenMP. This may not actually be used but include it anyways
    OMPP=`readlink -f $(brew --prefix libomp)`
    
    echo "# OpenMP" >> $file
    echo "libraries += ['omp']" >> $file
    echo "library_dirs += ['${OMPP}/lib']" >> $file
    echo "include_dirs += ['${OMPP}/include']" >> $file
    echo "" >> $file
    
    # Shoot... let's try scalapack
    SCLP=`readlink -f $(brew --prefix scalapack)`
    
    echo "# Scalapack" >> $file
    echo "scalapack = True" >> $file
    echo "libraries += ['scalapack']" >> $file
    echo "library_dirs += ['${SCLP}/lib']" >> $file
    echo "" >> $file

    # Hell, let's just include the homebrew directory too for fun
    
    echo "# The rest, for good measure" >> $file
    echo "library_dirs += ['/opt/homebrew/lib']" >> $file 
    echo "include_dirs += ['/opt/homebrew/include']" >> $file

    # Close file
    cat $file

    if [[ -f "$file" ]]; then
        accentMessage "GPAW Setup File created!"

    else
        uhohMessage "GPAW Setup File Not created!"
    fi

    # Go back to home directory
    cd ~
}

############################################## MAIN #########################################################

# First things first. Let's make sure this script even applies to your computer!! Let's check the architecture
ARC=`arch`

if [[ $ARC=="arm64" ]]
then

    # Nice! You have an arm system
    accentMessage "ARM Architecture verified!"

    CPU=`sysctl -n machdep.cpu.brand_string`

    CPU_VERI=false

    # Let's check the CPU type to be sure!
    if [[ $CPU=="Apple M1 Max" ]]
    then
        echo -e "Dang! Big boss CPU! My guy has the M1 Max! 🤌"
        CPU_VERI=true

    elif [[ $CPU=="Apple M1 Ultra" ]]
    then 
        echo -e "🙌 Oh my lort! An Ultra!? This baby gonna fly!"
        CPU_VERI=true

    elif [[ $CPU=="Apple M1 Pro" ]]
    then

        echo "M1 Pro? Respectable. 😎"
        CPU_VERI=true

    elif [[ $CPU=="Apple M1" ]] || [[ $CPU=="Apple M2" ]]
    then

        echo "M1/M2 System. Nice! 🤓"
        CPU_VERI=true

    fi

    # Ok.. So, you have an Apple chip. Now what?
    if [[ $CPU_VERI==true ]]
    then

        # Start the install of the goods
        echo "It looks like we have all the right goods..."
        echo "Time to sit back, relax 💆🏻‍♀️💅, and let the script do it's work"
        echo -e  "\nLet's get started!"

        # First steps are taken from my guy Toma Susi: https://www.mostlyphysics.net/blog/2021/2/6/scientific-computing-on-an-apple-m1-system
        # While he has a nice blog post over this, it's outdated and some things needed to be changed to ensure that we're doing this correctly (or not so correctly. idk. I'm guessing here).
        # So the rest of these steps are loosely based on this blog post. If you like his stuff, follow him on Twitter as well at @MostlyPhysics

        # Check for xcode, as it's needed
        checkXCODE

        # OK! Let's check to see if Brew is installed cause we'll need this
        checkHomebrew

        # Check to see if Conda is installed
        checkforConda

        # Build Conda environment for this work
        setCondaEnv

        # Cool. Conda is taken care of... hopefully. Let's focus on our packages now.
        installBrews

        # Uninstall previously installed modules cause them bastards don't work. We gotta reinstall them
        uninstallModules

        # Build GPAW File for module install
        createGPAWSETUPFile

        # Install the modules the way we need them
        installModules
    
    else
        uhohMessage "Oof... Looks like you don't have the goods for this shell script. This is meant for ARM based Apple chips. :/"
        uhohMessage "It looks like you're rocking a $CPU CPU."
        uhohMessage "If this should work but it doesn't, tweet at me the issue and what CPU you have."

    fi

else

    uhohMessage "Uh oh! Your system doesn't show up as Apple Silicon. It's showing up as $ARC."
    uhohMessage "If it is Apple Silicon, try running this in iTerm. Standard MacOSX Terminal has this bug sometimes." 
fi 
