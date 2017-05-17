.class final Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$2;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->showImeiDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->-set0(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 422
    return-void
.end method
