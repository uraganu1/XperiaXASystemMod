.class final Lcom/sonymobile/conversations/util/XtmTransferUtil$1;
.super Landroid/os/AsyncTask;
.source "XtmTransferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/conversations/util/XtmTransferUtil;->fetchXtmStatusAndUpdateFooter(Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

.field private xtmTransferStatus:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;)V
    .locals 0
    .param p1, "val$xtmListener"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->val$xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 53
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sonymobile/conversations/util/XtmTransferUtil;->-get1()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/sonymobile/conversations/util/XtmTransferUtil;->-get0()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "receiver_transfer_status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 55
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "receiver_transfer_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->xtmTransferStatus:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_5

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 59
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v7

    .line 58
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "param":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->xtmTransferStatus:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->val$xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;->onXtmTransferFinished()V

    .line 63
    :cond_0
    return-void
.end method
