.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;
.source "ContentVisualFileMessageProgress.java"


# instance fields
.field private mCancelButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->onFinishInflate()V

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->getFileMessageActionButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 36
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    .line 45
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateCancelButton(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/widget/ImageButton;)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateInviteThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V

    .line 43
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageProgress;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
