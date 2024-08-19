from flet import (
    Control,
    Column,
    Container,
    IconButton,
    Page,
    Row,
    Text,
    IconButton,
    colors,
    MainAxisAlignment,
    CrossAxisAlignment,
    icons,
)

from app.ui.Sidebar import Sidebar
 
class AppLayout(Row):
    def __init__(
        self,
        app,
        page: Page,
        *args,
        **kwargs
    ):
        super().__init__(*args, **kwargs)
        self.app = app
        self.page = page
        self.toggle_nav_rail_button = IconButton(
            icon=icons.ARROW_CIRCLE_LEFT, icon_color=colors.BLUE_GREY_400, selected=False,
            selected_icon=icons.ARROW_CIRCLE_RIGHT, on_click=self.toggle_nav_rail)
        self.sidebar = Sidebar(self, page)
        self._active_view: Control = Column(controls=[
            Text("Active View")
        ], alignment=MainAxisAlignment.CENTER, horizontal_alignment=CrossAxisAlignment.CENTER)
        self.controls = [self.sidebar,
                         self.toggle_nav_rail_button, self.active_view]
 
    @property
    def active_view(self):
        return self._active_view
 
    @active_view.setter
    def active_view(self, view):
        self._active_view = view
        self.update()
 
    def toggle_nav_rail(self, e):
        self.sidebar.visible = not self.sidebar.visible
        self.toggle_nav_rail_button.selected = not self.toggle_nav_rail_button.selected
        self.page.update()