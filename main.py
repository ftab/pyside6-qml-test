from PySide6.QtCore import QObject, Signal, Slot
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
import sys

class PythonObject(QObject):

    @Slot(int)
    def clicked(self, index):
        print(f'Clicked {index}')


if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.quit.connect(app.quit)

    pythonObj = PythonObject()

    context = engine.rootContext()
    context.setContextProperty("pythonObj", pythonObj)

    engine.load("test.qml")

    sys.exit(app.exec())
