#ifndef STACKING_H
#define STACKING_H

#include <QObject>

class Stacking : public QObject
{
    Q_OBJECT
public:
    explicit Stacking(QObject *parent = nullptr);

signals:

public slots:
    void signalStack(const QString &text);
};

#endif // STACKING_H
