package com.college.project;
import java.util.Date;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Faculty_Basic {
	
	
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;
 
    @Persistent
    private String id;
    
	@Persistent
    private String name;

	@Persistent
    private String spec;

    @Persistent
    private String email;
   
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
   
   public void setSpec(String spec)
   {
	   this.spec=spec;
   }
   public String getSpec()
   {
	   return spec;
   }
   
   public void setEmail(String email)
   {
	   this.email=email;
   }
   public String getEmail()
   {
	   return email;
   }

  
    
  
    

   
}