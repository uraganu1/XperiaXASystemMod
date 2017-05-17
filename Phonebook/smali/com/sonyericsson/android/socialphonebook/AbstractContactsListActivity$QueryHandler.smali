.class Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;
.source "AbstractContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 0
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;-><init>(Landroid/app/Activity;)V

    .line 924
    return-void
.end method


# virtual methods
.method protected getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 2
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aInitialPosition"    # I

    .prologue
    .line 975
    move-object v0, p2

    .line 976
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    invoke-interface {v1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;->getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;

    move-result-object v0

    .line 980
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostQuery(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 941
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .end local p1    # "aActivity":Landroid/app/Activity;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->onPostQuery(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostQuery(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    .locals 2
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 945
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->getIndexedCursor(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 947
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;

    invoke-direct {v1, p3, v0}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected bridge synthetic onQueryComplete(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aActivity"    # Landroid/app/Activity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 993
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .end local p1    # "aActivity":Landroid/app/Activity;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->onQueryComplete(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onQueryComplete(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
    .param p2, "aToken"    # I
    .param p3, "aCookie"    # Ljava/lang/Object;
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 996
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 998
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1001
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1003
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 995
    return-void
.end method
