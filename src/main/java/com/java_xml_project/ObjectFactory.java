
package com.java_xml_project;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.company package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.company
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Root }
     * 
     */
    public Root createRoot() {
        return new Root();
    }

    /**
     * Create an instance of {@link Films }
     * 
     */
    public Films createRootFilms() {
        return new Films();
    }

    /**
     * Create an instance of {@link Film }
     * 
     */
    public Film createRootFilmsFilm() {
        return new Film();
    }

    /**
     * Create an instance of {@link Comments }
     * 
     */
    public Comments createRootFilmsFilmComments() {
        return new Comments();
    }

    /**
     * Create an instance of {@link Comment }
     * 
     */
    public Comment createRootFilmsFilmCommentsComment() {
        return new Comment();
    }

}
