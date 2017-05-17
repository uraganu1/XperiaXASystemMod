.class public Lcom/sonyericsson/android/socialphonebook/SimExportActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "SimExportActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;,
        Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;,
        Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;
    }
.end annotation


# static fields
.field private static final CLEAR_PROGRESS_DIALOG:I = 0x3

.field protected static final DBG:Z = false

.field private static final DIALOG_SIM_CLEAR_REMINDER:I = 0x0

.field public static final KEY_STATE_KILL_PROCESS:Ljava/lang/String; = "state_KILL_process"

.field private static final PROCESS_ADD:I = 0x0

.field private static final PROCESS_REPLACE:I = 0x1

.field private static final SIM_EXPORT_FINISH_CLEAR:I = 0x1

.field private static final SIM_EXPORT_INCREMENT:I = 0x2

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBundle:Landroid/os/Bundle;

.field private mCanceled:Z

.field private mConfimDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mHandler:Landroid/os/Handler;

.field private mInsertAmount:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mQueryHandler:Landroid/os/Handler;

.field private mQueryfinished:Ljava/lang/Runnable;

.field private mSubscription:I

.field private mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

.field private miInsertResult:I

.field private miProcess:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mErrDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mInsertAmount:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryfinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    return v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Lcom/sonyericsson/android/socialphonebook/SimExportThread;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->miInsertResult:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mErrDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->miProcess:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->clearAlertDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->confirmation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->initThread()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->showProgress()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->startProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mCanceled:Z

    .line 104
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->miInsertResult:I

    .line 107
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mInsertAmount:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    .line 115
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryfinished:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method private clearAlertDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    const-string/jumbo v0, "clearAlertDialog"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 389
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 383
    :cond_1
    return-void
.end method

.method private clearDialog()V
    .locals 2

    .prologue
    .line 375
    const-string/jumbo v0, "clearDialog"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->clearProgressDialog()V

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->clearAlertDialog()V

    .line 374
    return-void
.end method

.method private confirmation()V
    .locals 3

    .prologue
    .line 499
    const-string/jumbo v1, "confirmation"

    const-string/jumbo v2, "start."

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;)V

    .line 501
    .local v0, "listener":Lcom/sonyericsson/android/socialphonebook/SimExportActivity$ConfimDialogListner;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mConfimDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 502
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mConfimDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0902ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 503
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getReplaceConfirmation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 504
    const v2, 0x7f090200

    .line 502
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 505
    const v2, 0x7f0901f9

    .line 502
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mConfimDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$5;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mConfimDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 498
    return-void
.end method

.method private initThread()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 461
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mBundle:Landroid/os/Bundle;

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->miProcess:I

    if-ne v4, v3, :cond_0

    .line 462
    :goto_0
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    move-object v4, p0

    move-object v5, p0

    .line 461
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;-><init>(Landroid/content/ContentResolver;Landroid/os/Bundle;ZLandroid/content/Context;Lcom/sonyericsson/android/socialphonebook/SimExportThread$SimExportThreadListener;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    .line 460
    return-void

    .line 461
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

.method private showProgress()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 475
    const-string/jumbo v2, "showProgress"

    const-string/jumbo v3, "start."

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const v2, 0x7f0902ab

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "title":Ljava/lang/CharSequence;
    const v2, 0x7f0902c5

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 483
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 486
    const v3, 0x7f0901f9

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 488
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 489
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 490
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 491
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 474
    return-void
.end method

.method private startProgress()V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->initThread()V

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->showDialog(I)V

    .line 465
    return-void
.end method


# virtual methods
.method protected final clearProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    const-string/jumbo v0, "clearProgressDialog"

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 402
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 396
    :cond_1
    return-void
.end method

.method public exportFinished(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->miInsertResult:I

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 594
    return-void
.end method

.method public incrementProgressBy(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mCanceled:Z

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->cancel()V

    .line 535
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 531
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mCanceled:Z

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->cancel()V

    .line 553
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 549
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInatanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    const-string/jumbo v6, "onCreate"

    const-string/jumbo v7, "start."

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-eqz p1, :cond_1

    .line 216
    const-string/jumbo v6, "state_KILL_process"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    const-string/jumbo v6, "savedInatanceState"

    const-string/jumbo v7, "true."

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->finish()V

    .line 219
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "subscription"

    .line 224
    const/4 v7, -0x1

    .line 223
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    .line 225
    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.intent.extra.CONTACTS_BUNDLE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mBundle:Landroid/os/Bundle;

    .line 227
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 228
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mInsertAmount:I

    .line 231
    :cond_2
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v5, Landroid/os/HandlerThread;

    const-string/jumbo v6, "SimExportQueryThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 235
    .local v5, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 236
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 237
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_3

    .line 238
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryHandler:Landroid/os/Handler;

    .line 241
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v3, "selectDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 243
    .local v2, "r":Landroid/content/res/Resources;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .line 244
    const v6, 0x7f0902ae

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 245
    const v6, 0x7f0902b3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 248
    .local v4, "selectionMenu":[Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 247
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    .line 280
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressHandler:Landroid/os/Handler;

    .line 318
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 207
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 574
    const/4 v0, 0x0

    .line 578
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 579
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v4, 0x7f0902ab

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 581
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 582
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400d1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 583
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0e020d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 584
    .local v2, "tv":Landroid/widget/TextView;
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mSubscription:I

    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getClearContactsReminder(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 586
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 587
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 590
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 591
    return-object v0
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 344
    const-string/jumbo v0, "onDestroy"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mThread:Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->cancel()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 355
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mCanceled:Z

    .line 356
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->clearDialog()V

    .line 343
    return-void
.end method

.method protected final onResume()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onResume()V

    .line 327
    const-string/jumbo v0, "onResume"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    const-string/jumbo v0, "onSaveInstanceState"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 368
    const-string/jumbo v0, "state_KILL_process"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStop()V

    .line 336
    const-string/jumbo v0, "onStop"

    const-string/jumbo v1, "start."

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public sweepFinished()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    return-void
.end method
