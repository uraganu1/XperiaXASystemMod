.class public abstract Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field public static final DIRECTORY_LOADER_ID:I = -0x1

.field private static final DIRECTORY_RESULT_LIMIT:I = 0x64

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_IS_PHOTO_MANAGER_ENABLED:Ljava/lang/String; = "isPhotoManagerEnabled"

.field private static final KEY_IS_SEARCH_MODE:Ljava/lang/String; = "isSearchMode"

.field private static final KEY_IS_SEARCH_RESULT_SHOWING:Ljava/lang/String; = "isSearchResultShowing"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_SECTIONHEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final STATUS_LOADED:I = 0x2

.field private static final STATUS_LOADING:I = 0x1

.field private static final STATUS_NOT_LOADED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

.field private mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

.field private mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

.field protected mContext:Landroid/app/Activity;

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEasAccAvailable:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mGalQueryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGalSearchSpinnerView:Landroid/view/View;

.field private mIncludeProfile:Z

.field private mIsPhotoManagerEnabled:Z

.field private mIsSearchMode:Z

.field private mIsSearchResultShowing:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

.field protected mLoadPriorityDirectoriesOnly:Z

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mSupportFastScrollbar:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 108
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEnabled:Z

    .line 114
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEasAccAvailable:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSupportFastScrollbar:Z

    .line 118
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    .line 120
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 123
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 130
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalSearchSpinnerView:Landroid/view/View;

    .line 149
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 911
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;)V

    .line 910
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    .line 71
    return-void
.end method

.method private adnAccountExists()Z
    .locals 9

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 970
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v6, "account"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    .line 971
    .local v3, "am":Landroid/accounts/AccountManager;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 972
    const-string/jumbo v4, "com.sonyericsson.adncontacts"

    aput-object v4, v2, v5

    const-string/jumbo v4, "com.sonyericsson.adnsub1contacts"

    aput-object v4, v2, v8

    .line 973
    const-string/jumbo v4, "com.sonyericsson.adnsub2contacts"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    .line 976
    .local v2, "adnAccountTypes":[Ljava/lang/String;
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v2, v4

    .line 977
    .local v1, "adnAccountType":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 978
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-lez v7, :cond_0

    .line 979
    return v8

    .line 976
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "adnAccountType":Ljava/lang/String;
    :cond_1
    return v5
.end method

.method private decreaseGalSearchCount(I)V
    .locals 3
    .param p1, "loaderId"    # I

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalSearchSpinnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->removeFooterView(Landroid/view/View;)Z

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1014
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 1016
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private increaseGalSearchCount(I)V
    .locals 4
    .param p1, "loaderId"    # I

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 987
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalQueryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 994
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 995
    const v1, 0x7f040049

    .line 994
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalSearchSpinnerView:Landroid/view/View;

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mGalSearchSpinnerView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 997
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    :cond_1
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 696
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 698
    const/4 v2, 0x0

    .line 697
    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 699
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    return-void
.end method

.method private refreshAdnContacts()V
    .locals 3

    .prologue
    .line 955
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    .line 964
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->adnAccountExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->refreshContacts()V

    .line 954
    :cond_1
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 715
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    return-void
.end method

.method private showSearchResult(Z)V
    .locals 6
    .param p1, "showSearchResult"    # Z

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    if-eq v2, p1, :cond_5

    .line 444
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    .line 445
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 447
    if-nez p1, :cond_0

    .line 448
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 449
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 452
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSupportFastScrollbar:Z

    if-eqz v2, :cond_1

    .line 453
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setFastScrollEnabled(Z)V

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v2, :cond_5

    .line 457
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSearchMode(Z)V

    .line 458
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->clearPartitions()V

    .line 459
    if-nez p1, :cond_4

    .line 460
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v0

    .line 461
    .local v0, "count":I
    move v1, v0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v4, :cond_4

    .line 462
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->removePartition(I)V

    goto :goto_2

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    move v2, v4

    .line 445
    goto :goto_0

    :cond_3
    move v2, v4

    .line 453
    goto :goto_1

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2, v3, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->configureDefaultPartition(ZZ)V

    .line 442
    :cond_5
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1, "partitionIndex"    # I

    .prologue
    .line 674
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 675
    .local v1, "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->setStatus(I)V

    .line 676
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 677
    .local v2, "directoryId":J
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 678
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 679
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadDirectoryPartition(ILcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;)V

    .line 673
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;)V

    goto :goto_0

    .line 684
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "directoryId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateEasAccountStatus()V
    .locals 3

    .prologue
    .line 902
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 903
    const-string/jumbo v2, "account"

    .line 902
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 905
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v1, "com.android.exchange"

    .line 904
    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->hasAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    const-string/jumbo v1, "com.google.android.exchange"

    .line 906
    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->hasAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Z

    move-result v1

    .line 904
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEasAccAvailable:Z

    .line 901
    return-void

    .line 904
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 828
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 825
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 604
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-nez v0, :cond_0

    .line 605
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setContactNameDisplayOrder(I)V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSortOrder(I)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setDirectoryResultLimit(I)V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setIncludeProfile(Z)V

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setQuickContactEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setDirectorySearchMode(I)V

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSelectionVisible(Z)V

    .line 603
    return-void
.end method

.method protected configurePhotoManager()V
    .locals 2

    .prologue
    .line 590
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isPhotoManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setPhotoManager(Lcom/android/contacts/photomanager/ContactPhotoManager;)V

    .line 589
    :cond_2
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 670
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected createOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    return-object v0
.end method

.method public getAlphabetList()Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 523
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 499
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getEmptyView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 534
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method protected handleEmptyView(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 783
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->hasContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 790
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setEmptyText()V

    .line 792
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isShowingSearchResult()Z

    move-result v1

    if-nez v1, :cond_4

    .line 793
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 794
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-le v1, v7, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 811
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 782
    :cond_2
    return-void

    .line 797
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 799
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->shouldShowEasAccountContacts()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 800
    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 801
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    .line 803
    const v2, 0x7f09024e

    .line 802
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 806
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 853
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 852
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 854
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, "focusView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 850
    :cond_0
    return-void
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    return v1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    return v1

    .line 406
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingDirectoryList()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isShowingSearchResult()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v2, :cond_0

    .line 495
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v2, v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0

    :cond_2
    move v0, v1

    .line 493
    goto :goto_0
.end method

.method public isPhotoManagerEnabled()Z
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsPhotoManagerEnabled:Z

    return v0
.end method

.method public isQuickContactEnable()Z
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 489
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 515
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isShowingSearchResult()Z
    .locals 1

    .prologue
    .line 439
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .prologue
    .line 706
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 707
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "directoryId"

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 708
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 705
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 553
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 554
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 555
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 556
    const/4 v0, 0x1

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 560
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setSortOrder(I)V

    .line 561
    const/4 v0, 0x1

    .line 564
    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 177
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 178
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    .line 195
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 198
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 199
    .local v0, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    if-eqz v0, :cond_0

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSupportFastScrollbar:Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    .line 204
    .local v1, "usingTwoPanes":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setQuickContactEnable(Z)V

    .line 190
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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
    .line 652
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 653
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 654
    .local v3, "loader":Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->configureDirectoryLoader(Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;)V

    .line 655
    return-object v3

    .line 657
    .end local v3    # "loader":Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 658
    .local v2, "loader":Landroid/content/CursorLoader;
    if-eqz p2, :cond_2

    const-string/jumbo v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 659
    const-string/jumbo v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 661
    .local v0, "directoryId":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 662
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->increaseGalSearchCount(I)V

    .line 664
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 665
    return-object v2

    .line 660
    .end local v0    # "directoryId":J
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "directoryId":J
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isShowingSearchResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setFocusableInTouchMode(Z)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->requestFocus()Z

    .line 222
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0

    .line 217
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSupportFastScrollbar:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    .line 231
    const-string/jumbo v2, "Your content must have a ListView whose id attribute is \'R.id.list\'"

    .line 230
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setSaveEnabled(Z)V

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setDividerHeight(I)V

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->createOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 241
    .local v0, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0e00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void
.end method

.method protected onCursorLoaded(ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 779
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->handleEmptyView(ILandroid/database/Cursor;)V

    .line 778
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->destroy()V

    .line 923
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    .line 926
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 920
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 315
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 317
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 319
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    .line 320
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 321
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEmptyView:Landroid/widget/TextView;

    .line 323
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContext:Landroid/app/Activity;

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 182
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 862
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 861
    :cond_0
    return-void
.end method

.method protected onHeaderClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 172
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected abstract onItemClick(Landroid/view/View;IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 843
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 844
    invoke-virtual {p0, p2, v0, p4, p5}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onItemClick(Landroid/view/View;IJ)V

    .line 841
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onHeaderClick(Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 720
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 721
    :cond_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 725
    .local v1, "loaderId":I
    if-ne v1, v3, :cond_3

    .line 726
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 727
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 728
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoading()V

    .line 746
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->decreaseGalSearchCount(I)V

    .line 719
    return-void

    .line 730
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 731
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isShowingSearchResult()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 733
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_2

    .line 734
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_4

    .line 735
    const/4 v2, 0x1

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 736
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 738
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 742
    .end local v0    # "directorySearchMode":I
    :cond_5
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 743
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 719
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 750
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 754
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 757
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 762
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->completeRestoreInstanceState()V

    .line 766
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCursorLoaded(ILandroid/database/Cursor;)V

    .line 753
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 931
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->pause()V

    .line 934
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 930
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 940
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->refreshAdnContacts()V

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdnContactsCollector:Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->resume()V

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->updateEasAccountStatus()V

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 948
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 938
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    const-string/jumbo v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string/jumbo v0, "isPhotoManagerEnabled"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsPhotoManagerEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string/jumbo v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string/jumbo v0, "includeProfile"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string/jumbo v0, "isSearchResultShowing"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string/jumbo v0, "isSearchMode"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    const-string/jumbo v0, "directorySearchMode"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string/jumbo v0, "queryString"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v0, "directoryResultLimit"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string/jumbo v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "liststate"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListView:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 877
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 888
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 897
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 887
    :cond_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 271
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 273
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->isShowingSearchResult()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSearchMode(Z)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->configureDefaultPartition(ZZ)V

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->configurePhotoManager()V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->registerChangeListener(Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences$ChangeListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mForceLoad:Z

    .line 284
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoading()V

    .line 289
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 8

    .prologue
    .line 294
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 298
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->unregisterChangeListener()V

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 300
    .local v2, "loaderManager":Landroid/app/LoaderManager;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 301
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v4

    .line 302
    .local v4, "partitionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 303
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 304
    .local v3, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v5, v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v5, :cond_0

    .line 305
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v6

    long-to-int v1, v6

    .line 306
    .local v1, "loaderId":I
    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 302
    .end local v1    # "loaderId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->clearPartitions()V

    .line 310
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    const-string/jumbo v0, "isSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "isSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setSearchMode(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 833
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 834
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->onDataReload()V

    .line 835
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 836
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mForceLoad:Z

    .line 837
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoading()V

    .line 832
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 347
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    const-string/jumbo v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 352
    const-string/jumbo v0, "isPhotoManagerEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsPhotoManagerEnabled:Z

    .line 353
    const-string/jumbo v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 354
    const-string/jumbo v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIncludeProfile:Z

    .line 355
    const-string/jumbo v0, "isSearchResultShowing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchResultShowing:Z

    .line 356
    const-string/jumbo v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 357
    const-string/jumbo v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 358
    const-string/jumbo v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 359
    const-string/jumbo v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    .line 361
    const-string/jumbo v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 346
    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 527
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDisplayOrder:I

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setContactNameDisplayOrder(I)V

    .line 526
    :cond_0
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 503
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 502
    return-void
.end method

.method protected setEmptyText()V
    .locals 0

    .prologue
    .line 819
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 385
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 386
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEnabled:Z

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 388
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->reloadData()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 430
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchMode:Z

    if-nez v0, :cond_0

    .end local p1    # "menuVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 428
    return-void

    .line 430
    .restart local p1    # "menuVisible":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setPhotoManagerEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 471
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsPhotoManagerEnabled:Z

    .line 472
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->configurePhotoManager()V

    .line 470
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 572
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    const/4 p1, 0x0

    .line 578
    .end local p1    # "queryString":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->showSearchResult(Z)V

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->reloadData()V

    .line 571
    :cond_0
    return-void

    .line 575
    .restart local p1    # "queryString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 580
    .end local p1    # "queryString":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setQuickContactEnable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 511
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 510
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "searchMode"    # Z

    .prologue
    .line 420
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mIsSearchMode:Z

    .line 422
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setMenuVisibility(Z)V

    .line 419
    :cond_0
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 480
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_0

    .line 481
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 479
    :cond_0
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 519
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSelectionVisible:Z

    .line 518
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 538
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mSortOrder:I

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSortOrder(I)V

    .line 537
    :cond_0
    return-void
.end method

.method public shouldShowEasAccountContacts()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 545
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mDirectorySearchMode:I

    if-nez v0, :cond_0

    .line 546
    return v1

    .line 548
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mEasAccAvailable:Z

    return v0
.end method

.method protected startLoading()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;, "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 620
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 623
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 624
    :cond_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->configureAdapter()V

    .line 629
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v3

    .line 630
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 631
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 632
    .local v2, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 633
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 634
    .local v0, "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 635
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-eqz v4, :cond_3

    .line 630
    .end local v0    # "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .restart local v0    # "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    goto :goto_1

    .line 640
    .end local v0    # "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 645
    .end local v2    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_5
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 647
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 619
    return-void
.end method
