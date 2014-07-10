Sassify Bash Script
===================

This script converts a CSS stylesheet file to a SASS file for the [Rails Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html). It converts all of the `url()` syntax to appropriate [SASS Rails](https://github.com/rails/sass-rails) helper pathing.  It will replace `url()` with `asset-url()`.  It also removes an old path, and replaces it with a new one.  So if your syntax says `url('images/minion.png')`, it can be converted to `asset-url('media/minion.png')`.  It does not affect your original file, but rather creates a duplicate file with the extension of `.css.scss`.

Usage
-----

To use the file, you need to download it and set its permissions to 755.  You can do this from the terminal using `sudo chmod 755 lib/sassify`.  You can now run the following command to sassify a file.

`./lib/sassify <substitute-path> <with-path> <css-file-path>`

Once it is complete, you will have a new file with the extension `.css.scss`.

Note
----

You do not need Ruby for this script.  The Gemfile is for the testing of the script.

Development
-----------

Questions or problems? Please post them on the [issue tracker](https://github.com/MissionalDigerati/sassify/issuess). You can contribute changes by forking the project and submitting a pull request.

This script is created by Johnathan Pulos and is under the [GNU General Public License v3](http://www.gnu.org/licenses/gpl-3.0-standalone.html).