.class public interface abstract Ljavax2/sip/header/AllowHeader;
.super Ljava/lang/Object;
.source "AllowHeader.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# virtual methods
.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
