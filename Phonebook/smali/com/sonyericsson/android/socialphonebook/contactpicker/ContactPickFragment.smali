.class public final Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
.super Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactListItemCache;,
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;,
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ADD_TO_SELECTION_TAG:Ljava/lang/String; = "add_to_selection"

.field public static final ALL_CONTACTS_LIST:I = 0x1

.field private static final ARG_FOCUS_SEARCH_FIELD:Ljava/lang/String; = "focus_search_field"

.field private static final ARG_LIST_TYPE:Ljava/lang/String; = "list_type"

.field private static final ARG_SEARCH_VIEW_CONTAINER:Ljava/lang/String; = "search_view_container"

.field private static final CREATE_NEW_CONTACT_TAG:Ljava/lang/String; = "create_new_contact"

.field public static final FAVORITE_CONTACTS_LIST:I = 0x2

.field private static final KEY_GROUP_CHECK_ALL:Ljava/lang/String; = "send_group_check_all"

.field private static final KEY_PICK_IS_FAVORITE:Ljava/lang/String; = "is_favorite"

.field private static final KEY_RECIPIENTS_DRAWER_OPEN:Ljava/lang/String; = "recipientsDrawerOpen"

.field private static final KEY_RECIPIENTS_STORE:Ljava/lang/String; = "recipient_store"

.field private static final KEY_RECIPIENTS_STORE_MAX_SIZE:Ljava/lang/String; = "recipient_store_max_size"

.field private static final SUBACTIVITY_NEW_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContactPickerHeaderView:Landroid/view/View;

.field private mDataPickDialog:Landroid/app/AlertDialog;

.field private mDoneButton:Landroid/widget/Button;

.field private mFilterDataSetObserver:Landroid/database/DataSetObserver;

.field private mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

.field private mInitSearchBoxFocus:Z

.field private mIsAddToContactsHeaderShown:Z

.field private mIsFavorite:Z

.field private mIsGroupCheckAll:Z

.field private mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

.field private mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

.field private mRecipientsDrawer:Landroid/widget/SlidingDrawer;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSearchBox:Landroid/widget/SearchView;

.field private mSearchPanel:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnMultiplePickerResult()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setButtonsBarAppearance()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setRecipientHandleText()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->showAddRecipientFailedWarning()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "aText"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateAddToSelectionView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateButtonStateInMultiChoiceMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateRecipientDrawerAppearance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;-><init>()V

    .line 154
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDoneButton:Landroid/widget/Button;

    .line 157
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mCancelButton:Landroid/widget/Button;

    .line 160
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    .line 162
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContactPickerHeaderView:Landroid/view/View;

    .line 195
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    .line 196
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsGroupCheckAll:Z

    .line 199
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    .line 202
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    .line 126
    return-void
.end method

.method private final checkAllItemsForGroup()V
    .locals 10

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getCount()I

    move-result v1

    .line 286
    .local v1, "count":I
    const/4 v0, 0x0

    .end local v2    # "cursor":Landroid/database/Cursor;
    .local v0, "contactIndex":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDataItems(I)Landroid/database/Cursor;

    move-result-object v2

    .line 289
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 291
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 292
    .local v4, "id":J
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 293
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 293
    invoke-interface {v8, v7, v2, v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v6

    .line 295
    .local v6, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 296
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 286
    .end local v4    # "id":J
    .end local v6    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsGroupCheckAll:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "contactIndex":I
    .end local v1    # "count":I
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateButtonStateInMultiChoiceMode()V

    .line 282
    :cond_3
    return-void

    .line 300
    :catch_0
    move-exception v3

    .line 301
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed to check all items in contraintGroup mode"

    invoke-static {v8, v9, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private clearSearchBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1639
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->hideSoftKeyboard()V

    .line 1642
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1638
    :cond_0
    return-void
.end method

.method private createHeaderItem(Landroid/view/LayoutInflater;IILjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "iconResource"    # I
    .param p3, "descriptionResource"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 555
    const v1, 0x7f04003f

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;

    .line 556
    .local v0, "header":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->setIconImage(I)V

    .line 557
    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->setDescription(I)V

    .line 558
    const v1, 0x7f0e0022

    invoke-virtual {v0, v1, p4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->setTag(ILjava/lang/Object;)V

    .line 559
    return-object v0
.end method

.method private getActionIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "aResources"    # Landroid/content/res/Resources;
    .param p2, "aResId"    # I

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getContactName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "aUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1196
    if-nez p1, :cond_0

    .line 1197
    return-object v0

    .line 1199
    :cond_0
    const/4 v6, 0x0

    .line 1200
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1202
    .local v7, "name":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1203
    const-string/jumbo v1, "display_name"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1204
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 1202
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1205
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1209
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1213
    :cond_2
    return-object v7

    .line 1208
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1209
    if-eqz v6, :cond_3

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_3
    throw v0
.end method

.method private getFirstWritableRawContact(J)J
    .locals 13
    .param p1, "contactId"    # J

    .prologue
    const/4 v1, 0x0

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    .line 899
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 900
    .local v7, "c":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 901
    .local v8, "rawContactId":J
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 902
    .local v12, "writableAccout":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v11

    .line 903
    .local v11, "syncerTypes":[Landroid/content/SyncAdapterType;
    if-eqz v11, :cond_1

    .line 904
    array-length v2, v11

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v10, v11, v1

    .line 905
    .local v10, "syncerType":Landroid/content/SyncAdapterType;
    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    iget-object v3, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v10    # "syncerType":Landroid/content/SyncAdapterType;
    :cond_1
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 913
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "account_type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 912
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 915
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 916
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 917
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 918
    .local v6, "accType":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    goto :goto_1

    .line 924
    .end local v6    # "accType":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 925
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 928
    :cond_5
    return-wide v8

    .line 923
    .end local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 924
    if-eqz v7, :cond_6

    .line 925
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_6
    throw v1
.end method

.method private getSelectedUri(IJ)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I
    .param p2, "directoryId"    # J

    .prologue
    .line 942
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 943
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter, aPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isFavoriteModeRequested()Z
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "list_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 403
    .local v1, "listType":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSingleRecipient()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1088
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getMaxSize()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "aContactId"    # J
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 1167
    const/4 v8, 0x0

    .line 1168
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1171
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1172
    .local v7, "contactUri":Landroid/net/Uri;
    const-string/jumbo v0, "photo"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1173
    .local v1, "photoUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1174
    const-string/jumbo v3, "data15"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1175
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1176
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    .line 1178
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v8, v3, p3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->loadContactPhoto(Landroid/content/Context;Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1177
    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1187
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v8, :cond_0

    .line 1188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1192
    :cond_0
    return-object v6

    .line 1180
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    .line 1182
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 1180
    invoke-virtual {v0, v2, p1, p2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultShortcutAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1184
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1186
    .end local v1    # "photoUri":Landroid/net/Uri;
    .end local v7    # "contactUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 1187
    if-eqz v8, :cond_2

    .line 1188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1186
    :cond_2
    throw v0
.end method

.method public static newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .locals 1
    .param p0, "listType"    # I
    .param p1, "focusSearchField"    # Z

    .prologue
    .line 221
    const v0, 0x7f0e00b1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->newInstance(IZI)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IZI)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .locals 3
    .param p0, "listType"    # I
    .param p1, "focusSearchField"    # Z
    .param p2, "searchViewContainer"    # I

    .prologue
    .line 231
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;-><init>()V

    .line 232
    .local v1, "fragment":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "list_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v2, "search_view_container"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string/jumbo v2, "focus_search_field"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setArguments(Landroid/os/Bundle;)V

    .line 237
    return-object v1
.end method

.method private onDiscardBtnClicked()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 265
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onDoneBtnClicked()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnMultiplePickerResult()V

    .line 261
    return-void
.end method

.method private onItemClickOnInsertOrEditMode(IJ)V
    .locals 6
    .param p1, "aPosition"    # I
    .param p2, "aId"    # J

    .prologue
    .line 787
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 788
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "MODE:  MODE_INSERT_OR_EDIT_CONTACT"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 790
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 791
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    if-gez p1, :cond_2

    .line 796
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 821
    .local v1, "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->startActivity(Landroid/content/Intent;)V

    .line 824
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 826
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 786
    return-void

    .line 798
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 800
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "photo_bitmap"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 801
    .local v2, "photo":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 803
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "photo_bitmap"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->savePhoto(ILandroid/graphics/Bitmap;)V

    .line 805
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 806
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 807
    return-void

    .line 811
    :cond_3
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 813
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 815
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, p2, p3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isIceContact(Landroid/content/ContentResolver;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 816
    const-string/jumbo v4, "editIceContact"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onItemClickOnMultiChoiceMode(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;I)V
    .locals 7
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 724
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getCheckView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 727
    .local v0, "checkView":Landroid/widget/CheckedTextView;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    instance-of v5, v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    instance-of v5, v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;

    .line 727
    if-eqz v5, :cond_5

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 730
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 731
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 732
    return-void

    .line 734
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v5, v4, v2, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v3

    .line 736
    .local v3, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 737
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->removeContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 723
    .end local v3    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 738
    .restart local v3    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->availableSize()I

    move-result v5

    if-lez v5, :cond_4

    .line 739
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    goto :goto_0

    .line 741
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->showAddRecipientFailedWarning()V

    goto :goto_0

    .line 744
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDataItems(I)Landroid/database/Cursor;

    move-result-object v2

    .line 745
    .restart local v2    # "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_6

    .line 746
    return-void

    .line 748
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v6, :cond_9

    .line 749
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 750
    .restart local v4    # "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v5, v4, v2, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v3

    .line 752
    .restart local v3    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 753
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->removeContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 760
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 761
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnMultiplePickerResult()V

    goto :goto_0

    .line 754
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->availableSize()I

    move-result v5

    if-lez v5, :cond_8

    .line 755
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    goto :goto_1

    .line 757
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->showAddRecipientFailedWarning()V

    goto :goto_1

    .line 763
    .end local v3    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "contactName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 767
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 768
    const v6, 0x7f090202

    .line 767
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    :cond_a
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_b

    .line 772
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 774
    :cond_b
    invoke-direct {p0, p1, v2, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setupDataPickDialog(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private restoreListAndRecipientState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1355
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    if-eqz p1, :cond_2

    .line 1357
    const-string/jumbo v3, "recipient_store_max_size"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1358
    .local v2, "maxSize":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    move-result-object v3

    .line 1359
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    .line 1358
    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->getRecipientItemStore(Landroid/app/Activity;I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    .line 1361
    const-string/jumbo v3, "recipient_store"

    .line 1360
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1362
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1363
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 1362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    const-string/jumbo v3, "send_group_check_all"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsGroupCheckAll:Z

    .line 1354
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    .end local v2    # "maxSize":I
    :cond_1
    :goto_1
    return-void

    .line 1367
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    move-result-object v3

    .line 1368
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getMaxRecipient()I

    move-result v5

    .line 1367
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->getRecipientItemStore(Landroid/app/Activity;I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    goto :goto_1
.end method

.method private returnMultiplePickerResult()V
    .locals 13

    .prologue
    .line 1030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1031
    .local v0, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v6, "recipientList":Ljava/util/ArrayList;
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSpecificGroup()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1034
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1035
    .local v5, "recList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rec$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .line 1036
    .local v3, "rec":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1037
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1039
    :cond_0
    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    .end local v3    # "rec":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v4    # "rec$iterator":Ljava/util/Iterator;
    .end local v5    # "recList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v11}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->shouldReturnDataResult()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getResults(Z)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1046
    :cond_2
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getMaxSize()I

    move-result v1

    .line 1047
    .local v1, "maxSize":I
    if-lez v1, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v1, :cond_4

    .line 1048
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSpecificGroup()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1049
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getTitleResourceId()I

    move-result v9

    .line 1050
    .local v9, "title":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1051
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 1052
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1051
    const v11, 0x7f090270

    invoke-virtual {v7, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1053
    .local v8, "selected":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 1054
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getMaxSize()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1053
    const v11, 0x7f090271

    invoke-virtual {v7, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "proMax":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1056
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1055
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1057
    const v11, 0x104000a

    const/4 v12, 0x0

    .line 1055
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1061
    .end local v2    # "proMax":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "selected":Ljava/lang/String;
    .end local v9    # "title":I
    :goto_1
    return-void

    .line 1059
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->showAddRecipientFailedWarning()V

    goto :goto_1

    .line 1064
    :cond_4
    const-string/jumbo v10, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1067
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    instance-of v10, v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;

    if-eqz v10, :cond_6

    .line 1068
    const-string/jumbo v10, "msg_uris"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1073
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_7

    .line 1074
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1079
    :goto_3
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 1029
    return-void

    .line 1069
    :cond_6
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    instance-of v10, v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;

    if-eqz v10, :cond_5

    .line 1070
    const-string/jumbo v10, "email_uris"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 1076
    :cond_7
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3
.end method

.method private returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;IJ)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "position"    # I
    .param p5, "contactId"    # J

    .prologue
    .line 960
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 961
    .local v2, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getShortcutAction()Ljava/lang/String;

    move-result-object v7

    .line 962
    .local v7, "shortcutAction":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 964
    const/4 v8, 0x0

    .line 965
    .local v8, "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 967
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.provider.action.QUICK_CONTACT"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    .local v8, "shortcutIntent":Landroid/content/Intent;
    const/high16 v10, 0x14200000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 972
    const-string/jumbo v10, "android.provider.extra.MODE"

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    const-string/jumbo v11, "android.provider.extra.EXCLUDE_MIMES"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-string/jumbo v10, "android.intent.extra.shortcut.ICON"

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->shorcutContactInfo(J)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1001
    .end local v8    # "shortcutIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v8, :cond_5

    .line 1002
    const/high16 v10, 0x4000000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1003
    const-string/jumbo v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1004
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1005
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090123

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1007
    :cond_2
    const-string/jumbo v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const/4 v11, -0x1

    invoke-virtual {v10, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1022
    :goto_1
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 959
    return-void

    .line 975
    .local v8, "shortcutIntent":Landroid/content/Intent;
    :cond_3
    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getPhoneType(I)I

    move-result v9

    .line 982
    .local v9, "type":I
    const-string/jumbo v10, "android.intent.action.CALL"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 987
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.CALL"

    .line 988
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 987
    invoke-direct {v8, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 989
    .local v8, "shortcutIntent":Landroid/content/Intent;
    const-string/jumbo v10, "com.sonymobile.phone.FROM"

    .line 990
    const-string/jumbo v11, "contacts"

    .line 989
    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const v6, 0x7f020002

    .line 997
    .local v6, "resid":I
    :goto_2
    const-string/jumbo v10, "android.intent.extra.shortcut.ICON"

    .line 998
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1, v9, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->shorcutDirectAction(JII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 997
    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 993
    .end local v6    # "resid":I
    .local v8, "shortcutIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 994
    .local v8, "shortcutIntent":Landroid/content/Intent;
    const v6, 0x7f020003

    .restart local v6    # "resid":I
    goto :goto_2

    .line 1011
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "resid":I
    .end local v8    # "shortcutIntent":Landroid/content/Intent;
    .end local v9    # "type":I
    :cond_5
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 1014
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1015
    const-string/jumbo v11, "phonenumber_required"

    const/4 v12, 0x0

    .line 1014
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1016
    .local v3, "isPhoneNumberRequired":Z
    if-eqz v3, :cond_7

    .line 1017
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v5

    .line 1018
    .local v5, "phonenumber":Ljava/lang/String;
    const-string/jumbo v10, "extra_phonenumber"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    .end local v5    # "phonenumber":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {v10, v12, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private savePhoto(ILandroid/graphics/Bitmap;)V
    .locals 24
    .param p1, "aPos"    # I
    .param p2, "aPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactPhotoId(I)J

    move-result-wide v10

    .line 831
    .local v10, "photoId":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v18

    .line 833
    .local v18, "uri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 834
    .local v4, "contactId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getFirstWritableRawContact(J)J

    move-result-wide v14

    .line 835
    .local v14, "rawContactId":J
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-gez v19, :cond_0

    .line 836
    sget-object v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "Save photo failed: no writable raw_contact"

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void

    .line 840
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 841
    const-string/jumbo v20, "/"

    .line 840
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 841
    const-string/jumbo v20, "data"

    .line 840
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 843
    .local v17, "targetUri":Landroid/net/Uri;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 844
    .local v16, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x5a

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 846
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 847
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v19, "data15"

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 848
    const-string/jumbo v19, "is_super_primary"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-lez v19, :cond_5

    .line 853
    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 854
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 853
    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :goto_0
    const/4 v13, 0x0

    .line 864
    .local v13, "res":[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.android.contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v13

    .line 865
    .local v13, "res":[Landroid/content/ContentProviderResult;
    if-eqz v13, :cond_1

    array-length v0, v13

    move/from16 v19, v0

    if-gtz v19, :cond_6

    .line 866
    :cond_1
    :goto_1
    sget-object v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "update failed. try insert."

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 868
    const-string/jumbo v19, "mimetype"

    const-string/jumbo v20, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    .line 869
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.android.contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 877
    .end local v13    # "res":[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_2
    sget-boolean v19, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v19, :cond_3

    .line 878
    if-nez v13, :cond_7

    .line 879
    sget-object v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "result: null"

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 889
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v19, v0

    if-gtz v19, :cond_8

    .line 890
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->setResult(I)V

    .line 829
    :goto_3
    return-void

    .line 856
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 857
    const-string/jumbo v20, "mimetype=?"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 858
    const-string/jumbo v22, "vnd.android.cursor.item/photo"

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 856
    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 865
    .restart local v13    # "res":[Landroid/content/ContentProviderResult;
    :cond_6
    const/16 v19, 0x0

    :try_start_1
    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-gtz v19, :cond_2

    goto/16 :goto_1

    .line 873
    .end local v13    # "res":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v7

    .line 874
    .local v7, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "photo update failed uri: e:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 881
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v19, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "result: count:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v13

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const/16 v19, 0x0

    array-length v0, v13

    move/from16 v20, v0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v12, v13, v19

    .line 883
    .local v12, "r":Landroid/content/ContentProviderResult;
    sget-object v21, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "result:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 892
    .end local v12    # "r":Landroid/content/ContentProviderResult;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method private setAlphabetIndexedScrollListener()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1604
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAlphabetList()Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    move-result-object v2

    .line 1605
    .local v2, "listView":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setPadding(IIII)V

    .line 1607
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 1608
    .local v1, "list":Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1610
    .local v0, "buttonsBar":Landroid/view/View;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;

    invoke-direct {v3, p0, v2, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->registerOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1603
    return-void
.end method

.method private setButtonsBarAppearance()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1591
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v1

    .line 1592
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e00b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, "buttonsBar":Landroid/view/View;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 1599
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    :goto_0
    return-void

    .line 1595
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2, v5}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 1596
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRecipientHandleText()V
    .locals 7

    .prologue
    .line 1583
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1584
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v0

    .line 1585
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1585
    const v5, 0x7f09022b

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    return-void
.end method

.method private setRecipientList(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1490
    .local v1, "recipientList":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1491
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1492
    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1494
    :cond_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;

    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1496
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$4;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1505
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SlidingDrawer;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    .line 1506
    if-eqz p1, :cond_1

    const-string/jumbo v3, "recipientsDrawerOpen"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1507
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->open()V

    .line 1511
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1513
    .local v2, "recipientsArrow":Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 1528
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;

    invoke-direct {v4, p0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 1544
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$7;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$7;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1560
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setRecipientHandleText()V

    .line 1561
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setButtonsBarAppearance()V

    .line 1563
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1564
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addObserver(Ljava/util/Observer;)V

    .line 1487
    :cond_2
    return-void
.end method

.method private setupDataPickDialog(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 11
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 1434
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, p0, v7, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$ContactDataListDialogAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1435
    .local v0, "adapter":Landroid/widget/CursorAdapter;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    .line 1436
    const v10, 0x7f10004f

    .line 1435
    invoke-direct {v8, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1437
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;

    invoke-direct {v8, p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1464
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1465
    .local v3, "list":Landroid/widget/ListView;
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1467
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1468
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1469
    .local v4, "id":J
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1470
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->contains(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual {v3, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1472
    .end local v4    # "id":J
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v1
.end method

.method private shorcutContactInfo(J)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private shorcutDirectAction(JII)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "phoneNumberType"    # I
    .param p4, "actionResourceId"    # I

    .prologue
    .line 1117
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1118
    .local v2, "contactPhoto":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, p4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActionIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1119
    .local v0, "actionIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1120
    .local v1, "actionText":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 1144
    .end local v1    # "actionText":Ljava/lang/String;
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3, v2, v0, v1}, Lcom/android/contacts/common/util/BitmapUtil;->contactShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 1122
    .restart local v1    # "actionText":Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f0900b8

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "actionText":Ljava/lang/String;
    goto :goto_0

    .line 1126
    .local v1, "actionText":Ljava/lang/String;
    :pswitch_2
    const v3, 0x7f0900b9

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "actionText":Ljava/lang/String;
    goto :goto_0

    .line 1130
    .local v1, "actionText":Ljava/lang/String;
    :pswitch_3
    const v3, 0x7f0900ba

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "actionText":Ljava/lang/String;
    goto :goto_0

    .line 1134
    .local v1, "actionText":Ljava/lang/String;
    :pswitch_4
    const v3, 0x7f0900bb

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "actionText":Ljava/lang/String;
    goto :goto_0

    .line 1138
    .local v1, "actionText":Ljava/lang/String;
    :pswitch_5
    const v3, 0x7f0900bc

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "actionText":Ljava/lang/String;
    goto :goto_0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showAddRecipientFailedWarning()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1647
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09022a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSpecificGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1649
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 1650
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getMaxSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1649
    const v5, 0x7f090271

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1651
    .local v1, "proMax":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1653
    .end local v1    # "proMax":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1654
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1655
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1646
    return-void
.end method

.method private updateAddToSelectionView(Ljava/lang/String;)V
    .locals 3
    .param p1, "aText"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContactPickerHeaderView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isValidSearchString(Ljava/lang/String;)Z

    move-result v0

    .line 605
    .local v0, "shouldShowAddToContactsHeader":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsAddToContactsHeaderShown:Z

    if-eqz v1, :cond_2

    .line 608
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsAddToContactsHeaderShown:Z

    if-eqz v1, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContactPickerHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 610
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsAddToContactsHeaderShown:Z

    .line 602
    .end local v0    # "shouldShowAddToContactsHeader":Z
    :cond_1
    :goto_0
    return-void

    .line 606
    .restart local v0    # "shouldShowAddToContactsHeader":Z
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContactPickerHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsAddToContactsHeaderShown:Z

    goto :goto_0
.end method

.method private updateButtonStateInMultiChoiceMode()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    return-void
.end method

.method private updateRecipientDrawerAppearance()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1476
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAlphabetList()Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    move-result-object v1

    .line 1478
    .local v1, "listView":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1479
    const v3, 0x7f0d01c4

    .line 1478
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1480
    .local v0, "handleHeight":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v2

    if-nez v2, :cond_0

    .line 1481
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setPadding(IIII)V

    .line 1475
    :goto_0
    return-void

    .line 1483
    :cond_0
    invoke-virtual {v1, v4, v4, v4, v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public closeRecipientsDrawer()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 1419
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1747
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->configureAdapter()V

    .line 1748
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    .line 1749
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    if-nez v0, :cond_0

    .line 1750
    return-void

    .line 1753
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setIncludeProfile(Z)V

    .line 1754
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isDisableQuickContact()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setQuickContactEnabled(Z)V

    .line 1746
    return-void

    .line 1754
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 1734
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createListAdapter()Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .locals 3

    .prologue
    .line 1739
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;)V

    .line 1740
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1741
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setDisplayPhotos(Z)V

    .line 1742
    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    .locals 1

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->createListAdapter()Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 1402
    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 1405
    const/4 v0, 0x1

    return v0

    .line 1407
    :cond_0
    return v2
.end method

.method public getMode()Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    return-object v0
.end method

.method protected hideSoftKeyboard()V
    .locals 1

    .prologue
    .line 1770
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1771
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1769
    :cond_0
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    const v0, 0x7f04003b

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1728
    :cond_0
    const v0, 0x7f04003d

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isRecipientsDrawerOpened()Z
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    const/4 v0, 0x1

    return v0

    .line 1429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e00b6

    const/4 v3, 0x1

    .line 564
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->restoreListAndRecipientState(Landroid/os/Bundle;)V

    .line 568
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setAlphabetIndexedScrollListener()V

    .line 571
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 572
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setNextFocusDownId(I)V

    .line 574
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setRecipientList(Landroid/os/Bundle;)V

    .line 576
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDoneButton:Landroid/widget/Button;

    .line 577
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mCancelButton:Landroid/widget/Button;

    .line 578
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDoneButton:Landroid/widget/Button;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v1, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "queryString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 588
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateAddToSelectionView(Ljava/lang/String;)V

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 596
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mInitSearchBoxFocus:Z

    .line 599
    .end local v0    # "queryString":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 563
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    .line 652
    packed-switch p1, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 655
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 656
    .local v4, "uri":Landroid/net/Uri;
    const-wide/16 v6, 0x0

    .line 658
    .local v6, "contactId":J
    :try_start_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 662
    :goto_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContactName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to solve id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1702
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 1703
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    .line 1701
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 1393
    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 1396
    const/4 v0, 0x1

    return v0

    .line 1398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 247
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "clicked unexpected view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onDoneBtnClicked()V

    .line 258
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 246
    return-void

    .line 253
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onDiscardBtnClicked()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f0e00b4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 318
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isFavoriteModeRequested()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    .line 320
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    .line 361
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickModeFactory;->getMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    invoke-interface {v2, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->setFavorite(Z)V

    .line 367
    const-string/jumbo v2, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v5, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isDisableSectionHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSupportGalSearch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setDirectorySearchMode(I)V

    .line 383
    :goto_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 316
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getActivityTitle()I

    move-result v1

    .line 371
    .local v1, "titleId":I
    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .end local v1    # "titleId":I
    :cond_2
    move v2, v4

    .line 376
    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setDirectorySearchMode(I)V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 413
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 417
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0e00b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 419
    .local v5, "recipientsDrawer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0e00b3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, "buttons":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 421
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .end local v0    # "buttons":Landroid/view/View;
    .end local v5    # "recipientsDrawer":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->canCreateContact()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->canEditContact()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 432
    :cond_2
    const-string/jumbo v7, "create_new_contact"

    .line 431
    const v8, 0x7f020049

    const v9, 0x7f09007d

    .line 430
    invoke-direct {p0, p1, v8, v9, v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->createHeaderItem(Landroid/view/LayoutInflater;IILjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;

    move-result-object v4

    .line 433
    .local v4, "newContactHeader":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 436
    .end local v4    # "newContactHeader":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 440
    const-string/jumbo v7, "add_to_selection"

    .line 439
    const v8, 0x7f0200c1

    .line 440
    const v9, 0x7f090396

    .line 439
    invoke-direct {p0, p1, v8, v9, v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->createHeaderItem(Landroid/view/LayoutInflater;IILjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContactPickerHeaderView:Landroid/view/View;

    .line 441
    iput-boolean v11, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsAddToContactsHeaderShown:Z

    .line 445
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 446
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 447
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 448
    .local v6, "spaceView":Landroid/view/View;
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 449
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 450
    const v8, 0x7f0d01c7

    .line 449
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 451
    .local v1, "buttonsHeight":I
    invoke-virtual {v6, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 452
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v6, v10, v11}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 457
    .end local v1    # "buttonsHeight":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "spaceView":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "search_view_container"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 458
    .local v3, "id":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    .line 459
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    if-nez v7, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    .line 462
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isNoFilter()Z

    move-result v7

    if-nez v7, :cond_6

    .line 463
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSpecificGroup()Z

    move-result v7

    .line 462
    if-nez v7, :cond_6

    .line 464
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    .line 462
    if-eqz v7, :cond_8

    .line 465
    :cond_6
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 466
    iput-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    .line 412
    :cond_7
    :goto_0
    return-void

    .line 468
    :cond_8
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 469
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchPanel:Landroid/view/ViewGroup;

    const v8, 0x7f0e00b2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    .line 470
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    new-instance v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 497
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getQueryHintResourceId()I

    move-result v7

    if-eqz v7, :cond_7

    .line 498
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getQueryHintResourceId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCursorLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1759
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCursorLoaded(ILandroid/database/Cursor;)V

    .line 1761
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSpecificGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsGroupCheckAll:Z

    if-eqz v0, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->checkAllItemsForGroup()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mDataPickDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 676
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->reset()V

    .line 678
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 682
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    .line 685
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onDestroyView()V

    .line 671
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1708
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onDetach()V

    .line 1709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mResolver:Landroid/content/ContentResolver;

    .line 1707
    return-void
.end method

.method protected onHeaderClick(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v8, 0x0

    .line 505
    const v6, 0x7f0e0022

    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 506
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v6, "create_new_contact"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 507
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->canCreateContact()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 508
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "disable_sim_account"

    .line 510
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isSimContactInvisible()Z

    move-result v7

    .line 509
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 504
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->canEditContact()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 513
    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    invoke-direct {p0, v8, v6, v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onItemClickOnInsertOrEditMode(IJ)V

    goto :goto_0

    .line 515
    :cond_2
    const-string/jumbo v6, "add_to_selection"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 516
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v6, :cond_0

    .line 517
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 518
    .local v0, "data":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->shouldFilterOutByPredicate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 519
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getPredicateForFiltering()Lcom/google/common/base/Predicate;

    move-result-object v4

    .line 520
    .local v4, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    .line 521
    .local v3, "notAllowedNumber":Z
    if-eqz v3, :cond_3

    .line 522
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    const v7, 0x7f090282

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 524
    return-void

    .line 527
    .end local v3    # "notAllowedNumber":Z
    .end local v4    # "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 529
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->availableSize()I

    move-result v6

    if-nez v6, :cond_4

    .line 530
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->showAddRecipientFailedWarning()V

    .line 534
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isSingleRecipient()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 535
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnMultiplePickerResult()V

    .line 536
    return-void

    .line 532
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    goto :goto_1

    .line 538
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->clearSearchBox()V

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onHiddenChanged(Z)V

    .line 389
    if-nez p1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateList()V

    .line 387
    :cond_0
    return-void
.end method

.method protected onItemClick(Landroid/view/View;IJ)V
    .locals 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactId(I)J

    move-result-wide v10

    .line 691
    .local v10, "contactId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v20

    .line 693
    .local v20, "directoryId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gez v4, :cond_0

    return-void

    .line 695
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 696
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    if-eqz v4, :cond_1

    .line 697
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onItemClickOnMultiChoiceMode(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;I)V

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 699
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->canEditContact()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 700
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onItemClickOnInsertOrEditMode(IJ)V

    goto :goto_0

    .line 702
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getSelectedUri(IJ)Landroid/net/Uri;

    move-result-object v8

    .line 704
    .local v8, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v4}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getShortcutAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 706
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "displayName":Ljava/lang/String;
    move-object/from16 v5, p0

    move/from16 v9, p2

    .line 707
    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 709
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, p0

    move-object/from16 v16, v8

    move/from16 v17, p2

    move-wide/from16 v18, v10

    invoke-direct/range {v13 .. v19}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;IJ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1375
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onPause()V

    .line 1377
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1374
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1382
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onResume()V

    .line 1384
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateButtonStateInMultiChoiceMode()V

    .line 1388
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateRecipientDrawerAppearance()V

    .line 1381
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 1313
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1315
    const-string/jumbo v1, "is_favorite"

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1316
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_0

    .line 1317
    const-string/jumbo v1, "recipientsDrawerOpen"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientsDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1320
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1324
    const-string/jumbo v1, "recipient_store_max_size"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->getMaxSize()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    const-string/jumbo v1, "recipient_store"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1326
    const-string/jumbo v1, "send_group_check_all"

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsGroupCheckAll:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1328
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1344
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onStart()V

    .line 1348
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mRecipientItemStore:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setCheckedItems(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;)V

    .line 1349
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setPhotoManagerEnabled(Z)V

    .line 1343
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mInitSearchBoxFocus:Z

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mInitSearchBoxFocus:Z

    .line 1776
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1333
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 1335
    if-nez p1, :cond_0

    .line 1336
    return-void

    .line 1339
    :cond_0
    const-string/jumbo v0, "is_favorite"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mIsFavorite:Z

    .line 1332
    return-void
.end method

.method protected setEmptyText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "topPadding":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->isShowingSearchResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 623
    const v2, 0x7f0d009e

    .line 622
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 624
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 625
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09008c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 630
    const v2, 0x7f0d009f

    .line 629
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 631
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 632
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09008b

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isDisableSectionHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 1717
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateButtonStateInMultiChoiceMode()V

    .line 1413
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->updateRecipientDrawerAppearance()V

    .line 1415
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1410
    :cond_0
    return-void
.end method
