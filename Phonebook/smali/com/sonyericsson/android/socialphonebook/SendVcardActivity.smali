.class public Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "SendVcardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;,
        Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "/"

.field private static final KEY_STATE_KILL_PROCESS:Ljava/lang/String; = "state_kill_process"

.field private static final LOG_TAG:Ljava/lang/String; = "SendVCardActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field private mChooseTitle:Ljava/lang/String;

.field protected mConfirmDialog:Landroid/app/AlertDialog;

.field private mConnected:Z

.field private mContactsIdList:[J

.field private mCreateFile:Ljava/io/File;

.field private mDisplayProgress:Z

.field private mErrorReason:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private mJobId:I

.field private volatile mProcessOngoing:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field public mTargetFileName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mJobId:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mJobId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->sendContacts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->startShareIntent()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->unbindAndFinish()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mCreateFile:Ljava/io/File;

    .line 63
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mDisplayProgress:Z

    .line 71
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProcessOngoing:Z

    .line 46
    return-void
.end method

.method private alertMessageShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->alertMessageShow(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    return-void
.end method

.method private alertMessageShow(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isStartShare"    # Z

    .prologue
    .line 259
    const-string/jumbo v1, "alertMessageShow"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start. title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->clearAlertDialog()V

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 271
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;

    invoke-direct {v2, p0, p3}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Z)V

    .line 270
    const v3, 0x7f090200

    .line 268
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 282
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 268
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 258
    return-void
.end method

.method private clearAlertDialog()V
    .locals 2

    .prologue
    .line 306
    const-string/jumbo v0, "clearAlertDialog"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    :cond_1
    return-void
.end method

.method private fileDelete()V
    .locals 2

    .prologue
    .line 327
    const-string/jumbo v0, "fileDelete"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mCreateFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mCreateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mCreateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const-string/jumbo v0, "createFiledelete"

    const-string/jumbo v1, "File delete error"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method private logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 346
    if-eqz p2, :cond_1

    .line 347
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContacts()V
    .locals 9

    .prologue
    .line 131
    const v6, 0x7f090397

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "fileName":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mDisplayProgress:Z

    if-eqz v6, :cond_0

    .line 134
    const v6, 0x7f0902cc

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "title":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const v7, 0x7f0902cd

    invoke-virtual {p0, v7, v6}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v5, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->progressDialogShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 140
    .local v4, "targetDirectoryOk":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getDefaultExternalStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getSdCardContactsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    const/4 v4, 0x1

    .line 156
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 157
    const-string/jumbo v6, "EncodeThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Check directory error : Path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const v6, 0x7f0901fa

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    const v7, 0x7f0902af

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->alertMessageShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    :cond_3
    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    .line 168
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mCreateFile:Ljava/io/File;

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->fileDelete()V

    .line 172
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mContactsIdList:[J

    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->startEncodeVCard(Ljava/lang/String;[J)V

    .line 129
    return-void
.end method

.method private declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    monitor-enter p0

    .line 391
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 390
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startShareIntent()V
    .locals 3

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "send_vcard_file"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->finish()V

    .line 354
    return-void
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 395
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->setConnected(Z)V

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final clearProgressDialog()V
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "clearProgressDialog"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->unbindAndFinish()V

    .line 475
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e0025

    const v4, 0x7f090296

    .line 93
    const-string/jumbo v2, "onCreate"

    const-string/jumbo v3, "start"

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "contacts_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mContactsIdList:[J

    .line 101
    const-string/jumbo v2, "display_progress"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mDisplayProgress:Z

    .line 102
    const-string/jumbo v2, "choose_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mChooseTitle:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mChooseTitle:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 105
    const v2, 0x7f0902a7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mChooseTitle:Ljava/lang/String;

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 109
    const-string/jumbo v3, "CALLING_ACTIVITY"

    .line 108
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "callingActivity":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CALLING_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    .line 114
    const-string/jumbo v2, "SendVCardActivity"

    const-string/jumbo v3, "Failed to start vCard service"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mErrorReason:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    .line 117
    return-void

    .line 120
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    const-string/jumbo v2, "SendVCardActivity"

    const-string/jumbo v3, "Failed to connect to vCard service."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mErrorReason:Ljava/lang/String;

    .line 123
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    .line 92
    :cond_3
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f09029e

    const v1, 0x7f09029d

    const v4, 0x104000a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 404
    sparse-switch p1, :sswitch_data_0

    .line 431
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 406
    :sswitch_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProcessOngoing:Z

    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 409
    new-array v1, v2, [Ljava/lang/Object;

    .line 410
    const v2, 0x7f09029f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 409
    invoke-virtual {p0, v5, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 415
    :sswitch_1
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProcessOngoing:Z

    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    new-array v2, v2, [Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mErrorReason:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    .line 418
    invoke-virtual {p0, v5, v2}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 416
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09029f -> :sswitch_0
        0x7f0e0025 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "onDestroy"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->clearProgressDialog()V

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->clearAlertDialog()V

    .line 193
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    const-string/jumbo v0, "onSaveInstanceState"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string/jumbo v0, "state_kill_process"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 363
    const-string/jumbo v0, "SendVCardActivity"

    const-string/jumbo v1, "connected to service, requesting a destination file name"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->setConnected(Z)V

    .line 365
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 372
    const-string/jumbo v0, "SendVCardActivity"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->setConnected(Z)V

    .line 375
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 377
    const-string/jumbo v0, "SendVCardActivity"

    const-string/jumbo v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->showDialog(I)V

    .line 371
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStop()V

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->unbindAndFinish()V

    .line 383
    :cond_0
    return-void
.end method

.method protected final progressDialogShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/String;
    .param p2, "r2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 213
    const-string/jumbo v0, "progressDialogShow"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start. r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "r2"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mContactsIdList:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 226
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 212
    return-void
.end method

.method public startEncodeVCard(Ljava/lang/String;[J)V
    .locals 5
    .param p1, "aFilePath"    # Ljava/lang/String;
    .param p2, "aContactId"    # [J

    .prologue
    const/4 v4, 0x0

    .line 176
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 177
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    new-instance v1, Lcom/android/contacts/common/vcard/ExportRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2, p2, v4}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;[JLjava/lang/String;)V

    .line 180
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;-><init>(Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;Lcom/sonyericsson/android/socialphonebook/SendVcardActivity$ExportListener;)V

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 175
    return-void
.end method
