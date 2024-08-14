# Checkout submodule branches
| Submodule                   | Path                                    | branch | url                                                     |
|-----------------------------|-----------------------------------------|--------|---------------------------------------------------------|
| SIBR_viewers                | /SIBR_viewers                           | custom | https://github.com/lionelpa/SIBR_viewers                |
| diff-gaussian-rasterization | /submodules/diff-gaussian-rasterization | custom | https://github.com/lionelpa/diff-gaussian-rasterization |
| simple-knn                  | /submodules/simple-knn                  | custom | https://github.com/lionelpa/simple-knn                  |

Simply run this to check out the branch `custom` on all submodules:
```bash
./checkout_submodule_branches.sh
```