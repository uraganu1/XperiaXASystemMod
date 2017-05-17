.class public final Lcom/sonymobile/jms/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final DEBUG_LOG:Z

.field private static final IS_DEBUG_BUILD:Z


# instance fields
.field private mSb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/sonymobile/jms/util/LogUtil;->isDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->IS_DEBUG_BUILD:Z

    .line 20
    sget-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->IS_DEBUG_BUILD:Z

    sput-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->DEBUG_LOG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x2e

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, "stes":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x4

    .line 32
    aget-object v0, v1, v2

    .line 33
    .local v0, "ste":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    .line 117
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method private static isDebugBuild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "userdebug"

    .line 38
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static log(I)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    return-object v0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Lcom/sonymobile/jms/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/jms/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    .line 113
    return-void
.end method


# virtual methods
.method public add(I)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    return-object p0
.end method

.method public add(J)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-object p0
.end method

.method public add(Z)Lcom/sonymobile/jms/util/LogUtil;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    return-object p0
.end method

.method public flushAsDebug()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "JMS"

    .line 131
    iget-object v1, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public flushAsError()V
    .locals 2

    .prologue
    const-string/jumbo v0, "JMS"

    .line 144
    iget-object v1, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public flushAsError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 152
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string/jumbo v1, "JMS"

    .line 153
    iget-object v2, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public flushAsVerbose()V
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/sonymobile/jms/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "JMS"

    .line 125
    iget-object v1, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public flushAsWarning()V
    .locals 2

    .prologue
    const-string/jumbo v0, "JMS"

    .line 140
    iget-object v1, p0, Lcom/sonymobile/jms/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
