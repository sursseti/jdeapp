# import flet
# from flet import (
#     Page,
#     AppView,
#     colors
# )

# from app.ui.JdeApp import JdeApp
 
# if __name__ == "__main__":
 
#     def main(page: Page):
 
#         page.title = "JDE app"
#         page.padding = 0
#         page.bgcolor = colors.AMBER_400
#         app = JdeApp(page)
#         page.add(app)
#         page.update()
 
#     flet.app(target=main, view=AppView.WEB_BROWSER)

import flet as ft

def main(page: ft.Page):
    page.add(ft.Text(value="Hello, world!"))

ft.app(target=main)