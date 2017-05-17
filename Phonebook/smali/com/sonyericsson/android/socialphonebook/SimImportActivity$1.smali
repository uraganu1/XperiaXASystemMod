.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;
.super Landroid/os/AsyncTask;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->importOneSimContact(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

.field final synthetic val$item:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    .param p2, "val$item"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->val$item:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->val$item:Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;Landroid/accounts/Account;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 477
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 483
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const v0, 0x7f0902b9

    .line 486
    :goto_0
    const/4 v2, 0x0

    .line 483
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 482
    return-void

    .line 485
    :cond_0
    const v0, 0x7f0902bb

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 482
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
