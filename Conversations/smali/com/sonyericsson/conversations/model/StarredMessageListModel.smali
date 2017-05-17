.class public Lcom/sonyericsson/conversations/model/StarredMessageListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "StarredMessageListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/model/LoaderModel;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoader:Landroid/content/CursorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "data_loaded"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "data_reset"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getQueryProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 168
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "transport_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "body"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "sub"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_cs"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "normalized_date"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 167
    return-object v0
.end method


# virtual methods
.method public initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 132
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "all-star-message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 149
    .local v2, "tempUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "semc_ext"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 150
    const-string/jumbo v4, " star_status=1 "

    .line 152
    .local v4, "where":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->getQueryProjection()[Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string/jumbo v6, "normalized_date"

    const/4 v5, 0x0

    .line 152
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/model/StarredMessageListModel$StarredMessageCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v0, 0x0

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 144
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method
