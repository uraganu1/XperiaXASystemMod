.class public Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "BackupMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;,
        Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

.field private mExternalStorageBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOperationType:I

.field private mSelectionArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionMenuListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSimBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

.field private mStorageListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOperationType:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->doExportToExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 64
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .line 260
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    .line 259
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionMenuListener:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    .line 276
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 44
    return-void
.end method

.method private addSimPath(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;>;"
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getSimBackupItem(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method private buildSelectionArrayList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v3, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;>;"
    const/4 v5, 0x1

    .line 386
    .local v5, "shouldShowExportToSimContacts":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 389
    .local v0, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOperationType:I

    if-ne v9, v8, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableExportToSim()Z

    move-result v5

    .line 393
    .end local v5    # "shouldShowExportToSimContacts":Z
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v1, 0x1

    .line 394
    .local v1, "isOwner":Z
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getHideSimContacts()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    .line 395
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 396
    invoke-static {p0, v7}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 397
    const-string/jumbo v8, "sim_sub1_path"

    invoke-direct {p0, v3, v8}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->addSimPath(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-static {p0, v9}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 400
    const-string/jumbo v8, "sim_sub2_path"

    invoke-direct {p0, v3, v8}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->addSimPath(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 411
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "storages":[Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 414
    array-length v8, v6

    :goto_2
    if-ge v7, v8, :cond_6

    aget-object v4, v6, v7

    .line 416
    .local v4, "s":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getExternalStorageBackupItem(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    move-result-object v2

    .line 417
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    if-eqz v2, :cond_3

    iget-object v9, v2, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->title_1:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 418
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 393
    .end local v1    # "isOwner":Z
    .end local v2    # "item":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "storages":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isOwner":Z
    goto :goto_0

    .line 403
    :cond_5
    const/4 v8, -0x1

    invoke-static {p0, v8}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 404
    const-string/jumbo v8, "sim_path"

    invoke-direct {p0, v3, v8}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->addSimPath(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    .restart local v6    # "storages":[Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method private doExportToExternalStorage(Ljava/lang/String;)V
    .locals 7
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, "exportIntent":Landroid/content/Intent;
    const-class v5, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    .line 215
    .local v1, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getSdCardContactsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "exportPath":Ljava/lang/String;
    const-string/jumbo v5, "external_storage_path"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private getAutoDimAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;

    .line 487
    const v1, 0x7f0400d4

    .line 486
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getExternalStorageBackupItem(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    .locals 3
    .param p1, "storagePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "title":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 240
    return-object v2

    .line 243
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getExternalStorageDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mExternalStorageBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mExternalStorageBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    .line 250
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mExternalStorageBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    invoke-direct {v1, v0, v2, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;Ljava/lang/String;)V

    return-object v1
.end method

.method private getSimBackupItem(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSimBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToSimSelectedHandler;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSimBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->convertPathToSub(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "sub":I
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimTxt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSimBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    invoke-direct {v2, v1, v3, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;Ljava/lang/String;)V

    return-object v2
.end method

.method private initStorageListener()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$5;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    .line 524
    return-void
.end method

.method private registerStorageListener()V
    .locals 3

    .prologue
    .line 538
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 539
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, "errorDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 438
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    const v2, 0x7f090200

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 434
    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 286
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 292
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 295
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 297
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 298
    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.intent.extra.BACKUP_PROCESS"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOperationType:I

    .line 301
    :cond_2
    invoke-virtual {p0, v7, v9}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOperationType:I

    if-ne v6, v8, :cond_4

    .line 306
    const v6, 0x7f0902d7

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 311
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->buildSelectionArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionArrayList:Ljava/util/ArrayList;

    .line 312
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 313
    .local v5, "size":I
    new-array v4, v5, [Ljava/lang/String;

    .line 315
    .local v4, "selectionMenu":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_5

    .line 316
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    iget-object v6, v6, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->title_1:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    .end local v2    # "i":I
    .end local v4    # "selectionMenu":[Ljava/lang/String;
    .end local v5    # "size":I
    :cond_4
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOperationType:I

    if-nez v6, :cond_3

    .line 308
    const v6, 0x7f0902d6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 320
    .restart local v2    # "i":I
    .restart local v4    # "selectionMenu":[Ljava/lang/String;
    .restart local v5    # "size":I
    :cond_5
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getAutoDimAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 322
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSelectionMenuListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 327
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->initStorageListener()V

    .line 285
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x0

    .line 457
    packed-switch p1, :pswitch_data_0

    .line 476
    return-object v4

    .line 461
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    if-nez v3, :cond_0

    .line 462
    return-object v4

    .line 464
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    .line 466
    .local v2, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;

    .line 470
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 469
    invoke-direct {v1, p0, p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 472
    .local v1, "accountSelectedListener":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mCurrentItem:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 471
    invoke-static {p0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v3

    return-object v3

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x7f09028e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onDestroy()V

    .line 372
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mExternalStorageBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    .line 373
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mSimBackupSelectionHandler:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;

    .line 370
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onPause()V

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 331
    :cond_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->TAG:Ljava/lang/String;

    .line 338
    const-string/jumbo v2, "Calling OnPause, exception occurred during unregister Storage Listerner "

    .line 337
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onResume()V

    .line 350
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mStorageListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->registerStorageListener()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 348
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onStart()V

    .line 364
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    return-void

    .line 362
    :cond_0
    return-void
.end method
