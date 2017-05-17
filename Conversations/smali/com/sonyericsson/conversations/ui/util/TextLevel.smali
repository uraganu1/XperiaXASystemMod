.class public final enum Lcom/sonyericsson/conversations/ui/util/TextLevel;
.super Ljava/lang/Enum;
.source "TextLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/util/TextLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/util/TextLevel;

.field public static final enum Disabled:Lcom/sonyericsson/conversations/ui/util/TextLevel;

.field public static final enum Primary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

.field public static final enum Secondary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

.field public static final enum Tertiary:Lcom/sonyericsson/conversations/ui/util/TextLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    const-string/jumbo v1, "Primary"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/TextLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Primary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    .line 12
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    const-string/jumbo v1, "Secondary"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/util/TextLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Secondary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    .line 13
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    const-string/jumbo v1, "Tertiary"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/TextLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Tertiary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    .line 14
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    const-string/jumbo v1, "Disabled"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/util/TextLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Disabled:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/util/TextLevel;

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Primary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Secondary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Tertiary:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/TextLevel;->Disabled:Lcom/sonyericsson/conversations/ui/util/TextLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/TextLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/util/TextLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/util/TextLevel;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/TextLevel;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/TextLevel;

    return-object v0
.end method
