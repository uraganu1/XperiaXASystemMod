.class Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;
.super Ljava/lang/Object;
.source "AggregateUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    .param p2, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
