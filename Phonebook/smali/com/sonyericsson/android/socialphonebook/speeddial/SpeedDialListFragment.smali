.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;
.super Landroid/app/ListFragment;
.source "SpeedDialListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;
.implements Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;,
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
    }
.end annotation


# static fields
.field private static final POSITION_LOADER_ID:I = 0x1

.field private static final POSITION_NOT_FOUND:I = -0x1

.field private static final SAVE_INSTANCE_POSITION:Ljava/lang/String; = "Position"

.field private static final SAVE_INSTANCE_SPEED_DIAL_ITEMS:Ljava/lang/String; = "SpeedDialItems"

.field private static final SAVE_INSTANCE_SPEED_DIAL_NUMBER_POSITION:Ljava/lang/String; = "SpeedDialNumberPosition"

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOAD_FROM_DB:I = 0x1


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

.field private mDbHelper:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

.field private mIsAddingEmergencyNumberInSpeedDialEnabled:Z

.field private mIsContactPickerStarted:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPosition:I

.field private mPositionLoaderListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;

.field private mSpeedDialItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedDialNumberPosition:I

.field private mState:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mDbHelper:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialItems:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialNumberPosition:I

    .line 47
    return-void
.end method

.method private assignNumberToPosition(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "phoneNumberId"    # J

    .prologue
    .line 317
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mDbHelper:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncCreateNewEntry(IJ)V

    .line 316
    return-void
.end method

.method private isItemAssignedToSpeedDial(J)I
    .locals 7
    .param p1, "phoneNumberId"    # J

    .prologue
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->getItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    .line 263
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getPhoneDataId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->getSpeedDialPosition()I

    move-result v3

    return v3

    .line 267
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private isSpeedDialPositionAssigned(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 277
    new-instance v0, Ljava/util/HashMap;

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->getItems()Ljava/util/Map;

    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 279
    .local v0, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveItemToPosition(II)V
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mDbHelper:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->asyncUpdateEntryPosition(II)V

    .line 328
    return-void
.end method

.method private showAssignNumberDialog(II)V
    .locals 3
    .param p1, "newPosition"    # I
    .param p2, "oldPosition"    # I

    .prologue
    .line 291
    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->newInstance(II)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    move-result-object v0

    .line 293
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private showReplaceNumberDialog(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "phoneNumberId"    # J

    .prologue
    .line 304
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->newInstance(IJ)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    move-result-object v0

    .line 306
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 303
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPositionLoaderListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;

    .line 156
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialNumberPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 154
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 182
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    .line 183
    if-ne p2, v9, :cond_5

    if-eqz p3, :cond_5

    .line 184
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 185
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 187
    .local v2, "phoneNumberId":J
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->isItemAssignedToSpeedDial(J)I

    move-result v1

    .line 188
    .local v1, "oldPosition":I
    const-string/jumbo v6, "extra_phonenumber"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "phonenumber":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;

    move-result-object v0

    .line 192
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
    invoke-virtual {v0, p0, v8}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    return-void

    .line 196
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$SpeedDialEmergencyNumberNotAllowedDialog;
    :cond_0
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    if-eq v1, v6, :cond_4

    .line 197
    if-eq v1, v9, :cond_2

    .line 198
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    invoke-direct {p0, v6, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->showAssignNumberDialog(II)V

    .line 213
    .end local v1    # "oldPosition":I
    .end local v2    # "phoneNumberId":J
    .end local v4    # "phonenumber":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mIsContactPickerStarted:Z

    .line 181
    return-void

    .line 200
    .restart local v1    # "oldPosition":I
    .restart local v2    # "phoneNumberId":J
    .restart local v4    # "phonenumber":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->isSpeedDialPositionAssigned(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    invoke-direct {p0, v6, v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->showReplaceNumberDialog(IJ)V

    goto :goto_0

    .line 203
    :cond_3
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    invoke-direct {p0, v6, v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->assignNumberToPosition(IJ)V

    goto :goto_0

    .line 207
    :cond_4
    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    goto :goto_0

    .line 210
    .end local v1    # "oldPosition":I
    .end local v2    # "phoneNumberId":J
    .end local v4    # "phonenumber":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    goto :goto_0
.end method

.method public onAssignClick(II)V
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 228
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->moveItemToPosition(II)V

    .line 225
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mDbHelper:Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    .line 98
    if-eqz p1, :cond_2

    .line 101
    const-string/jumbo v2, "Position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    .line 103
    const-string/jumbo v2, "SpeedDialNumberPosition"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialNumberPosition:I

    .line 107
    const-string/jumbo v2, "SpeedDialItems"

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 108
    .local v1, "speedDialItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    if-eqz v1, :cond_1

    .line 109
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    .line 117
    .end local v1    # "speedDialItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "speedDialNumber"

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "dialedSpeedDialNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isAddingEmergencyNumberInSpeedDialEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mIsAddingEmergencyNumberInSpeedDialEnabled:Z

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialNumberPosition:I

    .line 141
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPositionLoaderListener:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment$PositionsLoaderListener;

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 94
    return-void

    .line 111
    .end local v0    # "dialedSpeedDialNumber":Ljava/lang/String;
    .restart local v1    # "speedDialItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    goto :goto_0

    .line 114
    .end local v1    # "speedDialItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;>;"
    :cond_2
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "content":Landroid/view/View;
    const v1, 0x7f0e0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setGoneIndexedBar(Z)V

    .line 150
    return-object v0
.end method

.method public onDuplicateCancel()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    .line 243
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    if-nez v1, :cond_0

    .line 163
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mIsContactPickerStarted:Z

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mIsContactPickerStarted:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "speedDialIntent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "disable_sim_account"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mIsAddingEmergencyNumberInSpeedDialEnabled:Z

    if-nez v1, :cond_2

    .line 173
    const-string/jumbo v1, "phonenumber_required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    goto :goto_0
.end method

.method public onReplaceCancel()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    .line 248
    return-void
.end method

.method public onReplaceClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "phoneNumberId"    # J

    .prologue
    .line 237
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->assignNumberToPosition(IJ)V

    .line 234
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "instanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string/jumbo v0, "Position"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string/jumbo v0, "SpeedDialNumberPosition"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialNumberPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string/jumbo v0, "SpeedDialItems"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialListFragment;->mSpeedDialItems:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    return-void
.end method
