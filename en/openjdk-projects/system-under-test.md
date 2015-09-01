##Java code used for the Test

`


    class PermissionKey {

        private String status;
        private String reason;


        public PermissionKey(String status, String reason) {
            this.status = status;
            this.reason = reason;
        }

        @Override public boolean equals(Object o) {
            if (o == this)
                return true;
            if (!(o instanceof PermissionKey))
                return false;
            PermissionKey pn = (PermissionKey)o;
            return pn.status == status
                    && pn.reason == reason;
        }

        @Override  public int hashCode(){
            int result = 17;
            result = 31 * result + ( status.hashCode() + reason.hashCode() );
            return result;
        }

        public String toString(){
            StringBuffer sb = new StringBuffer();
            sb.append( "[" + status + "][" + reason + "]");
            return sb.toString();
        }
      }

    class Permissions{

        private final String  PERMISSION = "PERMISSION";

        public String toString(){
            return PERMISSION;
        }

    }


`
