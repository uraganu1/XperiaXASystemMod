.class final enum Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
.super Ljava/lang/Enum;
.source "MessageStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BubbleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum DELIVERED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum DELIVERY_FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum QUEUED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum SENT_OR_RECEIVED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

.field public static final enum UNKNOWN:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "SENT_OR_RECEIVED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->SENT_OR_RECEIVED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "DELIVERED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "QUEUED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->QUEUED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "DELIVERY_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->UNKNOWN:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->SENT_OR_RECEIVED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->QUEUED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->UNKNOWN:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->$VALUES:[Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->$VALUES:[Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0
.end method
