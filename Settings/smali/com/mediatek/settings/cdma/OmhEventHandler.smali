.class public Lcom/mediatek/settings/cdma/OmhEventHandler;
.super Landroid/os/Handler;
.source "OmhEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mHandler:Lcom/mediatek/settings/cdma/OmhEventHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/mediatek/settings/cdma/OmhEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    .line 26
    iput-object p1, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/settings/cdma/OmhEventHandler;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mHandler:Lcom/mediatek/settings/cdma/OmhEventHandler;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/mediatek/settings/cdma/OmhEventHandler;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/cdma/OmhEventHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mHandler:Lcom/mediatek/settings/cdma/OmhEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 29
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mHandler:Lcom/mediatek/settings/cdma/OmhEventHandler;

    if-nez v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/mediatek/settings/cdma/OmhEventHandler;->createInstance(Landroid/content/Context;)V

    .line 39
    :cond_0
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mHandler:Lcom/mediatek/settings/cdma/OmhEventHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-nez v0, :cond_0

    .line 47
    iput v4, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET_BUSY when state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :pswitch_1
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-nez v0, :cond_1

    .line 54
    iput v5, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->startOmhWarningDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-ne v0, v4, :cond_2

    .line 57
    iput v6, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NEW_REQUEST when state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_2
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-ne v0, v4, :cond_3

    .line 64
    iput v3, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    goto :goto_0

    .line 65
    :cond_3
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-ne v0, v6, :cond_4

    .line 66
    iput v5, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->startOmhWarningDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_4
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CLEAR_BUSY when state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :pswitch_3
    iget v0, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    if-ne v0, v5, :cond_5

    .line 74
    iput v3, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    goto/16 :goto_0

    .line 76
    :cond_5
    sget-object v0, Lcom/mediatek/settings/cdma/OmhEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FINISH_REQUEST when state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput v3, p0, Lcom/mediatek/settings/cdma/OmhEventHandler;->mState:I

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
