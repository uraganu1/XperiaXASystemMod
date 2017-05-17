.class public final enum Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;
.super Ljava/lang/Enum;
.source "ColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/settings/ColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field public static final enum Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field public static final enum Hue:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field public static final enum Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field public static final enum Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field public static final enum Value:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const-string/jumbo v1, "Hue"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Hue:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 41
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const-string/jumbo v1, "Saturation"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 42
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const-string/jumbo v1, "Value"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Value:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 43
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const-string/jumbo v1, "Brightness"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 44
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const-string/jumbo v1, "Opacity"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    const/4 v0, 0x5

    .line 39
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Hue:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Saturation:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Value:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Brightness:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 39
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    return-object v0
.end method
