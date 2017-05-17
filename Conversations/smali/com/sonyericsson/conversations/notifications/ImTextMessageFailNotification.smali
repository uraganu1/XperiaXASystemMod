.class public Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;
.super Lcom/sonyericsson/conversations/notifications/ImTextNotification;
.source "ImTextMessageFailNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J
    .param p5, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 34
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;->mStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 32
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;->mStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v0
.end method
