.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
.source "ContentFileMessageProgress.java"


# instance fields
.field private mCancelButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->onFinishInflate()V

    .line 39
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    .line 37
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    .line 53
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateCancelButton(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/widget/ImageButton;)V

    .line 51
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "styleResId"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->setStyle(I)V

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->from(Landroid/content/Context;I)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageProgress;->mCancelButton:Landroid/widget/ImageButton;

    .line 45
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->applyTintForAttachmentIcon(Landroid/widget/ImageView;)Lcom/sonyericsson/conversations/ui/util/BubbleStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/BubbleStyle;->finish()V

    .line 43
    return-void
.end method
