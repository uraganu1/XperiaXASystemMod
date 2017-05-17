.class public Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;
.super Ljava/lang/Object;
.source "ThreadIdInfo.java"


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsGroup:Z

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "recipientIds"    # Ljava/lang/String;
    .param p3, "threadId"    # J

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mAddress:Ljava/lang/String;

    .line 22
    if-eqz p2, :cond_0

    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mIsGroup:Z

    .line 23
    iput-wide p3, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mThreadId:J

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isGroup"    # Z
    .param p3, "threadId"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mAddress:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mIsGroup:Z

    .line 17
    iput-wide p3, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mThreadId:J

    .line 14
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mThreadId:J

    return-wide v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ThreadIdInfo;->mIsGroup:Z

    return v0
.end method
