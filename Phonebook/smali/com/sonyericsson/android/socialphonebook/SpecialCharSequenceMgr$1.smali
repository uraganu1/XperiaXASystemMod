.class final Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr$1;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->-set1(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 361
    return-void
.end method
