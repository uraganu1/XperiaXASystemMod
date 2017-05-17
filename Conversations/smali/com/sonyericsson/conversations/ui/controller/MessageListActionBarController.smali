.class public Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;
.super Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.source "MessageListActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;
    }
.end annotation


# instance fields
.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;-><init>(Landroid/app/Activity;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 25
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 36
    instance-of v0, p1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    const-string/jumbo v2, " must be ConversationActivity"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method private initRecipientActionBarView(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002e

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->update(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 65
    return-void
.end method

.method private isEditingNewMessage(Lcom/sonyericsson/conversations/conversation/Conversation;)Z
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    goto :goto_0
.end method

.method private refreshActionBarForEditingNewMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 61
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public collapseSelf()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->collapseSelf()V

    .line 123
    :cond_0
    return-void
.end method

.method public expandSelf()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->expandSelf()V

    .line 117
    :cond_0
    return-void
.end method

.method public refreshActionBarForViewingConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->initRecipientActionBarView(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eq v1, v2, :cond_0

    .line 88
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "customViewLayoutParams":Landroid/app/ActionBar$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    .end local v0    # "customViewLayoutParams":Landroid/app/ActionBar$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->getThemedActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 72
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->update(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0
.end method

.method public removeContactLookupListener()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 113
    return-void
.end method

.method public removeRecipientActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->removeAllViews()V

    .line 136
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .line 132
    :cond_0
    return-void
.end method

.method public updateActionBar()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 104
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->isEditingNewMessage(Lcom/sonyericsson/conversations/conversation/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->refreshActionBarForEditingNewMessage()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->refreshActionBarForViewingConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    goto :goto_0
.end method
