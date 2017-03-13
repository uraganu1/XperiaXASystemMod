.class public final enum Lcom/mediatek/systemui/statusbar/extcb/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/systemui/statusbar/extcb/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field private static final TAG:Ljava/lang/String; = "DataType"

.field public static final enum Type_1X:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_3G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_4G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_4G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_E:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field public static final enum Type_H_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

.field private static final sDataTypeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/systemui/statusbar/extcb/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;


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

    .line 27
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_1X"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_3G"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_4G"

    invoke-direct {v0, v1, v6, v6}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_E"

    invoke-direct {v0, v1, v7, v7}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_G"

    invoke-direct {v0, v1, v8, v8}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_H"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_H_PLUS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 28
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_3G_PLUS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const-string/jumbo v1, "Type_4G_PLUS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/systemui/statusbar/extcb/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mediatek/systemui/statusbar/extcb/DataType;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->mTypeId:I

    .line 32
    return-void
.end method

.method public static final get(I)Lcom/mediatek/systemui/statusbar/extcb/DataType;
    .locals 4
    .param p0, "dataNetType"    # I

    .prologue
    .line 51
    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDefaultDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 52
    .local v0, "dataType":Lcom/mediatek/systemui/statusbar/extcb/DataType;
    const-string/jumbo v1, "DataType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataType, dataNetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    const-string/jumbo v3, " to DataType = "

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/mediatek/systemui/statusbar/extcb/DataType;->name()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v0
.end method

.method public static final mapDataTypeSets(ZZZ)V
    .locals 8
    .param p0, "showAtLeast3G"    # Z
    .param p1, "show4gForLte"    # Z
    .param p2, "hspaDataDistinguishable"    # Z

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 66
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 68
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    if-nez p0, :cond_0

    .line 75
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_E:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_1X:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDefaultDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    .line 89
    :goto_0
    if-eqz p2, :cond_1

    .line 90
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_H_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    :goto_1
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_4G_PLUS:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0x8b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDefaultDataType:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->sDataTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/DataType;->Type_3G:Lcom/mediatek/systemui/statusbar/extcb/DataType;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/systemui/statusbar/extcb/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/systemui/statusbar/extcb/DataType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/DataType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/DataType;->mTypeId:I

    return v0
.end method
