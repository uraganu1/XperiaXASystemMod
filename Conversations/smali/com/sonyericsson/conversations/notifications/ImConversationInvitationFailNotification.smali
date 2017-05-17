.class public Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;
.super Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;
.source "ImConversationInvitationFailNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;)V
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J
    .param p5, "imInvitationStatus"    # Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;-><init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 36
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 34
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;->mStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method
