.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->onBackPressed()V

    .line 279
    return-void
.end method
