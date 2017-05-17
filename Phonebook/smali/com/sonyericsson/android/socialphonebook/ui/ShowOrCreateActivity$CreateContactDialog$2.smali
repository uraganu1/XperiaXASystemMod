.class Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    .param p2, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;->this$1:Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 309
    return-void
.end method
