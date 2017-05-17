.class public interface abstract Lcom/sonymobile/jms/message/ImUserMessage;
.super Ljava/lang/Object;
.source "ImUserMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/message/ImUserMessage$Direction;,
        Lcom/sonymobile/jms/message/ImUserMessage$Status;
    }
.end annotation


# virtual methods
.method public abstract getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;
.end method

.method public abstract getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLocalTimestamp()J
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;
.end method

.method public abstract getSentTimestamp()J
.end method
