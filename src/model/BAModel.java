package model;

import java.io.InputStream;

public class BAModel 
{
	private String university,course,subject,topic;
	private InputStream syllabus,notes,videos,books,quespaper;

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}
    public void setSyllabus(InputStream syllabus) {
		this.syllabus = syllabus;
	}

	public InputStream getSyllabus() {
		return syllabus;
	}

	public InputStream getNotes() {
		return notes;
	}

	public void setNotes(InputStream notes) {
		this.notes = notes;
	}

	public InputStream getVideos() {
		return videos;
	}

	public void setVideos(InputStream videos) {
		this.videos = videos;
	}

	public InputStream getBooks() {
		return books;
	}

	public void setBooks(InputStream books) {
		this.books = books;
	}

	public InputStream getQuespaper() {
		return quespaper;
	}

	public void setQuespaper(InputStream quespaper) {
		this.quespaper = quespaper;
	}
	
	
	

}
