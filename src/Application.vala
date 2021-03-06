/*
* Copyright (c) 2018 Vincent Guibert
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Vincent Guibert <vincentguibert@hotmail.fr>
*/

public class MyApp : Gtk.Application {

    public MyApp() {
        Object(
            application_id: "com.github.guibertvincent.hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow(this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = _("Hello Again");
        
        var label = new Gtk.Label(_("Hello Again World!"));
        label.margin = 12;
        
        main_window.add(label);
        main_window.show_all();
    }
    
    public static int main(string[] args) {
        var app = new MyApp();
        return app.run(args);
    }
    
}
