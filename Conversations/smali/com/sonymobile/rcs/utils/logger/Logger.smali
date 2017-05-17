.class public Lcom/sonymobile/rcs/utils/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static TRACE_OFF:Z

.field public static activationFlag:Z

.field private static appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

.field public static traceLevel:I


# instance fields
.field private classname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/sonymobile/rcs/utils/logger/Logger;->TRACE_OFF:Z

    .line 71
    sput-boolean v0, Lcom/sonymobile/rcs/utils/logger/Logger;->activationFlag:Z

    .line 76
    sput v2, Lcom/sonymobile/rcs/utils/logger/Logger;->traceLevel:I

    .line 81
    new-array v0, v0, [Lcom/sonymobile/rcs/utils/logger/Appender;

    new-instance v1, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;

    invoke-direct {v1}, Lcom/sonymobile/rcs/platform/logger/AndroidAppender;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/rcs/utils/logger/Logger;->appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x2e

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    .line 97
    if-ne v0, v1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/sonymobile/rcs/utils/logger/Logger;->classname:Ljava/lang/String;

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/utils/logger/Logger;->classname:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/utils/logger/Logger;

    monitor-enter v1

    .line 210
    :try_start_0
    new-instance v0, Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/utils/logger/Logger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private printTrace(Ljava/lang/String;I)V
    .locals 3
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 187
    sget-object v1, Lcom/sonymobile/rcs/utils/logger/Logger;->appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    return-void

    .line 187
    :cond_1
    sget v1, Lcom/sonymobile/rcs/utils/logger/Logger;->traceLevel:I

    if-lt p2, v1, :cond_0

    const/4 v0, 0x0

    .line 188
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/utils/logger/Logger;->appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 189
    sget-object v1, Lcom/sonymobile/rcs/utils/logger/Logger;->appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sonymobile/rcs/utils/logger/Logger;->classname:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p1}, Lcom/sonymobile/rcs/utils/logger/Appender;->printTrace(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setAppenders([Lcom/sonymobile/rcs/utils/logger/Appender;)V
    .locals 0
    .param p0, "appenders"    # [Lcom/sonymobile/rcs/utils/logger/Appender;

    .prologue
    .line 200
    sput-object p0, Lcom/sonymobile/rcs/utils/logger/Logger;->appenders:[Lcom/sonymobile/rcs/utils/logger/Appender;

    .line 201
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x3

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    sget-boolean v1, Lcom/sonymobile/rcs/utils/logger/Logger;->activationFlag:Z

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 138
    return-void
.end method
