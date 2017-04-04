### Best django project structure
#### standards:
[Django-skel](http://django-skel.readthedocs.io/en/latest/)
```
~/projects/project_name/

docs/               # documentation
scripts/
  manage.py         # installed to PATH via setup.py
project_name/       # project dir (the one which django-admin.py creates)
  apps/             # project-specific applications
    accounts/       # most frequent app, with custom user model
    __init__.py
    ...
  settings/         # settings for different environments, see below
    __init__.py
    production.py
    development.py
    ...

  __init__.py       # contains project version
  urls.py
  wsgi.py
static/             # site-specific static files
templates/          # site-specific templates
tests/              # site-specific tests (mostly in-browser ones)
tmp/                # excluded from git
setup.py
requirements.txt
requirements_dev.txt
pytest.ini
...
```

#### Settings

The main settings are production ones. Other files (eg. staging.py, development.py) simply import everything from production.py and override only necessary variables.

For each environment, there are separate settings files, eg. production, development. I some projects I have also testing (for test runner), staging (as a check before final deploy) and heroku (for deploying to heroku) settings.

#### Requirements

I rather specify requirements in setup.py directly. Only those required for development/test environment I have in requirements_dev.txt.

Some services (eg. heroku) requires to have requirements.txt in root directory.

setup.py

Useful when deploying project using setuptools. It adds manage.py to PATH, so I can run manage.py directly (anywhere).

#### Project-specific apps

I used to put these apps into project_name/apps/ directory and import them using relative imports.

```
Templates/static/locale/tests files
```

I put these templates and static files into global templates/static directory, not inside each app. These files are usually edited by people, who doesn't care about project code structure or python at all. If you are full-stack developer working alone or in a small team, you can create per-app templates/static directory. It's really just a matter of taste.

The same applies for locale, although sometimes it's convenient to create separate locale directory.

Tests are usually better to place inside each app, but usually there is many integration/functional tests which tests more apps working together, so global tests directory does make sense.

#### Tmp directory

There is temporary directory in project root, excluded from VCS. It's used to store media/static files and sqlite database during development. Everything in tmp could be deleted anytime without any problems.

#### Virtualenv

I prefer virtualenvwrapper and place all venvs into ~/.venvs directory, but you could place it inside tmp/ to keep it together.

Project template

I've created project template for this setup, django-start-template

#### Deployment

Deployment of this project is following:

```
source $VENV/bin/activate
export DJANGO_SETTINGS_MODULE=project_name.settings.production
git pull
pip install -r requirements.txt
```
#### Update database, static files, locales
```
manage.py syncdb  --noinput
manage.py migrate
manage.py collectstatic --noinput
manage.py makemessages -a
manage.py compilemessages
```

#### restart wsgi
```
touch project_name/wsgi.py
```

You can use rsync instead of git, but still you need to run batch of commands to update your environment.

Recently, I made [django-deploy][2] app, which allows me to run single management command to update environment, but I've used it for one project only and I'm still experimenting with it.

Sketches and drafts

Draft of templates I place inside global templates/ directory. I guess one can create folder sketches/ in project root, but haven't used it yet.

#### Pluggable application

These apps are usually prepared to publish as open-source. I've taken example below from django-forme

```~/projects/django-app/

docs/
app/
tests/
example_project/
LICENCE
MANIFEST.in
README.md
setup.py
pytest.ini
tox.ini
.travis.yml
...```

Name of directories is clear (I hope). I put test files outside app directory, but it really doesn't matter. It is important to provide README and setup.py, so package is easily installed through pip.
