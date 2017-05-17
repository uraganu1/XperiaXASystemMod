.class final Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/list/ShortcutIntentBuilder;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-get2(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-get0()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 155
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-get2(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-static {v2}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-get2(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    .line 163
    :goto_0
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mPhotoId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    return-void

    .line 160
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-static {v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-get2(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    .line 161
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mContentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mBitmapData:[B

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->-wrap0(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 171
    return-void
.end method
