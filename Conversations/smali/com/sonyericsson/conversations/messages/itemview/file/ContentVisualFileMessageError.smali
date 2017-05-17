.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;
.source "ContentVisualFileMessageError.java"


# instance fields
.field private mRetryButton:Landroid/widget/ImageButton;


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
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->getFileMessageActionButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mRetryButton:Landroid/widget/ImageButton;

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mRetryButton:Landroid/widget/ImageButton;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 36
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mRetryButton:Landroid/widget/ImageButton;

    invoke-static {v0, p2, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateRetryButton(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/ImageButton;)V

    .line 48
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 49
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageError;->mRetryButton:Landroid/widget/ImageButton;

    .line 48
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/widget/ImageButton;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->startErrorHandling()V

    .line 43
    return-void
.end method
