.class public Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;
.super Ljava/lang/Object;
.source "ImTextConversationInvitation.java"


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field private mMessage:Lcom/sonymobile/jms/message/ImTextMessage;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 1
    .param p1, "rcsSessionInvitationInfo"    # Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    .param p2, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 23
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->getInvitationStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 24
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mMessage:Lcom/sonymobile/jms/message/ImTextMessage;

    .line 25
    return-void
.end method


# virtual methods
.method public getId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getMessage()Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mMessage:Lcom/sonymobile/jms/message/ImTextMessage;

    return-object v0
.end method

.method public getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method
