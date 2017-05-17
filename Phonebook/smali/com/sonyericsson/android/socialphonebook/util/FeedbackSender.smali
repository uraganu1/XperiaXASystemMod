.class public Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;
.super Ljava/lang/Object;
.source "FeedbackSender.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.sonyericsson.updatecenter.action.SEND_FEEDBACK"

.field private static final PACKAGE:Ljava/lang/String; = "package:"

.field private static final PERMISSION:Ljava/lang/String; = "com.sonyericsson.updatecenter.permission.RECEIVE_FEEDBACK"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFeedbackIntent:Landroid/content/Intent;

.field private final mIsFeedbackActivityAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mContext:Landroid/content/Context;

    .line 50
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonyericsson.updatecenter.action.SEND_FEEDBACK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mFeedbackIntent:Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mFeedbackIntent:Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mFeedbackIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mIsFeedbackActivityAvailable:Z

    .line 47
    return-void

    .line 57
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canSendFeedback()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mIsFeedbackActivityAvailable:Z

    return v0
.end method

.method public startFeedbackActivity()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->mFeedbackIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.sonyericsson.updatecenter.permission.RECEIVE_FEEDBACK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    return-void
.end method
