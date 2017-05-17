.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;
.super Landroid/os/AsyncTask;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportAllSimContactsTask"
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
.field protected mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimImportActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 170
    return-void
.end method

.method private finishExecute(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 232
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .line 233
    .local v1, "target":Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    if-nez v1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "messageId":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const v0, 0x7f0902bc

    .line 245
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 246
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->finish()V

    .line 231
    :cond_1
    return-void

    .line 240
    :cond_2
    if-eqz p1, :cond_3

    .line 241
    const v0, 0x7f0902b8

    goto :goto_0

    .line 243
    :cond_3
    const v0, 0x7f0902bb

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .line 191
    .local v2, "target":Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    if-nez v2, :cond_0

    .line 192
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 197
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 198
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getSimContactItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 200
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;Landroid/content/ContentResolver;Landroid/accounts/Account;)Z

    .line 202
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;>;"
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    .line 205
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    throw v3

    .line 205
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;>;"
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 208
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->finishExecute(Z)V

    .line 212
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->finishExecute(Z)V

    .line 227
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .line 177
    .local v1, "target":Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    if-nez v1, :cond_0

    .line 178
    return-void

    .line 182
    :cond_0
    const-string/jumbo v2, "power"

    .line 181
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 185
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "SimImportActivity"

    .line 184
    const v3, 0x20000001

    .line 183
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 175
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "progress":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$ImportAllSimContactsTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .line 219
    .local v0, "target":Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    if-nez v0, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->incrementProgressDialog()V

    .line 217
    return-void
.end method
