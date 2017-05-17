.class Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$1;
.super Ljava/lang/Object;
.source "DeleteContactsProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->onPreExecute(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Progress aborted"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask$1;->this$1:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->-set0(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;I)I

    .line 168
    return-void
.end method
