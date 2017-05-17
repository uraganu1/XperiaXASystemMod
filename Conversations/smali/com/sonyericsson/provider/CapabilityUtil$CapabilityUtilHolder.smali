.class Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;
.super Ljava/lang/Object;
.source "CapabilityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/CapabilityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityUtilHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonyericsson/provider/CapabilityUtil;


# direct methods
.method static synthetic -get0()Lcom/sonyericsson/provider/CapabilityUtil;
    .locals 1

    sget-object v0, Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;->INSTANCE:Lcom/sonyericsson/provider/CapabilityUtil;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/sonyericsson/provider/CapabilityUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/provider/CapabilityUtil;-><init>(Lcom/sonyericsson/provider/CapabilityUtil;)V

    sput-object v0, Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;->INSTANCE:Lcom/sonyericsson/provider/CapabilityUtil;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
