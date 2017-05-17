.class public interface abstract Ljavax2/sip/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract addHeader(Ljavax2/sip/header/Header;)V
.end method

.method public abstract getExpires()Ljavax2/sip/header/ExpiresHeader;
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
.end method

.method public abstract getRawContent()[B
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V
.end method

.method public abstract setHeader(Ljavax2/sip/header/Header;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
