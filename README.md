# My recipe for a new neovim environment on a new machine

First install it:
```
sudo add-apt-repository ppa:neovim-ppa-stable
sudo apt-get update
sudo apt-get install neovim
```

Now we want to set up a separate Python or conda environment for neovim

```
conda create -n pyneovim python=3.6
conda create -n pyneovim2 python=2.7
source activate pyneovim
pip install neovim flake8 numpy pandas seaborn matplotlib jupyter-client
source deactivate pyneovim
source activate pyneovim2
pip install neovim flake8 numpy pandas seaborn matplotlib jupyter-client
source deactivate pyneovim2
```
