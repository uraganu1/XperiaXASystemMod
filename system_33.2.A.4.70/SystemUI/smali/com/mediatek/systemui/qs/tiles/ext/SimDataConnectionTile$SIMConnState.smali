.class public final enum Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;
.super Ljava/lang/Enum;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIMConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field public static final enum SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_E_D"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    .line 103
    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 104
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_E_E"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 105
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_D_D"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 106
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_D_E"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 107
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_E_D"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 108
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_E_E"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 109
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_D_D"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 110
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_D_E"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 111
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "NO_SIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 112
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_E_F"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    .line 114
    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 115
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM1_D_F"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 116
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_E_F"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 117
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const-string/jumbo v1, "SIM2_D_F"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->$VALUES:[Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->$VALUES:[Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    return-object v0
.end method
