.class public Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
.super Landroid/app/ListFragment;
.source "SdnContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;

.field private static final KEY_IS_DUAL_SDN:Ljava/lang/String; = "isDualSdn"

.field private static final QUERY_TOKEN:I = 0x2c

.field private static final SDN_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_NAMES:[I


# instance fields
.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mDualSdn:Z

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mQueryHandler:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

.field private mSub:I


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->displayProgress(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->setupAdapter(Landroid/database/Cursor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->TAG:Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    .line 47
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->COLUMN_NAMES:[Ljava/lang/String;

    .line 53
    const v0, 0x1020014

    const v1, 0x1020015

    .line 52
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->VIEW_NAMES:[I

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    .line 57
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->SDN_PROJECTION:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mSub:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mDualSdn:Z

    .line 36
    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .param p1, "done"    # Z

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f090230

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 172
    if-eqz p1, :cond_1

    const/4 v0, -0x2

    .line 171
    :goto_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 168
    return-void

    .line 170
    :cond_0
    const v0, 0x7f0900a3

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
    .locals 3
    .param p0, "sub"    # I
    .param p1, "isDualSdn"    # Z

    .prologue
    .line 79
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;-><init>()V

    .line 81
    .local v1, "f":Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "isDualSdn"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v2, "subscription"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 179
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 180
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "account_type=\'com.sonyericsson.sdncontacts\' AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 182
    .local v5, "selection":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mDualSdn:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND data3=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mSub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->SDN_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x2c

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private setupAdapter(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 154
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->VIEW_NAMES:[I

    const v2, 0x1090004

    .line 155
    const/4 v6, 0x2

    move-object v3, p1

    .line 153
    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mEmptyText:Landroid/widget/TextView;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->query()V

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->displayProgress(Z)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v1, "isDualSdn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mDualSdn:Z

    .line 96
    const-string/jumbo v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mSub:I

    .line 99
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const v0, 0x7f0400c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment$SdnQueryHandler;->cancelOperation(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 118
    :cond_1
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "aListView"    # Landroid/widget/ListView;
    .param p2, "aView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 132
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 133
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    const-string/jumbo v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "numData":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "subscription"

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->mSub:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method
