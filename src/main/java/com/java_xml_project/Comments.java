package com.java_xml_project;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
        "comment"
})
public class Comments {

    @XmlElement(namespace = "https://www.w3schools.com")
    public List<Comment> comment;

    public List<Comment> getComment() {
        if (comment == null) {
            comment = new ArrayList<>();
        }
        return this.comment;
    }

    public void addComment(Comment comment) {
        int max = 0;
        for (Comment m: this.comment) {
            if (m.id > max)
                max = m.id;
        }
        comment.id = max + 1;
        this.comment.add(comment);
    }
}
