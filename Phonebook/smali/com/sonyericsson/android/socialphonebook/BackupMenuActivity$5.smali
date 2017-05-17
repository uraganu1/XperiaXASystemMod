.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "BackupMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->initStorageListener()V
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
    .line 525
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 527
    return-void
.end method
