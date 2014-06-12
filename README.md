BigML AS3 Bindings
======================

[BigML](https://bigml.com) makes machine learning easy by taking care
of the details required to add data-driven decisions and predictive
power to your company. Unlike other machine learning services, BigML
creates
[beautiful predictive models](https://bigml.com/gallery/models) that
can be easily understood and interacted with.

These BigML Node.js bindings allow you to interact with BigML.io, the API
for BigML. You can use it to easily create, retrieve, list, update, and
delete BigML resources (i.e., sources, datasets, models and
predictions).

This module is licensed under the [Apache License, Version
2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

Support
-------

Please report problems and bugs to our [BigML.io issue
tracker](https://github.com/bigmlcom/io/issues).

Discussions about the different bindings take place in the general
[BigML mailing list](http://groups.google.com/group/bigml). Or join us
in our [Campfire chatroom](https://bigmlinc.campfirenow.com/f20a0).

Requirements
------------

AS3 is currently supported by these bindings.


Installation
------------


Testing
-------



Importing the modules
---------------------


this will give you access to the following library structure:

    - bigml.constants       common constants
    - bigml.BigML           connection object
    - bigml.Resource        common API methods
    - bigml.Source          Source API methods
    - bigml.Dataset         Dataset API methods
    - bigml.Model           Model API methods
    - bigml.Ensemble        Ensemble API methods
    - bigml.Prediction      Prediction API methods
    - bigml.Evaluation      Evaluation API methods
    - bigml.LocalModel      Model for local predictions
    - bigml.LocalEnsemble   Ensemble for local predictions


Authentication
--------------

All the requests to BigML.io must be authenticated using your username
and [API key](https://bigml.com/account/apikey) and are always
transmitted over HTTPS.

This module will look for your username and API key in the environment
variables `BIGML_USERNAME` and `BIGML_API_KEY` respectively. You can 
add the following lines to your `.bashrc` or `.bash_profile` to set
those variables automatically when you log in::

    export BIGML_USERNAME=myusername
    export BIGML_API_KEY=ae579e7e53fb9abd646a6ff8aa99d4afe83ac291

With that environment set up, connecting to BigML is a breeze::

    connection = new bigml.BigML();

Otherwise, you can initialize directly when instantiating the BigML
class as follows::

    connection = new bigml.BigML('myusername',
                                 'ae579e7e53fb9abd646a6ff8aa99d4afe83ac291')

Also, you can initialize the library to work in the Sandbox environment by
setting the third parameter `devMode` to `true`::

    connection = new bigml.BigML('myusername',
                                 'ae579e7e53fb9abd646a6ff8aa99d4afe83ac291',
                                 true)

Quick Start
-----------


Additional Information
----------------------


How to Contribute
-----------------

Please follow these steps:

  1. Fork the project on github.com.
  2. Create a new branch.
  3. Commit changes to the new branch.
  4. Send a [pull request](https://github.com/yangboz/bigml-as3/pulls).


For details on the underlying API, see the
[BigML API documentation](https://bigml.com/developers).
