.class final Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;
.super Landroid/os/AsyncTask;
.source "ContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLookupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    .line 328
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 362
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 367
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->mIsCancelled:Z

    .line 361
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v8, v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    .line 335
    .local v8, "context":Landroid/content/Context;
    if-nez v8, :cond_0

    .line 336
    return-object v11

    .line 338
    :cond_0
    const/4 v9, 0x0

    .line 340
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    .line 342
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "lookup"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 341
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 344
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 346
    .local v6, "contactId":J
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, "lookupKey":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    .end local v6    # "contactId":J
    .end local v10    # "lookupKey":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: No contact ID or lookup key for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    if-eqz v9, :cond_2

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_2
    return-object v11

    .line 348
    .restart local v6    # "contactId":J
    .restart local v10    # "lookupKey":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 355
    if-eqz v9, :cond_4

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_4
    return-object v1

    .line 354
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "contactId":J
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 355
    if-eqz v9, :cond_5

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_5
    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    .line 371
    return-void

    .line 377
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 371
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "uri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
