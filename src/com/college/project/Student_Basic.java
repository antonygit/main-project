package com.college.project;
import java.util.Date;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Student_Basic{
	
	
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;
 
    @Persistent
    private String id;
    
	@Persistent
    private String name;

    @Persistent
    private String email;
    
    @Persistent
    private String title;
   
    @Persistent
    private String domain;
    
    @Persistent
    private String abs;
    
    @Persistent
    private String guide;
    
    
    public void setId(String id)
    {
 	   this.id=id;
    }
    public String getId()
    {
 	   return id;
    }
     
   public void setName(String name)
   {
	   this.name=name;
   }
   public String getName()
   {
	   return name;
   }
   
   public void setEmail(String email)
   {
	   this.email=email;
   }
   public String getEmail()
   {
	   return email;
   }
   
   public void setTitle(String title)
   {
	   this.title=title;
   }
   public String getTitle()
   {
	   return title;
   }

   public void setDomain(String domain)
   {
	   this.domain=domain;
   }
   public String getDomain()
   {
	   return domain;
   }
   
   public void setAbstract(String abs)
   {
	   this.abs=abs;
   }
   public String getAbstract()
   {
	   return abs;
   }
    
   public void setGuide(String guide)
   {
	   this.guide=guide;
   }
   public String getGuide()
   {
	   return guide;
   }
  
    
  
    

   
}