.class public final Lcom/nostra13/universalimageloader/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static volatile DISABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->DISABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static disableLogging()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nostra13/universalimageloader/utils/L;->DISABLED:Z

    .line 43
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "priority"    # I
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 70
    sget-boolean v3, Lcom/nostra13/universalimageloader/utils/L;->DISABLED:Z

    if-nez v3, :cond_0

    .line 71
    array-length v3, p3

    if-gtz v3, :cond_1

    .line 76
    :goto_0
    if-eqz p1, :cond_2

    .line 79
    if-eqz p2, :cond_3

    move-object v2, p2

    .line 80
    .local v2, "logMessage":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .local v1, "logBody":Ljava/lang/String;
    const-string/jumbo v3, "%1$s\n%2$s"

    const/4 v4, 0x2

    .line 81
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .end local v1    # "logBody":Ljava/lang/String;
    .end local v2    # "logMessage":Ljava/lang/String;
    .local v0, "log":Ljava/lang/String;
    :goto_2
    sget-object v3, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 70
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 77
    :cond_2
    move-object v0, p2

    .restart local v0    # "log":Ljava/lang/String;
    goto :goto_2

    .line 79
    .end local v0    # "log":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1, p0, p1}, Lcom/nostra13/universalimageloader/utils/L;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
