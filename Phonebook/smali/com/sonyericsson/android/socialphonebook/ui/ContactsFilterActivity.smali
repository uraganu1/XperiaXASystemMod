.class public final Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;
.source "ContactsFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$Prefs;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;,
        Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELETED:I = 0x0

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field private static final DIALOG_DISPLAY_ORDER:I = 0x2

.field private static final DIALOG_SORT_ORDER:I = 0x1

.field private static final SYNC_MODE_EVERYTHING:I = 0x2

.field private static final SYNC_MODE_UNGROUPED:I = 0x1

.field private static final SYNC_MODE_UNSUPPORTED:I

.field private static final TAG:Ljava/lang/String;

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

.field private mChkOnlineContacts:Landroid/widget/CheckBox;

.field private mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

.field private mDisplayOrder:I

.field private mDisplayOrderTextView:Landroid/widget/TextView;

.field private mDisplayOrderView:Landroid/view/View;

.field private mDisplayPhones:Landroid/widget/CheckBox;

.field private mGeneralFiltersHeaderSeparator:Landroid/view/View;

.field private mHeaderOnlineContacts:Landroid/view/View;

.field private mHeaderPhones:Landroid/view/View;

.field private mHeaderSeparator:Landroid/view/View;

.field private mIsTablet:Z

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSavingDisplayGroupsProgressDialog:Landroid/app/ProgressDialog;

.field private mShowDisplayNameOrder:Z

.field private mShowSortOrder:Z

.field private mSimContactsVisible:Z

.field private mSortOrder:I

.field private mSortOrderTextView:Landroid/widget/TextView;

.field private mSortOrderView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->TAG:Ljava/lang/String;

    .line 680
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->sIdComparator:Ljava/util/Comparator;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;-><init>()V

    .line 127
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    .line 131
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    .line 93
    return-void
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 673
    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private bindView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowSortOrder:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    if-ne v0, v2, :cond_2

    .line 249
    const v0, 0x7f090214

    .line 248
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowDisplayNameOrder:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    if-ne v0, v2, :cond_3

    .line 254
    const v0, 0x7f090217

    .line 253
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :cond_1
    return-void

    .line 250
    :cond_2
    const v0, 0x7f090215

    goto :goto_0

    .line 255
    :cond_3
    const v0, 0x7f090218

    goto :goto_1
.end method

.method private createDisplayOrderDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 316
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 317
    const v1, 0x7f090217

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 318
    const v1, 0x7f090218

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 321
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090216

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 322
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)V

    const/4 v3, -0x1

    .line 321
    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createDisplayOrderPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 274
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v3, 0x7f040066

    .line 275
    const/4 v4, 0x0

    .line 274
    invoke-virtual {p1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderView:Landroid/view/View;

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderView:Landroid/view/View;

    const v3, 0x7f0e012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "preferenceLayout":Landroid/view/View;
    const v2, 0x7f0e0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "label":Landroid/widget/TextView;
    const v2, 0x7f090216

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 281
    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderTextView:Landroid/widget/TextView;

    .line 282
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderView:Landroid/view/View;

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrderView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    .line 273
    return-void
.end method

.method private createSortOrderDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 300
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 301
    const v1, 0x7f090214

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 302
    const v1, 0x7f090215

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 304
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    const v2, 0x7f090213

    .line 304
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 306
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)V

    const/4 v3, -0x1

    .line 304
    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 312
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createSortOrderPreferenceView(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 260
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v3, 0x7f040066

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderView:Landroid/view/View;

    .line 262
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderView:Landroid/view/View;

    const v3, 0x7f0e012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "preferenceLayout":Landroid/view/View;
    const v2, 0x7f0e0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    .local v0, "label":Landroid/widget/TextView;
    const v2, 0x7f090213

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 267
    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderTextView:Landroid/widget/TextView;

    .line 268
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderView:Landroid/view/View;

    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 269
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrderView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 270
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getSortOrder()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    .line 259
    return-void
.end method

.method private isStateChanged(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)Z
    .locals 13
    .param p1, "presentState"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1218
    const/4 v9, 0x0

    .line 1219
    .local v9, "stateBefore":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 1221
    .local v8, "stateAfter":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v8    # "stateAfter":Landroid/content/ContentValues;
    .end local v9    # "stateBefore":Landroid/content/ContentValues;
    .local v1, "accountDisplay$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 1222
    .local v0, "accountDisplay":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v10, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "groupDelta$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 1223
    .local v2, "groupDelta":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v9

    .line 1224
    .local v9, "stateBefore":Landroid/content/ContentValues;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v8

    .line 1226
    .local v8, "stateAfter":Landroid/content/ContentValues;
    if-nez v8, :cond_2

    .line 1227
    return v11

    .line 1230
    :cond_2
    if-nez v9, :cond_3

    .line 1231
    return v12

    .line 1234
    :cond_3
    invoke-virtual {v8}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1235
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1236
    .local v6, "newValue":Ljava/lang/Integer;
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1237
    .local v7, "oldValue":Ljava/lang/Integer;
    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    .line 1239
    :cond_5
    return v12

    .line 1238
    :cond_6
    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    .line 1244
    .end local v0    # "accountDisplay":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v2    # "groupDelta":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v3    # "groupDelta$iterator":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "newValue":Ljava/lang/Integer;
    .end local v7    # "oldValue":Ljava/lang/Integer;
    .end local v8    # "stateAfter":Landroid/content/ContentValues;
    .end local v9    # "stateBefore":Landroid/content/ContentValues;
    :cond_7
    return v11
.end method

.method private setCheckedItem(Landroid/app/Dialog;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "position"    # I

    .prologue
    .line 347
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 348
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 349
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 346
    return-void
.end method


# virtual methods
.method doSaveAction()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setSortOrder(I)V

    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->setDisplayOrder(I)V

    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->isStateChanged(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->isStateChanged(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1201
    :cond_1
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1200
    invoke-static {p0, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSavingDisplayGroupsProgressDialog:Landroid/app/ProgressDialog;

    .line 1202
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSimContactsVisible:Z

    if-eqz v0, :cond_2

    .line 1203
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 1204
    const v1, 0x7f0901c6

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 1205
    const-string/jumbo v3, "sim_contacts_visible_event_sent"

    const-wide/16 v4, 0x0

    .line 1203
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1207
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1185
    :goto_0
    return-void

    .line 1209
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->finish()V

    goto :goto_0
.end method

.method protected getSyncMode(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;)I
    .locals 2
    .param p1, "account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .prologue
    .line 1072
    const-string/jumbo v0, "com.google"

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1073
    const/4 v0, 0x2

    return v0

    .line 1075
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRemoveSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 5
    .param p1, "account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .param p2, "child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p3, "syncMode"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1124
    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    .line 1125
    .local v2, "shouldSyncUngrouped":Z
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    .line 1126
    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1145
    :cond_0
    invoke-virtual {p1, p2, v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Z)V

    .line 1146
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1123
    :goto_0
    return-void

    .line 1128
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1130
    aput-object p4, v3, v4

    const v4, 0x7f0900c3

    .line 1129
    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, "removeMessage":Ljava/lang/CharSequence;
    const v3, 0x7f0900be

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1133
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1134
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$5;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->doSaveAction()V

    .line 1176
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v7, 0x1

    .line 1029
    const v5, 0x1020001

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1031
    .local v1, "checkbox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-virtual {v5, p3, p4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 1033
    .local v2, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    if-eqz v2, :cond_2

    .line 1034
    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 1035
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->putVisible(Z)V

    .line 1045
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 1046
    .local v0, "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "com.sonyericsson.adncontacts"

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1047
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSimContactsVisible:Z

    .line 1049
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "hiddenAccount$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 1050
    .local v3, "hiddenAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v6, v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mAliasType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1051
    iget-object v5, v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 1052
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 1051
    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->putVisible(Z)V

    .line 1053
    return v7

    .line 1058
    .end local v0    # "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v3    # "hiddenAccount":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .end local v4    # "hiddenAccount$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->openContextMenu(Landroid/view/View;)V

    .line 1061
    :cond_3
    return v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x1020014

    const v10, 0x1020001

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const v4, 0x7f040003

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->setContentView(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mActionBar:Landroid/app/ActionBar;

    .line 157
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f0901ef

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 160
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 165
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v5, 0x7f0400af

    invoke-virtual {v1, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mGeneralFiltersHeaderSeparator:Landroid/view/View;

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mGeneralFiltersHeaderSeparator:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, "text1":Landroid/widget/TextView;
    const v4, 0x7f090219

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mGeneralFiltersHeaderSeparator:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 173
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v5, 0x7f040065

    invoke-virtual {v1, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    .line 174
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v5, 0x7f0e0001

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 175
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "only_phones"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text1":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 180
    .restart local v2    # "text1":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    const v5, 0x1020015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, "text2":Landroid/widget/TextView;
    const v4, 0x7f09008f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const v4, 0x7f090090

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderPhones:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 187
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v5, 0x7f040065

    invoke-virtual {v1, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    .line 188
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    const v5, 0x7f0e0003

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 189
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mChkOnlineContacts:Landroid/widget/CheckBox;

    .line 190
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mChkOnlineContacts:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "online_contacts"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text1":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 194
    .restart local v2    # "text1":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    const v5, 0x1020015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "text2":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 195
    .restart local v3    # "text2":Landroid/widget/TextView;
    const v4, 0x7f090211

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 196
    const v4, 0x7f090212

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderOnlineContacts:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    .line 201
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowSortOrder:Z

    .line 202
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mContactsPrefs:Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowDisplayNameOrder:Z

    .line 203
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowSortOrder:Z

    if-eqz v4, :cond_1

    .line 204
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->createSortOrderPreferenceView(Landroid/view/LayoutInflater;)V

    .line 206
    :cond_1
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mShowDisplayNameOrder:Z

    if-eqz v4, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->createDisplayOrderPreferenceView(Landroid/view/LayoutInflater;)V

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->bindView()V

    .line 212
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const v5, 0x7f0400af

    invoke-virtual {v1, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderSeparator:Landroid/view/View;

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderSeparator:Landroid/view/View;

    .end local v2    # "text1":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 215
    .restart local v2    # "text1":Landroid/widget/TextView;
    const v4, 0x7f09021a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 219
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mIsTablet:Z

    .line 221
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mIsTablet:Z

    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 223
    .local v0, "actBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 227
    .end local v0    # "actBar":Landroid/app/ActionBar;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 231
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;)V

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1082
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1085
    instance-of v6, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v4, p3

    .line 1087
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 1088
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 1089
    .local v3, "groupPosition":I
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 1092
    .local v2, "childPosition":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    return-void

    .line 1094
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 1095
    .local v0, "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 1098
    .local v1, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->getSyncMode(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;)I

    move-result v5

    .line 1099
    .local v5, "syncMode":I
    if-nez v5, :cond_2

    return-void

    .line 1101
    :cond_2
    if-eqz v1, :cond_3

    .line 1102
    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;I)V

    .line 1081
    :goto_0
    return-void

    .line 1104
    :cond_3
    invoke-virtual {p0, p1, v0, v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 291
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->createSortOrderDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->createDisplayOrderDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSavingDisplayGroupsProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSavingDisplayGroupsProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 378
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;->onDestroy()V

    .line 379
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 995
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    :goto_0
    :pswitch_0
    return-void

    .line 997
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 998
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "only_phones"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayPhones:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1003
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mChkOnlineContacts:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "online_contacts"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mChkOnlineContacts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 1004
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1010
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showDialog(I)V

    goto :goto_0

    .line 1014
    :pswitch_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->showDialog(I)V

    goto :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0x7f0e0001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->doSaveAction()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    if-ne v2, v1, :cond_0

    .line 334
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->setCheckedItem(Landroid/app/Dialog;I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 335
    goto :goto_1

    .line 339
    :pswitch_1
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    if-ne v2, v1, :cond_1

    .line 338
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->setCheckedItem(Landroid/app/Dialog;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 339
    goto :goto_2

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDisplayOrder(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 363
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 364
    .local v0, "checked":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mDisplayOrder:I

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->bindView()V

    .line 361
    return-void

    .line 365
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public setListAdapter(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 480
    return-void
.end method

.method protected setSortOrder(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 353
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 354
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 355
    .local v0, "checked":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->mSortOrder:I

    .line 358
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->bindView()V

    .line 352
    return-void

    .line 356
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;I)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .param p3, "syncMode"    # I

    .prologue
    .line 1152
    const v3, 0x7f0900bf

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1155
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 1156
    .local v0, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1157
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1158
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$6;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1151
    .end local v0    # "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;I)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    .param p3, "child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p4, "syncMode"    # I

    .prologue
    .line 1110
    invoke-virtual {p3, p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1112
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1113
    const v0, 0x7f0900be

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1114
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    .line 1113
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1109
    return-void
.end method
