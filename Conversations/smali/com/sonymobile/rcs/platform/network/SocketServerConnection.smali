.class public interface abstract Lcom/sonymobile/rcs/platform/network/SocketServerConnection;
.super Ljava/lang/Object;
.source "SocketServerConnection.java"


# virtual methods
.method public abstract acceptConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
