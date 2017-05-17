.class public Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;
.super Landroid/app/Fragment;
.source "TopContactsListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;,
        Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_LAYOUT_MANAGER_STATE:Ljava/lang/String; = "keyLayoutManagerState"

.field private static final LOADER_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private final mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLayoutManagerSavedState:Landroid/os/Parcelable;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;)V

    .line 54
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .line 31
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string/jumbo v0, "keyLayoutManagerState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManagerSavedState:Landroid/os/Parcelable;

    .line 80
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->connect()V

    .line 85
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 73
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
    .line 149
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const v0, 0x7f0400de

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->disconnect()V

    .line 138
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
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

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManagerSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 157
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManagerSavedState:Landroid/os/Parcelable;

    .line 153
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 167
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->setIsSmsCapable(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 116
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string/jumbo v0, "keyLayoutManagerState"

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0e0223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 95
    return-void
.end method
