// XML data
// An example of importing and extracting data from an XML document. 
// The sample XML file is located in the sketch's 'data' folder. 

// Load the XML document
// get all the items in the root of the xml - everything inside client_list.
XML xml = loadXML ("clients.xml"); 

// Get a list of ALL the people 
XML [ ] listOfPeople  = xml.getChildren ("person"); 
println (listOfPeople);


// get xml elements of the first person in document
XML name = listOfPeople[0].getChild ("name"); 
XML age = listOfPeople [0].getChild ("age");  

println (name);
println (age);

// get the content of the name and age elements 
String nameContent = name.getContent ( ); 
String ageContent =  age.getContent ( );

println ("name:" + nameContent + " " + "age: " + ageContent);
