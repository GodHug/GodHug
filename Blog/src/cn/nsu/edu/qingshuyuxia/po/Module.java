package cn.nsu.edu.qingshuyuxia.po;

public class Module {
    
    private Integer id;

    private String mdname;

    private Integer parentmd;

    public void setParentmd(Integer parentmd) {
        this.parentmd = parentmd;
    }

    public Integer getParentmd() {
        return parentmd;
    }

    public Integer getId() {
        return id;
    }

    
    public void setId(Integer id) {
        this.id = id;
    }

    
    public String getMdname() {
        return mdname;
    }

    
    public void setMdname(String mdname) {
        this.mdname = mdname == null ? null : mdname.trim();
    }
}