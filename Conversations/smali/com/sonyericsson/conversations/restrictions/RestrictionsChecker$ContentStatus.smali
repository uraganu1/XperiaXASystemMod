.class public final enum Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
.super Ljava/lang/Enum;
.source "RestrictionsChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum VIDEO_RESOLUTION_UNSUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field public static final enum VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 37
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "DRM_PROTECTED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 38
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "VIDEO_TOO_LARGE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 39
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "VIDEO_RESOLUTION_UNSUPPORTED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_RESOLUTION_UNSUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 40
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "VIDEO_NOT_SUPPORTED"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 41
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "AUDIO_TOO_LARGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 42
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "TEXT_TOO_LONG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 43
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "MESSAGE_TOO_LARGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 44
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "CANNOT_ADD_CONTENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 45
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const-string/jumbo v1, "CANNOT_ADD_ALL_CONTENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_RESOLUTION_UNSUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->$VALUES:[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->$VALUES:[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method
