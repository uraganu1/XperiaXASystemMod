.class public interface abstract Lcom/sonymobile/conversations/transaction/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# virtual methods
.method public abstract prepareForSendMessage()Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method
