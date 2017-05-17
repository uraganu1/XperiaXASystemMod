.class Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field private textField:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method public constructor <init>(ILcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;I)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "handler"    # Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;
    .param p3, "token"    # I

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 498
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;

    .line 499
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    .line 496
    return-void
.end method


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    monitor-enter p0

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->-wrap0(Landroid/content/Context;)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 520
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "text"    # Landroid/widget/EditText;

    .prologue
    monitor-enter p0

    .line 513
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 512
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
