package br.com.dkblog.dto;

import java.util.Date;

public class ArchiveCountDTO {

    private long count;

    private Date date;

    public ArchiveCountDTO(Date date, long count){
        this.count = count;
        this.date = date;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
