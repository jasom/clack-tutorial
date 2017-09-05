========
Overview
========



A GitHub Pages import tool.

Warning
-------

This will **DESTROY** your ``gh-pages`` branch. If you love it, you'll want to
take backups before playing with this. This script assumes that `gh-pages` is
100% derivative. You should never edit files in your `gh-pages` branch by hand
if you're using this script because you will lose your work.


Installation
------------

::

    pip install ghp-import2

Usage
-----

    Usage: ghp-import [OPTIONS] DIRECTORY

    Options:
      -n          Include a .nojekyll file in the branch.
      -m MESG     The commit message to use on the target branch.
      -p          Push the branch to origin/{branch} after committing.
      -r REMOTE   The name of the remote to push to. [origin]
      -b BRANCH   Name of the branch to write to. [gh-pages]
      -h, --help  show this help message and exit

Its pretty simple. Inside your repository just run ``ghp-import $DOCS_DIR``
where ``$DOCS_DIR`` is the path to the **built** documentation. This will write a
commit to your ``gh-pages`` branch with the current documents in it.

If you specify ``-p`` it will also attempt to push the ``gh-pages`` branch to
GitHub. By default it'll just run ``git push origin gh-pages``. You can specify
a different remote using the ``-r`` flag.

You can specify a different branch with ``-b``. This is useful for user and
organization page, which are served from the ``master`` branch.

``ghp-import`` also recognizes the ``GIT_DIR`` environment variable which can be
useful for Git hooks.

License
-------

``ghp-import`` is distributed under the Tumbolia Public License. See the LICENSE
file for more information.


Changelog
=========

1.0.1 (2016-01-23)
------------------

* Fixed breakage on Python 3. Contributed by Chris Warrick in `#1 <https://github.com/ionelmc/python-ghp-import/pull/1>`_.

1.0.0 (2015-05-09)
------------------

* First release on PyPI.


