.class public Lcom/sonyericsson/conversations/model/MessageListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "MessageListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
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
.field public static final MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;

.field public static final MODEL_EVENT_POST_DELETE:Ljava/lang/String;

.field public static final MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

.field private static sQueryOrder:Ljava/lang/String;

.field private static sQueryProjection:[Ljava/lang/String;


# instance fields
.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

.field private mFocusedIndex:I

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pre_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cancel_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "post_delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    sput-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 56
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    .line 64
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string/jumbo v1, "Must not create MessageListModel with null conversation"

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method private initQueryCondition()V
    .locals 3

    .prologue
    .line 368
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/provider/CapabilityUtil;->isSortSequenceEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 370
    .local v0, "sequencTimeAsOrder":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    const-string/jumbo v1, "sequence_time"

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    .line 372
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection;->SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    .line 366
    .end local v0    # "sequencTimeAsOrder":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v0    # "sequencTimeAsOrder":Ljava/lang/Boolean;
    :cond_1
    const-string/jumbo v1, "normalized_date"

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    .line 375
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    sput-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public forceLoad()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->forceLoad()V

    .line 296
    :cond_0
    return-void
.end method

.method public getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method public getFocusedIndex()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    return v0
.end method

.method public getFocusedMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initExistMessageList(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 363
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 362
    return-void
.end method

.method public initModel(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 0
    .param p1, "app"    # Lcom/sonyericsson/conversations/ConversationsApp;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 357
    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/MessageListModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 355
    :cond_0
    return-void
.end method

.method public isLoadStarted()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->isStarted()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-nez v1, :cond_1

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v2, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 312
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 312
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 314
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUri(Landroid/net/Uri;)V

    .line 315
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-wrap0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 316
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->forceLoad()V

    goto :goto_0
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
    const/4 v4, 0x0

    .line 268
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 270
    .local v2, "baseUri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initQueryCondition()V

    .line 271
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    sget-object v3, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryProjection:[Ljava/lang/String;

    .line 272
    sget-object v6, Lcom/sonyericsson/conversations/model/MessageListModel;->sQueryOrder:Ljava/lang/String;

    move-object v5, v4

    .line 271
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;-><init>(Lcom/sonyericsson/conversations/ConversationsApp;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-wrap0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    .line 278
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUpdateThrottle(J)V

    .line 281
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 284
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 285
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 288
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ModelCache;->clearMessageMap()V

    .line 289
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/MessageListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 293
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 326
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 328
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 327
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 329
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->setUri(Landroid/net/Uri;)V

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-wrap0(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 324
    .end local v0    # "baseUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setFocusedIndex(I)V
    .locals 0
    .param p1, "focusedIndex"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedIndex:I

    .line 338
    return-void
.end method

.method public setFocusedMessageUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mFocusedMessageUri:Landroid/net/Uri;

    .line 346
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->-wrap1(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V

    .line 388
    :cond_0
    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 391
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoaderManager:Landroid/app/LoaderManager;

    .line 392
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel;->mLoader:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 384
    return-void
.end method
