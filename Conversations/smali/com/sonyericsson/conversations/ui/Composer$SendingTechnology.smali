.class public final enum Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
.super Ljava/lang/Enum;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendingTechnology"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field public static final enum JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field public static final enum UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field public static final enum XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    const-string/jumbo v1, "XMS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    new-instance v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    const-string/jumbo v1, "JOYN"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->$VALUES:[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->$VALUES:[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v0
.end method
