.class public Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;
.super Lcom/sonyericsson/conversations/notifications/ImFileNotification;
.source "ImFileMessageFailNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 7
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J
    .param p5, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 33
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 34
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;->mStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 32
    return-void
.end method
