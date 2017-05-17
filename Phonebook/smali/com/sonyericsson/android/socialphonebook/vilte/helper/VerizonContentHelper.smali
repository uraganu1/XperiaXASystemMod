.class public Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.super Ljava/lang/Object;
.source "VerizonContentHelper.java"

# interfaces
.implements Lcom/gsma/services/rcs/JoynServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;,
        Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncReaderTask:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

.field private mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

.field private mCapabilityListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

.field private mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

.field private mContentObserver:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

.field private final mContentStatus:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

.field private mContext:Landroid/content/Context;

.field private mEmptyCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private mIsBindCalled:Z

.field private mIsServiceConnected:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNumbersCapabilites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimPhoneNumber:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/gsma/services/rcs/capability/CapabilityService;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentStatus:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mSimPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->readAsync()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    .line 376
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentStatus:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

    .line 94
    new-instance v0, Lcom/gsma/services/rcs/capability/CapabilityService;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/gsma/services/rcs/capability/CapabilityService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/JoynServiceListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    .line 96
    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities;

    .line 97
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    .line 96
    invoke-direct/range {v0 .. v9}, Lcom/gsma/services/rcs/capability/Capabilities;-><init>(ZZZZZZZLjava/util/Set;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mEmptyCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 98
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCallback:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mMainHandler:Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSimPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mSimPhoneNumber:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    .prologue
    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;)V

    .line 104
    return-void
.end method

.method private fetchNumberCapabilitesFromService(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private readAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mAsyncReaderTask:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mAsyncReaderTask:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->cancel(Z)Z

    .line 310
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mAsyncReaderTask:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mAsyncReaderTask:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsBindCalled:Z

    .line 242
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsServiceConnected:Z

    .line 239
    return-void
.end method

.method private startListeningToNumbersCapabilities(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding capabilities listener for ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") numbers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    invoke-virtual {v3, p1, v4}, Lcom/gsma/services/rcs/capability/CapabilityService;->addCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V

    .line 161
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mSimPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mSimPhoneNumber:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    .line 166
    .local v2, "numbersWithoutSimNumber":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mSimPhoneNumber:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v3, v2}, Lcom/gsma/services/rcs/capability/CapabilityService;->requestContactCapabilities(Ljava/util/Set;)V

    .line 169
    .end local v2    # "numbersWithoutSimNumber":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->fetchNumberCapabilitesFromService(Ljava/util/Set;)V

    .line 157
    :goto_1
    return-void

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v3, p1}, Lcom/gsma/services/rcs/capability/CapabilityService;->requestContactCapabilities(Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/JoynContactFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/gsma/services/rcs/JoynServiceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lcom/gsma/services/rcs/JoynContactFormatException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error while adding capabilities listener."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 172
    .end local v0    # "e":Lcom/gsma/services/rcs/JoynContactFormatException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Lcom/gsma/services/rcs/JoynServiceException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error while adding capabilities listener."

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public bindService()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsBindCalled:Z

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Binding to capability service."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/capability/CapabilityService;->connect()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsBindCalled:Z

    .line 216
    :cond_0
    return-void
.end method

.method public enableVilte(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 300
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    return-void
.end method

.method public getContentStatus()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentStatus:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    return-object v0
.end method

.method public getNumberCapability(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mEmptyCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->startListeningToNumbersCapabilities(Ljava/util/Set;)V

    .line 128
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBindCalled()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsBindCalled:Z

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsServiceConnected:Z

    return v0
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Capability service connected."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mIsServiceConnected:Z

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->startListeningToNumbersCapabilities(Ljava/util/Set;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 264
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Capability service disconnected."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->resetState()V

    .line 263
    return-void
.end method

.method public readSync()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;-><init>()V

    .line 329
    .local v0, "contentStatus":Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 330
    const-string/jumbo v6, "provisioned"

    .line 329
    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z
    :try_end_0
    .catch Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 337
    const-string/jumbo v6, "volte_setting_on"

    .line 336
    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_2
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVolteEnabled:Z
    :try_end_1
    .catch Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 344
    const-string/jumbo v6, "video_setting_on"

    .line 343
    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_4
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteEnabled:Z
    :try_end_2
    .catch Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 351
    const-string/jumbo v6, "vops_enabled"

    .line 350
    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_6
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z
    :try_end_3
    .catch Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 356
    :goto_7
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 357
    const-string/jumbo v6, "airplane_mode_on"

    .line 356
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_8
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    .line 358
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 359
    const-string/jumbo v6, "preferred_tty_mode"

    .line 358
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_9
    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isTtyModeEnabled:Z

    .line 361
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContext:Landroid/content/Context;

    .line 362
    const-string/jumbo v6, "phone"

    .line 361
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 363
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_6

    :goto_a
    iput-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    .line 364
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    .line 366
    return-object v0

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    move v3, v5

    .line 329
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to read ViLTE provisioned state!"

    invoke-static {v3, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    :cond_1
    move v3, v5

    .line 336
    goto :goto_2

    .line 338
    :catch_1
    move-exception v1

    .line 339
    .restart local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to read VoLTE state!"

    invoke-static {v3, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    :cond_2
    move v3, v5

    .line 343
    goto :goto_4

    .line 345
    :catch_2
    move-exception v1

    .line 346
    .restart local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to read ViLTE state!"

    invoke-static {v3, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    :cond_3
    move v3, v5

    .line 350
    goto :goto_6

    .line 352
    :catch_3
    move-exception v1

    .line 353
    .restart local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to read IMS VoPS state!"

    invoke-static {v3, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v1    # "imse":Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$ImsSettingNotFoundException;
    :cond_4
    move v3, v5

    .line 356
    goto :goto_8

    :cond_5
    move v3, v5

    .line 358
    goto :goto_9

    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    move v4, v5

    .line 363
    goto :goto_a
.end method

.method public registerCallStateObserver()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 291
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mResolver:Landroid/content/ContentResolver;

    .line 287
    const-string/jumbo v1, "preferred_tty_mode"

    .line 286
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;

    const/4 v3, 0x0

    .line 286
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->readAsync()V

    .line 283
    return-void
.end method

.method public registerNumbersForCapabilities(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v0, "newNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->isServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "number$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->startListeningToNumbersCapabilities(Ljava/util/Set;)V

    .line 131
    .end local v0    # "newNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "number$iterator":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 144
    .restart local v0    # "newNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "number$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .restart local v1    # "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mEmptyCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public unbindService()V
    .locals 5

    .prologue
    .line 226
    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Removing capability listeners."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mNumbersCapabilites:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityListener:Lcom/gsma/services/rcs/capability/CapabilitiesListener;

    .line 227
    invoke-virtual {v2, v3, v4}, Lcom/gsma/services/rcs/capability/CapabilityService;->removeCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    :try_end_0
    .catch Lcom/gsma/services/rcs/JoynContactFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsma/services/rcs/JoynServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Disconnecting from capability service."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mCapabilityService:Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/capability/CapabilityService;->disconnect()V

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->resetState()V

    .line 224
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lcom/gsma/services/rcs/JoynServiceException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while removing capabilities listener."

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 229
    .end local v1    # "e":Lcom/gsma/services/rcs/JoynServiceException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Lcom/gsma/services/rcs/JoynContactFormatException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while removing capabilities listener."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregisterCallStateObserver()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 295
    return-void
.end method
