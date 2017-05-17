.class public Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;
.super Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
.source "ContentFileMessageInvite.java"


# instance fields
.field private mAcceptButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->onFinishInflate()V

    .line 36
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    .line 34
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 51
    .local v2, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 52
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v5, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessageInvite;->mAcceptButton:Landroid/widget/ImageButton;

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/ImageButton;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startInviteHandling()V

    .line 40
    return-void
.end method
