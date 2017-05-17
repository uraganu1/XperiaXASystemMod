.class Lcom/sonyericsson/conversations/util/SubscriptionUtil$1;
.super Ljava/lang/Object;
.source "SubscriptionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionInfo()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/util/SubscriptionUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$1;->this$0:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 2
    .param p1, "r1"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "r2"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil$1;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method
