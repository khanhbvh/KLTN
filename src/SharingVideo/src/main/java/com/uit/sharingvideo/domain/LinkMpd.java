package com.uit.sharingvideo.domain;

import java.io.Serializable;
import java.util.List;

public class LinkMpd implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String linkmpdForEgle;
	private String linkmpdChrFfIe;
	private List<LinkMpd> listLink;
	
	public String getLinkmpdForEgle() {
		return linkmpdForEgle;
	}
	public void setLinkmpdForEgle(String linkmpdForEgle) {
		this.linkmpdForEgle = linkmpdForEgle;
	}
	public String getLinkmpdChrFfIe() {
		return linkmpdChrFfIe;
	}
	public void setLinkmpdChrFfIe(String linkmpdChrFfIe) {
		this.linkmpdChrFfIe = linkmpdChrFfIe;
	}
	public List<LinkMpd> getListLink() {
		return listLink;
	}
	public void setListLink(List<LinkMpd> listLink) {
		this.listLink = listLink;
	}
	
	
}
