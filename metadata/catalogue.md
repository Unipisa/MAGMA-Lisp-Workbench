## SWHAPPE catalogue.md Template

Here we propose a template of catalogue<span>.md for SWHAPPE.

Each Item in the `raw_materials` and `additional_materials` folders of the Workbench should have a corresponding record in the `catalogue.md` with the structure below.

Please note that:
* Name and Surname of actors should be linked to their paragraph in [actors.md](./actors.md) file;
* Items should be linked to the file [inside the raw materials repository](./raw_matherials/) or [inside the additional materials repository](./additional_matherials/);
* The result of the command `tree -a raw_materials additional_materials ` has be copied in the [final part of the Catalogue](./catalogue.md#SW_NAME-Catalogue-Tree)  ;
* *Notes* are optional; they should contains `Additional materials.` for additional materials
* *Warehouse* is optional; it should be used only when a physical warehouse is in place to store physical materials from the *origin*.

Example of Actor link:
~~~
[Name Surname](./actors.md#name-surname)
~~~
Example of Item links:
~~~
[Item Name](./raw_materials/example_file.zip)
[Additional Materials Item Name](./additional_materials/example.ppt)
~~~


# SW_NAME Catalogue


* **[Item Name](./raw_materials/example_file.zip)**
  * *Origin:* 
  * *Warehouse:* 
  * *Authors:* [Name Surname](./actors.md#name-surname)
  * *Collectors:* [Name Surname](./actors.md#name-surname)
  * *Description:* 
  * *Notes:* 
  
* **[Additional Material Item Name](./additional_materials/example.ppt)**
  * *Origin:* 
  * *Authors:* [Name Surname](./actors.md#name-surname)
  * *Collectors:* [Name Surname](./actors.md#name-surname)
  * *Description:* 
  * *Notes:* Additional materials;

# SW_NAME Catalogue Tree


COpy here the result of the command `tree -a raw_materials additional_materials`.
