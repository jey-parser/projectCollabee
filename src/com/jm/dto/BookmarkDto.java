package com.jm.dto;

public class BookmarkDto {
	
	private int bookmark_id;
	
	private String kanban_icon_p;
	private String title;
	private int document_id;
	private int workspace_id;
	private String workspace_name;
	private String name;
	
	public BookmarkDto() { }

	public BookmarkDto(int bookmark_id, String kanban_icon_p, String title, int document_id, int workspace_id,
			String workspace_name, String name) {
		super();
		this.bookmark_id = bookmark_id;
		this.kanban_icon_p = kanban_icon_p;
		this.title = title;
		this.document_id = document_id;
		this.workspace_id = workspace_id;
		this.workspace_name = workspace_name;
		this.name = name;
	}


	public int getBookmark_id() {
		return bookmark_id;
	}

	public void setBookmark_id(int bookmark_id) {
		this.bookmark_id = bookmark_id;
	}

	public String getKanban_icon_p() {
		return kanban_icon_p;
	}

	public void setKanban_icon_p(String kanban_icon_p) {
		this.kanban_icon_p = kanban_icon_p;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public int getDocument_id() {
		return document_id;
	}

	public void setDocument_id(int document_id) {
		this.document_id = document_id;
	}

	public int getWorkspace_id() {
		return workspace_id;
	}

	public void setWorkspace_id(int workspace_id) {
		this.workspace_id = workspace_id;
	}

	public String getWorkspace_name() {
		return workspace_name;
	}

	public void setWorkspace_name(String workspace_name) {
		this.workspace_name = workspace_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
