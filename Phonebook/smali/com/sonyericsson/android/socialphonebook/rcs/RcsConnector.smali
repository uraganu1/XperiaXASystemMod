.class public interface abstract Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
.super Ljava/lang/Object;
.source "RcsConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;
    }
.end annotation


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract extractCapableNumbers(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract requestCapabilitiesRefresh(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract requestCapabilitiesRefresh([Ljava/lang/String;)V
.end method
