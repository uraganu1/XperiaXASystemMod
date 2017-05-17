.class public final Lcom/sonymobile/conversations/util/BuildUtil;
.super Ljava/lang/Object;
.source "BuildUtil.java"


# static fields
.field private static final sIsDebugBuild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/sonymobile/conversations/util/BuildUtil;->isBuildTypeDebug()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/conversations/util/BuildUtil;->sIsDebugBuild:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBuildTypeDebug()Z
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDebugBuild()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/sonymobile/conversations/util/BuildUtil;->sIsDebugBuild:Z

    return v0
.end method
