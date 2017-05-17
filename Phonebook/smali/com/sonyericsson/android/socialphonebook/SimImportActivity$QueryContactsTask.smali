.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Lcom/sonyericsson/android/socialphonebook/SimImportActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumn:Ljava/lang/String;

.field private mFilterValues:[Ljava/lang/String;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "filterValues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mItems:Ljava/util/ArrayList;

    .line 255
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mColumn:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mFilterValues:[Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mColumn:Ljava/lang/String;

    .line 263
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mFilterValues:[Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->resolveIntent()Landroid/net/Uri;

    move-result-object v1

    .line 270
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 272
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/MTKIccProviderConstantsUtil;->COLUMN_SIM_CONTACT_INFO:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 277
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 273
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 274
    .local v9, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SimImportActivity"

    const-string/jumbo v3, "Catch a NullPointerException when query: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v7, -0x1

    .line 282
    .local v7, "columnIndex":I
    const/4 v10, 0x0

    .line 283
    .local v10, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mColumn:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mColumn:Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mFilterValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mFilterValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 290
    .end local v10    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, -0x1

    if-eq v7, v2, :cond_5

    if-eqz v10, :cond_5

    const/4 v6, 0x1

    .line 292
    .local v6, "canFilter":Z
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    :cond_3
    if-eqz v6, :cond_6

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 297
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 300
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 290
    .end local v6    # "canFilter":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "canFilter":Z
    goto :goto_1

    .line 295
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mItems:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->createSimContactItem(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/SimImportActivity$SimContactItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->doInBackground(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
    .param p2, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 306
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->setSimContactItems(Ljava/util/ArrayList;)V

    .line 308
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-wrap2(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;)V

    .line 309
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Z)V

    .line 305
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$QueryContactsTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/SimImportActivity;Ljava/lang/Boolean;)V

    return-void
.end method
