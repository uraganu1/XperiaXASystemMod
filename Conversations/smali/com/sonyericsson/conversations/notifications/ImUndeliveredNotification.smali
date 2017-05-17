.class public Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;
.super Ljava/lang/Object;
.source "ImUndeliveredNotification.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/ImNotification;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mWhenTimestamp:J


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationId;J)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "whenTimestamp"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 30
    iput-wide p2, p0, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;->mWhenTimestamp:J

    .line 28
    return-void
.end method


# virtual methods
.method public getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
