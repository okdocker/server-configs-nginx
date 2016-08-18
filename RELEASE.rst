How to release
==============

.. code-block:: bash

    git semver --next-patch > version.txt
    git add version.txt
    git commit -m 'release '`cat version.txt`
    git tag -am `cat version.txt` `cat version.txt`
    git push origin master --tags

    make release push

