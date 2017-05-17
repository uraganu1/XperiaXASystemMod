.class Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
.super Ljava/lang/Object;
.source "RcsSessionInvitationInfo.java"


# instance fields
.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field private mWasUnprocessedSession:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;Z)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "invitationStatus"    # Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .param p3, "wasUnprocessedSession"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 17
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 18
    iput-boolean p3, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mWasUnprocessedSession:Z

    .line 19
    return-void
.end method


# virtual methods
.method getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method getInvitationStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method

.method wasUnprocessedSession()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->mWasUnprocessedSession:Z

    return v0
.end method
