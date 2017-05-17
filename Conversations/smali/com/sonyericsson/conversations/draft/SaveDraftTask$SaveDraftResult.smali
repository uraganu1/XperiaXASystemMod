.class public final enum Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;
.super Ljava/lang/Enum;
.source "SaveDraftTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/draft/SaveDraftTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveDraftResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

.field public static final enum DELETED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

.field public static final enum DUPLICATE:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

.field public static final enum SAVED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    const-string/jumbo v1, "SAVED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->SAVED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .line 31
    new-instance v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    const-string/jumbo v1, "DELETED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DELETED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .line 35
    new-instance v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    const-string/jumbo v1, "DUPLICATE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DUPLICATE:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->SAVED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DELETED:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->DUPLICATE:Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->$VALUES:[Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;->$VALUES:[Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftResult;

    return-object v0
.end method
