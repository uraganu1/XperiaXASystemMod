.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$3;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showErrorDialog(Ljava/lang/String;)V
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
    .line 438
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    .line 439
    return-void
.end method
