.class public final enum Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
.super Ljava/lang/Enum;
.source "ColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/settings/ColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

.field public static final enum HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

.field public static final enum HSV:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    const-string/jumbo v1, "HSB"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    .line 24
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    const-string/jumbo v1, "HSV"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSV:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSB:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->HSV:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    return-object v0
.end method