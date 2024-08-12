import flet as ft

def main(page: ft.Page):
    page.title = "Моё Flet приложение"
    page.add(ft.Text(value="Привет, Flet!"))

ft.app(target=main)