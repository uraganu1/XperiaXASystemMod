.class Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionUtilHolder;
.super Ljava/lang/Object;
.source "SubscriptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/SubscriptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionUtilHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonyericsson/conversations/util/SubscriptionUtil;


# direct methods
.method static synthetic -get0()Lcom/sonyericsson/conversations/util/SubscriptionUtil;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionUtilHolder;->INSTANCE:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionUtilHolder;->INSTANCE:Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    .line 359
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
