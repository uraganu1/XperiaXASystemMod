.class public Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;
.super Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.source "SystemMessageBubbleView.java"


# instance fields
.field private mBubbleContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMarkable()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public setBubbleContent(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;->mBubbleContent:Landroid/view/View;

    .line 53
    return-void
.end method

.method public setContactBadge(Lcom/sonyericsson/conversations/model/Message;Ljava/util/List;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/model/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 58
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;->mBubbleContent:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v1, v1, Lcom/sonyericsson/conversations/ui/MessageContent;

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContent;

    .line 48
    .local v0, "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageContent;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 45
    .end local v0    # "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "menuListener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 75
    return-void
.end method

.method public setParticipantStrings(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderString"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public setTimestampAndContactBadgeVisibility(Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;)V
    .locals 0
    .param p1, "visibility"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .prologue
    .line 79
    return-void
.end method
