.class public abstract Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.super Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
.source "MultiChoiceContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;,
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;,
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;,
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;
    }
.end annotation


# static fields
.field private static final CHECKED_ITEMS_STATE:Ljava/lang/String; = "checkedState"

.field private static final FIRST_VISIBLE_ITEM_KEY:Ljava/lang/String; = "firstVisibleItem"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;

.field mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

.field private mCheckedItemsArray:[I

.field protected mIsAllUncheckMode:Z

.field private mMenu:Landroid/view/Menu;

.field private mSelectedItemPosition:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mCheckedItemsArray:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSelectedItemPosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mCheckedItemsArray:[I

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSelectedItemPosition:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mIsAllUncheckMode:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSelectedItemPosition:I

    .line 43
    return-void
.end method

.method private appendGalSelection(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 526
    const-string/jumbo v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v0, " NOT IN (SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v0, " FROM raw_contacts WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v0, " = 2)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    return-void
.end method

.method private saveCheckedItems(I[I)I
    .locals 3
    .param p1, "count"    # I
    .param p2, "checkedItemsArray"    # [I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "checkedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    aput v1, p2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return v0
.end method

.method private setSelectedCountText(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 536
    const v3, 0x7f09022c

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->getIsUsingTowPanes()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    :cond_0
    return-void
.end method


# virtual methods
.method protected final allCheck(Z)V
    .locals 8
    .param p1, "aCheck"    # Z

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 324
    .local v4, "list":Landroid/widget/ListView;
    if-eqz v4, :cond_1

    .line 325
    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 328
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 329
    invoke-virtual {v4, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "id":J
    :cond_1
    return-void
.end method

.method protected createQueryHandler()Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected final getCheckedIds()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 277
    .local v0, "checks":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 278
    return-object v3

    .line 280
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 281
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 282
    .local v6, "key":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 283
    .local v4, "id":J
    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v4    # "id":J
    .end local v6    # "key":I
    :cond_2
    return-object v3
.end method

.method protected getContactsCount()I
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    .line 297
    .local v0, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    if-nez v0, :cond_0

    .line 298
    const/4 v1, 0x0

    return v1

    .line 300
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;->getEntryCount()I

    move-result v1

    return v1
.end method

.method protected abstract getDoneBtnLabel()Ljava/lang/String;
.end method

.method public bridge synthetic isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 175
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "clicked unexpected view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->toggleCheck()V

    .line 186
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 174
    return-void

    .line 181
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onDoneBtnClicked()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x7f0e01c8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0400b1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->setContentView(I)V

    .line 93
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->getIsUsingTowPanes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getAdapter()Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->enableButtons()V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v0, 0x7f0e01c8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->-set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/widget/Button;)Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v0, 0x7f0e01c9

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->-set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;Landroid/widget/Button;)Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->setButtonClickListener()V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->createQueryHandler()Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 111
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mJustCreated:Z

    .line 112
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;

    .line 113
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSortedByPhonetic:Z

    .line 112
    const/16 v2, 0x9

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;-><init>(Landroid/content/Context;IZI)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->getIsUsingTowPanes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionModeCallback:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionModeCallback:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$MultiChoiceModeCallback;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->updateButtonState()V

    .line 121
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected abstract onDoneBtnClicked()V
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "aList"    # Landroid/widget/ListView;
    .param p2, "aView"    # Landroid/view/View;
    .param p3, "aPosition"    # I
    .param p4, "aId"    # J

    .prologue
    .line 199
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->method(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->updateButtonState()V

    .line 198
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 164
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "checkedState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mCheckedItemsArray:[I

    .line 166
    const-string/jumbo v0, "firstVisibleItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mSelectedItemPosition:I

    .line 167
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 134
    .local v2, "count":I
    new-array v1, v2, [I

    .line 137
    .local v1, "checkedItemsArray":[I
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->saveCheckedItems(I[I)I

    move-result v0

    .line 139
    .local v0, "checkedCount":I
    const-string/jumbo v3, "checkedState"

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 140
    const-string/jumbo v3, "firstVisibleItem"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public bridge synthetic onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "anEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setTitle(II)V
    .locals 3
    .param p1, "actionModeTitleId"    # I
    .param p2, "doneButtonTitleId"    # I

    .prologue
    .line 344
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, p1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 348
    .local v1, "menu":Landroid/view/Menu;
    if-nez v1, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    const v2, 0x7f0e0263

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 352
    .local v0, "doneItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 343
    .end local v0    # "doneItem":Landroid/view/MenuItem;
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_1
    return-void
.end method

.method protected startQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2a

    .line 208
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->appendGalSelection(Ljava/lang/StringBuilder;)V

    .line 221
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 224
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 225
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    .line 223
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected final toggleCheck()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mIsAllUncheckMode:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->setAllTitle(I)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->allCheck(Z)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->updateButtonState()V

    .line 307
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->setAllTitle(I)V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->allCheck(Z)V

    goto :goto_0
.end method

.method protected updateButtonState()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "checkedCount":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 239
    .local v2, "checks":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 241
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 242
    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 243
    .local v7, "key":I
    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 241
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    .end local v4    # "count":I
    .end local v6    # "i":I
    .end local v7    # "key":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->setSelectedCountText(I)V

    .line 249
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checked count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getContactsCount()I

    move-result v3

    .line 253
    .local v3, "contactsCount":I
    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 254
    .local v0, "allBtnEnable":Z
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->enableAll(Z)V

    .line 256
    if-lez v1, :cond_3

    const/4 v5, 0x1

    .line 257
    .local v5, "doneBtnEnable":Z
    :goto_2
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->enableDone(Z)V

    .line 260
    if-lez v3, :cond_4

    if-ne v1, v3, :cond_4

    .line 261
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mIsAllUncheckMode:Z

    .line 262
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v9, 0x7f090201

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->setAllTitle(I)V

    .line 236
    :goto_3
    return-void

    .line 253
    .end local v0    # "allBtnEnable":Z
    .end local v5    # "doneBtnEnable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allBtnEnable":Z
    goto :goto_1

    .line 256
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "doneBtnEnable":Z
    goto :goto_2

    .line 265
    :cond_4
    iput-boolean v11, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mIsAllUncheckMode:Z

    .line 266
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mButtonWrapper:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;

    const v9, 0x7f0901fe

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ButtonWrapper;->setAllTitle(I)V

    goto :goto_3
.end method
