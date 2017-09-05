.class public final enum Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;
.super Ljava/lang/Enum;
.source "BehaviorSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

.field public static final enum DEFAULT_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

.field public static final enum OP01_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

.field public static final enum OP02_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

.field public static final enum OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;


# instance fields
.field private mBehaviorSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    const-string/jumbo v1, "DEFAULT_BS"

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->DEFAULT_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    const-string/jumbo v1, "OP01_BS"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP01_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    const-string/jumbo v1, "OP02_BS"

    invoke-direct {v0, v1, v4, v4}, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP02_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    new-instance v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    const-string/jumbo v1, "OP09_BS"

    invoke-direct {v0, v1, v5, v5}, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->DEFAULT_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP01_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP02_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->OP09_BS:Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "behaviorSet"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->mBehaviorSet:I

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->$VALUES:[Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;

    return-object v0
.end method


# virtual methods
.method public getBehaviorSet()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/BehaviorSet;->mBehaviorSet:I

    return v0
.end method
