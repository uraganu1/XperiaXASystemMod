.class public Lcom/mediatek/apn/ApnUtils;
.super Ljava/lang/Object;
.source "ApnUtils.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "sourcetype"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "omacpid"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "napid"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "proxyid"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 87
    :cond_1
    return-object p0
.end method
