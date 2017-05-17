.class Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationListFragmentLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$1;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues:[I

.field private static final SEARCH_URI:Landroid/net/Uri;

.field private static final sSearchCursorsComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;


# instance fields
.field final mAllowAllConversationItems:Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;

.field private mCursor:Landroid/database/Cursor;

.field private mIsThrottleSet:Z

.field private mLoaderMode:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

.field private mLoaderSearchString:Ljava/lang/String;

.field private mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field private mSelectionArgs:[Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->-com_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->-com_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->values()[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->CONVERGED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->INTEGRATED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->JOYN:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->-com_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->SEARCH_URI:Landroid/net/Uri;

    .line 141
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->sSearchCursorsComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;)V
    .locals 2
    .param p1, "app"    # Lcom/sonyericsson/conversations/ConversationsApp;
    .param p2, "loaderType"    # Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .param p3, "loaderMode"    # Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ConversationsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 135
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    .line 139
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderSearchString:Ljava/lang/String;

    .line 157
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$2;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mAllowAllConversationItems:Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;

    .line 166
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 167
    iput-object p3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderMode:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .line 164
    return-void
.end method

.method private getImSearchResult(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessagesContaining(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v1, "Failed to retrieve search result from im messages"

    .line 295
    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    const/4 v1, 0x0

    return-object v1
.end method

.method private getXmsSearchCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 188
    const-string/jumbo v4, "semc_ext"

    const-string/jumbo v6, "true"

    .line 187
    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    const-string/jumbo v4, "pattern"

    .line 187
    invoke-virtual {v0, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 191
    .local v3, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 192
    .local v2, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 194
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private loadInBackgroundIntegrated(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
    .locals 5
    .param p1, "mergerAndSorter"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
    .param p2, "merger"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v1

    .line 307
    .local v1, "holder":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsItems()Ljava/util/List;

    move-result-object v3

    .line 308
    .local v3, "xmsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v3, :cond_0

    .line 309
    invoke-virtual {p1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;)V

    .line 312
    :cond_0
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getImItems()Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "imItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v2, :cond_1

    .line 314
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mAllowAllConversationItems:Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;

    invoke-virtual {p1, v2, p2, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/MergeConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V

    .line 317
    :cond_1
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getDraftItems()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "draftItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v0, :cond_2

    .line 320
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mAllowAllConversationItems:Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;

    .line 319
    invoke-virtual {p1, v0, p2, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/MergeConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V

    .line 323
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->sort()V

    .line 325
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->asCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private loadInBackgroundJoyn(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
    .locals 5
    .param p1, "mergerAndSorter"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
    .param p2, "merger"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$3;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V

    .line 346
    .local v0, "addFilter":Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v2

    .line 348
    .local v2, "holder":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getImItems()Ljava/util/List;

    move-result-object v3

    .line 349
    .local v3, "imItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {p1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;)V

    .line 353
    :cond_0
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getDraftItems()Ljava/util/List;

    move-result-object v1

    .line 354
    .local v1, "draftItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {p1, v1, p2, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/MergeConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->sort()V

    .line 360
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->asCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private loadInBackgroundSearch(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "xmsCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 273
    .local v0, "imCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->-getcom_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown loader type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 287
    .end local v0    # "imCursor":Landroid/database/Cursor;
    .end local v1    # "xmsCursor":Landroid/database/Cursor;
    :goto_0
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/SearchCursor;

    sget-object v3, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->sSearchCursorsComparer:Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;

    invoke-direct {v2, v1, v0, v3, p1}, Lcom/sonyericsson/conversations/ui/util/SearchCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/conversations/ui/util/SortedMergeCursor$CursorComparator;Ljava/lang/String;)V

    return-object v2

    .line 275
    .restart local v0    # "imCursor":Landroid/database/Cursor;
    .restart local v1    # "xmsCursor":Landroid/database/Cursor;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getXmsSearchCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 276
    .local v1, "xmsCursor":Landroid/database/Cursor;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getImSearchResult(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "imCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 279
    .local v0, "imCursor":Landroid/database/Cursor;
    .local v1, "xmsCursor":Landroid/database/Cursor;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getImSearchResult(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "imCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 282
    .local v0, "imCursor":Landroid/database/Cursor;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getXmsSearchCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "xmsCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadInBackgroundXMS(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
    .locals 6
    .param p1, "mergerAndSorter"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
    .param p2, "merger"    # Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;

    .prologue
    .line 366
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$4;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V

    .line 373
    .local v0, "addFilter":Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;
    new-instance v3, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$5;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;)V

    .line 381
    .local v3, "nonEmptyXmsItemsFilter":Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v2

    .line 383
    .local v2, "holder":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsItems()Ljava/util/List;

    move-result-object v4

    .line 384
    .local v4, "xmsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v4, :cond_0

    .line 385
    invoke-virtual {p1, v4, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V

    .line 388
    :cond_0
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getDraftItems()Ljava/util/List;

    move-result-object v1

    .line 389
    .local v1, "draftItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p1, v1, p2, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->addConversationsData(Ljava/util/List;Lcom/sonyericsson/conversations/conversation/MergeConversationItem;Lcom/sonyericsson/conversations/conversation/ConversationItemFilter;)V

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->sort()V

    .line 395
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->getXmsProjection()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;->asCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    .line 201
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 207
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 199
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method getLoaderMode()Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderMode:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->getLoaderMode()Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->SEARCH_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    if-ne v5, v6, :cond_0

    .line 226
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderSearchString:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundSearch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 228
    :cond_0
    new-instance v3, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;

    invoke-direct {v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;-><init>()V

    .line 229
    .local v3, "mergeAndSorter":Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
    new-instance v4, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;

    invoke-direct {v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;-><init>()V

    .line 230
    .local v4, "merger":Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->-getcom_sonyericsson_conversations_model_ConversationListModel$LoaderTypeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v6, "Unsupported loader type \'"

    .line 238
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v6, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 239
    const-string/jumbo v6, "\'!"

    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 241
    return-object v7

    .line 232
    :pswitch_0
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundIntegrated(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 234
    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundJoyn(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 236
    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackgroundXMS(Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 260
    .end local v3    # "mergeAndSorter":Lcom/sonyericsson/conversations/conversation/ConversationItemMergeAndSorter;
    .end local v4    # "merger":Lcom/sonyericsson/conversations/conversation/ConversationItemMerger;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Terminal "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 264
    const-string/jumbo v6, " occurred during execution in background thread!"

    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v5, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 266
    return-object v7

    .line 251
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    :catch_1
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Terminal "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 256
    const-string/jumbo v6, " occurred during execution in background thread!"

    .line 255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-static {v5, v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 258
    return-object v7

    .line 243
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/OperationCanceledException;
    return-object v7

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    .line 213
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method setLoaderMode(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;)V
    .locals 0
    .param p1, "loaderMode"    # Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderMode:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .line 178
    return-void
.end method

.method setLoaderSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mLoaderSearchString:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setUpdateThrottle(J)V
    .locals 5
    .param p1, "delayMS"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 400
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 401
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 402
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->mIsThrottleSet:Z

    goto :goto_0
.end method
