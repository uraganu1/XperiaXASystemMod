.class public final enum Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
.super Ljava/lang/Enum;
.source "StarStatusApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImStarStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

.field public static final enum NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

.field public static final enum NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

.field public static final enum STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

.field public static final enum UNKNOWN:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    const-string/jumbo v1, "NOT_STARRED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;-><init>(Ljava/lang/String;I)V

    .line 18
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .line 19
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    const-string/jumbo v1, "STARRED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .line 23
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    const-string/jumbo v1, "NO_STAR_STATUS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .line 27
    new-instance v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->UNKNOWN:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NOT_STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->NO_STAR_STATUS:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->UNKNOWN:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->$VALUES:[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->$VALUES:[Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    return-object v0
.end method
