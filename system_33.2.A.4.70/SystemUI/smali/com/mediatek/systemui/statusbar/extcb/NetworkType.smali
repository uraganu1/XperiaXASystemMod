.class public final enum Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/systemui/statusbar/extcb/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field private static final TAG:Ljava/lang/String; = "NetworkType"

.field public static final enum Type_1X:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field public static final enum Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field public static final enum Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field public static final enum Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field public static final enum Type_E:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field public static final enum Type_G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field private static sDefaultNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

.field private static final sNetworkTypeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/systemui/statusbar/extcb/NetworkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_G"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_3G"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_1X"

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_1X3G"

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_4G"

    invoke-direct {v0, v1, v8, v8}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const-string/jumbo v1, "Type_E"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 40
    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeId"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->mTypeId:I

    .line 30
    return-void
.end method

.method public static final get(I)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .locals 4
    .param p0, "dataNetType"    # I

    .prologue
    .line 50
    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sDefaultNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 51
    .local v0, "networkType":Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    const-string/jumbo v1, "NetworkType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkType, dataNetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    const-string/jumbo v3, " to NetworkType = "

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->name()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v0
.end method

.method public static final mapNetworkTypeSets(ZZZ)V
    .locals 7
    .param p0, "showAtLeast3G"    # Z
    .param p1, "show4gForLte"    # Z
    .param p2, "hspaDataDistinguishable"    # Z

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 65
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    if-nez p0, :cond_0

    .line 75
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sDefaultNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    .line 90
    :goto_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->sDefaultNetworkType:Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/systemui/statusbar/extcb/NetworkType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/NetworkType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/NetworkType;->mTypeId:I

    return v0
.end method
