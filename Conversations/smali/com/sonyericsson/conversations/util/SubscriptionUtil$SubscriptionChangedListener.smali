.class Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SubscriptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/SubscriptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->-get0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->cancel(Z)Z

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    new-instance v1, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;-><init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->-set0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;)Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionChangedListener;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->-get0(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    return-void
.end method
