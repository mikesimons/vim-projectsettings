# vim-projectsettings

Project settings is a super simple vim plugin that will search for project vimrc files.

It will traverse upwards from the directory of the edited file looking for a .project_vimrc file

The name of this file can be changed by adding the following line to your .vimrc somewhere:

    set g:project_vimrc_file = ".some_other_filename"

Take note that your vimrc will get reloaded every time a buffer change is made so if you have a lot of plugins this may introduce extra delay switching files.

In reality this means that settings manually changed in your session may change when you do not expect them to but it has not thus far been an issue for me.
