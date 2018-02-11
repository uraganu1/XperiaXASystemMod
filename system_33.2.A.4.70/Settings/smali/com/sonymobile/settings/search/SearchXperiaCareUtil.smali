.class public Lcom/sonymobile/settings/search/SearchXperiaCareUtil;
.super Ljava/lang/Object;
.source "SearchXperiaCareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;
    }
.end annotation


# static fields
.field private static final COLUMNS_XPERIA_CARE:[Ljava/lang/String;


# instance fields
.field private mColumnValues:[Ljava/lang/String;

.field private mConnectToInternet:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHeaderText:Ljava/lang/String;

.field private mNoMatchesLabelInXperia:Ljava/lang/String;

.field private mNoResponseMessage:Ljava/lang/String;

.field private mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mServerUnavailable:Ljava/lang/String;

.field private mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

.field private mXperiaCareLaunchApp:Ljava/lang/String;

.field private mXperiaCareUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->COLUMNS_XPERIA_CARE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mConnectToInternet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Lcom/android/settings/dashboard/SearchResultsSummary;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mServerUnavailable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareLaunchApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoResponseMessage:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "data_header"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "data_no_matches"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "data_title"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "data_summary"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "data_uri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 66
    sput-object v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->COLUMNS_XPERIA_CARE:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "searchResultSummary"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mColumnValues:[Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 270
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0bb7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareLaunchApp:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0bb8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mXperiaCareUrl:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0c8b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mNoMatchesLabelInXperia:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0c8d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mServerUnavailable:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0c8c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mConnectToInternet:Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->getSomcHeaderText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mHeaderText:Ljava/lang/String;

    .line 267
    return-void
.end method

.method private getSomcHeaderText()Ljava/lang/String;
    .locals 10

    .prologue
    .line 284
    const-string/jumbo v2, ""

    .line 285
    .local v2, "header":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 287
    .local v5, "pacMan":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 288
    const v9, 0x7f0b0bb7

    .line 287
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 290
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 292
    const/4 v7, 0x1

    .line 291
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    .end local v0    # "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 294
    .restart local v0    # "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 295
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    .local v4, "label":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 297
    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->cancel(Z)Z

    .line 313
    iput-object v2, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mSearchResultSummary:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSomcResultsCursor(Landroid/database/Cursor;)V

    .line 310
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 318
    return-void
.end method

.method public updateSearchResults(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;-><init>(Lcom/sonymobile/settings/search/SearchXperiaCareUtil;Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;)V

    iput-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    .line 307
    iget-object v0, p0, Lcom/sonymobile/settings/search/SearchXperiaCareUtil;->mUpdateSomcSearchResultsTask:Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/settings/search/SearchXperiaCareUtil$UpdateSomcSearchResultsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    return-void
.end method
