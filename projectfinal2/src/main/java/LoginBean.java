

import java.io.Serializable;

public class LoginBean implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1 ;
    private String uname;
    private String password;

    public String getUsername() {
        return uname;
    }

    public void setUsername(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}