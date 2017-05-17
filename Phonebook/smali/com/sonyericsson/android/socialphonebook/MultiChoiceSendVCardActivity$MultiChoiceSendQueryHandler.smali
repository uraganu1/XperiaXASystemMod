.class public Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;
.super Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
.source "MultiChoiceSendVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiChoiceSendQueryHandler"
.end annotation


# static fields
.field private static final QUERY_TAG_RAW_CONTACTS:I = 0x13f6


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
    .param p2, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    .line 174
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 173
    return-void
.end method

.method private getProfileCursor()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v8, v1, [Ljava/lang/Object;

    .line 222
    .local v8, "row":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1, v9}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;I)I

    .line 225
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;J)J

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;J)J

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get5(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v8, v2

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v8, v2

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;I)I

    .line 243
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    if-eqz v6, :cond_1

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_1
    return-object v7

    .line 245
    :catchall_0
    move-exception v1

    .line 246
    if-eqz v6, :cond_2

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_2
    throw v1
.end method


# virtual methods
.method protected onPostQuery(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 4
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 181
    const/16 v2, 0x13f6

    if-ne p2, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v2, p4}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Landroid/database/Cursor;)V

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->startSubQuery()V

    .line 184
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v2, p3, v3}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v2

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v2

    invoke-virtual {p0, p1, p4, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 190
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)V

    .line 191
    .local v1, "result":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;->getProfileCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->-set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 192
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v2, p3, v1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v2

    .line 194
    .end local v1    # "result":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v2, p3, v3}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v2
.end method

.method protected final onQueryComplete(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 203
    const/16 v1, 0x13f6

    if-eq p2, v1, :cond_1

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    .line 206
    .local v0, "activity":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
    if-eqz p4, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/CursorAdapter;

    invoke-virtual {v1, p4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 202
    .end local v0    # "activity":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-eqz p4, :cond_0

    .line 210
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
