.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;
.super Landroid/app/ListFragment;
.source "ConferenceCallsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CREATE_NEW_CONFERENCE_RESULT_CODE:I = 0x1

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "keyListState"

.field private static final LOADER_CONFERENCE_CALLS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNewConferenceFab:Landroid/view/View;

.field private mSavedListState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 180
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 181
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 183
    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 182
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    if-nez v1, :cond_0

    .line 186
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Returned from contact picker without expected extra!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 191
    .local v2, "participantsArray":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;->getIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    .end local v2    # "participantsArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 167
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK_CONFERENCE_CALL_PARTICIPANTS"

    .line 167
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    .line 170
    const/16 v2, 0x1d

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0094
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string/jumbo v0, "keyListState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 68
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f04002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 111
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mSavedListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mSavedListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 150
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 146
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mNewConferenceFab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mNewConferenceFab:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 96
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "keyListState"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mListView:Landroid/widget/ListView;

    .line 82
    const v0, 0x7f0e0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mNewConferenceFab:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mNewConferenceFab:Landroid/view/View;

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    const v1, 0x7f020027

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->mNewConferenceFab:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    const v2, 0x7f0901bf

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
