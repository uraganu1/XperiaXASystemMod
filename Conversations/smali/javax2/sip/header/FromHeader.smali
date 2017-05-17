.class public interface abstract Ljavax2/sip/header/FromHeader;
.super Ljava/lang/Object;
.source "FromHeader.java"

# interfaces
.implements Ljavax2/sip/header/HeaderAddress;
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract setTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
