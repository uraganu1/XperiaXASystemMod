.class public final Lcom/sonymobile/conversations/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final DEBUG_LOG:Z

.field private static final IS_DEBUG_BUILD:Z

.field private static sTestLogEnabled:Z


# instance fields
.field private mSb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/sonymobile/conversations/util/LogUtil;->isDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->IS_DEBUG_BUILD:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->sTestLogEnabled:Z

    .line 23
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->IS_DEBUG_BUILD:Z

    sput-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 35
    .local v1, "stes":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 37
    .local v0, "ste":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    .line 38
    iget-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 117
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsInfo()V

    .line 105
    return-void
.end method

.method private static isDebugBuild()Z
    .locals 2

    .prologue
    .line 44
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

.method public static isTestLogEnabled()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->sTestLogEnabled:Z

    return v0
.end method

.method public static log(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsWarning()V

    .line 109
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    new-instance v0, Lcom/sonymobile/conversations/util/LogUtil;

    invoke-direct {v0}, Lcom/sonymobile/conversations/util/LogUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsWarning(Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method


# virtual methods
.method public add(I)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    return-object p0
.end method

.method public add(J)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    return-object p0
.end method

.method public add(Z)Lcom/sonymobile/conversations/util/LogUtil;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    return-object p0
.end method

.method public flushAsDebug()V
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "Conversations"

    iget-object v1, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flushAsError()V
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v0, "Conversations"

    iget-object v1, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public flushAsError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 156
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 157
    const-string/jumbo v1, "Conversations"

    iget-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

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

    .line 151
    return-void
.end method

.method public flushAsInfo()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "Conversations"

    iget-object v1, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public flushAsVerbose()V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "Conversations"

    iget-object v1, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flushAsWarning()V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "Conversations"

    iget-object v1, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public flushAsWarning(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 142
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 143
    const-string/jumbo v1, "Conversations"

    iget-object v2, p0, Lcom/sonymobile/conversations/util/LogUtil;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
