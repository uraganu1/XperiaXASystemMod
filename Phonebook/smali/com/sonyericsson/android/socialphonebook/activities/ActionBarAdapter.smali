.class public Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;,
        Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field private static final EXTRA_KEY_QUERY:Ljava/lang/String; = "navBar.query"

.field private static final EXTRA_KEY_SEARCH_MODE:Ljava/lang/String; = "navBar.searchMode"

.field private static final EXTRA_KEY_SELECTED_TAB:Ljava/lang/String; = "navBar.selectedTab"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private final mActivity:Landroid/app/Activity;

.field private mCurrentTab:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

.field private mLocalQueryString:Ljava/lang/String;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabsDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbar:Landroid/widget/Toolbar;

.field private mWasInSearchMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Landroid/widget/Toolbar;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "toolbar"    # Landroid/widget/Toolbar;
    .param p4, "isUsingTwoPanes"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 93
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabsDescriptions:Ljava/util/List;

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mWasInSearchMode:Z

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f040057

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    const-string/jumbo v3, "android:id/search_src_text"

    .line 100
    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "searchTextViewId":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, "searchTextView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 90
    return-void
.end method

.method private findIndex(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)I
    .locals 1
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private hasState(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Z
    .locals 1
    .param p1, "state"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 403
    return-void
.end method

.method private static shouldShowDialer(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Z
    .locals 2
    .param p0, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "showDialer":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 191
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isDialerIntent()Z

    move-result v1

    :goto_1
    return v1

    .line 185
    :sswitch_0
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 191
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 313
    const/16 v0, 0x1c

    .line 318
    .local v0, "MASK":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1c

    .line 321
    .local v1, "current":I
    const/4 v2, 0x0

    .line 324
    .local v2, "newFlags":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 325
    const/4 v4, 0x1

    .line 324
    if-ne v3, v4, :cond_0

    .line 326
    const/16 v2, 0x8

    .line 329
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_1

    .line 330
    or-int/lit8 v2, v2, 0x4

    .line 331
    or-int/lit8 v2, v2, 0x10

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 335
    if-eq v1, v2, :cond_2

    .line 338
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1c

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 311
    :cond_2
    return-void
.end method

.method private updateToNormalMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 342
    return-void
.end method

.method private updateToSearchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 288
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;I)V
    .locals 2
    .param p1, "tabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "tabDescription"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabsDescriptions:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public configure(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .param p3, "nextTabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 160
    if-nez p1, :cond_1

    .line 161
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    .line 162
    .local v1, "searchMode":Z
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "queryString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    if-eq p3, v2, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "searchMode":Z
    const/4 v0, 0x0

    .line 173
    .end local v0    # "queryString":Ljava/lang/String;
    .end local v1    # "searchMode":Z
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->updateToNormalMode()V

    .line 174
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setCurrentTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(ZLjava/lang/String;)V

    .line 156
    return-void

    .line 164
    :cond_1
    const-string/jumbo v2, "navBar.searchMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 165
    .local v1, "searchMode":Z
    const-string/jumbo v2, "navBar.query"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "queryString":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public getCurrentTabPosition()I
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->findIndex(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)I

    move-result v0

    return v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public getTabState(I)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public getTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabsDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabsDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getToolbar()Landroid/widget/Toolbar;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 394
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mLocalQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mLocalQueryString:Ljava/lang/String;

    .line 364
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_2

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 372
    :cond_1
    :goto_0
    return v2

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActivity:Landroid/app/Activity;

    .line 382
    const-string/jumbo v2, "input_method"

    .line 381
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 383
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 388
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 398
    const-string/jumbo v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    const-string/jumbo v0, "navBar.query"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v0, "navBar.selectedTab"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->getCurrentTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 440
    return-void
.end method

.method public reconfigure(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .param p1, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .param p2, "nextTabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mWasInSearchMode:Z

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->configure(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 213
    return-void
.end method

.method public reconfigure(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Landroid/app/ActionBar;)V
    .locals 0
    .param p1, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .param p2, "nextTabState"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p3, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 203
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->reconfigure(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 202
    return-void
.end method

.method public resolveTab(Landroid/os/Bundle;Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 120
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 122
    .local v0, "tabState":Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No tabs added yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    if-nez p1, :cond_5

    .line 127
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->shouldShowDialer(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->hasState(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 141
    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 130
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 131
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    .line 133
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 135
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 138
    :cond_5
    const-string/jumbo v1, "navBar.selectedTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 426
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mWasInSearchMode:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;->onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V

    .line 421
    :cond_1
    return-void
.end method

.method public setCurrentTab(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V
    .locals 0
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mCurrentTab:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 238
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mListener:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;

    .line 226
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setSearchMode(ZLjava/lang/String;)V

    .line 264
    return-void
.end method

.method public setSearchMode(ZLjava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Z
    .param p2, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->updateToSearchMode()V

    .line 277
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 278
    if-eqz p2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 268
    :goto_1
    return-void

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->updateToNormalMode()V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method
