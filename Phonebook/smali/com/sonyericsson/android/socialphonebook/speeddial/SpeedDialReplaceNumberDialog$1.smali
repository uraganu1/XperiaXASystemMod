.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;
.super Ljava/lang/Object;
.source "SpeedDialReplaceNumberDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

.field final synthetic val$phoneNumberId:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;IJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;
    .param p2, "val$position"    # I
    .param p3, "val$phoneNumberId"    # J

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->val$position:I

    iput-wide p3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->val$phoneNumberId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->val$position:I

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$1;->val$phoneNumberId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialReplaceNumberDialog$Listener;->onReplaceClick(IJ)V

    .line 100
    return-void
.end method
