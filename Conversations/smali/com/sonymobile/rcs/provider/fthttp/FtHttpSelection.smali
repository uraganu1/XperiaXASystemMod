.class public Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
.super Lcom/sonymobile/rcs/provider/base/AbstractSelection;
.source "FtHttpSelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/rcs/provider/base/AbstractSelection",
        "<",
        "Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/base/AbstractSelection;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs direction([Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    .locals 1
    .param p1, "values"    # [Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    .prologue
    const-string/jumbo v0, "direction"

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->addEquals(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-object p0
.end method

.method public varargs messageId([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    .locals 1
    .param p1, "messageIds"    # [Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "message_id"

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->addEquals(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public varargs ouTid([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    .locals 1
    .param p1, "tids"    # [Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "ou_tid"

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->addEquals(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-object p0
.end method

.method public query(Landroid/content/ContentResolver;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->uri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->sel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->args()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 59
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    invoke-direct {v0, v6}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0

    .line 58
    :cond_0
    return-object v7
.end method

.method public uri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpColumns;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
