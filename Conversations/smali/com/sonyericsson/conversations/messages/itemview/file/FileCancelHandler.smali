.class Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;
.super Ljava/lang/Object;
.source "FileCancelHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;
    }
.end annotation


# instance fields
.field private final mCancelButton:Landroid/widget/ImageButton;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    return-object v0
.end method

.method constructor <init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "cancelButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 33
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    .line 30
    return-void
.end method


# virtual methods
.method startFileCancelHandling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 38
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 38
    if-eq v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->mCancelButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 36
    return-void
.end method
