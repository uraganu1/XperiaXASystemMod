.class public Lcom/sonyericsson/conversations/notifications/JoynUndeliveredNotificationItem;
.super Lcom/sonyericsson/conversations/notifications/JoynTextMessageFailedNotificationItem;
.source "JoynUndeliveredNotificationItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imUndeliveredNotification"    # Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p4, "isSilent"    # Z
    .param p5, "uniqueNotificationId"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sonyericsson/conversations/notifications/JoynTextMessageFailedNotificationItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;ZI)V

    .line 24
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/notifications/JoynUndeliveredNotificationItem;->mIsGroupChat:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/JoynUndeliveredNotificationItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
