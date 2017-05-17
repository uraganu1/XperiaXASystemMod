.class public interface abstract Ljavax2/sip/header/ViaHeader;
.super Ljava/lang/Object;
.source "ViaHeader.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getTransport()Ljava/lang/String;
.end method

.method public abstract setBranch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setRPort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setTransport(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
