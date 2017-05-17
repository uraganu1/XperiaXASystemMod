.class public Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;
.super Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.source "ConversationListActionBarController.java"


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;-><init>(Landroid/app/Activity;)V

    .line 22
    return-void
.end method


# virtual methods
.method public updateActionBar()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 35
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 36
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 37
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 39
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003b

    .line 46
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 50
    .local v1, "titleTextSize":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "titleTextSize":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;->mTitleView:Landroid/widget/TextView;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 34
    return-void
.end method
