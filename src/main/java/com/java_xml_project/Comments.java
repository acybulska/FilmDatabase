package com.java_xml_project;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
        "comment"
})
public class Comments {

    @XmlElement(namespace = "https://www.w3schools.com")
    protected List<Comment> comment;

    public List<Comment> getComment() {
        if (comment == null) {
            comment = new ArrayList<>();
        }
        return this.comment;
    }
}
