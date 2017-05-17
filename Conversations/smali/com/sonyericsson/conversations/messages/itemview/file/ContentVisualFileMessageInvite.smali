.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;
.source "ContentVisualFileMessageInvite.java"


# instance fields
.field private mAcceptButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->onFinishInflate()V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->getFileMessageActionButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    .line 37
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 64
    .local v6, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 65
    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/ImageButton;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startInviteHandling()V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateInviteThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V

    .line 48
    return-void

    .line 60
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentVisualFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    const v1, 0x7f02012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 43
    return-void
.end method
