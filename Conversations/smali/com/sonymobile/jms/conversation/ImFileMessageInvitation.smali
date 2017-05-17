.class public Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;
.super Ljava/lang/Object;
.source "ImFileMessageInvitation.java"


# instance fields
.field private mFileIcon:Landroid/graphics/Bitmap;

.field private mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field private mMessage:Lcom/sonymobile/jms/message/ImFileMessage;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;Lcom/sonymobile/jms/message/ImFileMessage;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "rcsSessionInvitationInfo"    # Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;
    .param p2, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "fileIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 26
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/RcsSessionInvitationInfo;->getInvitationStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 27
    iput-object p3, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mFileIcon:Landroid/graphics/Bitmap;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mMessage:Lcom/sonymobile/jms/message/ImFileMessage;

    .line 29
    return-void
.end method


# virtual methods
.method public getFileIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mFileIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method public getMessage()Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mMessage:Lcom/sonymobile/jms/message/ImFileMessage;

    return-object v0
.end method

.method public getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->mInvitationStatus:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method
