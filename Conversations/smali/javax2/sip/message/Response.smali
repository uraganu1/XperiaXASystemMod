.class public interface abstract Ljavax2/sip/message/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax2/sip/message/Message;


# virtual methods
.method public abstract getReasonPhrase()Ljava/lang/String;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract setReasonPhrase(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
