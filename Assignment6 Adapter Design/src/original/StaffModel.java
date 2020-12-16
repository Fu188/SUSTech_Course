package original;

public class StaffModel {
    private String name;
    private String title;
    private String email;
    private String room;
    private String link;

    public StaffModel() {
    }

    public StaffModel(String name, String title, String email, String room, String link) {
        this.name = name;
        this.title = title;
        this.email = email;
        this.room = room;
        this.link = link;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "original.StaffModel{" +
                "name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", email='" + email + '\'' +
                ", room='" + room + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
