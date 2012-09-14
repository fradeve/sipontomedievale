<!--
TODO: integrate following install instructions

* estrarre ark in /var/www
* creare nuovo database utf8_unicode_ci, nome "ark"
* importare ark.sql in questo
* importare ark_su.sql disattivando l'autoincrement
* assicurarsi che l'utente relativo ad $sql_server in ark/config/env_settings.php abbia pieni permessi (privileges)

-->

This post is intended to be a summary of the minimal things to know about [Ark][5]; it is not exhaustive: read it like a collection of tips and practical issues about using Ark. Please refer to the [official wiki][6] for an enhanced knowledge-base.

## What kind of data can Ark manage? ##

Ark db can manage the following kind of data:

* context
* architectonic element
* object
* coin
* site photo
* plan
* geophoto

plus the geodata (shapefiles)

Each one of these corresponds to a module in the Ark system:

* `mod_ael` (architectonic element)
* `mod_cns` (coin)
* `mod_cxt` (context)
* `mod_gph` (geophoto)
* `mod_pln` (plan)
* `mod_spf` (special finds/object)
* `mod_sph` (site photo)

Ark has also a module to manage an address book, `mod_abk`. The core module (the only essential) is `mod_cor`.

## How is Ark db structured? ##

Before trying to import anything, it is better to understand how Ark db works. In version 1.0 it consists of 65 tables by default (some more tables will be added during the import phase).

When approaching to a new data structure, the most absorbing way is to dig directly in the database structure. E.g., an archaeologist should be interested, in first instance, in the table containing the records of contexts (or stratification units, depending on the sample db imported during installation); in Ark, such table is `cxt_tbl_cxt`. The following image shows this table in a non-empty Ark installation:

[img of single cxt_tbl_cxt table]

Most archaeologists will be disappointed; a question arises: where are all the fields an SCR consists of? The table is really essential, since Ark refers to external tables to handle the data from a single SCR. The key concept in Ark db is the "post-it" structure: around a single _item_ (in this case, the SCR record), we can put as many or as few _fragments_ of data necessary to describe it. E.g., to the record in the image, we can tie a description, an interpretation, a color and some evaluations about the stratigraphic reliability. All those data are _fragments_ of text, contained in a single table, `cor_tbl_txt`.

The next interesting question could be: if all the field describing a single SCR are contained in the same table, how can be they distinguished and keep organized? The fragments of data are organized using a `txttype` parameter: a definition is a type 28, description is type 34, colour is type 5, and so on. Those values are tied to the fragments of text using the _txttype_ column of `cor_tbl_txt`.

So, to sum up: the SCR table has very small informations, referring to the "fragments of texts" table for all the fields values, whose nature is defined here by a number also listed in a table of the "type of text fragments". This way to proceed defines a (potentially infinite) "chain" of data, like:

    cxt_tbl_cxt <-- cor_tbl_txt <-- cor_lut_txttype

Values in `cor_tbl_txt` are tied to the SCR record in `cxt_tbl_cxt` using the same SCR code, for example `ARK_22`. This code is commonly composed adding to a site code (_ARK_) a progressive number or, most useful, an SCR number (_22_). This means that Ark can handle data from various sites, simply changing the site code, used as a connector among the SCR record and all the data fragments. In other words, the SCR code is the unique record identifier for the SCR.

## What about the other modules? ##

There is a better way to call the "SCR code": _itemkey_. The itemkey, as reported above, is the unique identifier for a record, and it is accompanied by an `itemvalue`: this couple allows to identify any fragment and tie it directly to the correct record, in any module. E.g., if we have the text of a description field (`txttype=34`) in the table of data fragments (`cor_tbl_txt`), in it's record we will find also an `itemkey=cxt_cd` and an `itemvalue=ARK_22`. This is a way to say that this text refers to the SCR `ARK_22` of the module of context records.

In the same way, we have a single and unique `itemkey:itemvalue` couple in the same module. So said, an entry in our address book can probably have an itemvalue `ARK_22` (because it contains data of a person working on the same excavation project), but obviously it's itemkey will be `abk_cd`, because it is an entry in the address book module.

## What does _tbl_, _lut_ stand for? ##

In a such multi-purposed database, not all the tables can contain the same kind of data. As we have seen, some tables _do_ contain data (think about the SCR records in `cxt_tbl_cxt` or the text fragments in `cor_tbl_txt`), while some others tables are used to manage typologies, or in other words, informations about the _kind_ of data more than data itself (`cor_lut_txttype` contains the allowed values for text fragments, `col_lut_datetype` lists all allowed kind of attributes for dates). These tables are called _lookup tables_, `_lut_`.

## Walk trough your first import ##

As explained on the dedicated page on [Ark wiki][0], the import process is available since v. 1.0. This is a quick and dirty guide to import, and it assumes you have performed a successful installation and imported one of the [two available database][1] structures, in a database named `ark`. This guide is not intended to be complete, and you should refer to the Ark wiki for the latest developments on that topic.

### Insert the missing tables ###

In Ark v. 1.0 some fields are missing in the table `ark.cor_tbl_cmap_structure`; you have to manually insert the following columns; the parameters have been tested trivially.

    --------- Field		Type		Collation		Null	Default
    raw_stecd_tbl		varchar(255)	latin1_swedish_ci	No	None		 	 	 	 	 	 	 
    raw_stecd_col		varchar(255)	latin1_swedish_ci	No	None		 	 	 	 	 	 	 
    raw_stecd_join_col	        varchar(255)	latin1_swedish_ci	No	None		 	 	 	 	 	 	 
    tbl_stecd_join_col	        varchar(255)	latin1_swedish_ci	No	None

### Import the table ###

The best way to import your records in Ark is to export them to a CSV. On an GNU/Linux and MS Windows operating system it can be done using [Kexi][2], which has a great support for mdb databases. Once exported, the CSV can be imported in a new table of the `ark` database using the plain simple import tool in [PHPMyAdmin][3], a great database management tool which is good to have installed on the Ark machine.

* from the Import tab select the CSV file; before pressing "Go" be sure to set the correct parameter in "Fields terminated by"
* after the import you will get a confirm message containing some links to edit the options for the new table; rename the new table to any name starting with `import_`, so that Ark will know that we want to import that table
* from the table list in the left panel check the table name; in this example, we will have `import_test`
* using the "Structure" tab, edit the column names: they must not contain spaces and must be significant

### Analyze your data ###

To fit the Ark structure, it is better to do some pre-processing on the data. Because of the limited functions of PHPMyAdmin, this can be done quicker using some spreadsheet editors, like [LibreOffice Calc][4], exporting the resulting spreadsheet in a CSV ad importing it again as explained above. In this guide we will walk trough the import of a series of SCR, but you can virtually import everything that could be managed by one of the Ark modules. What is absolutely needed in a CSV to be imported? The only is __uid__: every record must have an unique identifier, which could be either a progressive number or the SCR number itself; this is used by the script to run along the lines ad import data. Other considerations about data structure in the CSV:

* __site__: as described above, the itemvalue is formed of a site code plus a uid; could be useful to use a per-site site code, which can be a column in the CSV; e.g. for the "Siponto" site, we have a column named `site_cd` filled with the value "SIP"; the generated itemvalue will be "SIP" plus the SCR number: `SIP_128`, `SIP_129`, etc.
* __multiple data__: some fields does not support multiple values, be careful during imports

### Map your fields ###

After importing the CSV, the Ark "Import" tab can be selected. First we have to create a Concordance Map (CMAP): it is useful when importing multiple CSV with different data structure, so we can define a different set of import rules per-CSV, using different CMAPs and structure maps. So said, create a new CMAP and fill it with the details relative to the CSV you want to import; most important are the _Source DB_ list (select the db in which `import_test` is) and the _(target) Site Code_ (remember what we have said before about site codes). A quick tip: in the site code drop-down list only a default value will be showed (`ARK`). This value can be modified before the import on a per-field basis, but if you want to have an user-defined default Site Code for all the fields during this import, can insert a new record in the `cor_tbl_ste` table; mine is: `SIP | Site code for the Siponto site | 1 | 2012-04-22 00:00:00`.

Now that we have saved the CMAP, we can create a new Structure Map. Select the CMAP from the drop-down list on the upper part of the page, select the import table from the list on the right part of the page, and have fun. Bearing in mind what we have said before about the Ark db structure, in the Structure Map we have to tie every column in our `import_test` table to the Ark db.

1.	__create the SCR records__: it is the fundamental part of every archaeological record; in Ark we have the possibility to import the others fields before the SCRs, but they will not visible using the "record view" function, because they will not be tied to any SCR; thus said, the function used to create the SCR records is `Itemkey`, and it must be applied to the "UID" field of the table to import: running along the UIDs, the import script will generate the Itemkeys that will represent every single SCR.

	The next question regards the site code (the user has the possibility to choose a fixed default value -- see above -- or import one from a column in `ark.import_test`).

	Finally the user can proceed with the selection of the "UID" column and the module in which the Itemkey will be created (remember what we said about unique Itemkeys in modules): obviously in this case `cxt_cd` will be selected, since we are creating new SCRs rather than a new items in address book or coins.

2.	__run a test import__: selecting the "test" button near the just mapped field name, Ark has the ability to run a dry import, showing a table describing how the values will be mapped and imported; this check is fundamental, since undoing an incorrectly specified import will require use of the phpMyAdmin tool and will require knowledge of SQL.

3.	__map the next field__: now that we have mapped the SCRs, as an example, we will try to map a common attribute in an SCR: the excavation date. Assuming that the year value for each SCR is contained in the `ark.import_test.year` column, the homonymous field will be listed in the Structure Map. Edit the field, select `Date` from the drop-down list.

	User will be asked to select the table that has the column containing the "raw item val"; in the example, the column is `year` right in the `ark.import_test` table, but in another case it could be in another table (e.g. `ark.import_attribute.year`). Selecting "This table" user will satisfy the import script's needs, but if the information is contained in another table, in the next passage he will be asked to write the table and column name.

	As usual, user have to define the site code.

	In the final step, user will select the same options seen above, plus the "raw_itemval_col" containing the value that will be imported in this field (usually the `ark.import_test.year` column itself) and the "Date type". Please notice that the values in the "Date type" drop-down list can be found and modified editing the `ark.cor_lut_datetype` lookup table and accordingly defining a name for that in the `cor_tbl_alias` table (remember to set here the `itemkey` and `itemvalue` values for the new record, based on the `cor_lut_datetype.id` value).

	Done! User can run a dry test.

	*Be careful*: before proceeding with the next step, it is better to make a database backup as reported in the next section.

4.	__import data__: the real final step; from the menu on the left select "Extraction Test and Import"; the list of the mapped fields in the Structure Map will be show on the right part of the page, and clicking on one of these will show the table we have seen during the dry import test. On the bottom of this page the "RUN LIVE ADD" button will do the import.

### Make backups! ###

As usually happens when using a new software, no one expects that things will run just fine during the first attempt. So, a tip: make a backup of your Ark database. If data will be incorrectly imported, turning back to a previous state of the database is nearly impossible. Most servers have so much space that a database backup is a quite simple thing. Let's see how this can be done.

0.	in PHPMyAdmin select the `ark` database
0.	select the "Operations" tab and write down a new name in the "Copy database to:" field (e.g., `arkgood` will be fine); the following options must be selected: "Structure and data", "CREATE DATABASE before copying" and `Add AUTO_INCREMENT value`; press __Go__
0.	to recover the "good" database after a wrong import, simply delete the messed up database (`ark`) and make a new copy of the `arkgood` database named `ark`: reload Ark in the browser and you will get a new Ark instance "frozen" as before the import (and can have fun with imports again!)

   [0]: http://ark.lparchaeology.com/wiki/index.php/Importing_Data
   [1]: http://ark.lparchaeology.com/download/demos
   [2]: http://kexi-project.org/
   [3]: http://www.phpmyadmin.net
   [4]: https://www.libreoffice.org/
   [5]: http://ark.lparchaeology.com
   [6]: http://ark.lparchaeology.com/wiki/
