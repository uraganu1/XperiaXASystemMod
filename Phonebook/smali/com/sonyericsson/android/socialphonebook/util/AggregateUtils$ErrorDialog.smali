.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static final MESSAGE_KEY:Ljava/lang/String; = "messageKey"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->TAG:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
    .locals 1
    .param p0, "messageId"    # I

    .prologue
    .line 206
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;-><init>()V

    .line 207
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
    iput p0, v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mMessageId:I

    .line 208
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string/jumbo v1, "messageKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mMessageId:I

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    const v2, 0x7f09028c

    .line 223
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 226
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mMessageId:I

    .line 223
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;Landroid/app/Activity;)V

    const v3, 0x104000a

    .line 223
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string/jumbo v0, "messageKey"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->mMessageId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    return-void
.end method
