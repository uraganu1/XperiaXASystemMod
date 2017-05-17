.class public interface abstract Ljavax2/sip/ListeningPoint;
.super Ljava/lang/Object;
.source "ListeningPoint.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract getIPAddress()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract sendHeartbeat(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopPingKeepaliveTask(Ljava/lang/String;I)V
.end method
