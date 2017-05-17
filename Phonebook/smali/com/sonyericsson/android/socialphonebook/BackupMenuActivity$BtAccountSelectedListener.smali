.class public Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;
.super Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
.source "BackupMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BtAccountSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "storagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 77
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    .line 87
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BtAccountSelectedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    .line 81
    return-void
.end method
