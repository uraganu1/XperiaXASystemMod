.class public Lcom/mediatek/beam/BeamShareHistory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BeamShareHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/beam/BeamShareHistory$TabInfo;,
        Lcom/mediatek/beam/BeamShareHistory$ClearTask;,
        Lcom/mediatek/beam/BeamShareHistory$1;,
        Lcom/mediatek/beam/BeamShareHistory$2;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

.field private mCilckedFileName:Ljava/lang/String;

.field private mContentReslover:Landroid/content/ContentResolver;

.field private mCurrentDialogId:I

.field private mCurrentTabIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongClickUri:Landroid/net/Uri;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/beam/BeamShareHistory$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/beam/BeamShareHistory;)Lcom/mediatek/beam/BeamShareTabAdapter;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/beam/BeamShareHistory;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/beam/BeamShareHistory;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/beam/BeamShareHistory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/beam/BeamShareHistory;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/beam/BeamShareHistory;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/beam/BeamShareHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareTabAdapter;)Lcom/mediatek/beam/BeamShareTabAdapter;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/mediatek/beam/BeamShareHistory;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/beam/BeamShareHistory;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/beam/BeamShareHistory;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic -set5(Lcom/mediatek/beam/BeamShareHistory;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/beam/BeamShareHistory;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    .line 145
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/beam/BeamShareHistory$1;-><init>(Lcom/mediatek/beam/BeamShareHistory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 207
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$2;

    invoke-direct {v0, p0}, Lcom/mediatek/beam/BeamShareHistory$2;-><init>(Lcom/mediatek/beam/BeamShareHistory;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 45
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 557
    const/16 v0, 0x45

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 155
    const-string/jumbo v0, "@M_BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 158
    return v3

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 279
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "DialogInterface onClick return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 282
    :cond_0
    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 284
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory$ClearTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 286
    const-string/jumbo v0, "@M_BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Long click uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v1, "@M_BeamShareHistory"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    .line 86
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 87
    const-string/jumbo v1, "@M_BeamShareHistory"

    const-string/jumbo v2, "onCreate() set title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 89
    const v2, 0x7f0b00fb

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    .line 94
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    .line 95
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {v0, p0, p0, v1, v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V

    .line 97
    .local v0, "tab":Lcom/mediatek/beam/BeamShareHistory$TabInfo;
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    .line 99
    .end local v0    # "tab":Lcom/mediatek/beam/BeamShareHistory$TabInfo;
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 98
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V

    .line 100
    .restart local v0    # "tab":Lcom/mediatek/beam/BeamShareHistory$TabInfo;
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    .line 107
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/beam/BeamShareHistory;->setHasOptionsMenu(Z)V

    .line 108
    if-eqz p1, :cond_2

    .line 109
    const-string/jumbo v1, "click_file_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    .line 110
    const-string/jumbo v1, "long_click_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    .line 111
    const-string/jumbo v1, "current_tab_index"

    .line 112
    iget v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    .line 111
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    .line 82
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x104000a

    const v6, 0x1040009

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "dialog":Landroid/app/Dialog;
    iput p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 274
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    const v2, 0x7f0b00f4

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 232
    const v2, 0x7f0b00f5

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 233
    const v2, 0x1040013

    .line 229
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 236
    .local v0, "dialog":Landroid/app/Dialog;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    const v2, 0x7f0b00f7

    .line 236
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 239
    new-array v2, v3, [Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 240
    const v3, 0x7f0b00f8

    .line 239
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 242
    const v2, 0x1040013

    .line 236
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 245
    .local v0, "dialog":Landroid/app/Dialog;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    const v2, 0x7f0b00fc

    .line 245
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 248
    const v2, 0x7f0b00fd

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 253
    .local v0, "dialog":Landroid/app/Dialog;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    const v2, 0x7f0b00f7

    .line 253
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    new-array v2, v3, [Ljava/lang/Object;

    .line 258
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 257
    const v3, 0x7f0b00fe

    .line 256
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 262
    .local v0, "dialog":Landroid/app/Dialog;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    const v2, 0x7f0b00ff

    .line 262
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 264
    const v2, 0x1080027

    .line 262
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 266
    const v2, 0x7f0b0100

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    const v2, 0x7f0b00ff

    .line 262
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 467
    const v0, 0x7f0b00f3

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 469
    const/4 v1, 0x5

    .line 467
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 466
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 187
    const-string/jumbo v4, "@M_BeamShareHistory"

    const-string/jumbo v5, "onCreateView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    .line 191
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04001a

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "rootView":Landroid/view/View;
    const v4, 0x1020012

    .line 193
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    .line 195
    .local v3, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 196
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 197
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 198
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/widget/TabHost;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 201
    iget v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 202
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    iget v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    if-nez v4, :cond_1

    const-string/jumbo v4, "Incoming"

    :goto_1
    invoke-interface {v5, v4}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 204
    return-object v1

    .line 203
    :cond_1
    const-string/jumbo v4, "Outgoing"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 118
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 119
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 120
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    invoke-virtual {v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 121
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    const/4 v0, 0x0

    .line 119
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    :cond_0
    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "unregister content obsever"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 476
    const-string/jumbo v1, "@M_BeamShareHistory"

    const-string/jumbo v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 480
    .local v0, "menuEnabled":Z
    :goto_0
    const-string/jumbo v1, "@M_BeamShareHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Menu enabled status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 475
    .end local v0    # "menuEnabled":Z
    :cond_0
    return-void

    .line 479
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "menuEnabled":Z
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 497
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 498
    const-string/jumbo v0, "click_file_name"

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v0, "long_click_uri"

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 500
    const-string/jumbo v0, "current_tab_index"

    iget v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    return-void
.end method
