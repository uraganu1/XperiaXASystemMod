.class public Lcom/sonyericsson/conversations/notifications/ImTextNotification;
.super Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;
.source "ImTextNotification.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/ImNotification;
.implements Lcom/sonymobile/jms/message/ImMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;-><init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 34
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->mText:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImTextNotification;->mText:Ljava/lang/String;

    return-object v0
.end method
