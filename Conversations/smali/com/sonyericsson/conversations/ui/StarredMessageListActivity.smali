.class public Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;
.super Landroid/app/Activity;
.source "StarredMessageListActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;
    }
.end annotation


# instance fields
.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mGtmEventPushed:Z

.field private mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

.field private mStarredMessageList:Landroid/widget/ListView;

.field private mStarredMessageListEmptyText:Landroid/widget/TextView;

.field private mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mGtmEventPushed:Z

    .line 39
    new-instance v0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 26
    return-void
.end method

.method private onUpdateContainerView()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->isEmpty()Z

    move-result v0

    .line 96
    .local v0, "isEmptyList":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .end local v0    # "isEmptyList":Z
    :cond_0
    return-void

    .line 96
    .restart local v0    # "isEmptyList":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContentView:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 56
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListEmptyText:Landroid/widget/TextView;

    .line 57
    new-instance v0, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;IZ)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v0, p0, p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 63
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 48
    return-void
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onUpdateContainerView()V

    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mGtmEventPushed:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mGtmEventPushed:Z

    .line 86
    const-string/jumbo v0, "starred_messages"

    .line 87
    const-string/jumbo v1, "listed"

    const-string/jumbo v2, "count"

    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v4, v3

    .line 86
    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageAdapter:Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/StarredMessageListCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->mStarredMessageListModel:Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 111
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onDataReset()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/StarredMessageListActivity;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0
.end method
