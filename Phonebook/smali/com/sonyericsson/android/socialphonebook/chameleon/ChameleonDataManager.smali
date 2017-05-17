.class public Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;
.super Ljava/lang/Object;
.source "ChameleonDataManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOADER_VOICEMAIL:I = 0x66

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSpeedDialDomesticNumber:Ljava/lang/String;

.field private mSpeedDialRoamingNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getVoicemailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->getDeviceRoamingState(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    move-result-object v0

    .line 86
    .local v0, "state":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->HOME:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mSpeedDialDomesticNumber:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mSpeedDialRoamingNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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
    const/4 v3, 0x0

    .line 42
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ChameleonDataManager onCreateLoader"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/16 v0, 0x66

    if-ne v0, p1, :cond_0

    .line 44
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->OMA_NODE_PROVIDER_URI:Landroid/net/Uri;

    .line 45
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->getVoicemailSelection()[Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    .line 44
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_0
    return-object v3
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;
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
    .line 53
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ChameleonDataManager onLoadFinished"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p2, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string/jumbo v1, "domestic_number"

    .line 59
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mSpeedDialDomesticNumber:Ljava/lang/String;

    .line 65
    :cond_1
    const-string/jumbo v1, "international_roaming_number"

    .line 64
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->mSpeedDialRoamingNumber:Ljava/lang/String;

    goto :goto_0

    .line 52
    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 73
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
