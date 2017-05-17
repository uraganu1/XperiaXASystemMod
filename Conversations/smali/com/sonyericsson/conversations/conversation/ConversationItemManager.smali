.class public Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;,
        Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static final NO_SELECTION_ARGS:[Ljava/lang/String;

.field private static final SEMC_THREADS_URI:Landroid/net/Uri;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mContentChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDraftRunnable:Ljava/lang/Runnable;

.field private mDraftThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

.field private mDraftsApi:Lcom/sonyericsson/conversations/draft/DraftsApi;

.field private mDraftsItemCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDraftsListener:Lcom/sonyericsson/conversations/draft/DraftsListener;

.field private final mHandler:Landroid/os/Handler;

.field volatile mHaveConversations:Z

.field private mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

.field private mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

.field private mImItemCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

.field private mImRunnable:Ljava/lang/Runnable;

.field private mImThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

.field private mJoynContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

.field private mProjection:[Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStarStatusApi:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

.field private mStarStatusListener:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

.field private mXmsContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

.field private mXmsItemCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mXmsRunnable:Ljava/lang/Runnable;

.field private mXmsThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/draft/DraftsApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsApi:Lcom/sonyericsson/conversations/draft/DraftsApi;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/conversation/ImConversationApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusApi:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsItemCache:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsItemCache:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getXmsCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/draft/DraftsApi;)Ljava/util/List;
    .locals 1
    .param p1, "draftsApi"    # Lcom/sonyericsson/conversations/draft/DraftsApi;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getDraftConversationItems(Lcom/sonyericsson/conversations/draft/DraftsApi;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)Ljava/util/List;
    .locals 1
    .param p1, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p2, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .param p3, "starStatusApi"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getImConversationItems(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getXmsConversationItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->onConversationItemChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->SEMC_THREADS_URI:Landroid/net/Uri;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/draft/DraftsApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/contact/ImContactApi;)V
    .locals 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .param p3, "draftsApi"    # Lcom/sonyericsson/conversations/draft/DraftsApi;
    .param p4, "starStatusApi"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    .param p5, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p6, "imContactApi"    # Lcom/sonymobile/jms/contact/ImContactApi;

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$1;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$2;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    .line 137
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    .line 139
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftThrottler:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$Throttler;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 158
    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mContentChangedListeners:Ljava/util/Set;

    .line 171
    iput-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    .line 173
    iput-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsItemCache:Ljava/util/List;

    .line 175
    iput-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsItemCache:Ljava/util/List;

    .line 177
    iput-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mProjection:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    .line 190
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsApi:Lcom/sonyericsson/conversations/draft/DraftsApi;

    .line 191
    iput-object p4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusApi:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .line 192
    iput-object p5, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 193
    iput-object p6, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 194
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 186
    return-void
.end method

.method private getDraftConversationItems(Lcom/sonyericsson/conversations/draft/DraftsApi;)Ljava/util/List;
    .locals 11
    .param p1, "draftsApi"    # Lcom/sonyericsson/conversations/draft/DraftsApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/draft/DraftsApi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 445
    invoke-interface {p1}, Lcom/sonyericsson/conversations/draft/DraftsApi;->getAllDrafts()Ljava/util/List;

    move-result-object v4

    .line 446
    .local v4, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "conversationsData":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    if-nez v4, :cond_0

    .line 449
    return-object v0

    .line 451
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "draft$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/draft/Draft;

    .line 452
    .local v2, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    new-instance v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItem;-><init>()V

    .line 453
    .local v1, "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 454
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getTimestamp()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 455
    const/4 v7, 0x3

    iput v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 456
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 458
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 459
    const-string/jumbo v8, "indeterminate:"

    .line 458
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 459
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 461
    const-string/jumbo v8, "one2one:"

    .line 459
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 458
    if-eqz v7, :cond_5

    .line 462
    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v6

    .line 463
    .local v6, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 464
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    .line 465
    .local v5, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 466
    const-string/jumbo v7, ""

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 483
    .end local v5    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v6    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 470
    .restart local v6    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, ""

    :goto_3
    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 473
    const-string/jumbo v7, ":"

    .line 472
    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatAddresses(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    goto :goto_2

    .line 471
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 470
    invoke-static {v7, v6}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 479
    .end local v6    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_5
    const-string/jumbo v7, ""

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 480
    const-string/jumbo v7, ""

    iput-object v7, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    goto :goto_2

    .line 485
    .end local v1    # "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v2    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_6
    return-object v0
.end method

.method private getImConversationItems(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)Ljava/util/List;
    .locals 12
    .param p1, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p2, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .param p3, "starStatusApi"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationApi;",
            "Lcom/sonymobile/jms/message/ImMessageStorageApi;",
            "Lcom/sonyericsson/conversations/starstatus/StarStatusApi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v3, "conversationsData":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->retrieveImConversations()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    .local v0, "chatConversations":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/conversation/ImConversation;

    .line 497
    .local v1, "conversation":Lcom/sonymobile/jms/conversation/ImConversation;
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversation;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v6

    .line 498
    .local v6, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    new-instance v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    invoke-direct {v4}, Lcom/sonyericsson/conversations/conversation/ConversationItem;-><init>()V

    .line 499
    .local v4, "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    const/4 v9, 0x0

    iput-object v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 500
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversation;->getMostRecentImUserMessage()Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v8

    .line 501
    .local v8, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    if-eqz v8, :cond_0

    .line 502
    instance-of v9, v8, Lcom/sonymobile/jms/message/ImTextMessage;

    if-eqz v9, :cond_0

    .line 503
    check-cast v8, Lcom/sonymobile/jms/message/ImTextMessage;

    .end local v8    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-virtual {v8}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 507
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversation;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v9

    sget-object v10, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v9, v10, :cond_1

    .line 508
    const/4 v9, 0x1

    .line 506
    :goto_1
    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 510
    const/4 v9, 0x0

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    .line 514
    :try_start_0
    invoke-interface {p2, v6}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getNumberOfUnreadImUserMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)I

    move-result v9

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_2
    const/4 v9, 0x0

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 522
    const/4 v9, 0x0

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 523
    const/4 v9, 0x0

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 524
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversation;->getSubject()Ljava/lang/String;

    move-result-object v9

    :goto_3
    iput-object v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 527
    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversation;->getLocalTimestamp()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 528
    invoke-static {v6}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 530
    .local v2, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {p3, v2}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v7

    .line 532
    .local v7, "imStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    invoke-static {v7}, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->imStarStatus2XmsStarStatus(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)I

    move-result v9

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 533
    invoke-static {v6}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromImConversationIdOnly(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    iput-object v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 534
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    .end local v2    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v7    # "imStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    :cond_1
    const/4 v9, 0x2

    goto :goto_1

    .line 515
    :catch_0
    move-exception v5

    .line 516
    .local v5, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    sget-boolean v9, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v9, :cond_2

    .line 517
    const-string/jumbo v9, "Unable to retrieve unread count"

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsWarning()V

    .line 519
    :cond_2
    const/4 v9, 0x0

    iput v9, v4, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    goto :goto_2

    .line 525
    .end local v5    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :cond_3
    invoke-interface {v6}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 536
    .end local v1    # "conversation":Lcom/sonymobile/jms/conversation/ImConversation;
    .end local v4    # "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v6    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :cond_4
    return-object v3
.end method

.method private getXmsConversationId(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 4
    .param p1, "threadIdInfo"    # Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdInfo(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getThreadId()J

    move-result-wide v0

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 439
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/contact/ImContactApi;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    .line 437
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    return-object v0

    .line 441
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdInfo(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    return-object v0
.end method

.method private getXmsConversationItems(Landroid/database/Cursor;)Ljava/util/List;
    .locals 26
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const/16 v21, 0x0

    return-object v21

    .line 307
    :cond_0
    const/16 v20, 0x64

    .line 308
    .local v20, "initialSize":I
    new-instance v18, Ljava/util/ArrayList;

    const/16 v21, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v18, "conversationsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/conversation/ConversationItem;>;"
    const-string/jumbo v21, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 310
    .local v10, "colIndexId":I
    const-string/jumbo v21, "recipient_ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 311
    .local v11, "colIndexRecId":I
    const-string/jumbo v21, "snippet"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 313
    .local v13, "colIndexSnippet":I
    const-string/jumbo v21, "snippet_cs"

    .line 312
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 314
    .local v14, "colIndexSnippetCharset":I
    const-string/jumbo v21, "snippet_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 315
    .local v15, "colIndexSnippetType":I
    const-string/jumbo v21, "unread_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 317
    .local v17, "colIndexUnreadCount":I
    const-string/jumbo v21, "send_failed_count"

    .line 316
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 319
    .local v12, "colIndexSendFailedCount":I
    const-string/jumbo v21, "delivery_failed_count"

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "colIndexDeliveryFailedCount":I
    const-string/jumbo v21, "download_failed_count"

    .line 320
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, "colIndexDownloadFailedCount":I
    const-string/jumbo v21, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 323
    .local v6, "colIndexAddress":I
    const-string/jumbo v21, "date"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 324
    .local v7, "colIndexDate":I
    const-string/jumbo v21, "star_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 325
    .local v16, "colIndexStarStatus":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 326
    new-instance v19, Lcom/sonyericsson/conversations/conversation/ConversationItem;

    invoke-direct/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationItem;-><init>()V

    .line 327
    .local v19, "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 328
    .local v22, "threadId":J
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippet:Ljava/lang/String;

    .line 330
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetCharset:I

    .line 331
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSnippetType:I

    .line 332
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mUnreadCount:I

    .line 333
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mSendFailedCount:I

    .line 334
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDeliveryFailedCount:I

    .line 335
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDownloadFailedCount:I

    .line 336
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    .line 337
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mDate:J

    .line 339
    if-lez v16, :cond_1

    .line 340
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mStarStatus:I

    .line 342
    :cond_1
    new-instance v21, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 343
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mRecipientIds:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 342
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getXmsConversationId(Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/conversation/ConversationItem;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 344
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 346
    .end local v19    # "data":Lcom/sonyericsson/conversations/conversation/ConversationItem;
    .end local v22    # "threadId":J
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v24, 0x64

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 347
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->trimToSize()V

    .line 349
    :cond_3
    return-object v18
.end method

.method private getXmsCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 541
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->SEMC_THREADS_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->getXmsProjection()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "snippet NOT NULL OR date NOT NULL"

    .line 542
    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->NO_SELECTION_ARGS:[Ljava/lang/String;

    const-string/jumbo v5, "date DESC"

    .line 540
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private onConversationItemChanged()V
    .locals 3

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->updateHaveConversationsState()V

    .line 588
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mContentChangedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;

    .line 589
    .local v0, "listener":Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;->onConversationItemChanged()V

    goto :goto_0

    .line 586
    .end local v0    # "listener":Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;
    :cond_0
    return-void
.end method

.method private registerDraftListener(Lcom/sonyericsson/conversations/draft/DraftsApi;)V
    .locals 2
    .param p1, "draftsApi"    # Lcom/sonyericsson/conversations/draft/DraftsApi;

    .prologue
    .line 567
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/conversation/ConversationItemManager$DraftsListenerImpl;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsListener:Lcom/sonyericsson/conversations/draft/DraftsListener;

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsListener:Lcom/sonyericsson/conversations/draft/DraftsListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/draft/DraftsApi;->registerListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V

    .line 566
    return-void
.end method

.method private registerImContentListener(Lcom/sonymobile/jms/conversation/ImConversationApi;)V
    .locals 1
    .param p1, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;

    .prologue
    .line 557
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mJoynContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mJoynContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

    invoke-interface {p1, v0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->registerImConversationObserver(Landroid/database/ContentObserver;)V

    .line 556
    return-void
.end method

.method private registerStarStatusListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)V
    .locals 2
    .param p1, "starStatusApi"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .prologue
    .line 577
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/conversation/ConversationItemManager$StarStatusListenerImpl;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusListener:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusListener:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->registerListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V

    .line 576
    return-void
.end method

.method private registerXmsContentObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

    .line 547
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

    const/4 v3, 0x1

    .line 547
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 545
    return-void
.end method

.method private unregisterDraftListener(Lcom/sonyericsson/conversations/draft/DraftsApi;)V
    .locals 1
    .param p1, "draftsApi"    # Lcom/sonyericsson/conversations/draft/DraftsApi;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsListener:Lcom/sonyericsson/conversations/draft/DraftsListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/draft/DraftsApi;->unregisterListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsListener:Lcom/sonyericsson/conversations/draft/DraftsListener;

    .line 571
    return-void
.end method

.method private unregisterImContentListener(Lcom/sonymobile/jms/conversation/ImConversationApi;)V
    .locals 1
    .param p1, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mJoynContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

    invoke-interface {p1, v0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->unregisterImConversationObserver(Landroid/database/ContentObserver;)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mJoynContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$JoynContentObserver;

    .line 561
    return-void
.end method

.method private unregisterStarStatusListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)V
    .locals 1
    .param p1, "starStatusApi"    # Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusListener:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->unregisterListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusListener:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;

    .line 581
    return-void
.end method

.method private unregisterXmsContentObserver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsContentObserver:Lcom/sonyericsson/conversations/conversation/ConversationItemManager$XmsContentObserver;

    .line 551
    return-void
.end method

.method private updateHaveConversationsState()V
    .locals 4

    .prologue
    .line 594
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsItemCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsItemCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 596
    .local v1, "newHaveConversations":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    if-eq v1, v2, :cond_0

    .line 597
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    .line 598
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 599
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_key_have_conversations"

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 593
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 594
    .end local v1    # "newHaveConversations":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "newHaveConversations":Z
    goto :goto_0

    .line 595
    .end local v1    # "newHaveConversations":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "newHaveConversations":Z
    goto :goto_0

    .line 594
    .end local v1    # "newHaveConversations":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "newHaveConversations":Z
    goto :goto_0
.end method


# virtual methods
.method public addContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mContentChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsApi:Lcom/sonyericsson/conversations/draft/DraftsApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->unregisterDraftListener(Lcom/sonyericsson/conversations/draft/DraftsApi;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->unregisterImContentListener(Lcom/sonymobile/jms/conversation/ImConversationApi;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusApi:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->unregisterStarStatusListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->unregisterXmsContentObserver(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public getConversationName(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 13
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "snippetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 361
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v9

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 415
    const-string/jumbo v9, "Cannot get Conversation name for type \'%s\'"

    .line 414
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 414
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 416
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 419
    .local v1, "conversationName":Landroid/text/SpannableStringBuilder;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    .line 420
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    const v10, 0x7f0b00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 423
    :cond_1
    return-object v1

    .line 364
    .end local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    :pswitch_0
    const/4 v8, 0x0

    .line 367
    .local v8, "subject":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v3

    .line 369
    .local v3, "imConversationStorageApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v4

    .line 370
    .local v4, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    invoke-interface {v3, v4}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 374
    .end local v3    # "imConversationStorageApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .end local v4    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .end local v8    # "subject":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 376
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 377
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    const v10, 0x7f0b0266

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "name":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    goto :goto_0

    .line 371
    .end local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    .end local v6    # "name":Ljava/lang/String;
    .restart local v8    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    const-string/jumbo v9, "Unable to determine group conversation subject for conversation"

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v2    # "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    .end local v8    # "subject":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 381
    invoke-static {v9, p2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .restart local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    goto :goto_0

    .line 385
    .end local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    goto :goto_0

    .line 391
    .end local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    :pswitch_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 390
    invoke-static {v9, p2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .restart local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    goto :goto_0

    .line 394
    .end local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    :pswitch_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 395
    .restart local v1    # "conversationName":Landroid/text/SpannableStringBuilder;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 397
    const-string/jumbo v7, "one2one:"

    .line 398
    .local v7, "one2onePrefix":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    .line 399
    .local v5, "isValidPhoneNo":Z
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_5

    .line 401
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    .line 402
    new-instance v10, Lcom/sonyericsson/conversations/model/Participant;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-static {v9, v10}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormatted(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 400
    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 409
    :goto_2
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 410
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 409
    const/4 v11, 0x0

    .line 410
    const/16 v12, 0x21

    .line 408
    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v9, p2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_2

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDraftItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsItemCache:Ljava/util/List;

    return-object v0
.end method

.method public getImItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    return-object v0
.end method

.method public getXmsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsItemCache:Ljava/util/List;

    return-object v0
.end method

.method public getXmsProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mProjection:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mProjection:[Ljava/lang/String;

    return-object v1

    .line 202
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "queryProjection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string/jumbo v1, "recipient_ids"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string/jumbo v1, "snippet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string/jumbo v1, "snippet_cs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string/jumbo v1, "snippet_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v1, "unread_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v1, "send_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string/jumbo v1, "delivery_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v1, "download_failed_count"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string/jumbo v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string/jumbo v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    const-string/jumbo v1, "star_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mProjection:[Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mProjection:[Ljava/lang/String;

    return-object v1
.end method

.method public haveConversations()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_have_conversations"

    .line 225
    const/4 v2, 0x0

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mHaveConversations:Z

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mDraftsApi:Lcom/sonyericsson/conversations/draft/DraftsApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->registerDraftListener(Lcom/sonyericsson/conversations/draft/DraftsApi;)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->registerXmsContentObserver(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->registerImContentListener(Lcom/sonymobile/jms/conversation/ImConversationApi;)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mStarStatusApi:Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->registerStarStatusListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->reloadAllConversationItems()V

    .line 223
    return-void
.end method

.method public isConversationItemsLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mImItemCache:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mXmsItemCache:Ljava/util/List;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadAllConversationItems()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public removeContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->mContentChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method
