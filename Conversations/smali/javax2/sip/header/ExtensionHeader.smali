.class public interface abstract Ljavax2/sip/header/ExtensionHeader;
.super Ljava/lang/Object;
.source "ExtensionHeader.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# virtual methods
.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
