.class public final enum Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;
.super Ljava/lang/Enum;
.source "ColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/settings/ColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

.field public static final enum Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

.field public static final enum Offset:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

.field public static final enum Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const-string/jumbo v1, "Offset"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Offset:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    .line 32
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const-string/jumbo v1, "Multiply"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    .line 33
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    const-string/jumbo v1, "Set"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Offset:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Multiply:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->Set:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    return-object v0
.end method
