.class public Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;
.super Landroid/app/Activity;
.source "DraftPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;,
        Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;
    }
.end annotation


# instance fields
.field private mDraft:Lcom/sonyericsson/conversations/draft/Draft;

.field private mMessageItemMmsView:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

.field private mResizedUrisToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Lcom/sonyericsson/conversations/draft/Draft;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mResizedUrisToDelete:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Lcom/sonyericsson/conversations/draft/Draft;)V
    .locals 0
    .param p1, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->setDraft(Lcom/sonyericsson/conversations/draft/Draft;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mResizedUrisToDelete:Ljava/util/List;

    .line 35
    return-void
.end method

.method private setDraft(Lcom/sonyericsson/conversations/draft/Draft;)V
    .locals 2
    .param p1, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mMessageItemMmsView:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setDraft(Lcom/sonyericsson/conversations/draft/Draft;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 77
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->setDraftSubject(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->setDraftBodyText(Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method private setDraftBodyText(Ljava/lang/String;)V
    .locals 6
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 100
    const v4, 0x7f0d00c3

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 101
    .local v1, "messageItemView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 106
    .local v2, "root":Landroid/view/ViewGroup;
    const v4, 0x7f0d00cc

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 107
    .local v3, "textContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    const v4, 0x7f0d00ce

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "bodyTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    return-void
.end method

.method private setDraftSubject(Ljava/lang/String;)V
    .locals 6
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 86
    const v4, 0x7f0d00c3

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    .local v0, "messageItemView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    .local v1, "root":Landroid/view/ViewGroup;
    const v4, 0x7f0d00cc

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 93
    .local v3, "textContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    const v4, 0x7f0d00cd

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "subjectTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v4, 0x7f040000

    .line 47
    const v5, 0x7f040001

    .line 46
    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->overridePendingTransition(II)V

    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 50
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03003d

    .line 49
    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mMessageItemMmsView:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    .line 51
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mMessageItemMmsView:Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "draft"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/draft/Draft;

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    .line 59
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->setDraft(Lcom/sonyericsson/conversations/draft/Draft;)V

    .line 44
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "originalUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v4, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;-><init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Ljava/util/List;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    new-instance v0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->finish()V

    .line 181
    const/4 v0, 0x1

    return v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
