using Gtk;

public class Editor : Window
{
    public Editor()
    {
        this.title = "Valapad";
        this.window_position = WindowPosition.CENTER;
        set_default_size(400, 300);
        
        this.editor = new TextView();
        this.editor.editable = true;
        this.editor.cursor_visible = true;
        
        add(this.editor);
        show_all();
    }
    
    public static int main(string[] args)
    {
        Gtk.init(ref args);
        var editor = new Editor();
        Gtk.main();
        return 0;
    }
    
    private TextView editor;
}
