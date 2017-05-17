.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;
.super Landroid/app/DialogFragment;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavingContactProgressDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 548
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;->TAG:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;-><init>()V

    .line 552
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 558
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 559
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const v2, 0x7f090091

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 560
    return-object v1
.end method
