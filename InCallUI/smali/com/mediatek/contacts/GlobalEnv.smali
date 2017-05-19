.class public Lcom/mediatek/contacts/GlobalEnv;
.super Ljava/lang/Object;
.source "GlobalEnv.java"


# static fields
.field private static final IS_TABLET:Z

.field private static sContext:Landroid/content/Context;

.field private static sSingleTaskService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/GlobalEnv;->sSingleTaskService:Ljava/util/concurrent/ExecutorService;

    .line 59
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    sput-boolean v0, Lcom/mediatek/contacts/GlobalEnv;->IS_TABLET:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/mediatek/contacts/GlobalEnv;->sContext:Landroid/content/Context;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "context not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isUsingTwoPanes()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/mediatek/contacts/GlobalEnv;->IS_TABLET:Z

    return v0
.end method
