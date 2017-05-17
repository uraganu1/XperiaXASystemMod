.class Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "ContactsFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1254
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1260
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;->doInBackground(Landroid/app/Activity;[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)Ljava/lang/Void;
    .locals 9
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "params"    # [Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .prologue
    .line 1261
    move-object v0, p1

    .line 1262
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1266
    .local v5, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    aget-object v6, p2, v7

    .line 1268
    .local v6, "visibleSet":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->buildDiff(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1269
    const/4 v7, 0x1

    aget-object v4, p2, v7

    .line 1270
    .local v4, "hiddenSet":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->buildDiff(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1271
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1273
    :try_start_0
    const-string/jumbo v7, "com.android.contacts"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 1276
    :catch_0
    move-exception v2

    .line 1277
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Problem saving display groups"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1274
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v3

    .line 1275
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Problem saving display groups"

    invoke-static {v7, v8, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 0
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    .line 1286
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1285
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 1285
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method
