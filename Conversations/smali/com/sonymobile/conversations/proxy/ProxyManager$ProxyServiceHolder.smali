.class Lcom/sonymobile/conversations/proxy/ProxyManager$ProxyServiceHolder;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/proxy/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyServiceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonymobile/conversations/proxy/ProxyService;


# direct methods
.method static synthetic -get0()Lcom/sonymobile/conversations/proxy/ProxyService;
    .locals 1

    sget-object v0, Lcom/sonymobile/conversations/proxy/ProxyManager$ProxyServiceHolder;->INSTANCE:Lcom/sonymobile/conversations/proxy/ProxyService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sonymobile/conversations/proxy/ProxyService;

    invoke-direct {v0}, Lcom/sonymobile/conversations/proxy/ProxyService;-><init>()V

    sput-object v0, Lcom/sonymobile/conversations/proxy/ProxyManager$ProxyServiceHolder;->INSTANCE:Lcom/sonymobile/conversations/proxy/ProxyService;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
