.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .line 265
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;)Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .line 267
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->handleSelected()V

    .line 262
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;
    :cond_0
    return-void
.end method
