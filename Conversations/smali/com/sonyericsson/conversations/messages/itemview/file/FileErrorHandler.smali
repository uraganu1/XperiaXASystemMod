.class public Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;
.super Ljava/lang/Object;
.source "FileErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private final mResendButton:Landroid/widget/ImageButton;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mResendButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->resendMessage()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p4, "resendButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mContext:Landroid/content/Context;

    .line 37
    iput-object p4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mResendButton:Landroid/widget/ImageButton;

    .line 38
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 35
    return-void
.end method

.method private resendMessage()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method


# virtual methods
.method startErrorHandling()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mResendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->mResendButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
