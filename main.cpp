#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "stacking.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Stacking stacking;
    engine.rootContext()->setContextProperty("stacking", &stacking);
    engine.load(QUrl(QStringLiteral("qrc:/Login.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
