.class public Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;
.super Lcom/sonyericsson/conversations/notifications/ImFileNotification;
.source "ImFileInvitationFailNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;)V
    .locals 7
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J
    .param p5, "imInvitationStatus"    # Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .prologue
    .line 34
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 35
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 33
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;->mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method
