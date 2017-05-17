.class public Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;
.super Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;
.source "ImGroupInvitationNotification.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/ImNotification;
.implements Lcom/sonymobile/jms/message/ImMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;-><init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 20
    return-void
.end method
