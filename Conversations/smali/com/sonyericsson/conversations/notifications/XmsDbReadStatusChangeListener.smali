.class public Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;
.super Ljava/lang/Object;
.source "XmsDbReadStatusChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$InstanceHolder;,
        Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;
    }
.end annotation


# instance fields
.field private mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$InstanceHolder;->-get0()Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    if-eqz v2, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    new-instance v2, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    .line 53
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, "sms":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "mms":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->mObserver:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$SmsMmsObserver;

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method
