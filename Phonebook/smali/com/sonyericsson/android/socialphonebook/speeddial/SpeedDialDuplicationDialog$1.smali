.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;
.super Ljava/lang/Object;
.source "SpeedDialDuplicationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

.field final synthetic val$newPosition:I

.field final synthetic val$oldPosition:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;
    .param p2, "val$oldPosition"    # I
    .param p3, "val$newPosition"    # I

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->val$oldPosition:I

    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->val$newPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->val$oldPosition:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$1;->val$newPosition:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialDuplicationDialog$Listener;->onAssignClick(II)V

    .line 101
    return-void
.end method
