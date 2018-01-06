
package com.java_xml_project;

import javax.xml.bind.annotation.*;


@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "films"
})
@XmlRootElement(name = "root", namespace = "https://www.w3schools.com")
public class Root {

    @XmlElement(namespace = "https://www.w3schools.com", required = true)
    protected Films films;


    public Films getFilms() {
        return films;
    }

    public void setFilms(Films value) {
        this.films = value;
    }


}
